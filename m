Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F924DD883
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 11:54:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C483D28055;
	Fri, 18 Mar 2022 10:54:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTmosaXMSmmH; Fri, 18 Mar 2022 10:54:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 28DE528024;
	Fri, 18 Mar 2022 10:54:47 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9643738A0855
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7711428041
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ch5A67FR64Q for <osmocom-net-gprs@lists.osmocom.org>;
	Wed, 16 Mar 2022 20:40:04 +0000 (UTC)
Received: from mga11.intel.com (unknown [192.55.52.93])
	by mail.osmocom.org (Postfix) with ESMTPS id 4195828040
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647463204; x=1678999204;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=G/IsyO70e8OkkjO0FSU43HwrZ5V2UptkMOOpHpbXjBY=;
  b=UtVzX0SyNKsqMwhLO1mkKZsHxXQI+jtv2rJneR8Jh8NIKa5O/mRyuCe7
   /OJECabnfJzgbEf+eCmbuZBAVJJZX3xWC7t20zYxXP7YST+zQGWlE0XRY
   wPw4z4OeYPfykJAN+IAaKDmaA0kjzsoN+Ipt+XZFrrWAU6L1rRkAAtpYd
   ty6hwRBYLpHPpKz0njmWMiYiwKF592uSPHpShSJuz6QnIb1flg2i+pFWW
   vIdkQIsoA+adqD4LIOUe+hf5F7CDJ2LdehvH2LiMJQHnJaCvyrO+Ygv2c
   TBeqvoanfXrxYiS7QGlLWyiQ0akaqfFlt222PgZ5cRG9iXspltEoZn/+U
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="254265725"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="254265725"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2022 13:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="646799205"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 13:39:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH net-next 3/4] ice: fix return value check in ice_gnss.c
Date: Wed, 16 Mar 2022 13:40:23 -0700
Message-Id: <20220316204024.3201500-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
References: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3JPSYL72TF4GPXUW2GUH7GYSLAQQ7X5U
X-Message-ID-Hash: 3JPSYL72TF4GPXUW2GUH7GYSLAQQ7X5U
X-Mailman-Approved-At: Fri, 18 Mar 2022 10:54:38 +0000
CC: Yang Yingliang <yangyingliang@huawei.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, wojciech.drewek@intel.com, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, Hulk Robot <hulkci@huawei.com>, Gurucharan <gurucharanx.g@intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/3JPSYL72TF4GPXUW2GUH7GYSLAQQ7X5U/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Yang Yingliang <yangyingliang@huawei.com>

kthread_create_worker() and tty_alloc_driver() return ERR_PTR()
and never return NULL. The NULL test in the return value check
should be replaced with IS_ERR().

Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at I=
ntel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethe=
rnet/intel/ice/ice_gnss.c
index 755e1580f368..35579cf4283f 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -125,7 +125,7 @@ static struct gnss_serial *ice_gnss_struct_init(struc=
t ice_pf *pf)
 	 * writes.
 	 */
 	kworker =3D kthread_create_worker(0, "ice-gnss-%s", dev_name(dev));
-	if (!kworker) {
+	if (IS_ERR(kworker)) {
 		kfree(gnss);
 		return NULL;
 	}
@@ -253,7 +253,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(=
struct ice_pf *pf)
 	int err;
=20
 	tty_driver =3D tty_alloc_driver(1, TTY_DRIVER_REAL_RAW);
-	if (!tty_driver) {
+	if (IS_ERR(tty_driver)) {
 		dev_err(ice_pf_to_dev(pf), "Failed to allocate memory for GNSS TTY\n")=
;
 		return NULL;
 	}
--=20
2.31.1

