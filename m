Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 24591853A63
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id ED612425CF;
	Tue, 13 Feb 2024 18:57:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fl1lD6_QFG7a; Tue, 13 Feb 2024 18:57:48 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5993B425BF;
	Tue, 13 Feb 2024 18:57:48 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 59E0B38A0E38
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 423E02BCC1
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:14:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WaGh6l5T0Jxx for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 24 Jan 2024 10:14:33 +0000 (UTC)
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	by mail.osmocom.org (Postfix) with ESMTPS id BFF892BCB9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:14:33 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
	id 5F3FB2F20242; Wed, 24 Jan 2024 10:14:33 +0000 (UTC)
Received: from altlinux.malta.altlinux.ru (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id 2951F2F2022A;
	Wed, 24 Jan 2024 10:14:31 +0000 (UTC)
From: kovalev@altlinux.org
To: pablo@netfilter.org,
	laforge@gnumonks.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	osmocom-net-gprs@lists.osmocom.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
Date: Wed, 24 Jan 2024 13:14:04 +0300
Message-Id: <20240124101404.161655-2-kovalev@altlinux.org>
X-Mailer: git-send-email 2.33.8
In-Reply-To: <20240124101404.161655-1-kovalev@altlinux.org>
References: <20240124101404.161655-1-kovalev@altlinux.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kovalev@altlinux.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4WWI4KPRODNN4INJHWIPI2NPN22MFDI7
X-Message-ID-Hash: 4WWI4KPRODNN4INJHWIPI2NPN22MFDI7
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: kovalev@altlinux.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4WWI4KPRODNN4INJHWIPI2NPN22MFDI7/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Vasiliy Kovalev <kovalev@altlinux.org>

After unloading the module, an instance continues to exist that accesses
outdated memory addresses.

To prevent this, the dump_pdp_en flag has been added, which blocks the
dump of pdp contexts by a false value. And only after these checks can
the net_generic() function be called.

These errors were found using the syzkaller program:

Syzkaller hit 'general protection fault in gtp_genl_dump_pdp' bug.
gtp: GTP module loaded (pdp ctx size 104 bytes)
gtp: GTP module unloaded
general protection fault, probably for non-canonical address
0xdffffc0000000001:0000 [#1] SMP KASAN NOPTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 2782 Comm: syz-executor139 Not tainted 5.10.200-std-def-alt1 =
#1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.0-alt1
RIP: 0010:gtp_genl_dump_pdp+0x1b1/0x790 [gtp]
...
Call Trace:
 genl_lock_dumpit+0x6b/0xa0 net/netlink/genetlink.c:623
 netlink_dump+0x575/0xc70 net/netlink/af_netlink.c:2271
 __netlink_dump_start+0x64e/0x910 net/netlink/af_netlink.c:2376
 genl_family_rcv_msg_dumpit+0x2b8/0x310 net/netlink/genetlink.c:686
 genl_family_rcv_msg net/netlink/genetlink.c:780 [inline]
 genl_rcv_msg+0x450/0x5a0 net/netlink/genetlink.c:800
 netlink_rcv_skb+0x150/0x440 net/netlink/af_netlink.c:2497
 genl_rcv+0x29/0x40 net/netlink/genetlink.c:811
 netlink_unicast_kernel net/netlink/af_netlink.c:1322 [inline]
 netlink_unicast+0x54e/0x800 net/netlink/af_netlink.c:1348
 netlink_sendmsg+0x914/0xe00 net/netlink/af_netlink.c:1916
 sock_sendmsg_nosec net/socket.c:651 [inline]
 __sock_sendmsg+0x159/0x190 net/socket.c:663
 ____sys_sendmsg+0x712/0x870 net/socket.c:2376
 ___sys_sendmsg+0xf8/0x170 net/socket.c:2430
 __sys_sendmsg+0xea/0x1b0 net/socket.c:2459
 do_syscall_64+0x33/0x40 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x62/0xc7
RIP: 0033:0x7f2ea16c2d49

Fixes: 94a6d9fb88df ("gtp: fix wrong condition in gtp_genl_dump_pdp()")
Signed-off-by: Vasiliy Kovalev <kovalev@altlinux.org>
---
 drivers/net/gtp.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 477b4d4f860bd3..3fc4639711cd83 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1675,6 +1675,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb, st=
ruct genl_info *info)
 	return err;
 }
=20
+static bool dump_pdp_en;
+
 static int gtp_genl_dump_pdp(struct sk_buff *skb,
 				struct netlink_callback *cb)
 {
@@ -1684,12 +1686,19 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 	struct pdp_ctx *pctx;
 	struct gtp_net *gn;
=20
-	gn =3D net_generic(net, gtp_net_id);
-
-	if (cb->args[4])
+	/* Do not allow further operations if the module is
+	 * unloaded before or after the process is blocked.
+	 */
+	if (!dump_pdp_en)
 		return 0;
=20
 	rcu_read_lock();
+	if (!dump_pdp_en || cb->args[4]) {
+		rcu_read_unlock();
+		return 0;
+	}
+	gn =3D net_generic(net, gtp_net_id);
+
 	list_for_each_entry_rcu(gtp, &gn->gtp_dev_list, list) {
 		if (last_gtp && last_gtp !=3D gtp)
 			continue;
@@ -1914,6 +1923,8 @@ static int __init gtp_init(void)
 	if (err < 0)
 		goto unreg_genl_family;
=20
+	dump_pdp_en =3D true;
+
 	pr_info("GTP module loaded (pdp ctx size %zd bytes)\n",
 		sizeof(struct pdp_ctx));
 	return 0;
@@ -1930,6 +1941,7 @@ late_initcall(gtp_init);
=20
 static void __exit gtp_fini(void)
 {
+	dump_pdp_en =3D false;
 	genl_unregister_family(&gtp_genl_family);
 	rtnl_link_unregister(&gtp_link_ops);
 	unregister_pernet_subsys(&gtp_net_ops);
--=20
2.33.8

