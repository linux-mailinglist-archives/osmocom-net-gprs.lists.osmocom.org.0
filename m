Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 2899F4C3523
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 24 Feb 2022 19:55:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id F0E71283AE;
	Thu, 24 Feb 2022 18:55:54 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S7hEWT_GnfLR; Thu, 24 Feb 2022 18:55:54 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 078922839F;
	Thu, 24 Feb 2022 18:55:53 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A1ED438A18E6
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8193C2838D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ZFb4B5N_0eO for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Feb 2022 18:55:34 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by mail.osmocom.org (Postfix) with ESMTPS id 4ED1C2839F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645728933; x=1677264933;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Mo135wmiyBV1MyO7OEFoIfk7OQwDjj5fc99hb7inUI0=;
  b=OQZtz6hx3OSm3ZAhHqUEIKQVGKkdaEgwxqDSkpLYmUnG+yCILTiO3YCy
   Z1Br92eJrPrijtxJkez8PHDkdTYVPhLpUpICOvWUxsduyLs/A4YhRT70C
   BsI1Xvw8CGsdH1zBQ6dJEd40gxYkLTA6eIKLp7mpi6dJQEVzwpKoORdjD
   h1xYpH58agyEXEsptQ6zrNEAF1boO7SK1LtlJ0YmNfePBXicgGMEqfyIW
   bIH1cpEjugh7XKxv1i1CYjD0uLLK0My8k0pEX7sM1Yc7V16SeiG1Md+BR
   oBZDLzatEwOiZKllAjPVbRYSlDx6Lzqmj1BP8FmHpT5kb4iewy8ND/iI7
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="315542704"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="315542704"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2022 10:55:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="684383863"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2022 10:55:18 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21OIt5Z2018029;
	Thu, 24 Feb 2022 18:55:17 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v9 5/7] gtp: Add support for checking GTP device type
Date: Thu, 24 Feb 2022 19:54:58 +0100
Message-Id: <20220224185500.18384-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: W5NPPWHVCT7IUFQE4SJDGWTUVYLZMNZF
X-Message-ID-Hash: W5NPPWHVCT7IUFQE4SJDGWTUVYLZMNZF
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/W5NPPWHVCT7IUFQE4SJDGWTUVYLZMNZF/>
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

