Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4F44C3528
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 24 Feb 2022 19:56:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 34583283BF;
	Thu, 24 Feb 2022 18:56:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2lWGurvRWIbi; Thu, 24 Feb 2022 18:56:10 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1612B2838D;
	Thu, 24 Feb 2022 18:56:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2BED638A181C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6C99B283C1
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:56:03 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TpZZmlIbmeju for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Feb 2022 18:56:01 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mail.osmocom.org (Postfix) with ESMTPS id 9122C283BE
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645728959; x=1677264959;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Jl9Nuy6eYMwpSob+m2uNdiexCkPRhSkr9+CZnwlWdXI=;
  b=HPG0AkB5gk37Fy3T0F98VL+CT3RbDjmSIDQjmLPHNc7Nxp6GR+Hat2LC
   q+8FJfxxOQaFY/h2ZicXv0fPU7wUn4tjQSpIfTamjercSOkCtOU+MJc8n
   3sc3CH1bux7Gv3/NyOCrYyibrPoiZ+BOTMLMT0BHW7YnM3aKQ+lK96cgL
   DDR0veyv9Q0fWteyOyGkr9Nu1YTWq+12Mh5hHfQsgB1jtWJbr1zNEiRWd
   VQdCA5N3YttAP8rNMTJFJnKYCj76E1ZYXF0lUotc0vOhmPZO98HiXqxbz
   dhZJ4J8FLK/Pk5TBSQAqckiXgUXIOMUJbXyDW+UFQHopQfVa+3PaWkgNU
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252052909"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="252052909"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2022 10:55:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400";
   d="scan'208";a="628580873"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by FMSMGA003.fm.intel.com with ESMTP; 24 Feb 2022 10:55:06 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 21OIt5Yv018029;
	Thu, 24 Feb 2022 18:55:05 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v9 0/7] ice: GTP support in switchdev
Date: Thu, 24 Feb 2022 19:54:53 +0100
Message-Id: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PFMZNXKVJVAXJL6GU2LRKDEPOCHRUWQC
X-Message-ID-Hash: PFMZNXKVJVAXJL6GU2LRKDEPOCHRUWQC
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PFMZNXKVJVAXJL6GU2LRKDEPOCHRUWQC/>
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
 drivers/net/ethernet/intel/ice/ice_switch.c   | 643 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 drivers/net/gtp.c                             | 549 +++++++++++++--
 include/net/gtp.h                             |  42 ++
 include/uapi/linux/gtp.h                      |   1 +
 include/uapi/linux/if_link.h                  |   2 +
 include/uapi/linux/if_tunnel.h                |   4 +-
 include/uapi/linux/pkt_cls.h                  |  15 +
 net/sched/cls_flower.c                        | 116 ++++
 16 files changed, 1456 insertions(+), 113 deletions(-)

--=20
2.35.1

