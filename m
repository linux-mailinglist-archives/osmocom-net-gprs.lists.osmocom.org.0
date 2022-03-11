Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1FA4DADDC
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Mar 2022 10:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8F29228050;
	Wed, 16 Mar 2022 09:53:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OITgFLelvz5R; Wed, 16 Mar 2022 09:53:30 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E16DB28053;
	Wed, 16 Mar 2022 09:53:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id EF26A38A0CB4
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D01AB28381
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YS5pHBxg-8Mh for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Mar 2022 17:19:04 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 55BA42812F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647019141; x=1678555141;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GLWQFcQhv41qWJY14jSLho+aQTh68WQFgVXXCvhOWSE=;
  b=Q9xdkCS5vdTUXaMWyqnkM+56Ko3aLIc1Z7pfjp2DNWByLAe5dwD8EOjA
   zHgNW8tb6HdWeewZQ3Q9wMKy1Bu0CMaLZgVoQiJfEutXfoqu+PEVjMgln
   fLFOw8m6QeEPqbfWfyiRHwPb+O8B4+MolmHocq9L8dYEsJkBYO5ZW4gzL
   EcFvtD7o8+ivptBsSzkkD2d+T+oYqvxW39vhzi83BFtD4/H+msMjB2OF8
   i7KD0U5E0/e2yvmDSpdp94sNHcNyqNI6vj9bHNKpVKb3cB1H4dYaJEKBJ
   TpaUxL0LblTLq17Zwiwgbsb+Rsig2fFNnVvEEFa3s7sbpwZ1+oqZZuSvl
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="235565222"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="235565222"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 09:18:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="612215404"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by fmsmga004.fm.intel.com with ESMTP; 11 Mar 2022 09:18:32 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v11 3/7] gtp: Implement GTP echo request
Date: Fri, 11 Mar 2022 09:18:17 -0800
Message-Id: <20220311171821.3785992-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
References: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: POU4X2E5SHESMZLVCZZSRPIF3FXF3VL6
X-Message-ID-Hash: POU4X2E5SHESMZLVCZZSRPIF3FXF3VL6
X-Mailman-Approved-At: Wed, 16 Mar 2022 09:53:08 +0000
CC: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, marcin.szycik@linux.intel.com, michal.swiatkowski@linux.intel.com, jiri@resnulli.us, pablo@netfilter.org, laforge@gnumonks.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/POU4X2E5SHESMZLVCZZSRPIF3FXF3VL6/>
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

Suggested-by: Harald Welte <laforge@gnumonks.org>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Harald Welte <laforge@gnumonks.org>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
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
2.31.1

