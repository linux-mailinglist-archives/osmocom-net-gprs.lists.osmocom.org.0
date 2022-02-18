Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id F37164BBB53
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Feb 2022 15:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id ECCEE283B8;
	Fri, 18 Feb 2022 14:57:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7NlHKpRWhN6; Fri, 18 Feb 2022 14:57:19 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8FD49283B1;
	Fri, 18 Feb 2022 14:57:18 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D7CCC38A18E0
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8108E283B5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6JegleLfIOuQ for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 18 Feb 2022 14:57:10 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 7042E283B9
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645196225; x=1676732225;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=h7PyZhJNMymZF+zbOeFkQDdKqL/V8yvJjY+IvnQoN/A=;
  b=h/hSJxuyxiCFnE+6XkAnZSMtaar2tOHPMKnqjPqxAem6FdvhqBt6bLJT
   KimtCbppW/Ja2KObq3nvLVnrrbmXDE8KMMTfAekk0YJTWfyruYwJ2YC88
   j/FGzdoGk7aFh9LuDaix7ePIl20g2TVFiYfkmtsD+pz++siRP5ATpSAYX
   HoqrfwUAa0JROZkfdzjN84tq6B74Fb6B9wKF2hB1QgEyWYOkGWT2MknDn
   J2eU7DRLOf4eyfEiBn/J5jUu0hFPxBEYOAbD8vMwT8uHU19OVxhhY2NYW
   qCS4o9PeNw3xRajNU7EaPPSSB9x4AYOdWZfTdUGrcxZ/wkG/3YSd7FtDd
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231120742"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600";
   d="scan'208";a="231120742"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2022 06:56:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600";
   d="scan'208";a="541925921"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga007.fm.intel.com with ESMTP; 18 Feb 2022 06:56:57 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21IEutGT010561;
	Fri, 18 Feb 2022 14:56:56 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v6 4/7] net/sched: Allow flower to match on GTP options
Date: Fri, 18 Feb 2022 15:53:34 +0100
Message-Id: <20220218145334.7224-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
References: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RUCTEFTTXBHOEXKKTGHXBB5FTX6MZHY3
X-Message-ID-Hash: RUCTEFTTXBHOEXKKTGHXBB5FTX6MZHY3
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, jiri@resnulli.us
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RUCTEFTTXBHOEXKKTGHXBB5FTX6MZHY3/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Options are as follows: PDU_TYPE:QFI and they refernce to
the fields from the  PDU Session Protocol. PDU Session data
is conveyed in GTP-U Extension Header.

GTP-U Extension Header is described in 3GPP TS 29.281.
PDU Session Protocol is described in 3GPP TS 38.415.

PDU_TYPE -  indicates the type of the PDU Session Information (4 bits)
QFI      -  QoS Flow Identifier (6 bits)

  # ip link add gtp_dev type gtp role sgsn
  # tc qdisc add dev gtp_dev ingress
  # tc filter add dev gtp_dev protocol ip parent ffff: \
      flower \
        enc_key_id 11 \
        gtp_opts 1:8/ff:ff \
      action mirred egress redirect dev eth0

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/net/gtp.h              |   5 ++
 include/uapi/linux/if_tunnel.h |   4 +-
 include/uapi/linux/pkt_cls.h   |  15 +++++
 net/sched/cls_flower.c         | 116 +++++++++++++++++++++++++++++++++
 4 files changed, 139 insertions(+), 1 deletion(-)

diff --git a/include/net/gtp.h b/include/net/gtp.h
index 0e12c37f2958..23c2aaae8a42 100644
--- a/include/net/gtp.h
+++ b/include/net/gtp.h
@@ -58,6 +58,11 @@ struct gtp1u_packet {
 	struct gtp_ie ie;
 } __packed;
=20
+struct gtp_pdu_session_info {	/* According to 3GPP TS 38.415. */
+	u8	pdu_type;
+	u8	qfi;
+};
+
 #define GTP1_F_NPDU	0x01
 #define GTP1_F_SEQ	0x02
 #define GTP1_F_EXTHDR	0x04
diff --git a/include/uapi/linux/if_tunnel.h b/include/uapi/linux/if_tunne=
l.h
index 7d9105533c7b..102119628ff5 100644
--- a/include/uapi/linux/if_tunnel.h
+++ b/include/uapi/linux/if_tunnel.h
@@ -176,8 +176,10 @@ enum {
 #define TUNNEL_VXLAN_OPT	__cpu_to_be16(0x1000)
 #define TUNNEL_NOCACHE		__cpu_to_be16(0x2000)
 #define TUNNEL_ERSPAN_OPT	__cpu_to_be16(0x4000)
+#define TUNNEL_GTP_OPT		__cpu_to_be16(0x8000)
=20
 #define TUNNEL_OPTIONS_PRESENT \
-		(TUNNEL_GENEVE_OPT | TUNNEL_VXLAN_OPT | TUNNEL_ERSPAN_OPT)
+		(TUNNEL_GENEVE_OPT | TUNNEL_VXLAN_OPT | TUNNEL_ERSPAN_OPT | \
+		TUNNEL_GTP_OPT)
=20
 #endif /* _UAPI_IF_TUNNEL_H_ */
diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index ee38b35c3f57..404f97fb239c 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -616,6 +616,10 @@ enum {
 					 * TCA_FLOWER_KEY_ENC_OPT_ERSPAN_
 					 * attributes
 					 */
+	TCA_FLOWER_KEY_ENC_OPTS_GTP,	/* Nested
+					 * TCA_FLOWER_KEY_ENC_OPT_GTP_
+					 * attributes
+					 */
 	__TCA_FLOWER_KEY_ENC_OPTS_MAX,
 };
=20
@@ -654,6 +658,17 @@ enum {
 #define TCA_FLOWER_KEY_ENC_OPT_ERSPAN_MAX \
 		(__TCA_FLOWER_KEY_ENC_OPT_ERSPAN_MAX - 1)
=20
+enum {
+	TCA_FLOWER_KEY_ENC_OPT_GTP_UNSPEC,
+	TCA_FLOWER_KEY_ENC_OPT_GTP_PDU_TYPE,		/* u8 */
+	TCA_FLOWER_KEY_ENC_OPT_GTP_QFI,			/* u8 */
+
+	__TCA_FLOWER_KEY_ENC_OPT_GTP_MAX,
+};
+
+#define TCA_FLOWER_KEY_ENC_OPT_GTP_MAX \
+		(__TCA_FLOWER_KEY_ENC_OPT_GTP_MAX - 1)
+
 enum {
 	TCA_FLOWER_KEY_MPLS_OPTS_UNSPEC,
 	TCA_FLOWER_KEY_MPLS_OPTS_LSE,
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index 1a9b1f140f9e..c80fc49c0da1 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -25,6 +25,7 @@
 #include <net/geneve.h>
 #include <net/vxlan.h>
 #include <net/erspan.h>
+#include <net/gtp.h>
=20
 #include <net/dst.h>
 #include <net/dst_metadata.h>
@@ -723,6 +724,7 @@ enc_opts_policy[TCA_FLOWER_KEY_ENC_OPTS_MAX + 1] =3D =
{
 	[TCA_FLOWER_KEY_ENC_OPTS_GENEVE]        =3D { .type =3D NLA_NESTED },
 	[TCA_FLOWER_KEY_ENC_OPTS_VXLAN]         =3D { .type =3D NLA_NESTED },
 	[TCA_FLOWER_KEY_ENC_OPTS_ERSPAN]        =3D { .type =3D NLA_NESTED },
+	[TCA_FLOWER_KEY_ENC_OPTS_GTP]		=3D { .type =3D NLA_NESTED },
 };
=20
 static const struct nla_policy
@@ -746,6 +748,12 @@ erspan_opt_policy[TCA_FLOWER_KEY_ENC_OPT_ERSPAN_MAX =
+ 1] =3D {
 	[TCA_FLOWER_KEY_ENC_OPT_ERSPAN_HWID]       =3D { .type =3D NLA_U8 },
 };
=20
+static const struct nla_policy
+gtp_opt_policy[TCA_FLOWER_KEY_ENC_OPT_GTP_MAX + 1] =3D {
+	[TCA_FLOWER_KEY_ENC_OPT_GTP_PDU_TYPE]	   =3D { .type =3D NLA_U8 },
+	[TCA_FLOWER_KEY_ENC_OPT_GTP_QFI]	   =3D { .type =3D NLA_U8 },
+};
+
 static const struct nla_policy
 mpls_stack_entry_policy[TCA_FLOWER_KEY_MPLS_OPT_LSE_MAX + 1] =3D {
 	[TCA_FLOWER_KEY_MPLS_OPT_LSE_DEPTH]    =3D { .type =3D NLA_U8 },
@@ -1262,6 +1270,49 @@ static int fl_set_erspan_opt(const struct nlattr *=
nla, struct fl_flow_key *key,
 	return sizeof(*md);
 }
=20
+static int fl_set_gtp_opt(const struct nlattr *nla, struct fl_flow_key *=
key,
+			  int depth, int option_len,
+			  struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[TCA_FLOWER_KEY_ENC_OPT_GTP_MAX + 1];
+	struct gtp_pdu_session_info *sinfo;
+	u8 len =3D key->enc_opts.len;
+	int err;
+
+	sinfo =3D (struct gtp_pdu_session_info *)&key->enc_opts.data[len];
+	memset(sinfo, 0xff, option_len);
+
+	if (!depth)
+		return sizeof(*sinfo);
+
+	if (nla_type(nla) !=3D TCA_FLOWER_KEY_ENC_OPTS_GTP) {
+		NL_SET_ERR_MSG_MOD(extack, "Non-gtp option type for mask");
+		return -EINVAL;
+	}
+
+	err =3D nla_parse_nested(tb, TCA_FLOWER_KEY_ENC_OPT_GTP_MAX, nla,
+			       gtp_opt_policy, extack);
+	if (err < 0)
+		return err;
+
+	if (!option_len &&
+	    (!tb[TCA_FLOWER_KEY_ENC_OPT_GTP_PDU_TYPE] ||
+	     !tb[TCA_FLOWER_KEY_ENC_OPT_GTP_QFI])) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Missing tunnel key gtp option pdu type or qfi");
+		return -EINVAL;
+	}
+
+	if (tb[TCA_FLOWER_KEY_ENC_OPT_GTP_PDU_TYPE])
+		sinfo->pdu_type =3D
+			nla_get_u8(tb[TCA_FLOWER_KEY_ENC_OPT_GTP_PDU_TYPE]);
+
+	if (tb[TCA_FLOWER_KEY_ENC_OPT_GTP_QFI])
+		sinfo->qfi =3D nla_get_u8(tb[TCA_FLOWER_KEY_ENC_OPT_GTP_QFI]);
+
+	return sizeof(*sinfo);
+}
+
 static int fl_set_enc_opt(struct nlattr **tb, struct fl_flow_key *key,
 			  struct fl_flow_key *mask,
 			  struct netlink_ext_ack *extack)
@@ -1386,6 +1437,38 @@ static int fl_set_enc_opt(struct nlattr **tb, stru=
ct fl_flow_key *key,
 				return -EINVAL;
 			}
 			break;
+		case TCA_FLOWER_KEY_ENC_OPTS_GTP:
+			if (key->enc_opts.dst_opt_type) {
+				NL_SET_ERR_MSG_MOD(extack,
+						   "Duplicate type for gtp options");
+				return -EINVAL;
+			}
+			option_len =3D 0;
+			key->enc_opts.dst_opt_type =3D TUNNEL_GTP_OPT;
+			option_len =3D fl_set_gtp_opt(nla_opt_key, key,
+						    key_depth, option_len,
+						    extack);
+			if (option_len < 0)
+				return option_len;
+
+			key->enc_opts.len +=3D option_len;
+			/* At the same time we need to parse through the mask
+			 * in order to verify exact and mask attribute lengths.
+			 */
+			mask->enc_opts.dst_opt_type =3D TUNNEL_GTP_OPT;
+			option_len =3D fl_set_gtp_opt(nla_opt_msk, mask,
+						    msk_depth, option_len,
+						    extack);
+			if (option_len < 0)
+				return option_len;
+
+			mask->enc_opts.len +=3D option_len;
+			if (key->enc_opts.len !=3D mask->enc_opts.len) {
+				NL_SET_ERR_MSG_MOD(extack,
+						   "Key and mask miss aligned");
+				return -EINVAL;
+			}
+			break;
 		default:
 			NL_SET_ERR_MSG(extack, "Unknown tunnel option type");
 			return -EINVAL;
@@ -2761,6 +2844,34 @@ static int fl_dump_key_erspan_opt(struct sk_buff *=
skb,
 	return -EMSGSIZE;
 }
=20
+static int fl_dump_key_gtp_opt(struct sk_buff *skb,
+			       struct flow_dissector_key_enc_opts *enc_opts)
+
+{
+	struct gtp_pdu_session_info *session_info;
+	struct nlattr *nest;
+
+	nest =3D nla_nest_start_noflag(skb, TCA_FLOWER_KEY_ENC_OPTS_GTP);
+	if (!nest)
+		goto nla_put_failure;
+
+	session_info =3D (struct gtp_pdu_session_info *)&enc_opts->data[0];
+
+	if (nla_put_u8(skb, TCA_FLOWER_KEY_ENC_OPT_GTP_PDU_TYPE,
+		       session_info->pdu_type))
+		goto nla_put_failure;
+
+	if (nla_put_u8(skb, TCA_FLOWER_KEY_ENC_OPT_GTP_QFI, session_info->qfi))
+		goto nla_put_failure;
+
+	nla_nest_end(skb, nest);
+	return 0;
+
+nla_put_failure:
+	nla_nest_cancel(skb, nest);
+	return -EMSGSIZE;
+}
+
 static int fl_dump_key_ct(struct sk_buff *skb,
 			  struct flow_dissector_key_ct *key,
 			  struct flow_dissector_key_ct *mask)
@@ -2824,6 +2935,11 @@ static int fl_dump_key_options(struct sk_buff *skb=
, int enc_opt_type,
 		if (err)
 			goto nla_put_failure;
 		break;
+	case TUNNEL_GTP_OPT:
+		err =3D fl_dump_key_gtp_opt(skb, enc_opts);
+		if (err)
+			goto nla_put_failure;
+		break;
 	default:
 		goto nla_put_failure;
 	}
--=20
2.31.1

