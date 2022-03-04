Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8164CD948
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  4 Mar 2022 17:41:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 06EE32812F;
	Fri,  4 Mar 2022 16:41:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwmxjLbA6U_W; Fri,  4 Mar 2022 16:41:33 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 36DFE2812D;
	Fri,  4 Mar 2022 16:41:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4925638A0A78
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 241D328128
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:15 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uId8AkGWIowS for <osmocom-net-gprs@lists.osmocom.org>;
	Fri,  4 Mar 2022 16:41:13 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by mail.osmocom.org (Postfix) with ESMTPS id 5B01628126
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646412071; x=1677948071;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Xj07/FXh3gGFKNNo+bOv0TLhRFSdChSLCzz0vlgCUa0=;
  b=DvuCs7xec0YqfYyW9eUXrv+0839Sma9SnYmEwg2Ggrf1cSvNyTR8j312
   ibzNkRxqPKY9o+IcXFeY4SZtPZ+mCaAAcebc9Dut0MOn61uoYyuJapnzw
   9Eu0avTAR9J2dcif3Kr/o5qAN8ikk66x3yhYhKxuMQpjTcfM6MoCrUsFv
   PCnbyC6BpbMSGAVVH0xnf8oB0rQbdGhxIfJmI9Z0XxRmTmmGwKMnQ2xbU
   DUAmib2Rs2KPHldmh48svz2/85fgF5dL1KwogQeNUWXTIWj47Ybx7rHmC
   lRxN4BaO6aaH1fZhJZneOqSOHDxG2kiHmbloN5II2mJWuTpf+eyOdQ484
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="340441826"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400";
   d="scan'208";a="340441826"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2022 08:41:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400";
   d="scan'208";a="536332478"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga007.jf.intel.com with ESMTP; 04 Mar 2022 08:41:05 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 224Gf12J020994;
	Fri, 4 Mar 2022 16:41:04 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v10 3/7] gtp: Implement GTP echo request
Date: Fri,  4 Mar 2022 17:40:44 +0100
Message-Id: <20220304164048.476900-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: XXVQFDSUQOTUW6KCBFFAMGQXHYQJPOHI
X-Message-ID-Hash: XXVQFDSUQOTUW6KCBFFAMGQXHYQJPOHI
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XXVQFDSUQOTUW6KCBFFAMGQXHYQJPOHI/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Adding GTP device through ip link creates the situation where
GTP instance is not able to send GTP echo requests.
Echo requests are used to check if GTP peer is still alive.
With this patch, gtp_genl_ops are extended by new cmd (GTP_CMD_ECHOREQ)
which allows to send echo request in the given version of GTP
protocol (v0 or v1), from the given ms address to he given
peer. TID is not inclued because in all path management
messages it should be equal to 0.

When GTP echo response is detected, multicast message is
send to everyone in the gtp_genl_family. Message contains
GTP version, ms address and peer address.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Harald Welte <laforge@gnumonks.org>
---
v8: Handling of GTP Echo Response removed
v9: Implement sending multicast message when echo response
    is detected
v10: Fix 80 char line limit
---
 drivers/net/gtp.c        | 305 ++++++++++++++++++++++++++++++++++-----
 include/uapi/linux/gtp.h |   1 +
 2 files changed, 269 insertions(+), 37 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index bf434d79f868..756714d4ad92 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -79,6 +79,12 @@ struct gtp_dev {
 	u8			restart_count;
 };
=20
+struct echo_info {
+	struct in_addr		ms_addr_ip4;
+	struct in_addr		peer_addr_ip4;
+	u8			gtp_version;
+};
+
 static unsigned int gtp_net_id __read_mostly;
=20
 struct gtp_net {
@@ -87,6 +93,16 @@ struct gtp_net {
=20
 static u32 gtp_h_initval;
=20
+static struct genl_family gtp_genl_family;
+
+enum gtp_multicast_groups {
+	GTP_GENL_MCGRP,
+};
+
+static const struct genl_multicast_group gtp_genl_mcgrps[] =3D {
+	[GTP_GENL_MCGRP] =3D { .name =3D GTP_GENL_MCGRP_NAME },
+};
+
 static void pdp_context_delete(struct pdp_ctx *pctx);
=20
 static inline u32 gtp0_hashfn(u64 tid)
@@ -243,12 +259,38 @@ static struct rtable *ip4_route_output_gtp(struct f=
lowi4 *fl4,
  *   by the receiver
  * Returns true if the echo req was correct, false otherwise.
  */
-static bool gtp0_validate_echo_req(struct gtp0_header *gtp0)
+static bool gtp0_validate_echo_hdr(struct gtp0_header *gtp0)
 {
 	return !(gtp0->tid || (gtp0->flags ^ 0x1e) ||
 		gtp0->number !=3D 0xff || gtp0->flow);
 }
=20
+/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
+static void gtp0_build_echo_msg(struct gtp0_header *hdr, __u8 msg_type)
+{
+	int len_pkt, len_hdr;
+
+	hdr->flags =3D 0x1e; /* v0, GTP-non-prime. */
+	hdr->type =3D msg_type;
+	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
+	 * are not used and shall be set to 0.
+	 */
+	hdr->flow =3D 0;
+	hdr->tid =3D 0;
+	hdr->number =3D 0xff;
+	hdr->spare[0] =3D 0xff;
+	hdr->spare[1] =3D 0xff;
+	hdr->spare[2] =3D 0xff;
+
+	len_pkt =3D sizeof(struct gtp0_packet);
+	len_hdr =3D sizeof(struct gtp0_header);
+
+	if (msg_type =3D=3D GTP_ECHO_RSP)
+		hdr->length =3D htons(len_pkt - len_hdr);
+	else
+		hdr->length =3D 0;
+}
+
 static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 {
 	struct gtp0_packet *gtp_pkt;
@@ -260,7 +302,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, s=
truct sk_buff *skb)
=20
 	gtp0 =3D (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
=20
-	if (!gtp0_validate_echo_req(gtp0))
+	if (!gtp0_validate_echo_hdr(gtp0))
 		return -1;
=20
 	seq =3D gtp0->seq;
@@ -271,10 +313,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	gtp_pkt =3D skb_push(skb, sizeof(struct gtp0_packet));
 	memset(gtp_pkt, 0, sizeof(struct gtp0_packet));
=20
-	gtp_pkt->gtp0_h.flags =3D 0x1e; /* v0, GTP-non-prime. */
-	gtp_pkt->gtp0_h.type =3D GTP_ECHO_RSP;
-	gtp_pkt->gtp0_h.length =3D
-		htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+	gtp0_build_echo_msg(&gtp_pkt->gtp0_h, GTP_ECHO_RSP);
=20
 	/* GSM TS 09.60. 7.3 The Sequence Number in a signalling response
 	 * message shall be copied from the signalling request message
@@ -282,16 +321,6 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	 */
 	gtp_pkt->gtp0_h.seq =3D seq;
=20
-	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
-	 * are not used and shall be set to 0.
-	 */
-	gtp_pkt->gtp0_h.flow =3D 0;
-	gtp_pkt->gtp0_h.tid =3D 0;
-	gtp_pkt->gtp0_h.number =3D 0xff;
-	gtp_pkt->gtp0_h.spare[0] =3D 0xff;
-	gtp_pkt->gtp0_h.spare[1] =3D 0xff;
-	gtp_pkt->gtp0_h.spare[2] =3D 0xff;
-
 	gtp_pkt->ie.tag =3D GTPIE_RECOVERY;
 	gtp_pkt->ie.val =3D gtp->restart_count;
=20
@@ -319,6 +348,61 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	return 0;
 }
=20
+static int gtp_genl_fill_echo(struct sk_buff *skb, u32 snd_portid, u32 s=
nd_seq,
+			      int flags, u32 type, struct echo_info echo)
+{
+	void *genlh;
+
+	genlh =3D genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, flags=
,
+			    type);
+	if (!genlh)
+		goto failure;
+
+	if (nla_put_u32(skb, GTPA_VERSION, echo.gtp_version) ||
+	    nla_put_be32(skb, GTPA_PEER_ADDRESS, echo.peer_addr_ip4.s_addr) ||
+	    nla_put_be32(skb, GTPA_MS_ADDRESS, echo.ms_addr_ip4.s_addr))
+		goto failure;
+
+	genlmsg_end(skb, genlh);
+	return 0;
+
+failure:
+	genlmsg_cancel(skb, genlh);
+	return -EMSGSIZE;
+}
+
+static int gtp0_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *sk=
b)
+{
+	struct gtp0_header *gtp0;
+	struct echo_info echo;
+	struct sk_buff *msg;
+	struct iphdr *iph;
+	int ret;
+
+	gtp0 =3D (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
+
+	if (!gtp0_validate_echo_hdr(gtp0))
+		return -1;
+
+	iph =3D ip_hdr(skb);
+	echo.ms_addr_ip4.s_addr =3D iph->daddr;
+	echo.peer_addr_ip4.s_addr =3D iph->saddr;
+	echo.gtp_version =3D GTP_V0;
+
+	msg =3D nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
+	if (!msg)
+		return -ENOMEM;
+
+	ret =3D gtp_genl_fill_echo(msg, 0, 0, 0, GTP_CMD_ECHOREQ, echo);
+	if (ret < 0) {
+		nlmsg_free(msg);
+		return ret;
+	}
+
+	return genlmsg_multicast_netns(&gtp_genl_family, dev_net(gtp->dev),
+				       msg, 0, GTP_GENL_MCGRP, GFP_ATOMIC);
+}
+
 /* 1 means pass up to the stack, -1 means drop and 0 means decapsulated.=
 */
 static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
@@ -342,6 +426,9 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, s=
truct sk_buff *skb)
 	if (gtp0->type =3D=3D GTP_ECHO_REQ && gtp->sk_created)
 		return gtp0_send_echo_resp(gtp, skb);
=20
+	if (gtp0->type =3D=3D GTP_ECHO_RSP && gtp->sk_created)
+		return gtp0_handle_echo_resp(gtp, skb);
+
 	if (gtp0->type !=3D GTP_TPDU)
 		return 1;
=20
@@ -354,6 +441,36 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	return gtp_rx(pctx, skb, hdrlen, gtp->role);
 }
=20
+/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
+static void gtp1u_build_echo_msg(struct gtp1_header_long *hdr, __u8 msg_=
type)
+{
+	int len_pkt, len_hdr;
+
+	/* S flag must be set to 1 */
+	hdr->flags =3D 0x32; /* v1, GTP-non-prime. */
+	hdr->type =3D msg_type;
+	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
+	hdr->tid =3D 0;
+
+	/* seq, npdu and next should be counted to the length of the GTP packet
+	 * that's why szie of gtp1_header should be subtracted,
+	 * not size of gtp1_header_long.
+	 */
+
+	len_hdr =3D sizeof(struct gtp1_header);
+
+	if (msg_type =3D=3D GTP_ECHO_RSP) {
+		len_pkt =3D sizeof(struct gtp1u_packet);
+		hdr->length =3D htons(len_pkt - len_hdr);
+	} else {
+		/* GTP_ECHO_REQ does not carry GTP Information Element,
+		 * the why gtp1_header_long is used here.
+		 */
+		len_pkt =3D sizeof(struct gtp1_header_long);
+		hdr->length =3D htons(len_pkt - len_hdr);
+	}
+}
+
 static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb=
)
 {
 	struct gtp1_header_long *gtp1u;
@@ -378,17 +495,7 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp,=
 struct sk_buff *skb)
 	gtp_pkt =3D skb_push(skb, sizeof(struct gtp1u_packet));
 	memset(gtp_pkt, 0, sizeof(struct gtp1u_packet));
=20
-	/* S flag must be set to 1 */
-	gtp_pkt->gtp1u_h.flags =3D 0x32;
-	gtp_pkt->gtp1u_h.type =3D GTP_ECHO_RSP;
-	/* seq, npdu and next should be counted to the length of the GTP packet
-	 * that's why szie of gtp1_header should be subtracted,
-	 * not why szie of gtp1_header_long.
-	 */
-	gtp_pkt->gtp1u_h.length =3D
-		htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
-	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
-	gtp_pkt->gtp1u_h.tid =3D 0;
+	gtp1u_build_echo_msg(&gtp_pkt->gtp1u_h, GTP_ECHO_RSP);
=20
 	/* 3GPP TS 29.281 7.7.2 - The Restart Counter value in the
 	 * Recovery information element shall not be used, i.e. it shall
@@ -423,6 +530,42 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp,=
 struct sk_buff *skb)
 	return 0;
 }
=20
+static int gtp1u_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *s=
kb)
+{
+	struct gtp1_header_long *gtp1u;
+	struct echo_info echo;
+	struct sk_buff *msg;
+	struct iphdr *iph;
+	int ret;
+
+	gtp1u =3D (struct gtp1_header_long *)(skb->data + sizeof(struct udphdr)=
);
+
+	/* 3GPP TS 29.281 5.1 - For the Echo Request, Echo Response,
+	 * Error Indication and Supported Extension Headers Notification
+	 * messages, the S flag shall be set to 1 and TEID shall be set to 0.
+	 */
+	if (!(gtp1u->flags & GTP1_F_SEQ) || gtp1u->tid)
+		return -1;
+
+	iph =3D ip_hdr(skb);
+	echo.ms_addr_ip4.s_addr =3D iph->daddr;
+	echo.peer_addr_ip4.s_addr =3D iph->saddr;
+	echo.gtp_version =3D GTP_V1;
+
+	msg =3D nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
+	if (!msg)
+		return -ENOMEM;
+
+	ret =3D gtp_genl_fill_echo(msg, 0, 0, 0, GTP_CMD_ECHOREQ, echo);
+	if (ret < 0) {
+		nlmsg_free(msg);
+		return ret;
+	}
+
+	return genlmsg_multicast_netns(&gtp_genl_family, dev_net(gtp->dev),
+				       msg, 0, GTP_GENL_MCGRP, GFP_ATOMIC);
+}
+
 static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb=
)
 {
 	unsigned int hdrlen =3D sizeof(struct udphdr) +
@@ -445,6 +588,9 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	if (gtp1->type =3D=3D GTP_ECHO_REQ && gtp->sk_created)
 		return gtp1u_send_echo_resp(gtp, skb);
=20
+	if (gtp1->type =3D=3D GTP_ECHO_RSP && gtp->sk_created)
+		return gtp1u_handle_echo_resp(gtp, skb);
+
 	if (gtp1->type !=3D GTP_TPDU)
 		return 1;
=20
@@ -1431,16 +1577,6 @@ static int gtp_genl_del_pdp(struct sk_buff *skb, s=
truct genl_info *info)
 	return err;
 }
=20
-static struct genl_family gtp_genl_family;
-
-enum gtp_multicast_groups {
-	GTP_GENL_MCGRP,
-};
-
-static const struct genl_multicast_group gtp_genl_mcgrps[] =3D {
-	[GTP_GENL_MCGRP] =3D { .name =3D GTP_GENL_MCGRP_NAME },
-};
-
 static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32 s=
nd_seq,
 			      int flags, u32 type, struct pdp_ctx *pctx)
 {
@@ -1584,6 +1720,95 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 	return skb->len;
 }
=20
+static int gtp_genl_send_echo_req(struct sk_buff *skb, struct genl_info =
*info)
+{
+	struct sk_buff *skb_to_send;
+	__be32 src_ip, dst_ip;
+	unsigned int version;
+	struct gtp_dev *gtp;
+	struct flowi4 fl4;
+	struct rtable *rt;
+	struct sock *sk;
+	__be16 port;
+	int len;
+
+	if (!info->attrs[GTPA_VERSION] ||
+	    !info->attrs[GTPA_LINK] ||
+	    !info->attrs[GTPA_PEER_ADDRESS] ||
+	    !info->attrs[GTPA_MS_ADDRESS])
+		return -EINVAL;
+
+	version =3D nla_get_u32(info->attrs[GTPA_VERSION]);
+	dst_ip =3D nla_get_be32(info->attrs[GTPA_PEER_ADDRESS]);
+	src_ip =3D nla_get_be32(info->attrs[GTPA_MS_ADDRESS]);
+
+	gtp =3D gtp_find_dev(sock_net(skb->sk), info->attrs);
+	if (!gtp)
+		return -ENODEV;
+
+	if (!gtp->sk_created)
+		return -EOPNOTSUPP;
+	if (!(gtp->dev->flags & IFF_UP))
+		return -ENETDOWN;
+
+	if (version =3D=3D GTP_V0) {
+		struct gtp0_header *gtp0_h;
+
+		len =3D LL_RESERVED_SPACE(gtp->dev) + sizeof(struct gtp0_header) +
+			sizeof(struct iphdr) + sizeof(struct udphdr);
+
+		skb_to_send =3D netdev_alloc_skb_ip_align(gtp->dev, len);
+		if (!skb_to_send)
+			return -ENOMEM;
+
+		sk =3D gtp->sk0;
+		port =3D htons(GTP0_PORT);
+
+		gtp0_h =3D skb_push(skb_to_send, sizeof(struct gtp0_header));
+		memset(gtp0_h, 0, sizeof(struct gtp0_header));
+		gtp0_build_echo_msg(gtp0_h, GTP_ECHO_REQ);
+	} else if (version =3D=3D GTP_V1) {
+		struct gtp1_header_long *gtp1u_h;
+
+		len =3D LL_RESERVED_SPACE(gtp->dev) +
+			sizeof(struct gtp1_header_long) +
+			sizeof(struct iphdr) + sizeof(struct udphdr);
+
+		skb_to_send =3D netdev_alloc_skb_ip_align(gtp->dev, len);
+		if (!skb_to_send)
+			return -ENOMEM;
+
+		sk =3D gtp->sk1u;
+		port =3D htons(GTP1U_PORT);
+
+		gtp1u_h =3D skb_push(skb_to_send,
+				   sizeof(struct gtp1_header_long));
+		memset(gtp1u_h, 0, sizeof(struct gtp1_header_long));
+		gtp1u_build_echo_msg(gtp1u_h, GTP_ECHO_REQ);
+	} else {
+		return -ENODEV;
+	}
+
+	rt =3D ip4_route_output_gtp(&fl4, sk, dst_ip, src_ip);
+	if (IS_ERR(rt)) {
+		netdev_dbg(gtp->dev, "no route for echo request to %pI4\n",
+			   &dst_ip);
+			   kfree_skb(skb_to_send);
+		return -ENODEV;
+	}
+
+	udp_tunnel_xmit_skb(rt, sk, skb_to_send,
+			    fl4.saddr, fl4.daddr,
+			    fl4.flowi4_tos,
+			    ip4_dst_hoplimit(&rt->dst),
+			    0,
+			    port, port,
+			    !net_eq(sock_net(sk),
+				    dev_net(gtp->dev)),
+			    false);
+	return 0;
+}
+
 static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] =3D {
 	[GTPA_LINK]		=3D { .type =3D NLA_U32, },
 	[GTPA_VERSION]		=3D { .type =3D NLA_U32, },
@@ -1616,6 +1841,12 @@ static const struct genl_small_ops gtp_genl_ops[] =
=3D {
 		.dumpit =3D gtp_genl_dump_pdp,
 		.flags =3D GENL_ADMIN_PERM,
 	},
+	{
+		.cmd =3D GTP_CMD_ECHOREQ,
+		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit =3D gtp_genl_send_echo_req,
+		.flags =3D GENL_ADMIN_PERM,
+	},
 };
=20
 static struct genl_family gtp_genl_family __ro_after_init =3D {
diff --git a/include/uapi/linux/gtp.h b/include/uapi/linux/gtp.h
index 79f9191bbb24..2f61298a7b77 100644
--- a/include/uapi/linux/gtp.h
+++ b/include/uapi/linux/gtp.h
@@ -8,6 +8,7 @@ enum gtp_genl_cmds {
 	GTP_CMD_NEWPDP,
 	GTP_CMD_DELPDP,
 	GTP_CMD_GETPDP,
+	GTP_CMD_ECHOREQ,
=20
 	GTP_CMD_MAX,
 };
--=20
2.35.1

