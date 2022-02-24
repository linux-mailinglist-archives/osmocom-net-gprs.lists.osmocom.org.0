Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A554C3522
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 24 Feb 2022 19:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AF732283AC;
	Thu, 24 Feb 2022 18:55:51 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T46Rp8qqMsxJ; Thu, 24 Feb 2022 18:55:50 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EAB3B28398;
	Thu, 24 Feb 2022 18:55:40 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B5ACE38A181C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7E5E7283A9
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-pzWMxJJavo for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Feb 2022 18:55:32 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by mail.osmocom.org (Postfix) with ESMTPS id 7C3CB2838D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645728931; x=1677264931;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lZkNGHKpZSlCafm0gl41jwDrHENAF9Bq68n4c6aZXoM=;
  b=DxSv/3LE5MMkPjaT12eN46REJzfQ1t1py8dmwAIiqiU3TeRozA9vBxUY
   oQxu7fuj8HizwlHa8aXzrebZQCyb7NxFQUML090Vfa/1oFwhPgb4hFZcA
   xqBsWLS4utBuuSx5liNNa7XFaxaueNoxeIDNq4HXtUN8pAhLH3lfTT1Yj
   icU9FnJfxxTWQtgSHAUlv4RPBFwxHdb4zqpMhU8hn8EzyZyYFc6Z8D/8v
   nVNlnuCrpkqraT2Tq6m8D5UJ7MnYKYjQQGjFa0+kKXV/bFlMVjpEIVqSw
   ngLznNPcYT4aXBfPx7dCqeowEVtwE2UOsos+qFVWbVVCbj1iBIQyM3jdh
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="315542663"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="315542663"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2022 10:55:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="508985093"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga006.jf.intel.com with ESMTP; 24 Feb 2022 10:55:12 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21OIt5Yx018029;
	Thu, 24 Feb 2022 18:55:11 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v9 2/7] gtp: Implement GTP echo response
Date: Thu, 24 Feb 2022 19:54:55 +0100
Message-Id: <20220224185500.18384-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: N3F6BPWARKTVCJWNAJWGIIPXU4AP5L7Y
X-Message-ID-Hash: N3F6BPWARKTVCJWNAJWGIIPXU4AP5L7Y
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/N3F6BPWARKTVCJWNAJWGIIPXU4AP5L7Y/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Adding GTP device through ip link creates the situation where
there is no userspace daemon which would handle GTP messages
(Echo Request for example). GTP-U instance which would not respond
to echo requests would violate GTP specification.

When GTP packet arrives with GTP_ECHO_REQ message type,
GTP_ECHO_RSP is send to the sender. GTP_ECHO_RSP message
should contain information element with GTPIE_RECOVERY tag and
restart counter value. For GTPv1 restart counter is not used
and should be equal to 0, for GTPv0 restart counter contains
information provided from userspace(IFLA_GTP_RESTART_COUNT).

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Harald Welte <laforge@gnumonks.org>
Reviewed-by: Harald Welte <laforge@gnumonks.org>
Tested-by: Harald Welte <laforge@gnumonks.org>
---
v6: gtp0_echo_resp renamed to gtp0_send_echo_resp and
    gtp1u_echo_resp renamed to gtp1u_send_echo_resp
---
 drivers/net/gtp.c            | 212 ++++++++++++++++++++++++++++++++---
 include/net/gtp.h            |  31 +++++
 include/uapi/linux/if_link.h |   1 +
 3 files changed, 228 insertions(+), 16 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 25d8521897b3..5ed24fa9d5b2 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -75,6 +75,8 @@ struct gtp_dev {
 	unsigned int		hash_size;
 	struct hlist_head	*tid_hash;
 	struct hlist_head	*addr_hash;
+
+	u8			restart_count;
 };
=20
 static unsigned int gtp_net_id __read_mostly;
@@ -217,6 +219,106 @@ static int gtp_rx(struct pdp_ctx *pctx, struct sk_b=
uff *skb,
 	return -1;
 }
=20
+static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
+					   const struct sock *sk,
+					   __be32 daddr, __be32 saddr)
+{
+	memset(fl4, 0, sizeof(*fl4));
+	fl4->flowi4_oif		=3D sk->sk_bound_dev_if;
+	fl4->daddr		=3D daddr;
+	fl4->saddr		=3D saddr;
+	fl4->flowi4_tos		=3D RT_CONN_FLAGS(sk);
+	fl4->flowi4_proto	=3D sk->sk_protocol;
+
+	return ip_route_output_key(sock_net(sk), fl4);
+}
+
+/* GSM TS 09.60. 7.3
+ * In all Path Management messages:
+ * - TID: is not used and shall be set to 0.
+ * - Flow Label is not used and shall be set to 0
+ * In signalling messages:
+ * - number: this field is not yet used in signalling messages.
+ *   It shall be set to 255 by the sender and shall be ignored
+ *   by the receiver
+ * Returns true if the echo req was correct, false otherwise.
+ */
+static bool gtp0_validate_echo_req(struct gtp0_header *gtp0)
+{
+	return !(gtp0->tid || (gtp0->flags ^ 0x1e) ||
+		gtp0->number !=3D 0xff || gtp0->flow);
+}
+
+static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
+{
+	struct gtp0_packet *gtp_pkt;
+	struct gtp0_header *gtp0;
+	struct rtable *rt;
+	struct flowi4 fl4;
+	struct iphdr *iph;
+	__be16 seq;
+
+	gtp0 =3D (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
+
+	if (!gtp0_validate_echo_req(gtp0))
+		return -1;
+
+	seq =3D gtp0->seq;
+
+	/* pull GTP and UDP headers */
+	skb_pull_data(skb, sizeof(struct gtp0_header) + sizeof(struct udphdr));
+
+	gtp_pkt =3D skb_push(skb, sizeof(struct gtp0_packet));
+	memset(gtp_pkt, 0, sizeof(struct gtp0_packet));
+
+	gtp_pkt->gtp0_h.flags =3D 0x1e; /* v0, GTP-non-prime. */
+	gtp_pkt->gtp0_h.type =3D GTP_ECHO_RSP;
+	gtp_pkt->gtp0_h.length =3D
+		htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+
+	/* GSM TS 09.60. 7.3 The Sequence Number in a signalling response
+	 * message shall be copied from the signalling request message
+	 * that the GSN is replying to.
+	 */
+	gtp_pkt->gtp0_h.seq =3D seq;
+
+	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
+	 * are not used and shall be set to 0.
+	 */
+	gtp_pkt->gtp0_h.flow =3D 0;
+	gtp_pkt->gtp0_h.tid =3D 0;
+	gtp_pkt->gtp0_h.number =3D 0xff;
+	gtp_pkt->gtp0_h.spare[0] =3D 0xff;
+	gtp_pkt->gtp0_h.spare[1] =3D 0xff;
+	gtp_pkt->gtp0_h.spare[2] =3D 0xff;
+
+	gtp_pkt->ie.tag =3D GTPIE_RECOVERY;
+	gtp_pkt->ie.val =3D gtp->restart_count;
+
+	iph =3D ip_hdr(skb);
+
+	/* find route to the sender,
+	 * src address becomes dst address and vice versa.
+	 */
+	rt =3D ip4_route_output_gtp(&fl4, gtp->sk0, iph->saddr, iph->daddr);
+	if (IS_ERR(rt)) {
+		netdev_dbg(gtp->dev, "no route for echo response from %pI4\n",
+			   &iph->saddr);
+		return -1;
+	}
+
+	udp_tunnel_xmit_skb(rt, gtp->sk0, skb,
+			    fl4.saddr, fl4.daddr,
+			    iph->tos,
+			    ip4_dst_hoplimit(&rt->dst),
+			    0,
+			    htons(GTP0_PORT), htons(GTP0_PORT),
+			    !net_eq(sock_net(gtp->sk1u),
+				    dev_net(gtp->dev)),
+			    false);
+	return 0;
+}
+
 /* 1 means pass up to the stack, -1 means drop and 0 means decapsulated.=
 */
 static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
@@ -233,6 +335,13 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	if ((gtp0->flags >> 5) !=3D GTP_V0)
 		return 1;
=20
+	/* If the sockets were created in kernel, it means that
+	 * there is no daemon running in userspace which would
+	 * handle echo request.
+	 */
+	if (gtp0->type =3D=3D GTP_ECHO_REQ && gtp->sk_created)
+		return gtp0_send_echo_resp(gtp, skb);
+
 	if (gtp0->type !=3D GTP_TPDU)
 		return 1;
=20
@@ -245,6 +354,74 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	return gtp_rx(pctx, skb, hdrlen, gtp->role);
 }
=20
+static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb=
)
+{
+	struct gtp1_header_long *gtp1u;
+	struct gtp1u_packet *gtp_pkt;
+	struct rtable *rt;
+	struct flowi4 fl4;
+	struct iphdr *iph;
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
+	/* pull GTP and UDP headers */
+	skb_pull_data(skb, sizeof(struct gtp1_header_long) + sizeof(struct udph=
dr));
+
+	gtp_pkt =3D skb_push(skb, sizeof(struct gtp1u_packet));
+	memset(gtp_pkt, 0, sizeof(struct gtp1u_packet));
+
+	/* S flag must be set to 1 */
+	gtp_pkt->gtp1u_h.flags =3D 0x32;
+	gtp_pkt->gtp1u_h.type =3D GTP_ECHO_RSP;
+	/* seq, npdu and next should be counted to the length of the GTP packet
+	 * that's why szie of gtp1_header should be subtracted,
+	 * not why szie of gtp1_header_long.
+	 */
+	gtp_pkt->gtp1u_h.length =3D
+		htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
+	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
+	gtp_pkt->gtp1u_h.tid =3D 0;
+
+	/* 3GPP TS 29.281 7.7.2 - The Restart Counter value in the
+	 * Recovery information element shall not be used, i.e. it shall
+	 * be set to zero by the sender and shall be ignored by the receiver.
+	 * The Recovery information element is mandatory due to backwards
+	 * compatibility reasons.
+	 */
+	gtp_pkt->ie.tag =3D GTPIE_RECOVERY;
+	gtp_pkt->ie.val =3D 0;
+
+	iph =3D ip_hdr(skb);
+
+	/* find route to the sender,
+	 * src address becomes dst address and vice versa.
+	 */
+	rt =3D ip4_route_output_gtp(&fl4, gtp->sk1u, iph->saddr, iph->daddr);
+	if (IS_ERR(rt)) {
+		netdev_dbg(gtp->dev, "no route for echo response from %pI4\n",
+			   &iph->saddr);
+		return -1;
+	}
+
+	udp_tunnel_xmit_skb(rt, gtp->sk1u, skb,
+			    fl4.saddr, fl4.daddr,
+			    iph->tos,
+			    ip4_dst_hoplimit(&rt->dst),
+			    0,
+			    htons(GTP1U_PORT), htons(GTP1U_PORT),
+			    !net_eq(sock_net(gtp->sk1u),
+				    dev_net(gtp->dev)),
+			    false);
+	return 0;
+}
+
 static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb=
)
 {
 	unsigned int hdrlen =3D sizeof(struct udphdr) +
@@ -260,6 +437,13 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp,=
 struct sk_buff *skb)
 	if ((gtp1->flags >> 5) !=3D GTP_V1)
 		return 1;
=20
+	/* If the sockets were created in kernel, it means that
+	 * there is no daemon running in userspace which would
+	 * handle echo request.
+	 */
+	if (gtp1->type =3D=3D GTP_ECHO_REQ && gtp->sk_created)
+		return gtp1u_send_echo_resp(gtp, skb);
+
 	if (gtp1->type !=3D GTP_TPDU)
 		return 1;
=20
@@ -398,20 +582,6 @@ static void gtp_dev_uninit(struct net_device *dev)
 	free_percpu(dev->tstats);
 }
=20
-static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
-					   const struct sock *sk,
-					   __be32 daddr)
-{
-	memset(fl4, 0, sizeof(*fl4));
-	fl4->flowi4_oif		=3D sk->sk_bound_dev_if;
-	fl4->daddr		=3D daddr;
-	fl4->saddr		=3D inet_sk(sk)->inet_saddr;
-	fl4->flowi4_tos		=3D RT_CONN_FLAGS(sk);
-	fl4->flowi4_proto	=3D sk->sk_protocol;
-
-	return ip_route_output_key(sock_net(sk), fl4);
-}
-
 static inline void gtp0_push_header(struct sk_buff *skb, struct pdp_ctx =
*pctx)
 {
 	int payload_len =3D skb->len;
@@ -517,7 +687,8 @@ static int gtp_build_skb_ip4(struct sk_buff *skb, str=
uct net_device *dev,
 	}
 	netdev_dbg(dev, "found PDP context %p\n", pctx);
=20
-	rt =3D ip4_route_output_gtp(&fl4, pctx->sk, pctx->peer_addr_ip4.s_addr)=
;
+	rt =3D ip4_route_output_gtp(&fl4, pctx->sk, pctx->peer_addr_ip4.s_addr,
+				  inet_sk(pctx->sk)->inet_saddr);
 	if (IS_ERR(rt)) {
 		netdev_dbg(dev, "no route to SSGN %pI4\n",
 			   &pctx->peer_addr_ip4.s_addr);
@@ -746,6 +917,11 @@ static int gtp_newlink(struct net *src_net, struct n=
et_device *dev,
 	}
 	gtp->role =3D role;
=20
+	if (!data[IFLA_GTP_RESTART_COUNT])
+		gtp->restart_count =3D 0;
+	else
+		gtp->restart_count =3D nla_get_u8(data[IFLA_GTP_RESTART_COUNT]);
+
 	gtp->net =3D src_net;
=20
 	err =3D gtp_hashtable_new(gtp, hashsize);
@@ -801,6 +977,7 @@ static const struct nla_policy gtp_policy[IFLA_GTP_MA=
X + 1] =3D {
 	[IFLA_GTP_PDP_HASHSIZE]		=3D { .type =3D NLA_U32 },
 	[IFLA_GTP_ROLE]			=3D { .type =3D NLA_U32 },
 	[IFLA_GTP_CREATE_SOCKETS]	=3D { .type =3D NLA_U8 },
+	[IFLA_GTP_RESTART_COUNT]	=3D { .type =3D NLA_U8 },
 };
=20
 static int gtp_validate(struct nlattr *tb[], struct nlattr *data[],
@@ -815,7 +992,8 @@ static int gtp_validate(struct nlattr *tb[], struct n=
lattr *data[],
 static size_t gtp_get_size(const struct net_device *dev)
 {
 	return nla_total_size(sizeof(__u32)) + /* IFLA_GTP_PDP_HASHSIZE */
-		nla_total_size(sizeof(__u32)); /* IFLA_GTP_ROLE */
+		nla_total_size(sizeof(__u32)) + /* IFLA_GTP_ROLE */
+		nla_total_size(sizeof(__u8)); /* IFLA_GTP_RESTART_COUNT */
 }
=20
 static int gtp_fill_info(struct sk_buff *skb, const struct net_device *d=
ev)
@@ -826,6 +1004,8 @@ static int gtp_fill_info(struct sk_buff *skb, const =
struct net_device *dev)
 		goto nla_put_failure;
 	if (nla_put_u32(skb, IFLA_GTP_ROLE, gtp->role))
 		goto nla_put_failure;
+	if (nla_put_u8(skb, IFLA_GTP_RESTART_COUNT, gtp->restart_count))
+		goto nla_put_failure;
=20
 	return 0;
=20
diff --git a/include/net/gtp.h b/include/net/gtp.h
index 0e16ebb2a82d..0e12c37f2958 100644
--- a/include/net/gtp.h
+++ b/include/net/gtp.h
@@ -7,8 +7,13 @@
 #define GTP0_PORT	3386
 #define GTP1U_PORT	2152
=20
+/* GTP messages types */
+#define GTP_ECHO_REQ	1	/* Echo Request */
+#define GTP_ECHO_RSP	2	/* Echo Response */
 #define GTP_TPDU	255
=20
+#define GTPIE_RECOVERY	14
+
 struct gtp0_header {	/* According to GSM TS 09.60. */
 	__u8	flags;
 	__u8	type;
@@ -27,6 +32,32 @@ struct gtp1_header {	/* According to 3GPP TS 29.060. *=
/
 	__be32	tid;
 } __attribute__ ((packed));
=20
+struct gtp1_header_long {	/* According to 3GPP TS 29.060. */
+	__u8	flags;
+	__u8	type;
+	__be16	length;
+	__be32	tid;
+	__be16	seq;
+	__u8	npdu;
+	__u8	next;
+} __packed;
+
+/* GTP Information Element */
+struct gtp_ie {
+	__u8	tag;
+	__u8	val;
+} __packed;
+
+struct gtp0_packet {
+	struct gtp0_header gtp0_h;
+	struct gtp_ie ie;
+} __packed;
+
+struct gtp1u_packet {
+	struct gtp1_header_long gtp1u_h;
+	struct gtp_ie ie;
+} __packed;
+
 #define GTP1_F_NPDU	0x01
 #define GTP1_F_SEQ	0x02
 #define GTP1_F_EXTHDR	0x04
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 2dce9caa2bb0..aae4739e85cd 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -824,6 +824,7 @@ enum {
 	IFLA_GTP_PDP_HASHSIZE,
 	IFLA_GTP_ROLE,
 	IFLA_GTP_CREATE_SOCKETS,
+	IFLA_GTP_RESTART_COUNT,
 	__IFLA_GTP_MAX,
 };
 #define IFLA_GTP_MAX (__IFLA_GTP_MAX - 1)
--=20
2.35.1

