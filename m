Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C7E4DD882
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 11:54:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 895B628050;
	Fri, 18 Mar 2022 10:54:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9T0wMX2as8t; Fri, 18 Mar 2022 10:54:46 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 98A9828040;
	Fri, 18 Mar 2022 10:54:41 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2A1AA38A0855
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0359428041
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8KCJGgtyuFOX for <osmocom-net-gprs@lists.osmocom.org>;
	Wed, 16 Mar 2022 20:40:03 +0000 (UTC)
Received: from mga11.intel.com (unknown [192.55.52.93])
	by mail.osmocom.org (Postfix) with ESMTPS id 55CCC28024
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647463203; x=1678999203;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=9C1SQPxyOOlWxIV9rinEX1eBJD0Ip0C2royJ916KelQ=;
  b=SM6xgqCzidmBmcEiwUDy1r9ewIwe8Bxk2VmLPumkLWDYrY9EIK1DogDC
   R1+6pG98Ub3xqxP0J8+t1GhGlE49I/gUmWzlN9TLa/9M1oTSM8PLKHcku
   PE/IpKGEYJg/Mqsz3fiyhaBDdQ950tjNAzHGxoKzozg8mr8cPlsYmZHXm
   wNpYftwx85etjQYHAjja9Ze4JIwYrJTGPcPxjU6+N0JVjcNeNbLSydgpK
   eE+JThUS71OTq8jOG5ByQYRsuozMeP22BydCA2EJvB+mRbM/oBWx7fo8X
   HntQlpqSOWwvPRg8LGNKfN9cbkc4csMnj4JY672lzlrnuxgQsjwTKcp8B
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="254265724"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="254265724"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2022 13:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="646799203"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 13:39:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH net-next 0/4][pull request] 100GbE Intel Wired LAN Driver Updates 2022-03-16
Date: Wed, 16 Mar 2022 13:40:20 -0700
Message-Id: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6SMQ6KFQ6BIPS24JECH3GCTZYZEGESC7
X-Message-ID-Hash: 6SMQ6KFQ6BIPS24JECH3GCTZYZEGESC7
X-Mailman-Approved-At: Fri, 18 Mar 2022 10:54:38 +0000
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, wojciech.drewek@intel.com, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6SMQ6KFQ6BIPS24JECH3GCTZYZEGESC7/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

This series contains updates to gtp and ice driver.

Wojciech fixes smatch reported inconsistent indenting for gtp and ice.

Yang Yingliang fixes a couple of return value checks for GNSS to IS_PTR
instead of null.

Jacob adds support for trace events on tx timestamps.

The following are changes since commit 49045b9c810cd9b4ac5f8f235ad8ef1755=
3a00fa:
  Merge branch 'mediatek-next'
and are available in the git repository at:
  git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue 100GbE

Jacob Keller (1):
  ice: add trace events for tx timestamps

Wojciech Drewek (2):
  gtp: Fix inconsistent indenting
  ice: Fix inconsistent indenting in ice_switch

Yang Yingliang (1):
  ice: fix return value check in ice_gnss.c

 drivers/net/ethernet/intel/ice/ice_gnss.c   |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  8 +++++++
 drivers/net/ethernet/intel/ice/ice_switch.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_trace.h  | 24 +++++++++++++++++++++
 drivers/net/gtp.c                           |  2 +-
 5 files changed, 36 insertions(+), 4 deletions(-)

--=20
2.31.1

