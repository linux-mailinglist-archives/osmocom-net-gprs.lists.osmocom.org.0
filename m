Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id C301C6E214
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Jul 2019 09:58:57 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 26D6DC5632;
	Fri, 19 Jul 2019 07:58:57 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=Hh/5tfel
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 3AC43AC53A
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 15 Jul 2019 14:17:41 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CCDB20651;
 Mon, 15 Jul 2019 14:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563200260;
 bh=WIbGzk0uMuOWAkqbo0bj7IPXAiqdH4aRIU55PMwZsr4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hh/5tfel3uFqY8iTSJ9SCXaCBGZVsPXzu4tR7PRjxE4JtIeL0xxEGXCZMV0EASy9P
 AHUV+iWDiUJFJhtVczheAMqRaSYXUUmIQe4T2ffML2SCdTwBkonSV1etHZHL0TPP0Q
 Fj+sOlXkCdX95hnohd4o2Jqe+ilZ6SYeSFzED7Kw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 216/219] gtp: fix use-after-free in
 gtp_encap_destroy()
Date: Mon, 15 Jul 2019 10:03:37 -0400
Message-Id: <20190715140341.6443-216-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 19 Jul 2019 07:58:02 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, "David S . Miller" <davem@davemloft.net>,
 Taehee Yoo <ap420073@gmail.com>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Taehee Yoo <ap420073@gmail.com>

[ Upstream commit 1788b8569f5de27da09087fa3f6580d2aa04cc75 ]

gtp_encap_destroy() is called twice.
1. When interface is deleted.
2. When udp socket is destroyed.
either gtp->sk0 or gtp->sk1u could be freed by sock_put() in
gtp_encap_destroy(). so, when gtp_encap_destroy() is called again,
it would uses freed sk pointer.

patch makes gtp_encap_destroy() to set either gtp->sk0 or gtp->sk1u to
null. in addition, both gtp->sk0 and gtp->sk1u pointer are protected
by rtnl_lock. so, rtnl_lock() is added.

Test command:
   gtp-link add gtp1 &
   killall gtp-link
   ip link del gtp1

Splat looks like:
[   83.182767] BUG: KASAN: use-after-free in __lock_acquire+0x3a20/0x46a0
[   83.184128] Read of size 8 at addr ffff8880cc7d5360 by task ip/1008
[   83.185567] CPU: 1 PID: 1008 Comm: ip Not tainted 5.2.0-rc6+ #50
[   83.188469] Call Trace:
[ ... ]
[   83.200126]  lock_acquire+0x141/0x380
[   83.200575]  ? lock_sock_nested+0x3a/0xf0
[   83.201069]  _raw_spin_lock_bh+0x38/0x70
[   83.201551]  ? lock_sock_nested+0x3a/0xf0
[   83.202044]  lock_sock_nested+0x3a/0xf0
[   83.202520]  gtp_encap_destroy+0x18/0xe0 [gtp]
[   83.203065]  gtp_encap_disable.isra.14+0x13/0x50 [gtp]
[   83.203687]  gtp_dellink+0x56/0x170 [gtp]
[   83.204190]  rtnl_delete_link+0xb4/0x100
[ ... ]
[   83.236513] Allocated by task 976:
[   83.236925]  save_stack+0x19/0x80
[   83.237332]  __kasan_kmalloc.constprop.3+0xa0/0xd0
[   83.237894]  kmem_cache_alloc+0xd8/0x280
[   83.238360]  sk_prot_alloc.isra.42+0x50/0x200
[   83.238874]  sk_alloc+0x32/0x940
[   83.239264]  inet_create+0x283/0xc20
[   83.239684]  __sock_create+0x2dd/0x540
[   83.240136]  __sys_socket+0xca/0x1a0
[   83.240550]  __x64_sys_socket+0x6f/0xb0
[   83.240998]  do_syscall_64+0x9c/0x450
[   83.241466]  entry_SYSCALL_64_after_hwframe+0x49/0xbe
[   83.242061]
[   83.242249] Freed by task 0:
[   83.242616]  save_stack+0x19/0x80
[   83.243013]  __kasan_slab_free+0x111/0x150
[   83.243498]  kmem_cache_free+0x89/0x250
[   83.244444]  __sk_destruct+0x38f/0x5a0
[   83.245366]  rcu_core+0x7e9/0x1c20
[   83.245766]  __do_softirq+0x213/0x8fa

Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 6f1ad7ccaea6..61e9b288d2dc 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -289,13 +289,17 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	return gtp_rx(pctx, skb, hdrlen, gtp->role);
 }
 
-static void gtp_encap_destroy(struct sock *sk)
+static void __gtp_encap_destroy(struct sock *sk)
 {
 	struct gtp_dev *gtp;
 
 	lock_sock(sk);
 	gtp = sk->sk_user_data;
 	if (gtp) {
+		if (gtp->sk0 == sk)
+			gtp->sk0 = NULL;
+		else
+			gtp->sk1u = NULL;
 		udp_sk(sk)->encap_type = 0;
 		rcu_assign_sk_user_data(sk, NULL);
 		sock_put(sk);
@@ -303,12 +307,19 @@ static void gtp_encap_destroy(struct sock *sk)
 	release_sock(sk);
 }
 
+static void gtp_encap_destroy(struct sock *sk)
+{
+	rtnl_lock();
+	__gtp_encap_destroy(sk);
+	rtnl_unlock();
+}
+
 static void gtp_encap_disable_sock(struct sock *sk)
 {
 	if (!sk)
 		return;
 
-	gtp_encap_destroy(sk);
+	__gtp_encap_destroy(sk);
 }
 
 static void gtp_encap_disable(struct gtp_dev *gtp)
@@ -1047,6 +1058,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 		return -EINVAL;
 	}
 
+	rtnl_lock();
 	rcu_read_lock();
 
 	gtp = gtp_find_dev(sock_net(skb->sk), info->attrs);
@@ -1071,6 +1083,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 
 out_unlock:
 	rcu_read_unlock();
+	rtnl_unlock();
 	return err;
 }
 
-- 
2.20.1

