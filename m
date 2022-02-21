Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE2B4BDB38
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 21 Feb 2022 18:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 22E58283B7;
	Mon, 21 Feb 2022 17:19:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QkY6XbHNeXfJ; Mon, 21 Feb 2022 17:19:57 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 9C95A283BD;
	Mon, 21 Feb 2022 17:19:51 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E44E638A181C
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 289EE283B6
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:19:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4xwNsWdp3pj for <osmocom-net-gprs@lists.osmocom.org>;
	Mon, 21 Feb 2022 17:19:45 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by mail.osmocom.org (Postfix) with ESMTPS id CECFE2838A
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645463981; x=1676999981;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qdSY3AnFvkJUbR/9rX6atdZIluQ+PtJ4Jno78qjQBB8=;
  b=TLpqYDWrLUvU5TIX8xDzzUIMutATEiBPYYbwR5Huj6dGi+iJz16H0ueQ
   +EC3eNI8ohF6ND8Cjxg+7FyzqxgUcNkfblIIEALUDcX82EguTND7FLrY5
   3+69z9ANq0sBq7TA2RUlkLrOwZuropEF8R0LAEZVURmX4oYy8nMqXTvNu
   yinPp9IQ9QRmogrxqHDtESOc/bVBsGi3hgGuuEaQcGbszOyZH4BfBmx8k
   URfUFQuSFmM3oogGFfe9YDb0aQkzCNT2VmvgH9tj+oD9CMlYlRAJybhpd
   a4DuAarrXkzGu0s33vwO9QvVQqWckR+jRuoAvEF1Tdrbt4jQ5+Verdh3A
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="232165885"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600";
   d="scan'208";a="232165885"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2022 09:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600";
   d="scan'208";a="636726594"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2022 09:19:36 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21LHJBnT010069;
	Mon, 21 Feb 2022 17:19:35 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v7 6/7] ice: Fix FV offset searching
Date: Mon, 21 Feb 2022 11:14:24 +0100
Message-Id: <20220221101425.19776-7-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NTOATTZUJ3J3MBSJA267XRALXBS3ZJT5
X-Message-ID-Hash: NTOATTZUJ3J3MBSJA267XRALXBS3ZJT5
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NTOATTZUJ3J3MBSJA267XRALXBS3ZJT5/>
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

