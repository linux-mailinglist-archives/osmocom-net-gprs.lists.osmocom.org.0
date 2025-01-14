Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B05A188A9
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:32 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D46691D31A1;
	Tue, 21 Jan 2025 23:58:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpIGRZ4OEKOz; Tue, 21 Jan 2025 23:58:32 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 668171D30BD;
	Tue, 21 Jan 2025 23:58:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B3CBE38A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 16:12:21 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 904201C6974
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 16:12:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BgvursxQB5lj for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 14 Jan 2025 16:12:20 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.osmocom.org (Postfix) with ESMTPS id ACA561C696F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 16:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736871137;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=8btiJW7dqUtyD2YSECzK0dDtA2i6mSiTTCgf6xt85PQ=;
	b=fpXBZxFLGanBnm2wf9LYr2wt3tdGW+f5+sKR9WchT0AUBQ6dym3rQKLIUw4T1PO8fOfZBq
	uwMNV8FnpMiUaVSjuCRr0j11g1RNHhvg9t3+DpM/PghN7BJ6B1vfaimqUO78T36nWVWt2l
	uLHXsIuXIWzgKMfazc+YP3f5fkEvycc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-65-Qk9mhQt1PvqZiU3WCuFMrg-1; Tue, 14 Jan 2025 11:12:15 -0500
X-MC-Unique: Qk9mhQt1PvqZiU3WCuFMrg-1
X-Mimecast-MFC-AGG-ID: Qk9mhQt1PvqZiU3WCuFMrg
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4362552ce62so30232325e9.0
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 08:12:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736871135; x=1737475935;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8btiJW7dqUtyD2YSECzK0dDtA2i6mSiTTCgf6xt85PQ=;
        b=WpTU4Ti365O5fzCszsf4i5Hpfc4gxKIyCm0k5K6ZnCbjxwhD3tlVfJUsM7GcnKscXf
         NxF4D/B10KfBMv5KDpjSHE4NWYXpF3Gaj8MsDdYky66hTCL0bGRT36iro5FPuNUzz082
         FJjuwpZThAfFVKyI7n8DDb2hM9gUUHAie5NZjFvpfgsolWHsfBwVc7ydijrG7tAFJGUj
         BYwdqN7RvPK4F2GDXhxP8fvClruCqcCAJnswzKTL8Bq4lgZD95Fqq7fa1RhJzLpHbBM3
         MJSqyEKfYuN1q75qxDhDVBxUpVdeFNcoC9qe5FRGu2r09dJjeYnMlaSp2mF0JDKInJtA
         zeIw==
X-Forwarded-Encrypted: i=1; AJvYcCUzE7UVMr+UI9rwOCe92bK4DjbXC5b0MBOmbP9AmDDYvvZqZRk3rIBN9FseZkAcLZyvlG2H7jrYRPwBwmI4Yenh@lists.osmocom.org
X-Gm-Message-State: AOJu0Yy/0S8xILvNwl0atLHtGF6F5MVDDASbHm9phVnJlD5+2QBYAkMO
	wM078xTBFksBH6BGAsJhxhO4trD1OrXyJXCFcHzo6fpaIgIzwY6xH7KZ7o8DMmALS9uBg6Sgr0E
	ighRJZNUNcgcYsIXoJLgA/1xLAr1bRBsT0qQhSeUozZEFw0qRPHFVYHS9oERt2NTPPlZW+w==
X-Gm-Gg: ASbGncsGdkuFLeQM5euzz4yMDfgU6fCLDfETK+mtbHo4DUqStEgkNWc5cyyBp286lUz
	w/SpmReIwD1sVI69lzKz6QFoH4oLk2f57NfnnTE7htI8goxvK+btzqiQaSu2juhgqpTZmmV7Y+M
	bROzqgEkCoSadaSMCo9JQr8R3sB8yuQdpvCtOBkFHP3+XNwf9968vBUI55Qb0clF0sfxavXLSJD
	BJw1j2M1PuBsgkLYPcYz+TX2DhWp60RnpY2jI29c5p1Xa0eEd1bR1QEyHVCfyoMhkBHPAUJCE3H
	pFJzu7pHGIkHNXq3PwnABuoKe6xIJV9DQaI=
X-Received: by 2002:a05:600c:3ca2:b0:434:9499:9e87 with SMTP id 5b1f17b1804b1-436e26e5159mr201807575e9.25.1736871134771;
        Tue, 14 Jan 2025 08:12:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8vgZLrLq/RIce+Qd4DKIYTgVlfrT4M5xHfXhSzNWPnuLbJHLUdj8sxyqyQEvWyFmxwX3KRg==
X-Received: by 2002:a05:600c:3ca2:b0:434:9499:9e87 with SMTP id 5b1f17b1804b1-436e26e5159mr201807305e9.25.1736871134418;
        Tue, 14 Jan 2025 08:12:14 -0800 (PST)
Received: from debian (2a01cb058d23d60010f10d4cace4e3dd.ipv6.abo.wanadoo.fr. [2a01:cb05:8d23:d600:10f1:d4c:ace4:e3dd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9d8fd03sm185866225e9.6.2025.01.14.08.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 08:12:13 -0800 (PST)
Date: Tue, 14 Jan 2025 17:12:12 +0100
From: Guillaume Nault <gnault@redhat.com>
To: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>
Subject: [PATCH net-next] gtp: Prepare ip4_route_output_gtp() to .flowi4_tos
 conversion.
Message-ID: <bcb279c6946a5f584bc9adbe90b05f6b1997fde0.1736871011.git.gnault@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: M0nVRA5fLYpnZijUaw3H7w18glKDSlbCC8UQrX7G-uI_1736871135
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-MailFrom: gnault@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EZCBGJAFOGHABIQ2GPELP554X3ENVIY5
X-Message-ID-Hash: EZCBGJAFOGHABIQ2GPELP554X3ENVIY5
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:00 +0000
CC: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>, osmocom-net-gprs@lists.osmocom.org, Ido Schimmel <idosch@nvidia.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EZCBGJAFOGHABIQ2GPELP554X3ENVIY5/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Use inet_sk_dscp() to get the socket DSCP value as dscp_t, instead of
ip_sock_rt_tos() which returns a __u8. This will ease the conversion
of fl4->flowi4_tos to dscp_t, as it will just require to drop the
inet_dscp_to_dsfield() call.

Signed-off-by: Guillaume Nault <gnault@redhat.com>
---
 drivers/net/gtp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 89a996ad8cd0..03d886014f5a 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -23,6 +23,8 @@
 
 #include <net/net_namespace.h>
 #include <net/protocol.h>
+#include <net/inet_dscp.h>
+#include <net/inet_sock.h>
 #include <net/ip.h>
 #include <net/ipv6.h>
 #include <net/udp.h>
@@ -350,7 +352,7 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
 	fl4->flowi4_oif		= sk->sk_bound_dev_if;
 	fl4->daddr		= daddr;
 	fl4->saddr		= saddr;
-	fl4->flowi4_tos		= ip_sock_rt_tos(sk);
+	fl4->flowi4_tos		= inet_dscp_to_dsfield(inet_sk_dscp(inet_sk((sk))));
 	fl4->flowi4_scope	= ip_sock_rt_scope(sk);
 	fl4->flowi4_proto	= sk->sk_protocol;
 
-- 
2.39.2

