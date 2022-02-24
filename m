Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC554C3526
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 24 Feb 2022 19:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D6D5228398;
	Thu, 24 Feb 2022 18:56:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTtO_y4JhbsZ; Thu, 24 Feb 2022 18:56:01 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8E90D283B9;
	Thu, 24 Feb 2022 18:55:58 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 82B8438A18E6
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4CF6E2839F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKZthJ0qHDKZ for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Feb 2022 18:55:37 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by mail.osmocom.org (Postfix) with ESMTPS id 2458428398
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645728937; x=1677264937;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qdSY3AnFvkJUbR/9rX6atdZIluQ+PtJ4Jno78qjQBB8=;
  b=VICkiMFuJ7JoMvHl9DKMtvTPnjHsvCoPWkPl5ftdwPJeTlFvOXcxCL+8
   xvE+Pk46H9kSLf7ly4BKmfDLOFro2yNco46Nwfm9wnEvdJIjbWcg1Rbss
   WQTeBtWVrsZQv8NHIo0T/01aZhz05m12AWzxx3EqJNom9Cstm1atoUhQC
   9SpejDO7nwpPVtv/mhgN6UamlhAZyg+UHAhsnDvT8Tk7SirIk/rP3eVpP
   2IcrMn6kJ2GLx8TVms65RadTBgk9uKFv/rsxMW/IO+bPXrFKvq3T8glFe
   OGzh9iH54GW9bPrFc7IOwX51a/n6Yavyp/bmzY1Bw4PTrPFlttmsRXiij
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="235829855"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="235829855"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2022 10:55:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="628580990"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by FMSMGA003.fm.intel.com with ESMTP; 24 Feb 2022 10:55:19 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21OIt5Z3018029;
	Thu, 24 Feb 2022 18:55:18 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v9 6/7] ice: Fix FV offset searching
Date: Thu, 24 Feb 2022 19:54:59 +0100
Message-Id: <20220224185500.18384-7-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 77AZ5V2HLAMYNLWISLSWB445QXET5L33
X-Message-ID-Hash: 77AZ5V2HLAMYNLWISLSWB445QXET5L33
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/77AZ5V2HLAMYNLWISLSWB445QXET5L33/>
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
---
v7: Fix ice_get_sw_fv_list kernel-doc
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 21 ++++------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  2 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 39 +------------------
 3 files changed, 11 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net=
/ethernet/intel/ice/ice_flex_pipe.c
index 38fe0a7e6975..45ce9a2bb572 100644
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
@@ -1915,20 +1914,16 @@ ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_id=
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
+				if (fv->ew[j].prot_id =3D=3D lkups->fv_words[i].prot_id &&
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
index 4143728a1919..915aa693170c 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4506,41 +4506,6 @@ ice_create_recipe_group(struct ice_hw *hw, struct =
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
@@ -4688,11 +4653,11 @@ ice_add_adv_recipe(struct ice_hw *hw, struct ice_=
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
2.35.1

