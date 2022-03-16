Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6BB4DD885
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 11:54:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1F0F12804E;
	Fri, 18 Mar 2022 10:54:51 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QgZ3-FpQJz2B; Fri, 18 Mar 2022 10:54:50 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 718672810B;
	Fri, 18 Mar 2022 10:54:49 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2747738A0C3C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0AB6E28024
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFgKWmCx6ED1 for <osmocom-net-gprs@lists.osmocom.org>;
	Wed, 16 Mar 2022 20:40:06 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mail.osmocom.org (Postfix) with ESMTPS id BDA6928040
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647463205; x=1678999205;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=D+bXhoObKR8RA49TlQjRJ+fhTTXziVSIS7lZGcgBWPM=;
  b=d9tFqMkRwAqKELLm5/D2U3BcHif2bneGJIex6msLHqZsUO4H7CJ1sYy8
   xupvBHQ9YUrihLMJ5Xn9qaHN6/HGuvELxuByp9oKW3OXrxvW6P6EAr0Ks
   9KtIDrH6AL30d3RZDbE1VtGfdotwr3xxz8uKCnp+gk59BxPP+Bof5G4tO
   C4cREGc2q8KX406/xM8DSTqxop1nIuFAY9oHchszkLeuEb3+N5iN1psMe
   XxsjoLsKLwiBv7fo2SfnxB/PCJE5bEBrC1OXhJa153t4Z64z1pZi6YOi0
   /Jb070gUtKD9Wa0bOXBK4boidFlV6J6XOpbTGmyJFDruExXyBgqRK9KRQ
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="254265728"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="254265728"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2022 13:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="646799211"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 13:39:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH net-next 2/4] ice: Fix inconsistent indenting in ice_switch
Date: Wed, 16 Mar 2022 13:40:22 -0700
Message-Id: <20220316204024.3201500-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
References: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MBWSV2SUYEVPRS2AOJX5HACXHUMPBCMQ
X-Message-ID-Hash: MBWSV2SUYEVPRS2AOJX5HACXHUMPBCMQ
X-Mailman-Approved-At: Fri, 18 Mar 2022 10:54:38 +0000
CC: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/MBWSV2SUYEVPRS2AOJX5HACXHUMPBCMQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Fix the following warning as reported by smatch:

New smatch warnings:
drivers/net/ethernet/intel/ice/ice_switch.c:5568 ice_find_dummy_packet() =
warn: inconsistent indenting

Fixes: 9a225f81f540 ("ice: Support GTP-U and GTP-C offload in switchdev")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/et=
hernet/intel/ice/ice_switch.c
index 7f3d97595890..25b8f6f726eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5565,7 +5565,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lku=
ps, u16 lkups_cnt,
 					*offsets =3D dummy_ipv6_gtpu_ipv4_udp_packet_offsets;
 				} else {
 					*pkt =3D dummy_ipv6_gtpu_ipv4_tcp_packet;
-				*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
+					*pkt_len =3D sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
 					*offsets =3D dummy_ipv6_gtpu_ipv4_tcp_packet_offsets;
 				}
 			}
--=20
2.31.1

