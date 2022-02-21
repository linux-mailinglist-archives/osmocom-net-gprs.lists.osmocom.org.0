Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFD4BDB3C
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 21 Feb 2022 18:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 71942283B5;
	Mon, 21 Feb 2022 17:20:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-nrE7OW3PvC; Mon, 21 Feb 2022 17:20:08 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 02733283B9;
	Mon, 21 Feb 2022 17:20:08 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 200F038A181C
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CC672283BD
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:20:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMh2eN0jbSeP for <osmocom-net-gprs@lists.osmocom.org>;
	Mon, 21 Feb 2022 17:20:04 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by mail.osmocom.org (Postfix) with ESMTPS id E6915283B9
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645464003; x=1677000003;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Mo135wmiyBV1MyO7OEFoIfk7OQwDjj5fc99hb7inUI0=;
  b=IlEahK7I/Hn+E+mMSYqBOG5No27l+NZN++o+sf11LDeV6E6YXsN8oaFJ
   cFogvhJEJ6imYEeXmMCy0fNaeZU5fjSYTec1JuihtSn2jBAE+0KXegUpd
   5rjVNmxTPjEOgtBhnlWzHNBKuJbi8a+U1U47vgC44sHzbaJRaRmWQCupB
   nR7teAGGgCV/5KaPX4wRIGJixFGJ8PbS42M9f21otkan3R3vsmW0XlxNy
   mHowfIH2ajmH4JWAMu4x2qttNgfC/BeTZxu6xIgb/8lBGdpUVic//lnOP
   P3wBwaXmxlodlQScCZOomDIaeXXVxGCnmlPFaHkXVtugwrnNbJpJbqJG5
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="312290880"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600";
   d="scan'208";a="312290880"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2022 09:19:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600";
   d="scan'208";a="778742859"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga005.fm.intel.com with ESMTP; 21 Feb 2022 09:19:35 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21LHJBnS010069;
	Mon, 21 Feb 2022 17:19:34 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v7 5/7] gtp: Add support for checking GTP device type
Date: Mon, 21 Feb 2022 11:14:23 +0100
Message-Id: <20220221101425.19776-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ZQQHOQIRPR3RE3SMLIF4TN4P5VIQ4TKJ
X-Message-ID-Hash: ZQQHOQIRPR3RE3SMLIF4TN4P5VIQ4TKJ
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ZQQHOQIRPR3RE3SMLIF4TN4P5VIQ4TKJ/>
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

