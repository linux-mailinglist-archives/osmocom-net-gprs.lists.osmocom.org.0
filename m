Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B704A9D2D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  4 Feb 2022 17:54:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A2FFA2839E;
	Fri,  4 Feb 2022 16:54:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jzb8v4v1cOi3; Fri,  4 Feb 2022 16:54:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A15F4282E5;
	Fri,  4 Feb 2022 16:54:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9B8B238A008F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Feb 2022 16:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 44C5A2838C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Feb 2022 16:54:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCcOXfBSIc5Y for <osmocom-net-gprs@lists.osmocom.org>;
	Fri,  4 Feb 2022 16:54:06 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by mail.osmocom.org (Postfix) with ESMTPS id 995E3282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Feb 2022 16:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643993645; x=1675529645;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/WLvTKLHrBo4nY/CpzoGBhSFn0WzlDpL6Ni4Wn8/jEc=;
  b=nibN80YeSnqe0STUoUGSnb7guQQdnrOB/RO8bssLHWZXsBcSwM2da3yV
   zGpwjehrN8Z2wvoh09/4lbDB6oJBqsQR+mIIUkuFlnvZkMkg86q7r3Nkg
   0XXZXOdIi9lJlYIIc6St+HXW2Ra7Gce5AkldIsyEOr4hlHxsIDIgn2A00
   DesifZaJgMOqbiaMiEcjdo07oDR3jyL8keB9wMPuUpSAaTYSHAVMrGv/q
   0Ot7q55lOntl9qA66HlIXPweEaQvxPiT3ix/+Ag9zg0iUaToJ5pAwy+kp
   3PbhrIUOXy+r+zQvHg5ZBYNEIcN3PtmQx1dQllwFU80XJ7hpGbE/3Ehth
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="309144915"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600";
   d="scan'208";a="309144915"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2022 08:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600";
   d="scan'208";a="524366033"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga007.jf.intel.com with ESMTP; 04 Feb 2022 08:54:00 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 214GrxMh026629;
	Fri, 4 Feb 2022 16:53:59 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next v4 2/6] gtp: Add support for checking GTP device type
Date: Fri,  4 Feb 2022 17:50:56 +0100
Message-Id: <20220204165056.10572-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
References: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NX6FVBFT4T24FVI3VQEQQGNBXMHMBB6Z
X-Message-ID-Hash: NX6FVBFT4T24FVI3VQEQQGNBXMHMBB6Z
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NX6FVBFT4T24FVI3VQEQQGNBXMHMBB6Z/>
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

