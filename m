Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C86C4DADD7
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Mar 2022 10:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 36B6028394;
	Wed, 16 Mar 2022 09:53:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tB_cABuKGOv3; Wed, 16 Mar 2022 09:53:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1676D28049;
	Wed, 16 Mar 2022 09:53:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2014838A0AD0
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id F37A72812F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:18:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xSbtyJtibBgq for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Mar 2022 17:18:59 +0000 (UTC)
Received: from mga12.intel.com (unknown [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 967232810D
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Mar 2022 17:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647019138; x=1678555138;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=O21vfCT748XCS9dCNErXlo0X5k7r6XY6yxi/hzuYVLc=;
  b=g5q09CUyVCfG+O7K+nu9qh8nN/Rzy01cWx9TnHbp3a+zoZW3YSPe3UGB
   1CzYEfF3lSKGxYru1TZ4oJbfgIRQ0v7Mw3Z8DGSxt0nNEr6oI9HiRboMj
   XPGbPi5IJtP2GLG8R04/TF3KDRdlHD+rQFkdbFzGz5GRAbL+c4KBhhuv4
   qdBTg/rHbTYIMcCaRq46RTwCCAnrEuh2eiyWxhX81Pxpym5cQnc0X3foy
   L97JYjGLueaAAEUlSHB/gKSZw4QJ9qsZXlohMu/pcbZbTHHEPlyROuBGs
   daDWZvLEYkz2aEePzMnnD9sd71XP0iCSb7X3Za/1PjaiLghKXSzoe4XC6
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="235565209"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="235565209"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2022 09:18:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400";
   d="scan'208";a="612215391"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by fmsmga004.fm.intel.com with ESMTP; 11 Mar 2022 09:18:31 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org
Subject: [PATCH net-next v11 0/7][pull request] ice: GTP support in switchdev
Date: Fri, 11 Mar 2022 09:18:14 -0800
Message-Id: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N65ACL4YIODRP3FUGPR3FNWPCRZTMAVG
X-Message-ID-Hash: N65ACL4YIODRP3FUGPR3FNWPCRZTMAVG
X-Mailman-Approved-At: Wed, 16 Mar 2022 09:53:08 +0000
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, marcin.szycik@linux.intel.com, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, jiri@resnulli.us, pablo@netfilter.org, laforge@gnumonks.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/N65ACL4YIODRP3FUGPR3FNWPCRZTMAVG/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Marcin Szycik says:

Add support for adding GTP-C and GTP-U filters in switchdev mode.

To create a filter for GTP, create a GTP-type netdev with ip tool, enable
hardware offload, add qdisc and add a filter in tc:

ip link add $GTP0 type gtp role <sgsn/ggsn> hsize <hsize>
ethtool -K $PF0 hw-tc-offload on
tc qdisc add dev $GTP0 ingress
tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
action mirred egress redirect dev $VF1_PR

By default, a filter for GTP-U will be added. To add a filter for GTP-C,
specify enc_dst_port =3D 2123, e.g.:

tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
enc_dst_port 2123 action mirred egress redirect dev $VF1_PR

Note: outer IPv6 offload is not supported yet.
Note: GTP-U with no payload offload is not supported yet.

ICE COMMS package is required to create a filter as it contains GTP
profiles.

Changes in iproute2 [1] are required to be able to add GTP netdev and use
GTP-specific options (QFI and PDU type).

[1] https://lore.kernel.org/netdev/20220211182902.11542-1-wojciech.drewek=
@intel.com/T
---
v2: Add more CC
v3: Fix mail thread, sorry for spam
v4: Add GTP echo response in gtp module
v5: Change patch order
v6: Add GTP echo request in gtp module
v7: Fix kernel-docs in ice
v8: Remove handling of GTP Echo Response
v9: Add sending of multicast message on GTP Echo Response, fix GTP-C dumm=
y=20
    packet selection
v10: Rebase, fixed most 80 char line limits
v11: Rebase, collect Harald's Reviewed-by on patch 3

The following are changes since commit 59d5923536ac8640f4ff20d011a4851a3c=
143764:
  Merge branch 'ptp-ocp-new-firmware-support'
and are available in the git repository at:
  git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue 100GbE

Marcin Szycik (1):
  ice: Support GTP-U and GTP-C offload in switchdev

Michal Swiatkowski (1):
  ice: Fix FV offset searching

Wojciech Drewek (5):
  gtp: Allow to create GTP device without FDs
  gtp: Implement GTP echo response
  gtp: Implement GTP echo request
  net/sched: Allow flower to match on GTP options
  gtp: Add support for checking GTP device type

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  53 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 654 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 drivers/net/gtp.c                             | 565 +++++++++++++--
 include/net/gtp.h                             |  42 ++
 include/uapi/linux/gtp.h                      |   1 +
 include/uapi/linux/if_link.h                  |   2 +
 include/uapi/linux/if_tunnel.h                |   4 +-
 include/uapi/linux/pkt_cls.h                  |  15 +
 net/sched/cls_flower.c                        | 116 ++++
 16 files changed, 1478 insertions(+), 119 deletions(-)

--=20
2.31.1

