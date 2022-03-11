Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 186484DADD6
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Mar 2022 10:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DB3C12804E;
	Wed, 16 Mar 2022 09:53:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJ-o8VDEcMm8; Wed, 16 Mar 2022 09:53:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EAF5428040;
	Wed, 16 Mar 2022 09:53:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2558138A0AD0
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C7B4028125
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:18:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G85JeypRGeei for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Mar 2022 17:18:48 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by mail.osmocom.org (Postfix) with ESMTPS id AF1E52810D
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647019127; x=1678555127;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KObHFutrmOEH754RK9zoMjXEAGV+qV6/E0qwcq+ro7M=;
  b=DgW7Y7vF7Ozb5EJ4Y2GezZYAuKYi5JyI+kDF2w3poOFZPU2ihEFhnFwJ
   wHLSu9CLYfv1IyZPm8WDi17G7jfuacNCaOCQ7CC6JgIAktUWCmgh8mKa1
   3z1+4vfXBRQVlprPbOLrdrGJ1dohiuDZ4rl2OlQkrzAcakmNukEsWSuFy
   13eT2nDICQr/JHdexdCKB963nlYp6ToqjhPOt8HzAMzV8BmCYzc3rgYMi
   DFc6es0YTsYaZxlb7QqJ3I0ynjoHifbwsOr6IkHLgDlm38i+sHcK3IWv7
   9ZP7yKvWKEDndNg2eumizyDDHrtMyZTSPXHaI268W6uoQ9nv9wxXIIcX1
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255561261"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="255561261"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 09:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="612215426"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by fmsmga004.fm.intel.com with ESMTP; 11 Mar 2022 09:18:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v11 7/7] ice: Support GTP-U and GTP-C offload in switchdev
Date: Fri, 11 Mar 2022 09:18:21 -0800
Message-Id: <20220311171821.3785992-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
References: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LG2AE5QNUFBD4XWK7TE5YLKVYXBSAV4D
X-Message-ID-Hash: LG2AE5QNUFBD4XWK7TE5YLKVYXBSAV4D
X-Mailman-Approved-At: Wed, 16 Mar 2022 09:53:08 +0000
CC: Marcin Szycik <marcin.szycik@linux.intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, jiri@resnulli.us, pablo@netfilter.org, laforge@gnumonks.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, osmocom-net-gprs@lists.osmocom.org, Sandeep Penigalapati <sandeep.penigalapati@intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LG2AE5QNUFBD4XWK7TE5YLKVYXBSAV4D/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

Add support for creating filters for GTP-U and GTP-C in switchdev mode. A=
dd
support for parsing GTP-specific options (QFI and PDU type) and TEID.

By default, a filter for GTP-U will be added. To add a filter for GTP-C,
specify enc_dst_port =3D 2123, e.g.:

tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
enc_dst_port 2123 action mirred egress redirect dev $VF1_PR

Note: GTP-U with outer IPv6 offload is not supported yet.
Note: GTP-U with no payload offload is not supported yet.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  31 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 615 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 8 files changed, 765 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/=
intel/ice/ice.h
index 23c39805a1b0..1a130ff562af 100644
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
index c9bb338789ed..6a336e8d4e4d 100644
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
index 385deaa021ac..3f64300b0e14 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -41,6 +41,8 @@ enum ice_protocol_type {
 	ICE_VXLAN,
 	ICE_GENEVE,
 	ICE_NVGRE,
+	ICE_GTP,
+	ICE_GTP_NO_PAY,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
@@ -52,6 +54,8 @@ enum ice_sw_tunnel_type {
 	ICE_SW_TUN_VXLAN,
 	ICE_SW_TUN_GENEVE,
 	ICE_SW_TUN_NVGRE,
+	ICE_SW_TUN_GTPU,
+	ICE_SW_TUN_GTPC,
 	ICE_ALL_TUNNELS /* All tunnel types including NVGRE */
 };
=20
@@ -182,6 +186,20 @@ struct ice_udp_tnl_hdr {
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
@@ -198,6 +216,7 @@ union ice_prot_hdr {
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
index 1f83bb3d73bb..7f3d97595890 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -726,6 +726,495 @@ static const u8 dummy_vlan_udp_ipv6_packet[] =3D {
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
@@ -4057,7 +4546,9 @@ static const struct ice_prot_ext_tbl_entry ice_prot=
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
@@ -4075,7 +4566,9 @@ static struct ice_protocol_entry ice_prot_id_tbl[IC=
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
@@ -4745,6 +5238,8 @@ static bool ice_tun_type_match_word(enum ice_sw_tun=
nel_type tun_type, u16 *mask)
 	case ICE_SW_TUN_GENEVE:
 	case ICE_SW_TUN_VXLAN:
 	case ICE_SW_TUN_NVGRE:
+	case ICE_SW_TUN_GTPU:
+	case ICE_SW_TUN_GTPC:
 		*mask =3D ICE_TUN_FLAG_MASK;
 		return true;
=20
@@ -4810,6 +5305,12 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct=
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
 	case ICE_SW_TUN_AND_NON_TUN:
 	default:
 		prof_type =3D ICE_PROF_ALL;
@@ -5010,17 +5511,17 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *l=
kups, u16 lkups_cnt,
 		      const u8 **pkt, u16 *pkt_len,
 		      const struct ice_dummy_pkt_offsets **offsets)
 {
-	bool tcp =3D false, udp =3D false, ipv6 =3D false, vlan =3D false;
-	bool ipv6_il =3D false;
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
@@ -5028,29 +5529,103 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *=
lkups, u16 lkups_cnt,
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
 			 lkups[i].m_u.ethertype.ethtype_id =3D=3D
 				cpu_to_be16(0xFFFF))
-			ipv6 =3D true;
+			outer_ipv6 =3D true;
 		else if (lkups[i].type =3D=3D ICE_ETYPE_IL &&
 			 lkups[i].h_u.ethertype.ethtype_id =3D=3D
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
 			 lkups[i].m_u.ethertype.ethtype_id =3D=3D
 				cpu_to_be16(0xFFFF))
-			ipv6_il =3D true;
+			inner_ipv6 =3D true;
+		else if (lkups[i].type =3D=3D ICE_IPV6_IL)
+			inner_ipv6 =3D true;
+		else if (lkups[i].type =3D=3D ICE_GTP_NO_PAY)
+			gtp_no_pay =3D true;
+	}
+
+	if (tun_type =3D=3D ICE_SW_TUN_GTPU) {
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
+				*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
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
+	}
+
+	if (tun_type =3D=3D ICE_SW_TUN_GTPC) {
+		if (outer_ipv6) {
+			*pkt =3D dummy_ipv6_gtp_packet;
+			*pkt_len =3D sizeof(dummy_ipv6_gtp_packet);
+			*offsets =3D dummy_ipv6_gtp_no_pay_packet_offsets;
+		} else {
+			*pkt =3D dummy_ipv4_gtpu_ipv4_packet;
+			*pkt_len =3D sizeof(dummy_ipv4_gtpu_ipv4_packet);
+			*offsets =3D dummy_ipv4_gtp_no_pay_packet_offsets;
+		}
+		return;
 	}
=20
 	if (tun_type =3D=3D ICE_SW_TUN_NVGRE) {
-		if (tcp && ipv6_il) {
+		if (inner_tcp && inner_ipv6) {
 			*pkt =3D dummy_gre_ipv6_tcp_packet;
 			*pkt_len =3D sizeof(dummy_gre_ipv6_tcp_packet);
 			*offsets =3D dummy_gre_ipv6_tcp_packet_offsets;
 			return;
 		}
-		if (tcp) {
+		if (inner_tcp) {
 			*pkt =3D dummy_gre_tcp_packet;
 			*pkt_len =3D sizeof(dummy_gre_tcp_packet);
 			*offsets =3D dummy_gre_tcp_packet_offsets;
 			return;
 		}
-		if (ipv6_il) {
+		if (inner_ipv6) {
 			*pkt =3D dummy_gre_ipv6_udp_packet;
 			*pkt_len =3D sizeof(dummy_gre_ipv6_udp_packet);
 			*offsets =3D dummy_gre_ipv6_udp_packet_offsets;
@@ -5064,19 +5639,19 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *l=
kups, u16 lkups_cnt,
=20
 	if (tun_type =3D=3D ICE_SW_TUN_VXLAN ||
 	    tun_type =3D=3D ICE_SW_TUN_GENEVE) {
-		if (tcp && ipv6_il) {
+		if (inner_tcp && inner_ipv6) {
 			*pkt =3D dummy_udp_tun_ipv6_tcp_packet;
 			*pkt_len =3D sizeof(dummy_udp_tun_ipv6_tcp_packet);
 			*offsets =3D dummy_udp_tun_ipv6_tcp_packet_offsets;
 			return;
 		}
-		if (tcp) {
+		if (inner_tcp) {
 			*pkt =3D dummy_udp_tun_tcp_packet;
 			*pkt_len =3D sizeof(dummy_udp_tun_tcp_packet);
 			*offsets =3D dummy_udp_tun_tcp_packet_offsets;
 			return;
 		}
-		if (ipv6_il) {
+		if (inner_ipv6) {
 			*pkt =3D dummy_udp_tun_ipv6_udp_packet;
 			*pkt_len =3D sizeof(dummy_udp_tun_ipv6_udp_packet);
 			*offsets =3D dummy_udp_tun_ipv6_udp_packet_offsets;
@@ -5088,7 +5663,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 		return;
 	}
=20
-	if (udp && !ipv6) {
+	if (inner_udp && !outer_ipv6) {
 		if (vlan) {
 			*pkt =3D dummy_vlan_udp_packet;
 			*pkt_len =3D sizeof(dummy_vlan_udp_packet);
@@ -5099,7 +5674,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 		*pkt_len =3D sizeof(dummy_udp_packet);
 		*offsets =3D dummy_udp_packet_offsets;
 		return;
-	} else if (udp && ipv6) {
+	} else if (inner_udp && outer_ipv6) {
 		if (vlan) {
 			*pkt =3D dummy_vlan_udp_ipv6_packet;
 			*pkt_len =3D sizeof(dummy_vlan_udp_ipv6_packet);
@@ -5110,7 +5685,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 		*pkt_len =3D sizeof(dummy_udp_ipv6_packet);
 		*offsets =3D dummy_udp_ipv6_packet_offsets;
 		return;
-	} else if ((tcp && ipv6) || ipv6) {
+	} else if ((inner_tcp && outer_ipv6) || outer_ipv6) {
 		if (vlan) {
 			*pkt =3D dummy_vlan_tcp_ipv6_packet;
 			*pkt_len =3D sizeof(dummy_vlan_tcp_ipv6_packet);
@@ -5216,6 +5791,10 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem=
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
index fedc310c376c..3acd9f921c44 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -27,6 +27,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_=
2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_ENC_DST_MAC)
 		lkups_cnt++;
=20
+	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS)
+		lkups_cnt++;
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
@@ -102,6 +105,11 @@ ice_proto_type_from_tunnel(enum ice_tunnel_type type=
)
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
@@ -117,6 +125,10 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
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
@@ -143,7 +155,15 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_fl=
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
@@ -160,6 +180,24 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_fl=
ower_fltr *fltr,
 		i++;
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
@@ -361,6 +399,12 @@ static int ice_tc_tun_get_type(struct net_device *tu=
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
@@ -760,6 +804,40 @@ ice_get_tunnel_device(struct net_device *dev, struct=
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
@@ -815,8 +893,28 @@ ice_parse_tunnel_attr(struct net_device *dev, struct=
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
@@ -854,6 +952,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, s=
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
2.31.1

