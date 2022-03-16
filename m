Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 774F34DD884
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 11:54:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3C3B228390;
	Fri, 18 Mar 2022 10:54:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id INDMcr3GFMGe; Fri, 18 Mar 2022 10:54:50 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 63BDA28058;
	Fri, 18 Mar 2022 10:54:48 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ABC0538A0C3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 904AA28048
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c8-9q1PDsg9X for <osmocom-net-gprs@lists.osmocom.org>;
	Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
Received: from mga11.intel.com (unknown [192.55.52.93])
	by mail.osmocom.org (Postfix) with ESMTPS id 6027A28024
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647463205; x=1678999205;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ICHO+fWkBDhcURAakNs4ToUsSuhHlLbq17ag72OMWaY=;
  b=AEqFwxMxEQaYyJh6pMXpy1hryaiKQpHnnPNPUC3YuTNnjBOK6uj+YSie
   FfD/8xsY2H8Ph3NdzAgOUjJR9JUTaX+o8eIQWLzsO49kvMX3w3sgjtIMg
   mOyL2In1Vm63kFpAmftjpEq2br/TMrOF+WZMv+ffYG+WfsqXunLkssMCR
   zzDt3wFHYx0OQcrAeAGLFIpyfSVAFytoXqjqHLmiVpLpgl5gOe1b0ih7Q
   grvjiBifkHZAwC7PB9jDb4LG2GbzdkBbP7ElVvMNVO5TRjS5YKIKv4A9p
   sbOMJnOLyXtHzqc1bQQpX6Ld1uxW9jXrIbsycIKCS/WSrCptDvBd8049R
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="254265727"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="254265727"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2022 13:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="646799207"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 13:39:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH net-next 1/4] gtp: Fix inconsistent indenting
Date: Wed, 16 Mar 2022 13:40:21 -0700
Message-Id: <20220316204024.3201500-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
References: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4QEAQASN4POMONV5KQPQWXMPFWECPICC
X-Message-ID-Hash: 4QEAQASN4POMONV5KQPQWXMPFWECPICC
X-Mailman-Approved-At: Fri, 18 Mar 2022 10:54:38 +0000
CC: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4QEAQASN4POMONV5KQPQWXMPFWECPICC/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Fix the following warning as reported by smatch:

New smatch warnings:
drivers/net/gtp.c:1796 gtp_genl_send_echo_req() warn: inconsistent indent=
ing

Fixes: d33bd757d362 ("gtp: Implement GTP echo request")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 756714d4ad92..a208e2b1a9af 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1793,7 +1793,7 @@ static int gtp_genl_send_echo_req(struct sk_buff *s=
kb, struct genl_info *info)
 	if (IS_ERR(rt)) {
 		netdev_dbg(gtp->dev, "no route for echo request to %pI4\n",
 			   &dst_ip);
-			   kfree_skb(skb_to_send);
+		kfree_skb(skb_to_send);
 		return -ENODEV;
 	}
=20
--=20
2.31.1

