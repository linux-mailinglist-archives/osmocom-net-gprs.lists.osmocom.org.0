Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B864BF827
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 22 Feb 2022 13:42:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EC239283B9;
	Tue, 22 Feb 2022 12:42:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OK_awUD9Z4Il; Tue, 22 Feb 2022 12:42:19 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0617B28392;
	Tue, 22 Feb 2022 12:42:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5EC8B38A18EA
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0F1922838A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vn9asScKisrf for <osmocom-net-gprs@lists.osmocom.org>;
	Tue, 22 Feb 2022 12:42:07 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by mail.osmocom.org (Postfix) with ESMTPS id 2227328389
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 12:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645533727; x=1677069727;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fYdjBiWFfEwxClfArLO1viIkk8+odrz2wI06mD/wz2o=;
  b=oF9zLGreXR+TajegGdX6y5juOibOApzhejgERC10TetVKv4OwIQgffgG
   C6tTj+cDMokuwZt+OQRinJq5+4DzcSTYi+Zythybt0b1hAlNCrHPHIIAs
   fwi+cVODJrdhsXSqyUsuD6UCxgBjNdHMY1XtdPqr3hvASGciuJ7jPVkR8
   cFHVq0dWvBku0e0Mn9CgxqRWzroE97XMLhTD+ODDrh0Gc71XF8D5emBW9
   eZSqlb/4ITiCmju0wK08Tn4tfXDu6UWySNd2aa6rGcugPD6Eos0qDRgqj
   xdRO54+P1qWftvGzbDuudEobqw4vLX6Iq7GvMynnPcnKIl2kYMh/XXMIi
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="251879885"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600";
   d="scan'208";a="251879885"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:42:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600";
   d="scan'208";a="636993586"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2022 04:42:02 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21MCg1xY021783;
	Tue, 22 Feb 2022 12:42:01 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v8 0/7] ice: GTP support in switchdev
Date: Tue, 22 Feb 2022 13:41:45 +0100
Message-Id: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: D2NXXWAH5T7MLZEWLPFOJEKE5NEHDKAA
X-Message-ID-Hash: D2NXXWAH5T7MLZEWLPFOJEKE5NEHDKAA
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/D2NXXWAH5T7MLZEWLPFOJEKE5NEHDKAA/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

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
v2: Adding more CC
v3: Fixed mail thread, sorry for spam
v4: Added GTP echo response in gtp module
v5: Change patch order
v6: Added GTP echo request in gtp module
v7: Fix kernel-docs in ice
v8: Remove handling of GTP Echo Response

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
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  52 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 630 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 drivers/net/gtp.c                             | 426 +++++++++++-
 include/net/gtp.h                             |  42 ++
 include/uapi/linux/gtp.h                      |   1 +
 include/uapi/linux/if_link.h                  |   2 +
 include/uapi/linux/if_tunnel.h                |   4 +-
 include/uapi/linux/pkt_cls.h                  |  15 +
 net/sched/cls_flower.c                        | 116 ++++
 16 files changed, 1330 insertions(+), 103 deletions(-)

--=20
2.35.1

