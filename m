Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id E42504B2C3A
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 11 Feb 2022 18:58:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A4990283EC;
	Fri, 11 Feb 2022 17:58:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAFTX5lTMcri; Fri, 11 Feb 2022 17:58:40 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 12D66283EE;
	Fri, 11 Feb 2022 17:58:39 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5D9DE38A0093
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 17:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1A17B28389
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 17:58:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5F3j4KnqTkk for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Feb 2022 17:58:28 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by mail.osmocom.org (Postfix) with ESMTPS id 4DDDF2838E
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 17:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644602306; x=1676138306;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9G2ObfWLjRYdHDvEUMonE0x+ze1Oxowg9eesImwu/us=;
  b=Z7bfGnpmFQoNvABos89452rnarssEIORkCiz6zsCu/G9LWumfC8L2nD1
   wZrIleRZS+XWs5igfORIw3/lqbtWFGQfT8XFKBaP+bEeg3XkLyb8HL5Ft
   eqnF0sczOAtGFttCPz5rBPLjfKL/ekSEkQOuwqtpM+C1czz2H1u7gnmZ/
   A2GzsEGuehm1yyhsqN/7qAmZzGiLdfAIhiAQ6FHJQsd10nqkFA5Kyu1Ck
   jh+lea+KOHDGf6pPwuSGAUz5gQoRRzzonSCbncp9G2Ua1ynQyJ6w/xjcp
   oSejfVlhjb3gsMTxxVKM2YY3HBJgQG1hpx/1zOb5gzTrrn2CnSRKNIw+w
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="313059331"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600";
   d="scan'208";a="313059331"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2022 09:58:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600";
   d="scan'208";a="623284509"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Feb 2022 09:58:22 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21BHwL2R017265;
	Fri, 11 Feb 2022 17:58:21 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next v5 4/6] gtp: Add support for checking GTP device type
Date: Fri, 11 Feb 2022 18:55:08 +0100
Message-Id: <20220211175508.7952-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220211175405.7651-1-marcin.szycik@linux.intel.com>
References: <20220211175405.7651-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: DFS2MRINOCRIUL2GCQSFOZ4NXDQLB6MY
X-Message-ID-Hash: DFS2MRINOCRIUL2GCQSFOZ4NXDQLB6MY
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/DFS2MRINOCRIUL2GCQSFOZ4NXDQLB6MY/>
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

