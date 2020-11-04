Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 6032C2A793E
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:14 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 3476618C5C4;
	Thu,  5 Nov 2020 08:27:53 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=dDvTxo3+
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::342; helo=mail-wm1-x342.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by lists.osmocom.org (Postfix) with ESMTP id 0BA8218B4ED
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:39 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id d142so2543933wmd.4
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BnTgwBVz1ZO0k7LKVJSAZVBIqGzXjGz0VSRBSuIyloc=;
 b=dDvTxo3+AsEj/68Cdlgde2+BjLBZtLbTGzssWfAMt7CVcHxDGfCSYr2m2FXQ6zaHTJ
 Ue3bzwa8izCGvHqwNbZpDhBhhQ5w4+ENVUurLKAup8fKMuRCMqH2unqBZQ6774R7au3c
 93AbS4hpboSpLVGPdiQJhi82QknvuotS2nohKFWGZ83ZB5owLORKtYSxLY7EbbOiclTH
 uF2jzRf6GLVyINzmhmHTjt831zyw00Djd6H5sMh76hpc0Vm+yXLkDOiF27nS9hixOPBb
 PSTbMImmgf07tW49LLP0SWTqtr+PZOUvA4XO5MKGeTvihcOP4VUNKJj5g5uoKH6jPA81
 NUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BnTgwBVz1ZO0k7LKVJSAZVBIqGzXjGz0VSRBSuIyloc=;
 b=b08FF050EJpy1GKieLS1aV5zQpJPhcVEh6YGwpeEfQ3x6cbpanApdbt51qiH+jDI+K
 iAe5ZIP6GPqpNUuKXjSWE+1bv4N1UHFQuusDH0zpXQ8oN3CqpeOXbZoqc416p1pR8urp
 CWfWX/vUzjP9PQ7adBKbIeY6hWObd7S6MO3phQnjekFDCDKczlc8AlB3tWP24VksvfZK
 quyOaNMvy2NKGfy8GTX4YfBB2wy4yr+VS1Dw6YGbdpyKmfavsY4TGVxY6R31ekxdb2FB
 8gEzBaqJ0BtkXhAu6y+qY07vp4l1PY8Mxq305FRsTdSsCWh0Po1T7DXy520b+tQBJMMi
 T1eQ==
X-Gm-Message-State: AOAM533nYB6LUtqlkrlM6jF7h9NgA80uKmeJ7sMCst3lfUD7YOeIGnFF
 a7NffwrAFLV6sG1J+zepLVQ=
X-Google-Smtp-Source: ABdhPJzPGzBMF8LcdUpb79YVk6qku4r3FsMQ57O6u0bisOkeVnWRROLBrmu7Qwyz8Odq+Ndv/P4vMw==
X-Received: by 2002:a7b:c00b:: with SMTP id c11mr3544932wmb.175.1604500299569; 
 Wed, 04 Nov 2020 06:31:39 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id t1sm2932329wrs.48.2020.11.04.06.31.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:39 -0800 (PST)
Subject: [PATCH net-next v2 05/10] net: switch to dev_get_tstats64
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
Message-ID: <b34e90dd-1297-a43d-a195-a6342abcf159@gmail.com>
Date: Wed, 4 Nov 2020 15:27:12 +0100
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
index 1a557aeba..cb9930595 100644
--- a/drivers/net/vxlan.c
+++ b/drivers/net/vxlan.c
@@ -3210,7 +3210,7 @@ static const struct net_device_ops vxlan_netdev_ether_ops = {
 	.ndo_open		= vxlan_open,
 	.ndo_stop		= vxlan_stop,
 	.ndo_start_xmit		= vxlan_xmit,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_set_rx_mode	= vxlan_set_multicast_list,
 	.ndo_change_mtu		= vxlan_change_mtu,
 	.ndo_validate_addr	= eth_validate_addr,
@@ -3229,7 +3229,7 @@ static const struct net_device_ops vxlan_netdev_raw_ops = {
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


