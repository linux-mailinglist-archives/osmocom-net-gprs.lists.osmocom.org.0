Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 218E749F9CB
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Jan 2022 13:48:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 66500283BB;
	Fri, 28 Jan 2022 12:48:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1NmemCPt0cM; Fri, 28 Jan 2022 12:48:29 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AD10E2838B;
	Fri, 28 Jan 2022 12:48:28 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7222A38A0041
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 16:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 532BA2838F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 16:42:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cwIuzMFhzbS0 for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 27 Jan 2022 16:42:15 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by mail.osmocom.org (Postfix) with ESMTPS id DC94A282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 16:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643301735; x=1674837735;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/WLvTKLHrBo4nY/CpzoGBhSFn0WzlDpL6Ni4Wn8/jEc=;
  b=NyiPwW/o4yWtCL98JDexsCo0RvzLsncGC45KBsQncPZmM0hmtKj2iLZ7
   Q8L2pSqKHdGxGg4Wgheb4TNZPKnjArkDnPUk8iyn2f+j668rha1Sq9fGj
   RiA6hkFXhjbws3I4nm6FErK0XJMr3D4vr0ouvAzKQKv06YDEYph3VcIX7
   VgcLuv9y6c5m3FwUB12urKgDAxtGeEtuEQGNL0rgollsBZZ5qooauO/gb
   hI5QTAsftDseQR0Cow3kpjkbao2IJeSRsvNNPmim+TR1enRLkfhKrXiHu
   jHoo6zSTn7yCNRS1N9SXigb7dIIZFdrln57YjIXcxQ+G+LT7oYltLOuJS
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245748018"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="245748018"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 08:42:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="521302213"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga007.jf.intel.com with ESMTP; 27 Jan 2022 08:42:03 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com [172.22.229.137])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 20RGg2pp011393;
	Thu, 27 Jan 2022 16:42:02 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next v3 2/5] gtp: Add support for checking GTP device type
Date: Thu, 27 Jan 2022 17:39:09 +0100
Message-Id: <20220127163909.374697-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YFJOULWP45DXUGNEBDMVWFSTQ5PARCSK
X-Message-ID-Hash: YFJOULWP45DXUGNEBDMVWFSTQ5PARCSK
X-Mailman-Approved-At: Fri, 28 Jan 2022 12:48:25 +0000
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/YFJOULWP45DXUGNEBDMVWFSTQ5PARCSK/>
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

