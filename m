Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C7D4BF83B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 22 Feb 2022 13:42:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 23F1C283BA;
	Tue, 22 Feb 2022 12:42:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b8ONm-feWcrW; Tue, 22 Feb 2022 12:42:50 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 72428283C6;
	Tue, 22 Feb 2022 12:42:48 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 510FE38A18EA
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C3110283BF
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xagvs9U6IH5 for <osmocom-net-gprs@lists.osmocom.org>;
	Tue, 22 Feb 2022 12:42:41 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by mail.osmocom.org (Postfix) with ESMTPS id 77F11283BB
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645533760; x=1677069760;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=v81CO+acjYQwZXNRE5jhtNUB0XRpWBoEBohKH2Yh9i8=;
  b=RIa82gy8KiUsXSs+QyzvybsD+xoCdIALIudfsMAazMujwRODt7zo8Poe
   eGAxwSvV6jE7BzFazVxrZW2YNmW6HF+9QJ18lit4NhgS4N97aco3Tbxc4
   6dMyOF27rFSvVWbSswUScFpbY9VMvxgisE39jGq2UrfXazx3VIhATrBf+
   a0Cj/VdIEyVOHSENW8TkEW1JkjlqnUmHqPcJU2lklzY2XIDFGtHDv/feL
   tBR/FMnaIk4BrGf0MunEnieyshU0mVdjgZj65ceYatOUatDn957d73GSs
   cswUQ0LHuIucV9EJ8qGHVuMeWKPtxLkxT18HFDYo2zGabeMOnV28eDcGr
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338125735"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600";
   d="scan'208";a="338125735"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:42:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600";
   d="scan'208";a="779121666"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2022 04:42:31 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21MCg1xf021783;
	Tue, 22 Feb 2022 12:42:29 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v8 7/7] ice: Support GTP-U and GTP-C offload in switchdev
Date: Tue, 22 Feb 2022 13:41:52 +0100
Message-Id: <20220222124152.103039-8-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
References: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: SMR7ITUAZ2SJDMORTDDZ7D77VXMNLUVY
X-Message-ID-Hash: SMR7ITUAZ2SJDMORTDDZ7D77VXMNLUVY
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/SMR7ITUAZ2SJDMORTDDZ7D77VXMNLUVY/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Add support for creating filters for GTP-U and GTP-C in switchdev mode. A=
dd
support for parsing GTP-specific options (QFI and PDU type) and TEID.

By default, a filter for GTP-U will be added. To add a filter for GTP-C,
specify enc_dst_port =3D 2123, e.g.:

tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
enc_dst_port 2123 action mirred egress redirect dev $VF1_PR

Note: outer IPv6 offload is not supported yet.
Note: GTP-U with no payload offload is not supported yet.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v7: Fix ice_get_sw_prof_type kernel-doc
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  31 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 591 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 +++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 8 files changed, 747 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/=
intel/ice/ice.h
index 8f40f6f9b8eb..571f331191c4 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -51,6 +51,7 @@
 #include <net/gre.h>
 #include <net/udp_tunnel.h>
 #include <net/vxlan.h>
+#include <net/gtp.h>
 #if IS_ENABLED(CONFIG_DCB)
 #include <scsi/iscsi_proto.h>
 #endif /* CONFIG_DCB */
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net=
/ethernet/intel/ice/ice_flex_pipe.c
index 45ce9a2bb572..8a9b24b2a997 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1804,16 +1804,43 @@ static struct ice_buf_build *ice_pkg_buf_alloc(st=
ruct ice_hw *hw)
 	return bld;
 }
=20
+static bool ice_is_gtp_u_profile(u16 prof_idx)
+{
+	return (prof_idx >=3D ICE_PROFID_IPV6_GTPU_TEID &&
+		prof_idx <=3D ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
+	       prof_idx =3D=3D ICE_PROFID_IPV4_GTPU_TEID;
+}
+
+static bool ice_is_gtp_c_profile(u16 prof_idx)
+{
+	switch (prof_idx) {
+	case ICE_PROFID_IPV4_GTPC_TEID:
+	case ICE_PROFID_IPV4_GTPC_NO_TEID:
+	case ICE_PROFID_IPV6_GTPC_TEID:
+	case ICE_PROFID_IPV6_GTPC_NO_TEID:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_get_sw_prof_type - determine switch profile type
  * @hw: pointer to the HW structure
  * @fv: pointer to the switch field vector
+ * @prof_idx: profile index to check
  */
 static enum ice_prof_type
-ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv)
+ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv, u32 prof_idx)
 {
 	u16 i;
=20
+	if (ice_is_gtp_c_profile(prof_idx))
+		return ICE_PROF_TUN_GTPC;
+
+	if (ice_is_gtp_u_profile(prof_idx))
+		return ICE_PROF_TUN_GTPU;
+
 	for (i =3D 0; i < hw->blk[ICE_BLK_SW].es.fvw; i++) {
 		/* UDP tunnel will have UDP_OF protocol ID and VNI offset */
 		if (fv->ew[i].prot_id =3D=3D (u8)ICE_PROT_UDP_OF &&
@@ -1860,7 +1887,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_pr=
of_type req_profs,
=20
 		if (fv) {
 			/* Determine field vector type */
-			prof_type =3D ice_get_sw_prof_type(hw, fv);
+			prof_type =3D ice_get_sw_prof_type(hw, fv, offset);
=20
 			if (req_profs & prof_type)
 				set_bit((u16)offset, bm);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net=
/ethernet/intel/ice/ice_flex_type.h
index 5735e9542a49..974d14a83b2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -417,6 +417,8 @@ enum ice_tunnel_type {
 	TNL_VXLAN =3D 0,
 	TNL_GENEVE,
 	TNL_GRETAP,
+	TNL_GTPC,
+	TNL_GTPU,
 	__TNL_TYPE_CNT,
 	TNL_LAST =3D 0xFF,
 	TNL_ALL =3D 0xFF,
@@ -673,7 +675,9 @@ enum ice_prof_type {
 	ICE_PROF_NON_TUN =3D 0x1,
 	ICE_PROF_TUN_UDP =3D 0x2,
 	ICE_PROF_TUN_GRE =3D 0x4,
-	ICE_PROF_TUN_ALL =3D 0x6,
+	ICE_PROF_TUN_GTPU =3D 0x8,
+	ICE_PROF_TUN_GTPC =3D 0x10,
+	ICE_PROF_TUN_ALL =3D 0x1E,
 	ICE_PROF_ALL =3D 0xFF,
 };
=20
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers=
/net/ethernet/intel/ice/ice_protocol_type.h
index dc1b0e9e6df5..bb3483df4186 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -40,6 +40,8 @@ enum ice_protocol_type {
 	ICE_VXLAN,
 	ICE_GENEVE,
 	ICE_NVGRE,
+	ICE_GTP,
+	ICE_GTP_NO_PAY,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
@@ -50,6 +52,8 @@ enum ice_sw_tunnel_type {
 	ICE_SW_TUN_VXLAN,
 	ICE_SW_TUN_GENEVE,
 	ICE_SW_TUN_NVGRE,
+	ICE_SW_TUN_GTPU,
+	ICE_SW_TUN_GTPC,
 	ICE_ALL_TUNNELS /* All tunnel types including NVGRE */
 };
=20
@@ -179,6 +183,20 @@ struct ice_udp_tnl_hdr {
 	__be32 vni;     /* only use lower 24-bits */
 };
=20
+struct ice_udp_gtp_hdr {
+	u8 flags;
+	u8 msg_type;
+	__be16 rsrvd_len;
+	__be32 teid;
+	__be16 rsrvd_seq_nbr;
+	u8 rsrvd_n_pdu_nbr;
+	u8 rsrvd_next_ext;
+	u8 rsvrd_ext_len;
+	u8 pdu_type;
+	u8 qfi;
+	u8 rsvrd;
+};
+
 struct ice_nvgre_hdr {
 	__be16 flags;
 	__be16 protocol;
@@ -195,6 +213,7 @@ union ice_prot_hdr {
 	struct ice_sctp_hdr sctp_hdr;
 	struct ice_udp_tnl_hdr tnl_hdr;
 	struct ice_nvgre_hdr nvgre_hdr;
+	struct ice_udp_gtp_hdr gtp_hdr;
 };
=20
 /* This is mapping table entry that maps every word within a given proto=
col
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/et=
hernet/intel/ice/ice_switch.c
index 915aa693170c..7b39869a7bb1 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -500,6 +500,495 @@ static const u8 dummy_vlan_udp_ipv6_packet[] =3D {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
=20
+/* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_tcp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV4_IL,		62 },
+	{ ICE_TCP_IL,		82 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv4_tcp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x58, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x44, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x34, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x28, /* IP 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 82 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner UDP */
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_udp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV4_IL,		62 },
+	{ ICE_UDP_ILOS,		82 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv4_udp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x4c, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x38, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x28, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x1c, /* IP 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 82 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* Outer IPv6 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_tcp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV6_IL,		62 },
+	{ ICE_TCP_IL,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv6_tcp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x6c, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x58, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x48, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 62 */
+	0x00, 0x14, 0x06, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 102 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_udp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV6_IL,		62 },
+	{ ICE_UDP_ILOS,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv6_udp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x60, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x4c, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x3c, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 62 */
+	0x00, 0x08, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 102 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_tcp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV4_IL,		82 },
+	{ ICE_TCP_IL,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv4_tcp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x44, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x44, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x34, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x28, /* IP 82 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 102 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_udp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV4_IL,		82 },
+	{ ICE_UDP_ILOS,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv4_udp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x38, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x38, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x28, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x1c, /* IP 82 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 102 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_tcp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV6_IL,		82 },
+	{ ICE_TCP_IL,		122 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv6_tcp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x58, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x58, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x48, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 82 */
+	0x00, 0x14, 0x06, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 122 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_udp_packet_offsets[] =3D=
 {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV6_IL,		82 },
+	{ ICE_UDP_ILOS,		122 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv6_udp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x4c, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x4c, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x3c, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 82 */
+	0x00, 0x08, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 122 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const u8 dummy_ipv4_gtpu_ipv4_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x44, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x00, 0x40, 0x00,
+	0x40, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x68, 0x08, 0x68, /* ICE_UDP_OF 34 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x28, /* ICE_GTP 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* PDU Session extension header */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x14, /* ICE_IPV4_IL 62 */
+	0x00, 0x00, 0x40, 0x00,
+	0x40, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtp_no_pay_packet_offsets[] =3D =
{
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP_NO_PAY,	42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtp_no_pay_packet_offsets[] =3D =
{
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP_NO_PAY,	62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtp_packet[] =3D {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 14 */
+	0x00, 0x6c, 0x11, 0x00, /* Next header UDP*/
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x68, 0x08, 0x68, /* ICE_UDP_OF 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x30, 0x00, 0x00, 0x28, /* ICE_GTP 62 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,
+};
+
 #define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE \
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr) + \
 	 (DUMMY_ETH_HDR_LEN * \
@@ -3830,7 +4319,9 @@ static const struct ice_prot_ext_tbl_entry ice_prot=
_ext[ICE_PROTOCOL_LAST] =3D {
 	{ ICE_UDP_ILOS,		{ 0, 2 } },
 	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
 	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
-	{ ICE_NVGRE,            { 0, 2, 4, 6 } },
+	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
+	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
+	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
 };
=20
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] =3D =
{
@@ -3847,7 +4338,9 @@ static struct ice_protocol_entry ice_prot_id_tbl[IC=
E_PROTOCOL_LAST] =3D {
 	{ ICE_UDP_ILOS,		ICE_UDP_ILOS_HW },
 	{ ICE_VXLAN,		ICE_UDP_OF_HW },
 	{ ICE_GENEVE,		ICE_UDP_OF_HW },
-	{ ICE_NVGRE,            ICE_GRE_OF_HW },
+	{ ICE_NVGRE,		ICE_GRE_OF_HW },
+	{ ICE_GTP,		ICE_UDP_OF_HW },
+	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
 };
=20
 /**
@@ -4517,6 +5010,8 @@ static bool ice_tun_type_match_word(enum ice_sw_tun=
nel_type tun_type, u16 *mask)
 	case ICE_SW_TUN_GENEVE:
 	case ICE_SW_TUN_VXLAN:
 	case ICE_SW_TUN_NVGRE:
+	case ICE_SW_TUN_GTPU:
+	case ICE_SW_TUN_GTPC:
 		*mask =3D ICE_TUN_FLAG_MASK;
 		return true;
=20
@@ -4582,6 +5077,12 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct=
 ice_adv_rule_info *rinfo,
 	case ICE_SW_TUN_NVGRE:
 		prof_type =3D ICE_PROF_TUN_GRE;
 		break;
+	case ICE_SW_TUN_GTPU:
+		prof_type =3D ICE_PROF_TUN_GTPU;
+		break;
+	case ICE_SW_TUN_GTPC:
+		prof_type =3D ICE_PROF_TUN_GTPC;
+		break;
 	default:
 		prof_type =3D ICE_PROF_ALL;
 		break;
@@ -4781,16 +5282,17 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *l=
kups, u16 lkups_cnt,
 		      const u8 **pkt, u16 *pkt_len,
 		      const struct ice_dummy_pkt_offsets **offsets)
 {
-	bool tcp =3D false, udp =3D false, ipv6 =3D false, vlan =3D false;
+	bool inner_tcp =3D false, inner_udp =3D false, outer_ipv6 =3D false;
+	bool vlan =3D false, inner_ipv6 =3D false, gtp_no_pay =3D false;
 	u16 i;
=20
 	for (i =3D 0; i < lkups_cnt; i++) {
 		if (lkups[i].type =3D=3D ICE_UDP_ILOS)
-			udp =3D true;
+			inner_udp =3D true;
 		else if (lkups[i].type =3D=3D ICE_TCP_IL)
-			tcp =3D true;
+			inner_tcp =3D true;
 		else if (lkups[i].type =3D=3D ICE_IPV6_OFOS)
-			ipv6 =3D true;
+			outer_ipv6 =3D true;
 		else if (lkups[i].type =3D=3D ICE_VLAN_OFOS)
 			vlan =3D true;
 		else if (lkups[i].type =3D=3D ICE_ETYPE_OL &&
@@ -4798,11 +5300,72 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *l=
kups, u16 lkups_cnt,
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
 			 lkups[i].m_u.ethertype.ethtype_id =3D=3D
 					cpu_to_be16(0xFFFF))
-			ipv6 =3D true;
+			outer_ipv6 =3D true;
+		else if (lkups[i].type =3D=3D ICE_IPV6_IL)
+			inner_ipv6 =3D true;
+		else if (lkups[i].type =3D=3D ICE_GTP_NO_PAY)
+			gtp_no_pay =3D true;
+	}
+
+	if (tun_type =3D=3D ICE_SW_TUN_GTPU || tun_type =3D=3D ICE_SW_TUN_GTPC)=
 {
+		if (outer_ipv6) {
+			if (gtp_no_pay) {
+				*pkt =3D dummy_ipv6_gtp_packet;
+				*pkt_len =3D sizeof(dummy_ipv6_gtp_packet);
+				*offsets =3D dummy_ipv6_gtp_no_pay_packet_offsets;
+			} else if (inner_ipv6) {
+				if (inner_udp) {
+					*pkt =3D dummy_ipv6_gtpu_ipv6_udp_packet;
+					*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv6_udp_packet);
+					*offsets =3D dummy_ipv6_gtpu_ipv6_udp_packet_offsets;
+				} else {
+					*pkt =3D dummy_ipv6_gtpu_ipv6_tcp_packet;
+					*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv6_tcp_packet);
+					*offsets =3D dummy_ipv6_gtpu_ipv6_tcp_packet_offsets;
+				}
+			} else {
+				if (inner_udp) {
+					*pkt =3D dummy_ipv6_gtpu_ipv4_udp_packet;
+					*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv4_udp_packet);
+					*offsets =3D dummy_ipv6_gtpu_ipv4_udp_packet_offsets;
+				} else {
+					*pkt =3D dummy_ipv6_gtpu_ipv4_tcp_packet;
+					*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
+					*offsets =3D dummy_ipv6_gtpu_ipv4_tcp_packet_offsets;
+				}
+			}
+		} else {
+			if (gtp_no_pay) {
+				*pkt =3D dummy_ipv4_gtpu_ipv4_packet;
+				*pkt_len =3D sizeof(dummy_ipv4_gtpu_ipv4_packet);
+				*offsets =3D dummy_ipv4_gtp_no_pay_packet_offsets;
+			} else if (inner_ipv6) {
+				if (inner_udp) {
+					*pkt =3D dummy_ipv4_gtpu_ipv6_udp_packet;
+					*pkt_len =3D sizeof(dummy_ipv4_gtpu_ipv6_udp_packet);
+					*offsets =3D dummy_ipv4_gtpu_ipv6_udp_packet_offsets;
+				} else {
+					*pkt =3D dummy_ipv4_gtpu_ipv6_tcp_packet;
+					*pkt_len =3D sizeof(dummy_ipv4_gtpu_ipv6_tcp_packet);
+					*offsets =3D dummy_ipv4_gtpu_ipv6_tcp_packet_offsets;
+				}
+			} else {
+				if (inner_udp) {
+					*pkt =3D dummy_ipv4_gtpu_ipv4_udp_packet;
+					*pkt_len =3D sizeof(dummy_ipv4_gtpu_ipv4_udp_packet);
+					*offsets =3D dummy_ipv4_gtpu_ipv4_udp_packet_offsets;
+				} else {
+					*pkt =3D dummy_ipv4_gtpu_ipv4_tcp_packet;
+					*pkt_len =3D sizeof(dummy_ipv4_gtpu_ipv4_tcp_packet);
+					*offsets =3D dummy_ipv4_gtpu_ipv4_tcp_packet_offsets;
+				}
+			}
+		}
+		return;
 	}
=20
 	if (tun_type =3D=3D ICE_SW_TUN_NVGRE) {
-		if (tcp) {
+		if (inner_tcp) {
 			*pkt =3D dummy_gre_tcp_packet;
 			*pkt_len =3D sizeof(dummy_gre_tcp_packet);
 			*offsets =3D dummy_gre_tcp_packet_offsets;
@@ -4817,7 +5380,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
=20
 	if (tun_type =3D=3D ICE_SW_TUN_VXLAN ||
 	    tun_type =3D=3D ICE_SW_TUN_GENEVE) {
-		if (tcp) {
+		if (inner_tcp) {
 			*pkt =3D dummy_udp_tun_tcp_packet;
 			*pkt_len =3D sizeof(dummy_udp_tun_tcp_packet);
 			*offsets =3D dummy_udp_tun_tcp_packet_offsets;
@@ -4830,7 +5393,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 		return;
 	}
=20
-	if (udp && !ipv6) {
+	if (inner_udp && !outer_ipv6) {
 		if (vlan) {
 			*pkt =3D dummy_vlan_udp_packet;
 			*pkt_len =3D sizeof(dummy_vlan_udp_packet);
@@ -4841,7 +5404,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 		*pkt_len =3D sizeof(dummy_udp_packet);
 		*offsets =3D dummy_udp_packet_offsets;
 		return;
-	} else if (udp && ipv6) {
+	} else if (inner_udp && outer_ipv6) {
 		if (vlan) {
 			*pkt =3D dummy_vlan_udp_ipv6_packet;
 			*pkt_len =3D sizeof(dummy_vlan_udp_ipv6_packet);
@@ -4852,7 +5415,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 		*pkt_len =3D sizeof(dummy_udp_ipv6_packet);
 		*offsets =3D dummy_udp_ipv6_packet_offsets;
 		return;
-	} else if ((tcp && ipv6) || ipv6) {
+	} else if ((inner_tcp && outer_ipv6) || outer_ipv6) {
 		if (vlan) {
 			*pkt =3D dummy_vlan_tcp_ipv6_packet;
 			*pkt_len =3D sizeof(dummy_vlan_tcp_ipv6_packet);
@@ -4957,6 +5520,10 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem=
 *lkups, u16 lkups_cnt,
 		case ICE_GENEVE:
 			len =3D sizeof(struct ice_udp_tnl_hdr);
 			break;
+		case ICE_GTP_NO_PAY:
+		case ICE_GTP:
+			len =3D sizeof(struct ice_udp_gtp_hdr);
+			break;
 		default:
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/et=
hernet/intel/ice/ice_switch.h
index 7b42c51a3eb0..ed3d1d03befa 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -14,6 +14,15 @@
 #define ICE_VSI_INVAL_ID 0xffff
 #define ICE_INVAL_Q_HANDLE 0xFFFF
=20
+/* Switch Profile IDs for Profile related switch rules */
+#define ICE_PROFID_IPV4_GTPC_TEID			41
+#define ICE_PROFID_IPV4_GTPC_NO_TEID			42
+#define ICE_PROFID_IPV4_GTPU_TEID			43
+#define ICE_PROFID_IPV6_GTPC_TEID			44
+#define ICE_PROFID_IPV6_GTPC_NO_TEID			45
+#define ICE_PROFID_IPV6_GTPU_TEID			46
+#define ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER		70
+
 #define ICE_SW_RULE_RX_TX_NO_HDR_SIZE \
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr))
=20
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/et=
hernet/intel/ice/ice_tc_lib.c
index e8aab664270a..eb34db29cc08 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -24,6 +24,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_=
2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
 		lkups_cnt++;
=20
+	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS)
+		lkups_cnt++;
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
@@ -96,6 +99,11 @@ ice_proto_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_GENEVE;
 	case TNL_GRETAP:
 		return ICE_NVGRE;
+	case TNL_GTPU:
+		/* NO_PAY profiles will not work with GTP-U */
+		return ICE_GTP;
+	case TNL_GTPC:
+		return ICE_GTP_NO_PAY;
 	default:
 		return 0;
 	}
@@ -111,6 +119,10 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_SW_TUN_GENEVE;
 	case TNL_GRETAP:
 		return ICE_SW_TUN_NVGRE;
+	case TNL_GTPU:
+		return ICE_SW_TUN_GTPU;
+	case TNL_GTPC:
+		return ICE_SW_TUN_GTPC;
 	default:
 		return ICE_NON_TUN;
 	}
@@ -137,7 +149,15 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_fl=
ower_fltr *fltr,
 			break;
 		case TNL_GRETAP:
 			list[i].h_u.nvgre_hdr.tni_flow =3D fltr->tenant_id;
-			memcpy(&list[i].m_u.nvgre_hdr.tni_flow, "\xff\xff\xff\xff", 4);
+			memcpy(&list[i].m_u.nvgre_hdr.tni_flow,
+			       "\xff\xff\xff\xff", 4);
+			i++;
+			break;
+		case TNL_GTPC:
+		case TNL_GTPU:
+			list[i].h_u.gtp_hdr.teid =3D fltr->tenant_id;
+			memcpy(&list[i].m_u.gtp_hdr.teid,
+			       "\xff\xff\xff\xff", 4);
 			i++;
 			break;
 		default:
@@ -145,6 +165,24 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_fl=
ower_fltr *fltr,
 		}
 	}
=20
+	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS &&
+	    (fltr->tunnel_type =3D=3D TNL_GTPU || fltr->tunnel_type =3D=3D TNL_=
GTPC)) {
+		list[i].type =3D ice_proto_type_from_tunnel(fltr->tunnel_type);
+
+		if (fltr->gtp_pdu_info_masks.pdu_type) {
+			list[i].h_u.gtp_hdr.pdu_type =3D
+				fltr->gtp_pdu_info_keys.pdu_type << 4;
+			memcpy(&list[i].m_u.gtp_hdr.pdu_type, "\xf0", 1);
+		}
+
+		if (fltr->gtp_pdu_info_masks.qfi) {
+			list[i].h_u.gtp_hdr.qfi =3D fltr->gtp_pdu_info_keys.qfi;
+			memcpy(&list[i].m_u.gtp_hdr.qfi, "\x3f", 1);
+		}
+
+		i++;
+	}
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4)) {
 		list[i].type =3D ice_proto_type_from_ipv4(false);
@@ -344,6 +382,12 @@ static int ice_tc_tun_get_type(struct net_device *tu=
nnel_dev)
 	if (netif_is_gretap(tunnel_dev) ||
 	    netif_is_ip6gretap(tunnel_dev))
 		return TNL_GRETAP;
+
+	/* Assume GTP-U by default in case of GTP netdev.
+	 * GTP-C may be selected later, based on enc_dst_port.
+	 */
+	if (netif_is_gtp(tunnel_dev))
+		return TNL_GTPU;
 	return TNL_LAST;
 }
=20
@@ -743,6 +787,40 @@ ice_get_tunnel_device(struct net_device *dev, struct=
 flow_rule *rule)
 	return NULL;
 }
=20
+/**
+ * ice_parse_gtp_type - Sets GTP tunnel type to GTP-U or GTP-C
+ * @match: Flow match structure
+ * @fltr: Pointer to filter structure
+ *
+ * GTP-C/GTP-U is selected based on destination port number (enc_dst_por=
t).
+ * Before calling this funtcion, fltr->tunnel_type should be set to TNL_=
GTPU,
+ * therefore making GTP-U the default choice (when destination port numb=
er is
+ * not specified).
+ */
+static int
+ice_parse_gtp_type(struct flow_match_ports match,
+		   struct ice_tc_flower_fltr *fltr)
+{
+	u16 dst_port;
+
+	if (match.key->dst) {
+		dst_port =3D be16_to_cpu(match.key->dst);
+
+		switch (dst_port) {
+		case 2152:
+			break;
+		case 2123:
+			fltr->tunnel_type =3D TNL_GTPC;
+			break;
+		default:
+			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported GTP port number");
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 static int
 ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		      struct ice_tc_flower_fltr *fltr)
@@ -798,8 +876,28 @@ ice_parse_tunnel_attr(struct net_device *dev, struct=
 flow_rule *rule,
 		struct flow_match_ports match;
=20
 		flow_rule_match_enc_ports(rule, &match);
-		if (ice_tc_set_port(match, fltr, headers, true))
-			return -EINVAL;
+
+		if (fltr->tunnel_type !=3D TNL_GTPU) {
+			if (ice_tc_set_port(match, fltr, headers, true))
+				return -EINVAL;
+		} else {
+			if (ice_parse_gtp_type(match, fltr))
+				return -EINVAL;
+		}
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
+		struct flow_match_enc_opts match;
+
+		flow_rule_match_enc_opts(rule, &match);
+
+		memcpy(&fltr->gtp_pdu_info_keys, &match.key->data[0],
+		       sizeof(struct gtp_pdu_session_info));
+
+		memcpy(&fltr->gtp_pdu_info_masks, &match.mask->data[0],
+		       sizeof(struct gtp_pdu_session_info));
+
+		fltr->flags |=3D ICE_TC_FLWR_FIELD_ENC_OPTS;
 	}
=20
 	return 0;
@@ -837,6 +935,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, s=
truct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/et=
hernet/intel/ice/ice_tc_lib.h
index 319049477959..e25e958f4396 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -22,6 +22,7 @@
 #define ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT	BIT(15)
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
+#define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
=20
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
=20
@@ -119,6 +120,8 @@ struct ice_tc_flower_fltr {
 	struct ice_tc_flower_lyr_2_4_hdrs inner_headers;
 	struct ice_vsi *src_vsi;
 	__be32 tenant_id;
+	struct gtp_pdu_session_info gtp_pdu_info_keys;
+	struct gtp_pdu_session_info gtp_pdu_info_masks;
 	u32 flags;
 	u8 tunnel_type;
 	struct ice_tc_flower_action	action;
--=20
2.35.1

