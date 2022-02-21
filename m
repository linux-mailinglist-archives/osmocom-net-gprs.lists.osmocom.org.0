Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B26D4BDB2D
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 21 Feb 2022 18:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 265AB283B5;
	Mon, 21 Feb 2022 17:19:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LmJUATEiHuk9; Mon, 21 Feb 2022 17:19:27 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C84322838B;
	Mon, 21 Feb 2022 17:19:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ADD7638A181C
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8C2672838B
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:19:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MoIYvl_MhUNb for <osmocom-net-gprs@lists.osmocom.org>;
	Mon, 21 Feb 2022 17:19:18 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by mail.osmocom.org (Postfix) with ESMTPS id BC79B2838A
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Feb 2022 17:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645463957; x=1676999957;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=tUhXvk+LFkLoswi++f9XcpeeaQoJBVXpSjX5dbLbTgU=;
  b=Zmf0a+C6h6paDxBRnkNHSsqTvs4g8icaE50tLcrrZFND0/bkjgo9MjL/
   u+9BiNk3QYSa2RJ5DJlR27r4Hk3gyN1BU1UokDJIrDaREvoSXx9Wz2NY9
   AfkjyJS5StA3bh2Ewzl3RRyBum69MuAvMDEhovkO6FQ1jfo7ZVxmj/qld
   VUbr0RE+x3XSF0Tp2wfSyyac4xK3FnxABq/iuGoNH8J4vNnP/2ygUUnf6
   NutcUusNICvIH0vG+DYBEEtcYYcNyeLrds8nTjdrHJCKTjt76SDTjn/+Z
   Kt2IKeieIdNRssW535Cui/HoZQBhD8yz6ISbGakGvzKk9e7EJXG/+0oSc
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="232165823"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600";
   d="scan'208";a="232165823"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2022 09:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600";
   d="scan'208";a="490502351"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga003.jf.intel.com with ESMTP; 21 Feb 2022 09:19:12 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21LHJBnN010069;
	Mon, 21 Feb 2022 17:19:11 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v7 0/7] ice: GTP support in switchdev
Date: Mon, 21 Feb 2022 11:14:18 +0100
Message-Id: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: CH5GLMNLAUJBHRTBPZPJWWTYUUBNQKA3
X-Message-ID-Hash: CH5GLMNLAUJBHRTBPZPJWWTYUUBNQKA3
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CH5GLMNLAUJBHRTBPZPJWWTYUUBNQKA3/>
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
 drivers/net/ethernet/intel/ice/ice_switch.c   | 630 +++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 drivers/net/gtp.c                             | 661 +++++++++++++++++-
 include/net/gtp.h                             |  42 ++
 include/uapi/linux/gtp.h                      |   2 +
 include/uapi/linux/if_link.h                  |   2 +
 include/uapi/linux/if_tunnel.h                |   4 +-
 include/uapi/linux/pkt_cls.h                  |  15 +
 net/sched/cls_flower.c                        | 116 +++
 16 files changed, 1565 insertions(+), 104 deletions(-)

--=20
2.35.1

