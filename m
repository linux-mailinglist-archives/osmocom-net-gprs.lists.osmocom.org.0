Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D97332A7939
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:10 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 685E018C5DD;
	Thu,  5 Nov 2020 08:28:00 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=UBktEN5F
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id 2BCA718B568
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:46 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id p22so2554209wmg.3
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vff6yNcLVki99HBXZKVURhKPJZnmPneHA9KBTYAFVzs=;
 b=UBktEN5FFWzGcN/0dr4YKDfe1DmzUGMSWC0WJ2kbIDqpZCZWf/DZ5Ndq5EZ7Pl2F41
 B3UQT6eKdT1KQgUAoglAHvIqc2o9oZqfTN9B5GURjMhOw1d4GQ0j4j8wkw8RN7KIGOGD
 3DX8t5fgwcEb6E3+KlwaEZ2BaaO1M3mncFslT6rqlfqIR1+WMNW3PGrFfI1/0gC0ZqTP
 sMXKywSZW4x+Cay10MDEEKQGahsJRWowTvL0187JqA98jHyT6Z7wzW1hJ70eWuXwQ9Vw
 8OjaD5nFLQ6GYKbsfNRDYHT3y5zT+/TtXyFi6JSMmiBFnkjUsIxxjcYnWV4MP+U4u8i7
 lNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vff6yNcLVki99HBXZKVURhKPJZnmPneHA9KBTYAFVzs=;
 b=cY0HsW7b4z03PMPbq0f91lKfuDNv0jfexoQDyD4q/PRTIDFAbTtnXplVTgKh0A+BRY
 y80J3ZKv4+Pdc922jBP+SqTGrvwxZRuPqGYCd0YaDe4C/Sy5HkmquZw8ZLiGwP7dHFpL
 0035gVkxIZD9QPn4wzib8HmEsNDgjAxUZrBC/ZJIgiI5mgxQPADhd4oo/548PnJbQrYo
 /lbZdFEtJl7AgybYQvyxoDtUtZJpg6XCinaA3FYvcE/VTjLcDH4Ta9kN9+ujRdlwkF9+
 fJ5Dz5zavxAkedbyQGxar/FtCqxdbX+zDOFOKiJhXcaoHL6ZX7danFMH6l0lAlKjo6Bb
 DtRw==
X-Gm-Message-State: AOAM533yDKBCNN18cgjXQezxngyNKzfcOQ4C2Dg7ILK1PSsXhdqn/mdm
 Y2C6TMlIu9BpAwtX1ldLHGw=
X-Google-Smtp-Source: ABdhPJyuPb/O1vtK4Zhv26voXtkXkk4NNvFF1xRJ61h9iW1ULwMrqeM1nC5CNCuUIvPWej8nSAUxBg==
X-Received: by 2002:a05:600c:2110:: with SMTP id
 u16mr4940556wml.4.1604500305924; 
 Wed, 04 Nov 2020 06:31:45 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id g17sm2850560wrw.37.2020.11.04.06.31.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:45 -0800 (PST)
Subject: [PATCH net-next v2 09/10] ipv4/ipv6: switch to dev_get_tstats64
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
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
Message-ID: <ebe0951b-891f-2d52-02e2-62d18e944f0e@gmail.com>
Date: Wed, 4 Nov 2020 15:29:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 05 Nov 2020 08:27:23 +0000
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

Replace ip_tunnel_get_stats64() with the new identical core fucntion
dev_get_tstats64().

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 net/ipv4/ip_gre.c  | 6 +++---
 net/ipv4/ipip.c    | 2 +-
 net/ipv6/ip6_gre.c | 6 +++---
 net/ipv6/sit.c     | 2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
index e70291748..a68bf4c6f 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -920,7 +920,7 @@ static const struct net_device_ops ipgre_netdev_ops = {
 	.ndo_start_xmit		= ipgre_xmit,
 	.ndo_do_ioctl		= ip_tunnel_ioctl,
 	.ndo_change_mtu		= ip_tunnel_change_mtu,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_get_iflink		= ip_tunnel_get_iflink,
 	.ndo_tunnel_ctl		= ipgre_tunnel_ctl,
 };
@@ -1275,7 +1275,7 @@ static const struct net_device_ops gre_tap_netdev_ops = {
 	.ndo_set_mac_address 	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_change_mtu		= ip_tunnel_change_mtu,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_get_iflink		= ip_tunnel_get_iflink,
 	.ndo_fill_metadata_dst	= gre_fill_metadata_dst,
 };
@@ -1308,7 +1308,7 @@ static const struct net_device_ops erspan_netdev_ops = {
 	.ndo_set_mac_address	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_change_mtu		= ip_tunnel_change_mtu,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_get_iflink		= ip_tunnel_get_iflink,
 	.ndo_fill_metadata_dst	= gre_fill_metadata_dst,
 };
diff --git a/net/ipv4/ipip.c b/net/ipv4/ipip.c
index 75d35e76b..d5bfa087c 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -347,7 +347,7 @@ static const struct net_device_ops ipip_netdev_ops = {
 	.ndo_start_xmit	= ipip_tunnel_xmit,
 	.ndo_do_ioctl	= ip_tunnel_ioctl,
 	.ndo_change_mtu = ip_tunnel_change_mtu,
-	.ndo_get_stats64 = ip_tunnel_get_stats64,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip_tunnel_get_iflink,
 	.ndo_tunnel_ctl	= ipip_tunnel_ctl,
 };
diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 931b186d2..8cf659994 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -1391,7 +1391,7 @@ static const struct net_device_ops ip6gre_netdev_ops = {
 	.ndo_start_xmit		= ip6gre_tunnel_xmit,
 	.ndo_do_ioctl		= ip6gre_tunnel_ioctl,
 	.ndo_change_mtu		= ip6_tnl_change_mtu,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_get_iflink		= ip6_tnl_get_iflink,
 };
 
@@ -1828,7 +1828,7 @@ static const struct net_device_ops ip6gre_tap_netdev_ops = {
 	.ndo_set_mac_address = eth_mac_addr,
 	.ndo_validate_addr = eth_validate_addr,
 	.ndo_change_mtu = ip6_tnl_change_mtu,
-	.ndo_get_stats64 = ip_tunnel_get_stats64,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip6_tnl_get_iflink,
 };
 
@@ -1896,7 +1896,7 @@ static const struct net_device_ops ip6erspan_netdev_ops = {
 	.ndo_set_mac_address =	eth_mac_addr,
 	.ndo_validate_addr =	eth_validate_addr,
 	.ndo_change_mtu =	ip6_tnl_change_mtu,
-	.ndo_get_stats64 =	ip_tunnel_get_stats64,
+	.ndo_get_stats64 =	dev_get_tstats64,
 	.ndo_get_iflink =	ip6_tnl_get_iflink,
 };
 
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index 5e2c34c0a..4dc5f9366 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -1396,7 +1396,7 @@ static const struct net_device_ops ipip6_netdev_ops = {
 	.ndo_uninit	= ipip6_tunnel_uninit,
 	.ndo_start_xmit	= sit_tunnel_xmit,
 	.ndo_do_ioctl	= ipip6_tunnel_ioctl,
-	.ndo_get_stats64 = ip_tunnel_get_stats64,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip_tunnel_get_iflink,
 	.ndo_tunnel_ctl = ipip6_tunnel_ctl,
 };
-- 
2.29.2


