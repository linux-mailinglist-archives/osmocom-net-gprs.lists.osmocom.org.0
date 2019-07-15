Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id C113D6E213
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Jul 2019 09:58:56 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 36C81C5622;
	Fri, 19 Jul 2019 07:58:56 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=rBOzOacr
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 27468AC51B
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 15 Jul 2019 14:17:39 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BA38206B8;
 Mon, 15 Jul 2019 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563200258;
 bh=Ew34IS4c/YSyOPNEahM7m8KTTx0XZaWp+16rB2LbThU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rBOzOacrg5n7nmwKCCAMi4rBmEoCUk5DNz9ot0YfYDuKzeqvZ9UgO3gbBPw6wmXDj
 TbJDYR0s4hne6429oq/muTtxOmoWTzOMkdv9GtkTov/ZwsNSvomcjtdn4oTdykgECX
 QkwKfXKgoiP2jBM/FjWI3a5+TDP7aTEHI+Rvq/8w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 215/219] gtp: fix Illegal context switch in RCU
 read-side critical section.
Date: Mon, 15 Jul 2019 10:03:36 -0400
Message-Id: <20190715140341.6443-215-sashal@kernel.org>
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

[ Upstream commit 3f167e1921865b379a9becf03828e7202c7b4917 ]

ipv4_pdp_add() is called in RCU read-side critical section.
So GFP_KERNEL should not be used in the function.
This patch make ipv4_pdp_add() to use GFP_ATOMIC instead of GFP_KERNEL.

Test commands:
gtp-link add gtp1 &
gtp-tunnel add gtp1 v1 100 200 1.1.1.1 2.2.2.2

Splat looks like:
[  130.618881] =============================
[  130.626382] WARNING: suspicious RCU usage
[  130.626994] 5.2.0-rc6+ #50 Not tainted
[  130.627622] -----------------------------
[  130.628223] ./include/linux/rcupdate.h:266 Illegal context switch in RCU read-side critical section!
[  130.629684]
[  130.629684] other info that might help us debug this:
[  130.629684]
[  130.631022]
[  130.631022] rcu_scheduler_active = 2, debug_locks = 1
[  130.632136] 4 locks held by gtp-tunnel/1025:
[  130.632925]  #0: 000000002b93c8b7 (cb_lock){++++}, at: genl_rcv+0x15/0x40
[  130.634159]  #1: 00000000f17bc999 (genl_mutex){+.+.}, at: genl_rcv_msg+0xfb/0x130
[  130.635487]  #2: 00000000c644ed8e (rtnl_mutex){+.+.}, at: gtp_genl_new_pdp+0x18c/0x1150 [gtp]
[  130.636936]  #3: 0000000007a1cde7 (rcu_read_lock){....}, at: gtp_genl_new_pdp+0x187/0x1150 [gtp]
[  130.638348]
[  130.638348] stack backtrace:
[  130.639062] CPU: 1 PID: 1025 Comm: gtp-tunnel Not tainted 5.2.0-rc6+ #50
[  130.641318] Call Trace:
[  130.641707]  dump_stack+0x7c/0xbb
[  130.642252]  ___might_sleep+0x2c0/0x3b0
[  130.642862]  kmem_cache_alloc_trace+0x1cd/0x2b0
[  130.643591]  gtp_genl_new_pdp+0x6c5/0x1150 [gtp]
[  130.644371]  genl_family_rcv_msg+0x63a/0x1030
[  130.645074]  ? mutex_lock_io_nested+0x1090/0x1090
[  130.645845]  ? genl_unregister_family+0x630/0x630
[  130.646592]  ? debug_show_all_locks+0x2d0/0x2d0
[  130.647293]  ? check_flags.part.40+0x440/0x440
[  130.648099]  genl_rcv_msg+0xa3/0x130
[ ... ]

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index f45a806b6c06..6f1ad7ccaea6 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -958,7 +958,7 @@ static int ipv4_pdp_add(struct gtp_dev *gtp, struct sock *sk,
 
 	}
 
-	pctx = kmalloc(sizeof(struct pdp_ctx), GFP_KERNEL);
+	pctx = kmalloc(sizeof(*pctx), GFP_ATOMIC);
 	if (pctx == NULL)
 		return -ENOMEM;
 
-- 
2.20.1

