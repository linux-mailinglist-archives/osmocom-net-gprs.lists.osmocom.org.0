Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id AA1012AB5CD
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:24 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5F01718F96B;
	Mon,  9 Nov 2020 11:05:24 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=R9SDmQWk
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id 5103D18E78C
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:56:03 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c16so4484377wmd.2
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=DYRIQMTMgtclfC11ma0PcCZtnRPkZKmVXTdnNGEHpbU=;
 b=R9SDmQWkuWHnfgtqv7Ufkk2HRy0GaLhEEYkHaTvRjlowbgX0La+ML68VcuQOHxhjNN
 PcX5tkZKLnlrWLIN6Q6IcrTUrWcOyWc60GQNr4LVonFEBgs1nDaNFHJ9pIIeJRb5vS5+
 pc1oWRBO4ZPnGcw+xeRIXW8hCRBqVEMvp/nPFe3p1S0H5nknnXRVx1aMl+B6SMeU5zUS
 r79fPNCRov3Y10SRZt9msJhE1PeaPBSHnGb33PZK3RosLrWEOK0XMP8sMac68OtNHIJV
 PxcNkv+P4097VC9S2B4s0j93aTrSv7sliC1kuodARUkD9K0dfgR76eWjlsKAysUYcbXn
 EL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=DYRIQMTMgtclfC11ma0PcCZtnRPkZKmVXTdnNGEHpbU=;
 b=QPombuDLo1z/3KHtuUfuVs+q7CNZkHa4bPTR9+qUPA7c0Spek07YJtn0NrnhzbaLas
 xODG60moHHokNCvRSAT4IZMQrpRR8gr0KV59WbfhlSVY5PYbmf6J89ue0NjmUiDY9j8C
 +OIUak/q/xxICHEzARv2WIVj3v+dQ15+xOt13hz2hsuctLBfLQLHcUyA9T192WtiTg7/
 zz4Rn9gKzJwzUH8Z9Mv9MDY9eQVb62HlTUw4kQu9ibq4ejvyMbGrw5SA0lgy+yd8iguT
 zsG+naXQmlJ7efJOpUksrAJvRMHYsAYfas/dFcJWa+7YuJBtYAKoBci5g7XHDQDjECjz
 chLQ==
X-Gm-Message-State: AOAM5327sIKffTvxYnCbmOEGPi3QkAoTD6jh0v97vj+c+o4V6zPCnRen
 KpC3eVPJvbe3+Mc0oykFOUs=
X-Google-Smtp-Source: ABdhPJwZYHop1A1l8S0GAY1Ccs9RLvW4wC3U+CFi/wgoe1MRqwMrnejznW8okpPfxgKH5UbwYcLWOw==
X-Received: by 2002:a1c:6284:: with SMTP id w126mr6532465wmb.145.1604782563027; 
 Sat, 07 Nov 2020 12:56:03 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id p4sm7611551wrm.51.2020.11.07.12.56.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:56:02 -0800 (PST)
Subject: [PATCH net-next v3 01/10] net: core: add dev_get_tstats64 as a
 ndo_get_stats64 implementation
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte
 <laforge@gnumonks.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 osmocom-net-gprs@lists.osmocom.org, wireguard@lists.zx2c4.com,
 Steffen Klassert <steffen.klassert@secunet.com>
References: <99273e2f-c218-cd19-916e-9161d8ad8c56@gmail.com>
Message-ID: <484218db-e035-dba4-dfb7-93c2cf177cec@gmail.com>
Date: Sat, 7 Nov 2020 21:49:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <99273e2f-c218-cd19-916e-9161d8ad8c56@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 09 Nov 2020 11:05:13 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

It's a frequent pattern to use netdev->stats for the less frequently
accessed counters and per-cpu counters for the frequently accessed
counters (rx/tx bytes/packets). Add a default ndo_get_stats64()
implementation for this use case.

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/linux/netdevice.h |  1 +
 net/core/dev.c            | 15 +++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index a53ed2d1e..7ce648a56 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4527,6 +4527,7 @@ void netdev_stats_to_stats64(struct rtnl_link_stats64 *stats64,
 			     const struct net_device_stats *netdev_stats);
 void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
 			   const struct pcpu_sw_netstats __percpu *netstats);
+void dev_get_tstats64(struct net_device *dev, struct rtnl_link_stats64 *s);
 
 extern int		netdev_max_backlog;
 extern int		netdev_tstamp_prequeue;
diff --git a/net/core/dev.c b/net/core/dev.c
index bd6100da6..60d325bda 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -10366,6 +10366,21 @@ void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
 }
 EXPORT_SYMBOL_GPL(dev_fetch_sw_netstats);
 
+/**
+ *	dev_get_tstats64 - ndo_get_stats64 implementation
+ *	@dev: device to get statistics from
+ *	@s: place to store stats
+ *
+ *	Populate @s from dev->stats and dev->tstats. Can be used as
+ *	ndo_get_stats64() callback.
+ */
+void dev_get_tstats64(struct net_device *dev, struct rtnl_link_stats64 *s)
+{
+	netdev_stats_to_stats64(s, &dev->stats);
+	dev_fetch_sw_netstats(s, dev->tstats);
+}
+EXPORT_SYMBOL_GPL(dev_get_tstats64);
+
 struct netdev_queue *dev_ingress_queue_create(struct net_device *dev)
 {
 	struct netdev_queue *queue = dev_ingress_queue(dev);
-- 
2.29.2


