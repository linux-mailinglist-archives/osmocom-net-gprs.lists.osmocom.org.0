Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAB84CD94D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  4 Mar 2022 17:41:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AA42928392;
	Fri,  4 Mar 2022 16:41:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyeNv3Z6q4wf; Fri,  4 Mar 2022 16:41:40 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1C0B928129;
	Fri,  4 Mar 2022 16:41:38 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 54C9F38A0A78
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 22F9B28121
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3G90I5hnkq7O for <osmocom-net-gprs@lists.osmocom.org>;
	Fri,  4 Mar 2022 16:41:15 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by mail.osmocom.org (Postfix) with ESMTPS id DDCF528127
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646412072; x=1677948072;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Mo135wmiyBV1MyO7OEFoIfk7OQwDjj5fc99hb7inUI0=;
  b=fatEM2Hh5pHSXtmS5cpr04Jv+K8pjiEDiChfwi3u8bNSimoQjeXjWTMW
   gm7a81Y45TVpj3OmG0nriVi2kS6Ijy00K++eHex8ro07DUUXybFpwquTM
   L4idO1xbb/tp3zTvzp2R6Q2dS0+PIvJFWjVPilLWxtTYpKyOP8lFBH9iH
   3uEOUQ5yGxgRbmMynxnOPe5Cu3I96EZlBJunkJpNXy7dZ8ZV7lWY0ByjV
   dDjWNNL271agah0a3OrKddmdccS576GKps/kThQYHfyzuwNTh/MwQpLAj
   csHLaK5FThhRXQb7u5Cf0CbRehmPY3Wg8FkB77VzuzTEp7mOcBlDrA2vV
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="340441832"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400";
   d="scan'208";a="340441832"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2022 08:41:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400";
   d="scan'208";a="642560949"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga004.jf.intel.com with ESMTP; 04 Mar 2022 08:41:07 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 224Gf12L020994;
	Fri, 4 Mar 2022 16:41:06 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v10 5/7] gtp: Add support for checking GTP device type
Date: Fri,  4 Mar 2022 17:40:46 +0100
Message-Id: <20220304164048.476900-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 7JW2BJIOGLTAJNCKM2EA7WPMGKKEHTAV
X-Message-ID-Hash: 7JW2BJIOGLTAJNCKM2EA7WPMGKKEHTAV
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7JW2BJIOGLTAJNCKM2EA7WPMGKKEHTAV/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Add a function that checks if a net device type is GTP.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Harald Welte <laforge@gnumonks.org>
---
 include/net/gtp.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/net/gtp.h b/include/net/gtp.h
index 23c2aaae8a42..c1d6169df331 100644
--- a/include/net/gtp.h
+++ b/include/net/gtp.h
@@ -63,6 +63,12 @@ struct gtp_pdu_session_info {	/* According to 3GPP TS =
38.415. */
 	u8	qfi;
 };
=20
+static inline bool netif_is_gtp(const struct net_device *dev)
+{
+	return dev->rtnl_link_ops &&
+		!strcmp(dev->rtnl_link_ops->kind, "gtp");
+}
+
 #define GTP1_F_NPDU	0x01
 #define GTP1_F_SEQ	0x02
 #define GTP1_F_EXTHDR	0x04
--=20
2.35.1

