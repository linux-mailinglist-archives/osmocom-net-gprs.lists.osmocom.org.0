Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE217D25DE
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 22 Oct 2023 22:30:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6E6C327F3D;
	Sun, 22 Oct 2023 20:30:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GsCY6B9HKQeK; Sun, 22 Oct 2023 20:30:25 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E872E2815F;
	Sun, 22 Oct 2023 20:30:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 513B538A35E4
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1E1D828307
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:51 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cCI6GaIRh3vV for <osmocom-net-gprs@lists.osmocom.org>;
 Sun, 22 Oct 2023 20:25:50 +0000 (UTC)
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
	by mail.osmocom.org (Postfix) with ESMTP id 17A0228304
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:50 +0000 (UTC)
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: netdev@vger.kernel.org
Subject: [PATCH net 1/2] gtp: uapi: fix GTPA_MAX
Date: Sun, 22 Oct 2023 22:25:17 +0200
Message-Id: <20231022202519.659526-2-pablo@netfilter.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231022202519.659526-1-pablo@netfilter.org>
References: <20231022202519.659526-1-pablo@netfilter.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: IZP6PSEGGANFLLF2EZV5QNNFBIZRXRAZ
X-Message-ID-Hash: IZP6PSEGGANFLLF2EZV5QNNFBIZRXRAZ
X-MailFrom: pablo@netfilter.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, laforge@osmocom.org, laforge@gnumonks.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/IZP6PSEGGANFLLF2EZV5QNNFBIZRXRAZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Subtract one to __GTPA_MAX, otherwise GTPA_MAX is off by 2.

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunnel=
ing Protocol (GTP-U)")
Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
---
 include/uapi/linux/gtp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/uapi/linux/gtp.h b/include/uapi/linux/gtp.h
index 2f61298a7b77..3dcdb9e33cba 100644
--- a/include/uapi/linux/gtp.h
+++ b/include/uapi/linux/gtp.h
@@ -33,6 +33,6 @@ enum gtp_attrs {
 	GTPA_PAD,
 	__GTPA_MAX,
 };
-#define GTPA_MAX (__GTPA_MAX + 1)
+#define GTPA_MAX (__GTPA_MAX - 1)
=20
 #endif /* _UAPI_LINUX_GTP_H_ */
--=20
2.30.2

