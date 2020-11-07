Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 93CA92AB5D1
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:30 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 543B018F986;
	Mon,  9 Nov 2020 11:05:30 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=fJEhCtHm
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::343; helo=mail-wm1-x343.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by lists.osmocom.org (Postfix) with ESMTP id E22A418E7DA
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:56:09 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id d142so4651677wmd.4
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=9u7gkvbf7OAMj3VbHYAxPHRbbiyrawvYfgWlZZDK0zE=;
 b=fJEhCtHmlnLGk1K+M8mWEvAED1FqUFenR/e+JruBYbUZ+Ky5AnTDD3+ZidHthDuGjb
 Vo/SxgBXLRzxL/hEu974GnftkbsgbK5pqXtxcpH1wsSVLMb9n/5xxj+BcgOvxsneoSM1
 WD7KO8UypAPuCLDsweZsKXSJYY5xSKSDf4EOA29lYUoLfSms1H7FUL/WkH7OyvomMn0U
 +PqquUNlMeOsYY0AyT4YHUBeBZ3nMur06FSzkosUv8frTTjHImfhVQUnLFNaCHAWLzS3
 D7uErdJijTD9+q75MaHjg5QQuSbjcAvvBhC64U5bwqJBEovDmt1CiCEAg/TNC5nBoq8w
 EnAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=9u7gkvbf7OAMj3VbHYAxPHRbbiyrawvYfgWlZZDK0zE=;
 b=bxeXhoctKHoWXlos7EMntZsTm5n8Stwb+krJ4ZxWNI4/FrfBOHGusV/p5yJYrcndHp
 gSce2dnibl8SVm3vhfxkp/NTUyWS7W8Lh/GIyVMT6n14BIAs+4gHOphZKAZaTpblWaQy
 WOfP8p6fPtUQvoCORIohO8nNF22tsu5YT1sw1JMToRGUFi8Oemd7jpg7UnNYPwa760t4
 XvPrjukgQK5CtM6PTgn0gZzHt9mKFRhtUKBZst4FDbq/TQWPy0+NXz/zHYgwiLI2CZW9
 0bSJdOrZSwac0HadaJTxjvrJSb8JaFFhhLThXrjih921pJsGu4A/u5K0OgrKZNXM9e9D
 2Lsg==
X-Gm-Message-State: AOAM532EI39WjOr93HrsY1rRobmXNFQCvmu9EvM1gXAxCi86TytzLIIP
 rhjr4DvQbVG6UiUYD8Q2BKE=
X-Google-Smtp-Source: ABdhPJwEwwyfYVztu4FFL23KSdp10USFTuqtpP6crdBu6ZsT0zxjx2DhnceuzpR9h8nB60bGHAbyFg==
X-Received: by 2002:a7b:c8c9:: with SMTP id f9mr6112537wml.3.1604782568997;
 Sat, 07 Nov 2020 12:56:08 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id t2sm8347163wrq.56.2020.11.07.12.56.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:56:08 -0800 (PST)
Subject: [PATCH net-next v3 05/10] net: switch to dev_get_tstats64
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
Message-ID: <0f7cd95e-896d-2313-88e8-e0af23d011bb@gmail.com>
Date: Sat, 7 Nov 2020 21:52:06 +0100
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
 drivers/net/bareudp.c | 2 +-
 drivers/net/geneve.c  | 2 +-
 drivers/net/vxlan.c   | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index ff0bea155..28257bcce 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -510,7 +510,7 @@ static const struct net_device_ops bareudp_netdev_ops = {
 	.ndo_open               = bareudp_open,
 	.ndo_stop               = bareudp_stop,
 	.ndo_start_xmit         = bareudp_xmit,
-	.ndo_get_stats64        = ip_tunnel_get_stats64,
+	.ndo_get_stats64        = dev_get_tstats64,
 	.ndo_fill_metadata_dst  = bareudp_fill_metadata_dst,
 };
 
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index d07008a81..a3c8ce6de 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -1138,7 +1138,7 @@ static const struct net_device_ops geneve_netdev_ops = {
 	.ndo_open		= geneve_open,
 	.ndo_stop		= geneve_stop,
 	.ndo_start_xmit		= geneve_xmit,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_change_mtu		= geneve_change_mtu,
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_set_mac_address	= eth_mac_addr,
diff --git a/drivers/net/vxlan.c b/drivers/net/vxlan.c
index 876679af6..0de912729 100644
--- a/drivers/net/vxlan.c
+++ b/drivers/net/vxlan.c
@@ -3211,7 +3211,7 @@ static const struct net_device_ops vxlan_netdev_ether_ops = {
 	.ndo_open		= vxlan_open,
 	.ndo_stop		= vxlan_stop,
 	.ndo_start_xmit		= vxlan_xmit,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_set_rx_mode	= vxlan_set_multicast_list,
 	.ndo_change_mtu		= vxlan_change_mtu,
 	.ndo_validate_addr	= eth_validate_addr,
@@ -3230,7 +3230,7 @@ static const struct net_device_ops vxlan_netdev_raw_ops = {
 	.ndo_open		= vxlan_open,
 	.ndo_stop		= vxlan_stop,
 	.ndo_start_xmit		= vxlan_xmit,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_change_mtu		= vxlan_change_mtu,
 	.ndo_fill_metadata_dst	= vxlan_fill_metadata_dst,
 };
-- 
2.29.2


