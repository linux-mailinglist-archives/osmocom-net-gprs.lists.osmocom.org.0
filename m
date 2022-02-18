Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6A14BBB52
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Feb 2022 15:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 003CE283B5;
	Fri, 18 Feb 2022 14:57:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsd64qA3e1x7; Fri, 18 Feb 2022 14:57:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 431EE283AD;
	Fri, 18 Feb 2022 14:57:17 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7FF0C38A003F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4F2F6283B3
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHCzyTKrtb2x for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 18 Feb 2022 14:57:09 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mail.osmocom.org (Postfix) with ESMTPS id 5CB28283B8
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Feb 2022 14:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645196225; x=1676732225;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HHQuBo/A8J+8leMFfb9Sfl3/Hr7HRhKWYzmIhrCEGVs=;
  b=HKqhtykfBLQXYN30aNDVTk1YREQImaOb7IbJBPNOpryJATCpBG6x3cOo
   Ee5jsQyVOdljRZjpjip7j4x+/6hhSq468UpaVXQVt9qzcAGgLrqzbBMcP
   aUrGw7KcQ7lDZyObtUVynO2OucDjdRftjzCGrjypTKKr1WZJWO9CZ69SU
   TH2X5Epvw60qFk06jwTodSyQlmSx/kShdo7j3ToA/TNnYH4vgFMDk/su5
   UJks5Y4PtMmgLkC3LBYt7aw6dZIOM6NmPr4012iB7iiL3PGnCf3IU1znF
   C7kpqxwIPoZ8aae8kl152Np+VxvphKXrOeQGDC83CvAh/8L/OqE98GtZD
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="250894472"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600";
   d="scan'208";a="250894472"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2022 06:57:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600";
   d="scan'208";a="637761161"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga004.jf.intel.com with ESMTP; 18 Feb 2022 06:56:59 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21IEuw9P010575;
	Fri, 18 Feb 2022 14:56:58 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v6 5/7] gtp: Add support for checking GTP device type
Date: Fri, 18 Feb 2022 15:53:36 +0100
Message-Id: <20220218145336.7274-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
References: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CVCBL3TJ6WZQ5DIXGYAAM4RBEVP4CXUB
X-Message-ID-Hash: CVCBL3TJ6WZQ5DIXGYAAM4RBEVP4CXUB
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CVCBL3TJ6WZQ5DIXGYAAM4RBEVP4CXUB/>
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
2.31.1

