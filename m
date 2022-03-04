Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AEE4CD943
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  4 Mar 2022 17:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 64BD62810B;
	Fri,  4 Mar 2022 16:41:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKNM9Du0iZM2; Fri,  4 Mar 2022 16:41:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 66F6228121;
	Fri,  4 Mar 2022 16:41:18 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 28ACD38A0A78
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id F21F228128
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b08npwEsCU2Y for <osmocom-net-gprs@lists.osmocom.org>;
	Fri,  4 Mar 2022 16:41:11 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by mail.osmocom.org (Postfix) with ESMTPS id D21832810B
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  4 Mar 2022 16:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646412071; x=1677948071;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=gXUtyNq+tQ5eEQe4KT2irXcFI7ZLoWT79V4KnWbrRlo=;
  b=MPvYsLmM84h43PjuIQI4TQSJW6vRrQaufSJxqLKym1/mvKeORYHi1Q3h
   qCXaqE3t3zC5ljk5cfrhj4ulvDFeE5w8dgjqLV++j6oRn5XDze4i0K02Y
   Y3l+3xKgQJTel5BxCpllknF4HIxWEGA88m7x+944vQznvujHdw+98irZH
   cHdMTL5OxNPKerK/6x8ttE6Y+Yb/Oo2rMmQ9WVLdtqFXJG+8q6u79x8ZQ
   RK3n/8dKEYR84Un6SAYmlsIhPkDBm7beZ5VvSPW1rX1WU0QBzZJvgSpfT
   68ziyy18E1MK6QtCwKVP1Er8N8Ai2DGKwgsuvx4HTFl1I8rrPr0agR1z1
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="340441813"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400";
   d="scan'208";a="340441813"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2022 08:41:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400";
   d="scan'208";a="509028436"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga002.jf.intel.com with ESMTP; 04 Mar 2022 08:41:03 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 224Gf12G020994;
	Fri, 4 Mar 2022 16:41:01 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v10 0/7] ice: GTP support in switchdev
Date: Fri,  4 Mar 2022 17:40:41 +0100
Message-Id: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: LXTR7HFWJ24DL6P3FVAQ2XSHOJ4F3OJU
X-Message-ID-Hash: LXTR7HFWJ24DL6P3FVAQ2XSHOJ4F3OJU
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LXTR7HFWJ24DL6P3FVAQ2XSHOJ4F3OJU/>
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
 drivers/net/ethernet/intel/ice/ice_switch.c   | 643 ++++++++++++++++--
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
 16 files changed, 1473 insertions(+), 113 deletions(-)

--=20
2.35.1

