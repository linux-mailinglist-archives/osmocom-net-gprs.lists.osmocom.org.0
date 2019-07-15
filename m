Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id B2F576E21D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Jul 2019 09:59:03 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 6E750C5675;
	Fri, 19 Jul 2019 07:59:03 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=VEIHy6c7
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id C8159AC687
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 15 Jul 2019 14:28:14 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3AF32064B;
 Mon, 15 Jul 2019 14:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563200894;
 bh=oq0jh/VRHHsuOtF2ed6LdS+l8yfxbvHCjK0taZc6NMo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VEIHy6c7iPAVJ5t4JtdG+N2D82lwhbasod1McFSu1q7ygIk03mK4w+ThslH9UnDb6
 GGchtf5TBaIni8jLe0hbGzENqzNTx9cRq2p3yuntl3KrVxGjKEONyZY48djc++5Dcb
 lF/6YVdZZ10ouDFJCFbGFP1zloDUA+7P+/gNOU40=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 157/158] gtp: fix use-after-free in gtp_newlink()
Date: Mon, 15 Jul 2019 10:18:08 -0400
Message-Id: <20190715141809.8445-157-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
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

[ Upstream commit a2bed90704c68d3763bf24decb1b781a45395de8 ]

Current gtp_newlink() could be called after unregister_pernet_subsys().
gtp_newlink() uses gtp_net but it can be destroyed by
unregister_pernet_subsys().
So unregister_pernet_subsys() should be called after
rtnl_link_unregister().

Test commands:
   #SHELL 1
   while :
   do
	   for i in {1..5}
	   do
		./gtp-link add gtp$i &
	   done
	   killall gtp-link
   done

   #SHELL 2
   while :
   do
	modprobe -rv gtp
   done

Splat looks like:
[  753.176631] BUG: KASAN: use-after-free in gtp_newlink+0x9b4/0xa5c [gtp]
[  753.177722] Read of size 8 at addr ffff8880d48f2458 by task gtp-link/7126
[  753.179082] CPU: 0 PID: 7126 Comm: gtp-link Tainted: G        W         5.2.0-rc6+ #50
[  753.185801] Call Trace:
[  753.186264]  dump_stack+0x7c/0xbb
[  753.186863]  ? gtp_newlink+0x9b4/0xa5c [gtp]
[  753.187583]  print_address_description+0xc7/0x240
[  753.188382]  ? gtp_newlink+0x9b4/0xa5c [gtp]
[  753.189097]  ? gtp_newlink+0x9b4/0xa5c [gtp]
[  753.189846]  __kasan_report+0x12a/0x16f
[  753.190542]  ? gtp_newlink+0x9b4/0xa5c [gtp]
[  753.191298]  kasan_report+0xe/0x20
[  753.191893]  gtp_newlink+0x9b4/0xa5c [gtp]
[  753.192580]  ? __netlink_ns_capable+0xc3/0xf0
[  753.193370]  __rtnl_newlink+0xb9f/0x11b0
[ ... ]
[  753.241201] Allocated by task 7186:
[  753.241844]  save_stack+0x19/0x80
[  753.242399]  __kasan_kmalloc.constprop.3+0xa0/0xd0
[  753.243192]  __kmalloc+0x13e/0x300
[  753.243764]  ops_init+0xd6/0x350
[  753.244314]  register_pernet_operations+0x249/0x6f0
[ ... ]
[  753.251770] Freed by task 7178:
[  753.252288]  save_stack+0x19/0x80
[  753.252833]  __kasan_slab_free+0x111/0x150
[  753.253962]  kfree+0xc7/0x280
[  753.254509]  ops_free_list.part.11+0x1c4/0x2d0
[  753.255241]  unregister_pernet_operations+0x262/0x390
[ ... ]
[  753.285883] list_add corruption. next->prev should be prev (ffff8880d48f2458), but was ffff8880d497d878. (next.
[  753.287241] ------------[ cut here ]------------
[  753.287794] kernel BUG at lib/list_debug.c:25!
[  753.288364] invalid opcode: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN PTI
[  753.289099] CPU: 0 PID: 7126 Comm: gtp-link Tainted: G    B   W         5.2.0-rc6+ #50
[  753.291036] RIP: 0010:__list_add_valid+0x74/0xd0
[  753.291589] Code: 48 39 da 75 27 48 39 f5 74 36 48 39 dd 74 31 48 83 c4 08 b8 01 00 00 00 5b 5d c3 48 89 d9 48b
[  753.293779] RSP: 0018:ffff8880cae8f398 EFLAGS: 00010286
[  753.294401] RAX: 0000000000000075 RBX: ffff8880d497d878 RCX: 0000000000000000
[  753.296260] RDX: 0000000000000075 RSI: 0000000000000008 RDI: ffffed10195d1e69
[  753.297070] RBP: ffff8880cd250ae0 R08: ffffed101b4bff21 R09: ffffed101b4bff21
[  753.297899] R10: 0000000000000001 R11: ffffed101b4bff20 R12: ffff8880d497d878
[  753.298703] R13: 0000000000000000 R14: ffff8880cd250ae0 R15: ffff8880d48f2458
[  753.299564] FS:  00007f5f79805740(0000) GS:ffff8880da400000(0000) knlGS:0000000000000000
[  753.300533] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  753.301231] CR2: 00007fe8c7ef4f10 CR3: 00000000b71a6006 CR4: 00000000000606f0
[  753.302183] Call Trace:
[  753.302530]  gtp_newlink+0x5f6/0xa5c [gtp]
[  753.303037]  ? __netlink_ns_capable+0xc3/0xf0
[  753.303576]  __rtnl_newlink+0xb9f/0x11b0
[  753.304092]  ? rtnl_link_unregister+0x230/0x230

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 61e9b288d2dc..d178d5bad7e4 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1385,9 +1385,9 @@ late_initcall(gtp_init);
 
 static void __exit gtp_fini(void)
 {
-	unregister_pernet_subsys(&gtp_net_ops);
 	genl_unregister_family(&gtp_genl_family);
 	rtnl_link_unregister(&gtp_link_ops);
+	unregister_pernet_subsys(&gtp_net_ops);
 
 	pr_info("GTP module unloaded\n");
 }
-- 
2.20.1

