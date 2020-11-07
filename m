Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D22AE2AB5D4
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:34 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9107E18F996;
	Mon,  9 Nov 2020 11:05:34 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=YRzVwR3V
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::443; helo=mail-wr1-x443.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by lists.osmocom.org (Postfix) with ESMTP id EFDA518E80D
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:56:13 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y12so4837773wrp.6
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=yvM2zg5ut8RUlOVk41NO5JTWXGYDPLj6ZinwUBXZBNs=;
 b=YRzVwR3VOYv79vPIg8b5EIMmKfgP9mn6DbFAnIRAS1gmfNezyjCF4Gp2ABv/iexY3a
 dKnhzyqA48zVqgBgGCmQei1DZ8f9ASml4KMnqwLfEJpWlOMwSmuP5jOsALlsXJafzAjD
 zuBbbALWsNykrRr2QmM4AzSRGDDjOfmFo1Esj7ImMCkohjQdAJQb379jo0AV7iO2yD3X
 ifDXNDILYUmNb1GJ7t7N2m03O3aIaSTWC1vQewDKZUD6hi9tiN9g4UZ5VBZB9MKcqQu0
 Lv21zMIYq7RAq7ugKnUMH4PYEz7op6bSiqGx1MzWNZTEhIwLuBfAkIA8WMhxK/3r9jFN
 umbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=yvM2zg5ut8RUlOVk41NO5JTWXGYDPLj6ZinwUBXZBNs=;
 b=p0nfnyk18lyN36q08YgU/yXTikwhvq0haxCNwLd18jEfd80JPnaskHy6U3KHc6I7Y4
 eT/FcPwfTUtuSsDKPSSiG8GZszH68dmP+0qftGNOelg5oGVL7HkHcJpiLK30v+lSAfAK
 JE50BLO+2OXqmCPsp7Mo8KyuDnQ049B87wBunFKgl0Nf1e7lef119aKqHU2TbbiYXmCM
 bIB54h8hFAWZT5Hk+PYXD60gq3swXu+F+UOxdSy9MqynP/ew2PT9C4w52mds5gAb1XA8
 cxHD3KFmOrNqWKWBXGoywWuE2ePPXYtDJ4LBpNOEZ8DOyahPsmkA9bZwA7NAEPbVyOD5
 qDxQ==
X-Gm-Message-State: AOAM530sezvyOVpwJpftIUmLrugx1Uz5ZggY+6Skj2WxL7695IpxP0/8
 HzMjClRQCB1JWv4LopKPfJI=
X-Google-Smtp-Source: ABdhPJzPITSO0TWNyqU0r8yAlKSviyXbqz+nk7MVBML4BCNfoFAcyBZ0IWsUQ0/EoAtu4hmMZ4NIvg==
X-Received: by 2002:adf:9069:: with SMTP id h96mr10064659wrh.358.1604782573402; 
 Sat, 07 Nov 2020 12:56:13 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id q7sm7128217wrg.95.2020.11.07.12.56.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:56:12 -0800 (PST)
Subject: [PATCH net-next v3 08/10] vti: switch to dev_get_tstats64
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
Message-ID: <f8d8efd4-1bb7-a37f-1c64-23e06538f66a@gmail.com>
Date: Sat, 7 Nov 2020 21:53:53 +0100
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

Replace ip_tunnel_get_stats64() with the new identical core function
dev_get_tstats64().

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 net/ipv4/ip_vti.c  | 2 +-
 net/ipv6/ip6_vti.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/ipv4/ip_vti.c b/net/ipv4/ip_vti.c
index b957cbee2..abc171e79 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -404,7 +404,7 @@ static const struct net_device_ops vti_netdev_ops = {
 	.ndo_start_xmit	= vti_tunnel_xmit,
 	.ndo_do_ioctl	= ip_tunnel_ioctl,
 	.ndo_change_mtu	= ip_tunnel_change_mtu,
-	.ndo_get_stats64 = ip_tunnel_get_stats64,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip_tunnel_get_iflink,
 	.ndo_tunnel_ctl	= vti_tunnel_ctl,
 };
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 46d137a69..0225fd694 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -890,7 +890,7 @@ static const struct net_device_ops vti6_netdev_ops = {
 	.ndo_uninit	= vti6_dev_uninit,
 	.ndo_start_xmit = vti6_tnl_xmit,
 	.ndo_do_ioctl	= vti6_ioctl,
-	.ndo_get_stats64 = ip_tunnel_get_stats64,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip6_tnl_get_iflink,
 };
 
-- 
2.29.2


