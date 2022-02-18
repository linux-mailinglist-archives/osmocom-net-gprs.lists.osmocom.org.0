Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9FF4BBB50
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Feb 2022 15:57:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6A22A283AF;
	Fri, 18 Feb 2022 14:57:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFBM3sLjkQeG; Fri, 18 Feb 2022 14:57:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 15BBC283B7;
	Fri, 18 Feb 2022 14:57:05 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 349BC38A003F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DD74A283B1
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dhg5LrbT2hvY for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 18 Feb 2022 14:56:59 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by mail.osmocom.org (Postfix) with ESMTPS id AF610283AB
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645196218; x=1676732218;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=D0cHXf/lW7sKhYJQOW3LeVKU2aUtFRwc+CRtjLCG1vs=;
  b=ZWhJtFOMbuQqqX2dyzOreS5Yg//fczFCbizMfMr37pnGhq5cjlAyzNnN
   yQQvtruXj3TRnN1CogkpWxYjCe+lBp79V5F4y7hryCPRJHALHo47ndNIl
   82cGe7LlP4zUzbphLHLbWADnJkVL6vcBMoBrurEPMDz7ljMsKJtQVPa8/
   8sf4CuZDh49pe3CKkLO/wIKoRiw4Afbat+NkOL4fQGlU2ZVn+MYyL949X
   YT9m0MIIu6cKDcMPhl3RU/JG+wSfKDdTQbLPX1/u0BmsiWF8o7VdtYkJh
   uZf8X4AntyiKFfKJVxz5okYgZmcFcYaveD17wXYt50ZSvD2dc6ajRQpYB
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="234671746"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600";
   d="scan'208";a="234671746"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2022 06:56:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600";
   d="scan'208";a="635822405"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2022 06:56:54 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21IEurJS010484;
	Fri, 18 Feb 2022 14:56:53 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v6 3/7] gtp: Implement GTP echo request
Date: Fri, 18 Feb 2022 15:53:31 +0100
Message-Id: <20220218145331.7175-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
References: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 756L446L2WHH5XV43ZDECGQHL4MXBDIQ
X-Message-ID-Hash: 756L446L2WHH5XV43ZDECGQHL4MXBDIQ
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/756L446L2WHH5XV43ZDECGQHL4MXBDIQ/>
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

All echo requests are stored in echo_hash table with the flag
(replied) which indicates if GTP echo response was recived in
response to this request. Userspace can see all echo requests
using GTP_CMD_ECHOREQ dumpit callback.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Harald Welte <laforge@gnumonks.org>
---
 drivers/net/gtp.c        | 402 ++++++++++++++++++++++++++++++++++++---
 include/uapi/linux/gtp.h |   2 +
 2 files changed, 376 insertions(+), 28 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 5ed24fa9d5b2..14e9f8053d71 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -60,6 +60,19 @@ struct pdp_ctx {
 	struct rcu_head		rcu_head;
 };
=20
+struct gtp_echo {
+	struct hlist_node	hlist;
+
+	struct in_addr		ms_addr_ip4;
+	struct in_addr		peer_addr_ip4;
+
+	u8			replied;
+	u8			version;
+	int			ifindex;
+
+	struct rcu_head		rcu_head;
+};
+
 /* One instance of the GTP device. */
 struct gtp_dev {
 	struct list_head	list;
@@ -75,6 +88,7 @@ struct gtp_dev {
 	unsigned int		hash_size;
 	struct hlist_head	*tid_hash;
 	struct hlist_head	*addr_hash;
+	struct hlist_head	*echo_hash;
=20
 	u8			restart_count;
 };
@@ -89,6 +103,19 @@ static u32 gtp_h_initval;
=20
 static void pdp_context_delete(struct pdp_ctx *pctx);
=20
+static void gtp_echo_context_free(struct rcu_head *head)
+{
+	struct gtp_echo *echo =3D container_of(head, struct gtp_echo, rcu_head)=
;
+
+	kfree(echo);
+}
+
+static void gtp_echo_delete(struct gtp_echo *echo)
+{
+	hlist_del_rcu(&echo->hlist);
+	call_rcu(&echo->rcu_head, gtp_echo_context_free);
+}
+
 static inline u32 gtp0_hashfn(u64 tid)
 {
 	u32 *tid32 =3D (u32 *) &tid;
@@ -154,6 +181,24 @@ static struct pdp_ctx *ipv4_pdp_find(struct gtp_dev =
*gtp, __be32 ms_addr)
 	return NULL;
 }
=20
+static struct gtp_echo *gtp_find_echo(struct gtp_dev *gtp, __be32 ms_add=
r,
+				      __be32 peer_addr, unsigned int version)
+{
+	struct hlist_head *head;
+	struct gtp_echo *echo;
+
+	head =3D &gtp->echo_hash[ipv4_hashfn(ms_addr) % gtp->hash_size];
+
+	hlist_for_each_entry_rcu(echo, head, hlist) {
+		if (echo->ms_addr_ip4.s_addr =3D=3D ms_addr &&
+		    echo->peer_addr_ip4.s_addr =3D=3D peer_addr &&
+		    echo->version =3D=3D version)
+			return echo;
+	}
+
+	return NULL;
+}
+
 static bool gtp_check_ms_ipv4(struct sk_buff *skb, struct pdp_ctx *pctx,
 				  unsigned int hdrlen, unsigned int role)
 {
@@ -243,12 +288,34 @@ static struct rtable *ip4_route_output_gtp(struct f=
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
+	if (msg_type =3D=3D GTP_ECHO_RSP)
+		hdr->length =3D
+			htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+	else
+		hdr->length =3D 0;
+}
+
 static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 {
 	struct gtp0_packet *gtp_pkt;
@@ -260,7 +327,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, s=
truct sk_buff *skb)
=20
 	gtp0 =3D (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
=20
-	if (!gtp0_validate_echo_req(gtp0))
+	if (!gtp0_validate_echo_hdr(gtp0))
 		return -1;
=20
 	seq =3D gtp0->seq;
@@ -271,10 +338,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, =
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
@@ -282,16 +346,6 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, =
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
@@ -319,6 +373,31 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	return 0;
 }
=20
+static int gtp0_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *sk=
b)
+{
+	struct gtp0_header *gtp0;
+	struct gtp_echo *echo;
+	struct iphdr *iph;
+
+	gtp0 =3D (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
+
+	if (!gtp0_validate_echo_hdr(gtp0))
+		return -1;
+
+	iph =3D ip_hdr(skb);
+
+	echo =3D gtp_find_echo(gtp, iph->daddr, iph->saddr, GTP_V0);
+	if (!echo) {
+		netdev_dbg(gtp->dev, "No echo request was send to %pI4, version: %u\n"=
,
+			   &iph->saddr, GTP_V0);
+		return -1;
+	}
+
+	echo->replied =3D true;
+
+	return 0;
+}
+
 /* 1 means pass up to the stack, -1 means drop and 0 means decapsulated.=
 */
 static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
@@ -342,6 +421,9 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, s=
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
@@ -354,6 +436,27 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, =
struct sk_buff *skb)
 	return gtp_rx(pctx, skb, hdrlen, gtp->role);
 }
=20
+/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
+static void gtp1u_build_echo_msg(struct gtp1_header_long *hdr, __u8 msg_=
type)
+{
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
+	if (msg_type =3D=3D GTP_ECHO_RSP)
+		hdr->length =3D
+			htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
+	else
+		hdr->length =3D
+			htons(sizeof(struct gtp1_header_long) - sizeof(struct gtp1_header));
+}
+
 static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb=
)
 {
 	struct gtp1_header_long *gtp1u;
@@ -377,17 +480,7 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp,=
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
@@ -422,6 +515,35 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp,=
 struct sk_buff *skb)
 	return 0;
 }
=20
+static int gtp1u_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *s=
kb)
+{
+	struct gtp1_header_long *gtp1u;
+	struct gtp_echo *echo;
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
+	iph =3D ip_hdr(skb);
+
+	echo =3D gtp_find_echo(gtp, iph->daddr, iph->saddr, GTP_V1);
+	if (!echo) {
+		netdev_dbg(gtp->dev, "No echo request was send to %pI4, version: %u\n"=
,
+			   &iph->saddr, GTP_V1);
+		return -1;
+	}
+
+	echo->replied =3D true;
+
+	return 0;
+}
+
 static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb=
)
 {
 	unsigned int hdrlen =3D sizeof(struct udphdr) +
@@ -444,6 +566,9 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, =
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
@@ -835,6 +960,7 @@ static void gtp_destructor(struct net_device *dev)
=20
 	kfree(gtp->addr_hash);
 	kfree(gtp->tid_hash);
+	kfree(gtp->echo_hash);
 }
=20
 static struct sock *gtp_create_sock(int type, struct gtp_dev *gtp)
@@ -954,18 +1080,23 @@ static int gtp_newlink(struct net *src_net, struct=
 net_device *dev,
 out_hashtable:
 	kfree(gtp->addr_hash);
 	kfree(gtp->tid_hash);
+	kfree(gtp->echo_hash);
 	return err;
 }
=20
 static void gtp_dellink(struct net_device *dev, struct list_head *head)
 {
 	struct gtp_dev *gtp =3D netdev_priv(dev);
+	struct gtp_echo *echo;
 	struct pdp_ctx *pctx;
 	int i;
=20
-	for (i =3D 0; i < gtp->hash_size; i++)
+	for (i =3D 0; i < gtp->hash_size; i++) {
 		hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid)
 			pdp_context_delete(pctx);
+		hlist_for_each_entry_rcu(echo, &gtp->echo_hash[i], hlist)
+			gtp_echo_delete(echo);
+	}
=20
 	list_del_rcu(&gtp->list);
 	unregister_netdevice_queue(dev, head);
@@ -1040,13 +1171,21 @@ static int gtp_hashtable_new(struct gtp_dev *gtp,=
 int hsize)
 	if (gtp->tid_hash =3D=3D NULL)
 		goto err1;
=20
+	gtp->echo_hash =3D kmalloc_array(hsize, sizeof(struct hlist_head),
+				       GFP_KERNEL | __GFP_NOWARN);
+	if (!gtp->echo_hash)
+		goto err2;
+
 	gtp->hash_size =3D hsize;
=20
 	for (i =3D 0; i < hsize; i++) {
 		INIT_HLIST_HEAD(&gtp->addr_hash[i]);
 		INIT_HLIST_HEAD(&gtp->tid_hash[i]);
+		INIT_HLIST_HEAD(&gtp->echo_hash[i]);
 	}
 	return 0;
+err2:
+	kfree(gtp->tid_hash);
 err1:
 	kfree(gtp->addr_hash);
 	return -ENOMEM;
@@ -1583,6 +1722,205 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 	return skb->len;
 }
=20
+static int gtp_add_echo(struct gtp_dev *gtp, __be32 src_ip, __be32 dst_i=
p,
+			unsigned int version)
+{
+	struct gtp_echo *echo;
+	bool found =3D false;
+
+	rcu_read_lock();
+	echo =3D gtp_find_echo(gtp, src_ip, dst_ip, version);
+	rcu_read_unlock();
+
+	if (!echo) {
+		echo =3D kmalloc(sizeof(*echo), GFP_ATOMIC);
+		if (!echo)
+			return -ENOMEM;
+	} else {
+		found =3D true;
+	}
+
+	echo->ms_addr_ip4.s_addr =3D src_ip;
+	echo->peer_addr_ip4.s_addr =3D dst_ip;
+	echo->replied =3D false;
+	echo->version =3D version;
+	echo->ifindex =3D gtp->dev->ifindex;
+
+	if (!found) {
+		u32 hash_ms;
+
+		hash_ms =3D ipv4_hashfn(src_ip) % gtp->hash_size;
+		hlist_add_head_rcu(&echo->hlist, &gtp->echo_hash[hash_ms]);
+	}
+
+	return 0;
+}
+
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
+	int err;
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
+		len =3D LL_RESERVED_SPACE(gtp->dev) + sizeof(struct gtp1_header_long) =
+
+			sizeof(struct iphdr) + sizeof(struct udphdr);
+
+		skb_to_send =3D netdev_alloc_skb_ip_align(gtp->dev, len);
+		if (!skb_to_send)
+			return -ENOMEM;
+
+		sk =3D gtp->sk1u;
+		port =3D htons(GTP1U_PORT);
+
+		gtp1u_h =3D skb_push(skb_to_send, sizeof(struct gtp1_header_long));
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
+	err =3D gtp_add_echo(gtp, src_ip, dst_ip, version);
+	if (err)
+		return err;
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
+static int gtp_genl_fill_echo_info(struct sk_buff *skb, u32 snd_portid, =
u32 snd_seq,
+				   int flags, u32 type, struct gtp_echo *echo)
+{
+	void *genlh;
+
+	genlh =3D genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, flags=
,
+			    type);
+	if (!genlh)
+		goto err;
+
+	if (nla_put_u32(skb, GTPA_VERSION, echo->version) ||
+	    nla_put_u32(skb, GTPA_LINK, echo->ifindex) ||
+	    nla_put_be32(skb, GTPA_PEER_ADDRESS, echo->peer_addr_ip4.s_addr) ||
+	    nla_put_be32(skb, GTPA_MS_ADDRESS, echo->ms_addr_ip4.s_addr) ||
+	    nla_put_u8(skb, GTPA_ECHO_REPLIED, echo->replied))
+		goto err;
+
+	genlmsg_end(skb, genlh);
+	return 0;
+
+err:
+	genlmsg_cancel(skb, genlh);
+	return -EMSGSIZE;
+}
+
+static int gtp_genl_dump_echo(struct sk_buff *skb,
+			      struct netlink_callback *cb)
+{
+	struct gtp_dev *last_gtp =3D (struct gtp_dev *)cb->args[2], *gtp;
+	int i, j, bucket =3D cb->args[0], skip =3D cb->args[1];
+	struct net *net =3D sock_net(skb->sk);
+	struct gtp_echo *echo;
+	struct gtp_net *gn;
+
+	gn =3D net_generic(net, gtp_net_id);
+
+	if (cb->args[4])
+		return 0;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(gtp, &gn->gtp_dev_list, list) {
+		if (last_gtp && last_gtp !=3D gtp)
+			continue;
+		else
+			last_gtp =3D NULL;
+
+		for (i =3D bucket; i < gtp->hash_size; i++) {
+			j =3D 0;
+			hlist_for_each_entry_rcu(echo, &gtp->echo_hash[i],
+						 hlist) {
+				int ret =3D gtp_genl_fill_echo_info(skb,
+								  NETLINK_CB(cb->skb).portid,
+								  cb->nlh->nlmsg_seq,
+								  NLM_F_MULTI,
+								  cb->nlh->nlmsg_type, echo);
+				if (j >=3D skip && ret) {
+					cb->args[0] =3D i;
+					cb->args[1] =3D j;
+					cb->args[2] =3D (unsigned long)gtp;
+					goto out;
+				}
+				j++;
+			}
+			skip =3D 0;
+		}
+		bucket =3D 0;
+	}
+	cb->args[4] =3D 1;
+out:
+	rcu_read_unlock();
+	return skb->len;
+}
+
 static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] =3D {
 	[GTPA_LINK]		=3D { .type =3D NLA_U32, },
 	[GTPA_VERSION]		=3D { .type =3D NLA_U32, },
@@ -1593,6 +1931,7 @@ static const struct nla_policy gtp_genl_policy[GTPA=
_MAX + 1] =3D {
 	[GTPA_NET_NS_FD]	=3D { .type =3D NLA_U32, },
 	[GTPA_I_TEI]		=3D { .type =3D NLA_U32, },
 	[GTPA_O_TEI]		=3D { .type =3D NLA_U32, },
+	[GTPA_ECHO_REPLIED]	=3D { .type =3D NLA_U8, },
 };
=20
 static const struct genl_small_ops gtp_genl_ops[] =3D {
@@ -1615,6 +1954,13 @@ static const struct genl_small_ops gtp_genl_ops[] =
=3D {
 		.dumpit =3D gtp_genl_dump_pdp,
 		.flags =3D GENL_ADMIN_PERM,
 	},
+	{
+		.cmd =3D GTP_CMD_ECHOREQ,
+		.validate =3D GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit =3D gtp_genl_send_echo_req,
+		.dumpit =3D gtp_genl_dump_echo,
+		.flags =3D GENL_ADMIN_PERM,
+	},
 };
=20
 static struct genl_family gtp_genl_family __ro_after_init =3D {
diff --git a/include/uapi/linux/gtp.h b/include/uapi/linux/gtp.h
index 79f9191bbb24..63bb60f1e4e3 100644
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
@@ -29,6 +30,7 @@ enum gtp_attrs {
 	GTPA_NET_NS_FD,
 	GTPA_I_TEI,	/* for GTPv1 only */
 	GTPA_O_TEI,	/* for GTPv1 only */
+	GTPA_ECHO_REPLIED,
 	GTPA_PAD,
 	__GTPA_MAX,
 };
--=20
2.31.1

