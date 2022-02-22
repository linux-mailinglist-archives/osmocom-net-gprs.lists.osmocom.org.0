Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DEC4BF835
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 22 Feb 2022 13:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4092C283BB;
	Tue, 22 Feb 2022 12:42:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lO5wRhrFSiyB; Tue, 22 Feb 2022 12:42:46 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C61DB28392;
	Tue, 22 Feb 2022 12:42:43 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id BC44338A18EA
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7AB35283C6
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KclkIy8Xnkad for <osmocom-net-gprs@lists.osmocom.org>;
	Tue, 22 Feb 2022 12:42:35 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by mail.osmocom.org (Postfix) with ESMTPS id 62A55283B9
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645533753; x=1677069753;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Mo135wmiyBV1MyO7OEFoIfk7OQwDjj5fc99hb7inUI0=;
  b=NQvvxzdBzHGGtbQsXZGyXH/cxom4HfUeHgJPPQR46nI61sqnu7NJAcdw
   szWdKc+PWNCu707UZT0QARpZGpImGAIaR0xY28eNdcnLFIDZnojTwRg9G
   xqntDs9wxHmN0055TyC7KvPPi646gzE8+e++5XeVjVc0lmUB7rMHxx73N
   dfWRHTcUSena/bD/XsRC6bFmMxbDkGinBcOiFpye0t8KMvIwuKaEAj5uI
   i984y0YutNhhjVlShSvujsFyEhTOelNnUEZKAHkAJY2r0gFcoMpybsBBF
   m80ZkFzF4kWNRo8QsfbH6Hq/9+boPg9Rbinviyw8C8glJbNS7vAyxMDY1
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="250513566"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600";
   d="scan'208";a="250513566"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:42:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600";
   d="scan'208";a="779121570"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2022 04:42:26 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21MCg1xd021783;
	Tue, 22 Feb 2022 12:42:24 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v8 5/7] gtp: Add support for checking GTP device type
Date: Tue, 22 Feb 2022 13:41:50 +0100
Message-Id: <20220222124152.103039-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
References: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: RQHVHRPJUQ2BZWFL3J42ZFB35D6D3HNL
X-Message-ID-Hash: RQHVHRPJUQ2BZWFL3J42ZFB35D6D3HNL
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RQHVHRPJUQ2BZWFL3J42ZFB35D6D3HNL/>
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

