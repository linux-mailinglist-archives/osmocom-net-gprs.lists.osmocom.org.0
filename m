Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCE34DD886
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 11:54:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 807B6283A0;
	Fri, 18 Mar 2022 10:54:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KaEiGOpH63BA; Fri, 18 Mar 2022 10:54:52 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7266028394;
	Fri, 18 Mar 2022 10:54:50 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A4E0938A0C3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8D51928040
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HIHpItYp3_iO for <osmocom-net-gprs@lists.osmocom.org>;
	Wed, 16 Mar 2022 20:40:06 +0000 (UTC)
Received: from mga11.intel.com (unknown [192.55.52.93])
	by mail.osmocom.org (Postfix) with ESMTPS id 447CF28041
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 16 Mar 2022 20:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647463206; x=1678999206;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=giCCFYDIF+LX6FIKhwOB9/5qD/vIWZGl8tcCwZh35Y8=;
  b=PtH+0v23uXe9xPXol5HI9ZIqvRtJ8Nu939YAEOz3Yu3OOCUurWYS/qaF
   qXlLUAeFFAwx5/I23pg/DVGh/cXE3pjUbtBMl1blyoBx9oZX/AZnnElaY
   BG7J9du/Y1kWLhmEeuvNQMNjKi8T+2jHDnn6oLN0OXyRyfuI5W8IwhfCG
   ZSAv4CqtZ7vqApmHSZYmpn54F61iGYbqoHThAym4F60uOvkZygnXfeB5U
   11X/5l4LDgictVtzeza1ONFNR0cyBSoghPv+GTIus5sbNiyQvfPdaAaWx
   EG2cKd5GveSs5w06FpQtFkUN4Kx/ygJlCtI4r5ZL+7RNGpkuhRGXl/78t
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="254265729"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="254265729"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2022 13:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400";
   d="scan'208";a="646799212"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
  by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 13:39:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com
Subject: [PATCH net-next 4/4] ice: add trace events for tx timestamps
Date: Wed, 16 Mar 2022 13:40:24 -0700
Message-Id: <20220316204024.3201500-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
References: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: anthony.l.nguyen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HIVXHW3FPDNM7XNKQPUTMQR6TM7ZCWGS
X-Message-ID-Hash: HIVXHW3FPDNM7XNKQPUTMQR6TM7ZCWGS
X-Mailman-Approved-At: Fri, 18 Mar 2022 10:54:39 +0000
CC: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, anthony.l.nguyen@intel.com, wojciech.drewek@intel.com, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, Gurucharan <gurucharanx.g@intel.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/HIVXHW3FPDNM7XNKQPUTMQR6TM7ZCWGS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Jacob Keller <jacob.e.keller@intel.com>

We've previously run into many issues related to the latency of a Tx
timestamp completion with the ice hardware. It can be difficult to
determine the root cause of a slow Tx timestamp. To aid in this,
introduce new trace events which capture timing data about when the
driver reaches certain points while processing a transmit timestamp

 * ice_tx_tstamp_request: Trace when the stack initiates a new timestamp
   request.

 * ice_tx_tstamp_fw_req: Trace when the driver begins a read of the
   timestamp register in the work thread.

 * ice_tx_tstamp_fw_done: Trace when the driver finishes reading a
   timestamp register in the work thread.

 * ice_tx_tstamp_complete: Trace when the driver submits the skb back to
   the stack with a completed Tx timestamp.

These trace events can be enabled using the standard trace event
subsystem exposed by the ice driver. If they are disabled, they become
no-ops with no run time cost.

The following is a simple GNU AWK script which can highlight one
potential way to use the trace events to capture latency data from the
trace buffer about how long the driver takes to process a timestamp:

-----
  BEGIN {
      PREC=3D256
  }

  # Detect requests
  /tx_tstamp_request/ {
      time=3Dstrtonum($4)
      skb=3D$7

      # Store the time of request for this skb
      requests[skb] =3D time
      printf("skb %s: idx %d at %.6f\n", skb, idx, time)
  }

  # Detect completions
  /tx_tstamp_complete/ {
      time=3Dstrtonum($4)
      skb=3D$7
      idx=3D$9

      if (skb in requests) {
          latency =3D (time - requests[skb]) * 1000
          printf("skb %s: %.3f to complete\n", skb, latency)
          if (latency > 4) {
              printf(">>> HIGH LATENCY <<<\n")
          }
          printf("\n")
      } else {
          printf("!!! skb %s (idx %d) at %.6f\n", skb, idx, time)
      }
  }
-----

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at I=
ntel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c   |  8 ++++++++
 drivers/net/ethernet/intel/ice/ice_trace.h | 24 ++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ether=
net/intel/ice/ice_ptp.c
index 000c39d163a2..a1cd33273ca4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3,6 +3,7 @@
=20
 #include "ice.h"
 #include "ice_lib.h"
+#include "ice_trace.h"
=20
 #define E810_OUT_PROP_DELAY_NS 1
=20
@@ -2063,11 +2064,15 @@ static void ice_ptp_tx_tstamp_work(struct kthread=
_work *work)
 		struct sk_buff *skb;
 		int err;
=20
+		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
+
 		err =3D ice_read_phy_tstamp(hw, tx->quad, phy_idx,
 					  &raw_tstamp);
 		if (err)
 			continue;
=20
+		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
+
 		/* Check if the timestamp is invalid or stale */
 		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
 		    raw_tstamp =3D=3D tx->tstamps[idx].cached_tstamp)
@@ -2093,6 +2098,8 @@ static void ice_ptp_tx_tstamp_work(struct kthread_w=
ork *work)
 		tstamp =3D ice_ptp_extend_40b_ts(pf, raw_tstamp);
 		shhwtstamps.hwtstamp =3D ns_to_ktime(tstamp);
=20
+		ice_trace(tx_tstamp_complete, skb, idx);
+
 		skb_tstamp_tx(skb, &shhwtstamps);
 		dev_kfree_skb_any(skb);
 	}
@@ -2131,6 +2138,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct=
 sk_buff *skb)
 		tx->tstamps[idx].start =3D jiffies;
 		tx->tstamps[idx].skb =3D skb_get(skb);
 		skb_shinfo(skb)->tx_flags |=3D SKBTX_IN_PROGRESS;
+		ice_trace(tx_tstamp_request, skb, idx);
 	}
=20
 	spin_unlock(&tx->lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/eth=
ernet/intel/ice/ice_trace.h
index cf685247c07a..ae98d5a8ff60 100644
--- a/drivers/net/ethernet/intel/ice/ice_trace.h
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -216,6 +216,30 @@ DEFINE_EVENT(ice_xmit_template, name, \
 DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring);
 DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring_drop);
=20
+DECLARE_EVENT_CLASS(ice_tx_tstamp_template,
+		    TP_PROTO(struct sk_buff *skb, int idx),
+
+		    TP_ARGS(skb, idx),
+
+		    TP_STRUCT__entry(__field(void *, skb)
+				     __field(int, idx)),
+
+		    TP_fast_assign(__entry->skb =3D skb;
+				   __entry->idx =3D idx;),
+
+		    TP_printk("skb %pK idx %d",
+			      __entry->skb, __entry->idx)
+);
+#define DEFINE_TX_TSTAMP_OP_EVENT(name) \
+DEFINE_EVENT(ice_tx_tstamp_template, name, \
+	     TP_PROTO(struct sk_buff *skb, int idx), \
+	     TP_ARGS(skb, idx))
+
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_request);
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_req);
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_done);
+DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_complete);
+
 /* End tracepoints */
=20
 #endif /* _ICE_TRACE_H_ */
--=20
2.31.1

