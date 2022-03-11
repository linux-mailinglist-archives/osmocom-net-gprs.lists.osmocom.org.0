Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4D4DADDD
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Mar 2022 10:53:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id BB2E2283C7;
	Wed, 16 Mar 2022 09:53:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r61e35YBxvLQ; Wed, 16 Mar 2022 09:53:33 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5F60D28056;
	Wed, 16 Mar 2022 09:53:26 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ADA7638A0CB5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9096A2812F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JarYxhTT_fBA for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Mar 2022 17:19:05 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 932CD28132
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647019142; x=1678555142;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=su1FUQlE8e53oIIpoDCVrJCNalkf9829lMykkCvQF74=;
  b=KDyARySYKks/vsLwbDnpy3wAo1tNVwx1XZ8cZvi7PnQMqAMsKs+cD4Xg
   Aubi8WuNLKfnIfdm+TkvYfscOwNBn1Rt5KTs6GkpEJNGMyKkc2Lr5uV2l
   9IXsXgA4OMv4g9iS9eGUN8L8cjvpdZhXN0Xq+f5rn2ZOWH+hLZxXPOQsO
   5odB3IikSY7VsEpQ9H3fFz/xQKLzEAEfCreb1ufeOKYoeY/n3QZwEhLiz
   bNFXNtKxHCIugsBVc0vh2QVqn+awy9lugyFsrC3DRX/vh9IYLnmNSg+KY
   CyxpCDk6nE7FjKTHHB8kjmH6zqWw5OSdNXJ2yfXAX9GZlPG9wfYPuP8vj
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="235565232"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="235565232"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 09:18:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="612215415"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by fmsmga004.fm.intel.com with ESMTP; 11 Mar 2022 09:18:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v11 6/7] ice: Fix FV offset searching
Date: Fri, 11 Mar 2022 09:18:20 -0800
Message-Id: <20220311171821.3785992-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
References: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UIEAZX7YVIIMIAX4L67TGIDFEDOK4QKF
X-Message-ID-Hash: UIEAZX7YVIIMIAX4L67TGIDFEDOK4QKF
X-Mailman-Approved-At: Wed, 16 Mar 2022 09:53:08 +0000
CC: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, marcin.szycik@linux.intel.com, wojciech.drewek@intel.com, jiri@resnulli.us, pablo@netfilter.org, laforge@gnumonks.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, osmocom-net-gprs@lists.osmocom.org, Sandeep Penigalapati <sandeep.penigalapati@intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/UIEAZX7YVIIMIAX4L67TGIDFEDOK4QKF/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Checking only protocol ids while searching for correct FVs can lead to a
situation, when incorrect FV will be added to the list. Incorrect means
that FV has correct protocol id but incorrect offset.

Call ice_get_sw_fv_list with ice_prot_lkup_ext struct which contains all
protocol ids with offsets.

With this modification allocating and collecting protocol ids list is
not longer needed.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 22 +++++------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  2 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 39 +------------------
 3 files changed, 12 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net=
/ethernet/intel/ice/ice_flex_pipe.c
index 38fe0a7e6975..c9bb338789ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1871,20 +1871,19 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_=
prof_type req_profs,
 /**
  * ice_get_sw_fv_list
  * @hw: pointer to the HW structure
- * @prot_ids: field vector to search for with a given protocol ID
- * @ids_cnt: lookup/protocol count
+ * @lkups: list of protocol types
  * @bm: bitmap of field vectors to consider
  * @fv_list: Head of a list
  *
  * Finds all the field vector entries from switch block that contain
- * a given protocol ID and returns a list of structures of type
+ * a given protocol ID and offset and returns a list of structures of ty=
pe
  * "ice_sw_fv_list_entry". Every structure in the list has a field vecto=
r
  * definition and profile ID information
  * NOTE: The caller of the function is responsible for freeing the memor=
y
  * allocated for every list entry.
  */
 int
-ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
+ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
 		   unsigned long *bm, struct list_head *fv_list)
 {
 	struct ice_sw_fv_list_entry *fvl;
@@ -1896,7 +1895,7 @@ ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids,=
 u16 ids_cnt,
=20
 	memset(&state, 0, sizeof(state));
=20
-	if (!ids_cnt || !hw->seg)
+	if (!lkups->n_val_words || !hw->seg)
 		return -EINVAL;
=20
 	ice_seg =3D hw->seg;
@@ -1915,20 +1914,17 @@ ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_id=
s, u16 ids_cnt,
 		if (!test_bit((u16)offset, bm))
 			continue;
=20
-		for (i =3D 0; i < ids_cnt; i++) {
+		for (i =3D 0; i < lkups->n_val_words; i++) {
 			int j;
=20
-			/* This code assumes that if a switch field vector line
-			 * has a matching protocol, then this line will contain
-			 * the entries necessary to represent every field in
-			 * that protocol header.
-			 */
 			for (j =3D 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
-				if (fv->ew[j].prot_id =3D=3D prot_ids[i])
+				if (fv->ew[j].prot_id =3D=3D
+				    lkups->fv_words[i].prot_id &&
+				    fv->ew[j].off =3D=3D lkups->fv_words[i].off)
 					break;
 			if (j >=3D hw->blk[ICE_BLK_SW].es.fvw)
 				break;
-			if (i + 1 =3D=3D ids_cnt) {
+			if (i + 1 =3D=3D lkups->n_val_words) {
 				fvl =3D devm_kzalloc(ice_hw_to_dev(hw),
 						   sizeof(*fvl), GFP_KERNEL);
 				if (!fvl)
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net=
/ethernet/intel/ice/ice_flex_pipe.h
index 2fd5312494c7..9c530c86703e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -87,7 +87,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_t=
ype type,
 void
 ice_init_prof_result_bm(struct ice_hw *hw);
 int
-ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
+ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
 		   unsigned long *bm, struct list_head *fv_list);
 int
 ice_pkg_buf_unreserve_section(struct ice_buf_build *bld, u16 count);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/et=
hernet/intel/ice/ice_switch.c
index d98aa35c0337..1f83bb3d73bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4734,41 +4734,6 @@ ice_create_recipe_group(struct ice_hw *hw, struct =
ice_sw_recipe *rm,
 	return status;
 }
=20
-/**
- * ice_get_fv - get field vectors/extraction sequences for spec. lookup =
types
- * @hw: pointer to hardware structure
- * @lkups: lookup elements or match criteria for the advanced recipe, on=
e
- *	   structure per protocol header
- * @lkups_cnt: number of protocols
- * @bm: bitmap of field vectors to consider
- * @fv_list: pointer to a list that holds the returned field vectors
- */
-static int
-ice_get_fv(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups, u16 lkups=
_cnt,
-	   unsigned long *bm, struct list_head *fv_list)
-{
-	u8 *prot_ids;
-	int status;
-	u16 i;
-
-	prot_ids =3D kcalloc(lkups_cnt, sizeof(*prot_ids), GFP_KERNEL);
-	if (!prot_ids)
-		return -ENOMEM;
-
-	for (i =3D 0; i < lkups_cnt; i++)
-		if (!ice_prot_type_to_id(lkups[i].type, &prot_ids[i])) {
-			status =3D -EIO;
-			goto free_mem;
-		}
-
-	/* Find field vectors that include all specified protocol types */
-	status =3D ice_get_sw_fv_list(hw, prot_ids, lkups_cnt, bm, fv_list);
-
-free_mem:
-	kfree(prot_ids);
-	return status;
-}
-
 /**
  * ice_tun_type_match_word - determine if tun type needs a match mask
  * @tun_type: tunnel type
@@ -4917,11 +4882,11 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_=
adv_lkup_elem *lkups,
=20
 	/* Get bitmap of field vectors (profiles) that are compatible with the
 	 * rule request; only these will be searched in the subsequent call to
-	 * ice_get_fv.
+	 * ice_get_sw_fv_list.
 	 */
 	ice_get_compat_fv_bitmap(hw, rinfo, fv_bitmap);
=20
-	status =3D ice_get_fv(hw, lkups, lkups_cnt, fv_bitmap, &rm->fv_list);
+	status =3D ice_get_sw_fv_list(hw, lkup_exts, fv_bitmap, &rm->fv_list);
 	if (status)
 		goto err_unroll;
=20
--=20
2.31.1

