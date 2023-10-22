Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id CB72A7D25DF
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 22 Oct 2023 22:31:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 625AC28306;
	Sun, 22 Oct 2023 20:31:02 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCMmh5XbCI8y; Sun, 22 Oct 2023 20:31:02 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E15C127F3D;
	Sun, 22 Oct 2023 20:31:01 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ED83638A35E4
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A53B027F3D
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:51 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jAm-NGY5rQeY for <osmocom-net-gprs@lists.osmocom.org>;
 Sun, 22 Oct 2023 20:25:51 +0000 (UTC)
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
	by mail.osmocom.org (Postfix) with ESMTP id F0FBA2815F
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:50 +0000 (UTC)
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: netdev@vger.kernel.org
Subject: [PATCH net 2/2] gtp: fix fragmentation needed check with gso
Date: Sun, 22 Oct 2023 22:25:18 +0200
Message-Id: <20231022202519.659526-3-pablo@netfilter.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231022202519.659526-1-pablo@netfilter.org>
References: <20231022202519.659526-1-pablo@netfilter.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: MWX2OWPFHYDXBHBPOHLKEC5BZA6PDYUW
X-Message-ID-Hash: MWX2OWPFHYDXBHBPOHLKEC5BZA6PDYUW
X-MailFrom: pablo@netfilter.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, laforge@osmocom.org, laforge@gnumonks.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/MWX2OWPFHYDXBHBPOHLKEC5BZA6PDYUW/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Call skb_gso_validate_network_len() to check if packet is over PMTU.

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunnel=
ing Protocol (GTP-U)")
Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
---
 drivers/net/gtp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 144ec626230d..b22596b18ee8 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -872,8 +872,9 @@ static int gtp_build_skb_ip4(struct sk_buff *skb, str=
uct net_device *dev,
=20
 	skb_dst_update_pmtu_no_confirm(skb, mtu);
=20
-	if (!skb_is_gso(skb) && (iph->frag_off & htons(IP_DF)) &&
-	    mtu < ntohs(iph->tot_len)) {
+	if (iph->frag_off & htons(IP_DF) &&
+	    ((!skb_is_gso(skb) && skb->len > mtu) ||
+	     (skb_is_gso(skb) && !skb_gso_validate_network_len(skb, mtu)))) {
 		netdev_dbg(dev, "packet too big, fragmentation needed\n");
 		icmp_ndo_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
 			      htonl(mtu));
--=20
2.30.2

