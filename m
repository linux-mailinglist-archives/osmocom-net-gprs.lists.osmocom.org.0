Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id E562B6E20E
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Jul 2019 09:58:50 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2192FC55EC;
	Fri, 19 Jul 2019 07:58:50 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=Djd8Nsre
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 29EDAAC427
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 15 Jul 2019 14:08:03 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6008F2182B;
 Mon, 15 Jul 2019 14:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563199365;
 bh=axuiteU3REGKBHGaC74O78KMeiShDR8gdHMYbFxMin0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Djd8NsreOwIimpR9KGU+pK8AC7ASbuknqxfKmuCFsZjuggKWnTxCALyC3ou88KCGT
 QqN7gpBvAoSHioVjNngMSgBOKsoOt7zANyExhReLqAmz+uKmm3OGp+JiiNuaAJwZAx
 uTl7tP3w8lS7AB3q9oKKfeme41IeWBY8f2kXd0Q0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 244/249] gtp: fix suspicious RCU usage
Date: Mon, 15 Jul 2019 09:46:49 -0400
Message-Id: <20190715134655.4076-244-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
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

[ Upstream commit e198987e7dd7d3645a53875151cd6f8fc425b706 ]

gtp_encap_enable_socket() and gtp_encap_destroy() are not protected
by rcu_read_lock(). and it's not safe to write sk->sk_user_data.
This patch make these functions to use lock_sock() instead of
rcu_dereference_sk_user_data().

Test commands:
    gtp-link add gtp1

Splat looks like:
[   83.238315] =============================
[   83.239127] WARNING: suspicious RCU usage
[   83.239702] 5.2.0-rc6+ #49 Not tainted
[   83.240268] -----------------------------
[   83.241205] drivers/net/gtp.c:799 suspicious rcu_dereference_check() usage!
[   83.243828]
[   83.243828] other info that might help us debug this:
[   83.243828]
[   83.246325]
[   83.246325] rcu_scheduler_active = 2, debug_locks = 1
[   83.247314] 1 lock held by gtp-link/1008:
[   83.248523]  #0: 0000000017772c7f (rtnl_mutex){+.+.}, at: __rtnl_newlink+0x5f5/0x11b0
[   83.251503]
[   83.251503] stack backtrace:
[   83.252173] CPU: 0 PID: 1008 Comm: gtp-link Not tainted 5.2.0-rc6+ #49
[   83.253271] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006
[   83.254562] Call Trace:
[   83.254995]  dump_stack+0x7c/0xbb
[   83.255567]  gtp_encap_enable_socket+0x2df/0x360 [gtp]
[   83.256415]  ? gtp_find_dev+0x1a0/0x1a0 [gtp]
[   83.257161]  ? memset+0x1f/0x40
[   83.257843]  gtp_newlink+0x90/0xa21 [gtp]
[   83.258497]  ? __netlink_ns_capable+0xc3/0xf0
[   83.259260]  __rtnl_newlink+0xb9f/0x11b0
[   83.260022]  ? rtnl_link_unregister+0x230/0x230
[ ... ]

Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 01fc51892e48..61f19e66be55 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -289,12 +289,14 @@ static void gtp_encap_destroy(struct sock *sk)
 {
 	struct gtp_dev *gtp;
 
-	gtp = rcu_dereference_sk_user_data(sk);
+	lock_sock(sk);
+	gtp = sk->sk_user_data;
 	if (gtp) {
 		udp_sk(sk)->encap_type = 0;
 		rcu_assign_sk_user_data(sk, NULL);
 		sock_put(sk);
 	}
+	release_sock(sk);
 }
 
 static void gtp_encap_disable_sock(struct sock *sk)
@@ -796,7 +798,8 @@ static struct sock *gtp_encap_enable_socket(int fd, int type,
 		goto out_sock;
 	}
 
-	if (rcu_dereference_sk_user_data(sock->sk)) {
+	lock_sock(sock->sk);
+	if (sock->sk->sk_user_data) {
 		sk = ERR_PTR(-EBUSY);
 		goto out_sock;
 	}
@@ -812,6 +815,7 @@ static struct sock *gtp_encap_enable_socket(int fd, int type,
 	setup_udp_tunnel_sock(sock_net(sock->sk), sock, &tuncfg);
 
 out_sock:
+	release_sock(sock->sk);
 	sockfd_put(sock);
 	return sk;
 }
-- 
2.20.1

