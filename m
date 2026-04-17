Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DhiEkZ48GmiTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:10 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6C6480DC6
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:09 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AAF1550DA23;
	Tue, 28 Apr 2026 09:05:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3WxFf89H8l-Q; Tue, 28 Apr 2026 09:05:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6197950DA07;
	Tue, 28 Apr 2026 09:05:04 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 811F238A0177
	for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 17 Apr 2026 05:54:14 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5CE234ED6FC
	for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 17 Apr 2026 05:54:14 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBTbHdmNLDwj for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 17 Apr 2026 05:54:13 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
	by mail.osmocom.org (Postfix) with ESMTPS id 9D1474ED6F7
	for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 17 Apr 2026 05:54:13 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-4887fd35e60so1509885e9.2
        for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 16 Apr 2026 22:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776405252; x=1777010052;
 darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FI4aNMoH9LEGA5ZaunJU6TNqTpv8Ar0cTiNa6gwkLx0=;
        b=TTfzLfopcu80kiAzOhS9sIy3ByjFqbPjHe8/gDJr+in73P6P/HiLy3+GOaCm72xzba
         yZdGvZxCgJjAqTdTiVb1ZO8OoTol3H878++usKXSgNeG0jiAPCV/M3cZ6yn/aUy+3zAa
         QfmU+A7MgYCBOQt1pC3Iww/MNixSPMJRpWk9HtBqai3cY4cd87Gdrte5l7sEw+8LR/ry
         fL+foNXoZwQMry4q5oiQzh8I2cZHr0m9+hMz6fcXgJH2vvDUWh3Hh7PNvTSLJz+sOnaU
         K7Ey9boW3e9u+2JyQ/dYDcZ8QxLkHb/dDR/iuHX4qtzO73vS129w0EWp481i0E0V3X7V
         +lZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776405252; x=1777010052;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FI4aNMoH9LEGA5ZaunJU6TNqTpv8Ar0cTiNa6gwkLx0=;
        b=AEqJJ6rdrLYHE8nQX/fShbSYyBcqubJHzUjY4i8skoubnFSkKzfVjmUFAeCaPaqn7h
         kyQn+fzoV/zk/f6aROnU7DnIdUBtFE6xPxkRpHO1/q1djeRKEGVFCn8XXp9XG2Z2wGKV
         qKGf9B98KVe0b5fwa0f+cVB/5DRl+OCoviCK+W5S7f97z/U5AIpVTIpxM4a2yWDEDQN9
         yXVi09pmG58KbSUU8z+076VMRvuvploKrPPOSNTOn8alBnaUEMdBGUsus+vwrqaBr4Xy
         HQ/2L2U6pP6MRU/Zhd85Q7sYJayXmbNpNkPj8R/iQCtCCC+n14HS7a591XKnW1oYmndl
         ERAg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/6URgVQg0qMR2OPOEV5JANPL2TapX6hChUTPvusmEptHGDD5aJoA0HEymGinjxATRsHUb5y7vlaQW07pldiomo@lists.osmocom.org
X-Gm-Message-State: AOJu0YwFcFm2MGObJ+megJeUZx2bPV5Cu0ESjmynCSMSJFLlmrJoDI2H
	8/BYAqifqfrojTg2bo4Y9M89WoLhCSy6ALXf9/gJiueqoT1/Ftf5VtAd
X-Gm-Gg: AeBDiev5fGsiYr5kFc4ReJeT6eswvcsIXCSswDD8l2pYtZI2zBHKo67KqzqJHSKGFEE
	m6tS+R1x72pkQl8pl7dnNxHi4BlScZ2E0MMVzpHzdQtB1/5K3SrEvF1PqHp17mUGYNFFp56DDLx
	IpO4rmxl3YEx3uav0p6CPd1DSA/vcflvIXec/qH+I6OReGUyQbQ6mUquPIkdms6Qev/YofBmOLn
	qnG2RjTxYZX/Qt9OYCXOWgGK10EyLjze7iqSlbIMviYSH0o7KoLmaZSWjLYPh8uz58WM4NbgDmM
	MuOhPLH4rI3xvy0wLCGgNYgHt8a25EkQdSAsDC1KxruVqZov2+pCZ0xukD5DUnr0k6Q1BhKZMGv
	NDcaYXNkVtl90YJzijUTDmy1v1cZNK+KLPLNu0h2GtV+i3Drzxwi5/60D2xxetzhbtxTg9o+Nin
	gAPNObX7KQPXirrW/4bZXtHlAqWF2bXMOkMF8YV09xyU5Mjiw/W3E+z/XziMMot6ge5qTNfKLLx
	owJmEm3/1pGxhCkwECI9g==
X-Received: by 2002:a05:600c:8115:b0:488:904b:f31 with SMTP id
 5b1f17b1804b1-488fb77e27cmr16466985e9.22.1776405251618;
        Thu, 16 Apr 2026 22:54:11 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488fc1c96b4sm27246775e9.13.2026.04.16.22.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 22:54:11 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Harald Welte <laforge@gnumonks.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
Date: Fri, 17 Apr 2026 06:54:08 +0100
Message-ID: <20260417055408.4667-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MailFrom: devnexen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: IPO22JFQQVGFVWVTZMLOL3TOE2J6SVVA
X-Message-ID-Hash: IPO22JFQQVGFVWVTZMLOL3TOE2J6SVVA
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:02 +0000
CC: Weiming Shi <bestswngs@gmail.com>, osmocom-net-gprs@lists.osmocom.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Carlier <devnexen@gmail.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/IPO22JFQQVGFVWVTZMLOL3TOE2J6SVVA/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: DE6C6480DC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[267];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devnexen@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	FORGED_SENDER(0.00)[devnexen@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,lists.osmocom.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.213];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

gtp_genl_send_echo_req() runs as a generic netlink doit handler in
process context with BH not disabled. It calls udp_tunnel_xmit_skb(),
which eventually invokes iptunnel_xmit() — that uses __this_cpu_inc/dec
on softnet_data.xmit.recursion to track the tunnel xmit recursion level.

Without local_bh_disable(), the task may migrate between
dev_xmit_recursion_inc() and dev_xmit_recursion_dec(), breaking the
per-CPU counter pairing. The result is stale or negative recursion
levels that can later produce false-positive
SKB_DROP_REASON_RECURSION_LIMIT drops on either CPU.

The other udp_tunnel_xmit_skb() call sites in gtp.c are unaffected:
the data path runs under ndo_start_xmit and the echo response handlers
run from the UDP encap rx softirq, both with BH already disabled.

Fix it by disabling BH around the udp_tunnel_xmit_skb() call, mirroring
commit 2cd7e6971fc2 ("sctp: disable BH before calling
udp_tunnel_xmit_skb()").

Fixes: 6f1a9140ecda ("net: add xmit recursion limit to tunnel xmit functions")
Cc: stable@vger.kernel.org
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/net/gtp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 70b9e58b9b78..5150f2e4f66b 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -2400,6 +2400,7 @@ static int gtp_genl_send_echo_req(struct sk_buff *skb, struct genl_info *info)
 		return -ENODEV;
 	}
 
+	local_bh_disable();
 	udp_tunnel_xmit_skb(rt, sk, skb_to_send,
 			    fl4.saddr, fl4.daddr,
 			    inet_dscp_to_dsfield(fl4.flowi4_dscp),
@@ -2409,6 +2410,7 @@ static int gtp_genl_send_echo_req(struct sk_buff *skb, struct genl_info *info)
 			    !net_eq(sock_net(sk),
 				    dev_net(gtp->dev)),
 			    false, 0);
+	local_bh_enable();
 	return 0;
 }
 
-- 
2.53.0

