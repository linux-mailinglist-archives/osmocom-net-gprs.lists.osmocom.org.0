Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0685E4DADDB
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Mar 2022 10:53:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C8A4828041;
	Wed, 16 Mar 2022 09:53:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hryNXM65ki_S; Wed, 16 Mar 2022 09:53:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C42F928398;
	Wed, 16 Mar 2022 09:53:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D7A3238A0CB3
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AFC0328392
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXPRLF39Y8Ap for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Mar 2022 17:19:05 +0000 (UTC)
Received: from mga12.intel.com (unknown [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 050BF28381
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647019142; x=1678555142;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cOPa8b1ggar4hcTeucBpmRcDsrxkQql4RjdyytRuI/s=;
  b=hqbrTNLFEYkxUsEzoEwbsHX3iME7e00JsiZ5xMWnFKXdjj3SH6f+jEiu
   FbovoVbcas+Jwditz6AvmZdnXHSR9Nm6ioj4B2v9bLVAOcAXzFSL9B0L2
   SfdbL/VR2KYcTbxjkaJwUBCwx9B0DTa6w4zcwDrRTsooD0VU4FbZ7X7uV
   Zv2jBgH+9IHjRLFzWR0RxXGY+ZjNuJPZQvk2mHhJJOPL32ExZTOH1/oKh
   FEdtKBd6AkG+xlXoJcGfhlqbDDRcLwzT1ZFtuOPCoudQoYHpgujTwrXgn
   rE1I0b0mFQjQekm5ltIzhQntV5BB5IkhQsWNfctP8RjD1TnifyWiJqs3H
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="235565228"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="235565228"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 09:18:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="612215411"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by fmsmga004.fm.intel.com with ESMTP; 11 Mar 2022 09:18:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v11 5/7] gtp: Add support for checking GTP device type
Date: Fri, 11 Mar 2022 09:18:19 -0800
Message-Id: <20220311171821.3785992-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
References: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VX336HCVY4AX4GQXX22HU32IAN36536J
X-Message-ID-Hash: VX336HCVY4AX4GQXX22HU32IAN36536J
X-Mailman-Approved-At: Wed, 16 Mar 2022 09:53:08 +0000
CC: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, marcin.szycik@linux.intel.com, michal.swiatkowski@linux.intel.com, jiri@resnulli.us, pablo@netfilter.org, laforge@gnumonks.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VX336HCVY4AX4GQXX22HU32IAN36536J/>
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
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
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

