Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 033689AB150
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 22 Oct 2024 16:48:40 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D419B15ED28;
	Tue, 22 Oct 2024 14:48:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgE1D70f7oUR; Tue, 22 Oct 2024 14:48:39 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 519AB15ED1E;
	Tue, 22 Oct 2024 14:48:37 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A8F8E38A0EB7
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 14:48:33 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 85BD715ED1C
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 14:48:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gSLKuRX2X_mm for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 22 Oct 2024 14:48:32 +0000 (UTC)
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
	by mail.osmocom.org (Postfix) with ESMTP id BDFF615ED17
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 14:48:31 +0000 (UTC)
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: netdev@vger.kernel.org
Subject: [PATCH net] gtp: allow -1 to be specified as file description from userspace
Date: Tue, 22 Oct 2024 16:48:25 +0200
Message-Id: <20241022144825.66740-1-pablo@netfilter.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UMNRS6WA3AY6DB6ODEM3B5TRHDCRSUUX
X-Message-ID-Hash: UMNRS6WA3AY6DB6ODEM3B5TRHDCRSUUX
X-MailFrom: pablo@netfilter.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, fw@strlen.de, pespin@sysmocom.de, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/UMNRS6WA3AY6DB6ODEM3B5TRHDCRSUUX/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Existing user space applications maintained by the Osmocom project are
breaking since a recent fix that addresses incorrect error checking.

Restore operation for user space programs that specify -1 as file
descriptor to skip GTPv0 or GTPv1 only sockets.

Fixes: defd8b3c37b0 ("gtp: fix a potential NULL pointer dereference")
Reported-by: Pau Espin Pedrol <pespin@sysmocom.de>
Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
---
 drivers/net/gtp.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index a60bfb1abb7f..70f981887518 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1702,20 +1702,24 @@ static int gtp_encap_enable(struct gtp_dev *gtp, =
struct nlattr *data[])
 		return -EINVAL;
=20
 	if (data[IFLA_GTP_FD0]) {
-		u32 fd0 =3D nla_get_u32(data[IFLA_GTP_FD0]);
+		int fd0 =3D nla_get_u32(data[IFLA_GTP_FD0]);
=20
-		sk0 =3D gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
-		if (IS_ERR(sk0))
-			return PTR_ERR(sk0);
+		if (fd0 >=3D 0) {
+			sk0 =3D gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
+			if (IS_ERR(sk0))
+				return PTR_ERR(sk0);
+		}
 	}
=20
 	if (data[IFLA_GTP_FD1]) {
-		u32 fd1 =3D nla_get_u32(data[IFLA_GTP_FD1]);
+		int fd1 =3D nla_get_u32(data[IFLA_GTP_FD1]);
=20
-		sk1u =3D gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
-		if (IS_ERR(sk1u)) {
-			gtp_encap_disable_sock(sk0);
-			return PTR_ERR(sk1u);
+		if (fd1 >=3D 0) {
+			sk1u =3D gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
+			if (IS_ERR(sk1u)) {
+				gtp_encap_disable_sock(sk0);
+				return PTR_ERR(sk1u);
+			}
 		}
 	}
=20
--=20
2.30.2

