Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 932BC49F9C8
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Jan 2022 13:48:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 24F04283AD;
	Fri, 28 Jan 2022 12:48:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b7r-2TZMR_KY; Fri, 28 Jan 2022 12:48:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B4466283A9;
	Fri, 28 Jan 2022 12:48:26 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 666FF38A0085
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 13:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4A4BF2838F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 13:01:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdFjwVp3z6Zd for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 27 Jan 2022 13:01:42 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by mail.osmocom.org (Postfix) with ESMTPS id 0E9F5282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 13:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643288502; x=1674824502;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/WLvTKLHrBo4nY/CpzoGBhSFn0WzlDpL6Ni4Wn8/jEc=;
  b=e1SmySng98rgDYxySCgynl14YvCNuOinuLOJ25vel6N/duw0ruJ0JcJw
   sIfjTiPFdF27lW5PIaFBMLYsLT9hzDCkSaa9b9ai7lHlmUJuoEuNcW70l
   txPbhavagYwELrt9We5o5S20j5zSr7eeryX0zC3764gbhBh7EfkWehAuA
   JZA1/+4ZHjtSgSw9oSBeEFDRWyLtNF7hOSXF92RYeqEOYFAJ3/D+cmqfX
   l1yTHebbYWigxWKItIu9LgwOr13W6uRDkWVCWbIL2URWcXEN+dghDm3cH
   qPZBv+cDaUJZylsvcJMLrW4VeNy5WmrHrgywOaxqJwA6lTc7lHSyg83b0
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="247060822"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="247060822"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 05:01:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="495715708"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga002.jf.intel.com with ESMTP; 27 Jan 2022 05:00:25 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 20RD0MBl020392;
	Thu, 27 Jan 2022 13:00:22 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next v2 2/5] gtp: Add support for checking GTP device type
Date: Thu, 27 Jan 2022 13:57:32 +0100
Message-Id: <20220127125732.125965-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XFT5J5NNVOY2OCC3PGOYTIHGKMNSU2PX
X-Message-ID-Hash: XFT5J5NNVOY2OCC3PGOYTIHGKMNSU2PX
X-Mailman-Approved-At: Fri, 28 Jan 2022 12:48:25 +0000
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XFT5J5NNVOY2OCC3PGOYTIHGKMNSU2PX/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Add a function that checks if a net device type is GTP.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/net/gtp.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/net/gtp.h b/include/net/gtp.h
index 0e16ebb2a82d..ae915dd33d20 100644
--- a/include/net/gtp.h
+++ b/include/net/gtp.h
@@ -27,6 +27,12 @@ struct gtp1_header {	/* According to 3GPP TS 29.060. *=
/
 	__be32	tid;
 } __attribute__ ((packed));
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
2.31.1

