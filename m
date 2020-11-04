Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 2B00B2A793D
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:14 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 522A018C5D3;
	Thu,  5 Nov 2020 08:27:58 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=sfcMSso4
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id 5914618B54D
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:44 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c16so2515854wmd.2
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4rfiet18ZS0o4KG/dtF63+kbk0+HAV5dp9bIiGOx7/A=;
 b=sfcMSso4ZIjtzw+Jqb8eHi5oFWOCYuHZedzoLVlBFMW/sxgG00Nc+1+kdXJtQ1wFeK
 5AZmIvNBcO6P68XQ9UvidKMYuZImUVIQTLZHHMsyaYUVJ1yikHF5Hd9x9yPrTZfffgTm
 XqLF3s03M6QC1cRYtX716btEvouYkcwrKZZhzTYAYNARPONfVdTiIirM0Gvcj0sdjOXF
 tQQ8Qr7Q/ktvp0DJY50hyPUyPFfa8Esgm9ZqFiVD7j1P69NgsJ7+xlsow/SiOhFmlzkM
 daPqYy5+nrlehTHr520j0YUbEll5KpaLxnjHNCV3AsoYlHpiNv/cHIaLVSmiunqQwDvY
 5C7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4rfiet18ZS0o4KG/dtF63+kbk0+HAV5dp9bIiGOx7/A=;
 b=srG0njzr+M2QP19PlhE2fdwreHIpY8pbfZEZYcVgi8eMBkmuQeSXNHRtYbw+qUK8JA
 R7+YAQRWQXHwpeREkoy3dlSTMoN280qB0XkZvA1YrxDy2B1EM/pIqVdxuSdEvWIncSxO
 LvyXH+gZlVtJV4HhiNa/fEwf3CfvJpcb6yc/a+QjdsTg/4Y+pV11OR+DWuYsloE7ylf9
 HI+C70n7MwZ/qXtR8uK1bOyJwNRCWy5swjbbiBCoHJ3DBItbYLqg2hH7gEKwgoBl6n99
 kHm5W74kHy8/7G6LYa0Q0CboEBKJw2UIcAERvopQeJXOo8APhtRwgUjexA/tNbF60omp
 H6wA==
X-Gm-Message-State: AOAM530fkpPwjdWIMxTP0FIHfcxxKjQXR5N9HtNQ+GSTnAdEFlkH9boF
 5x6kpOcfZle9U9r4rgfGoLE=
X-Google-Smtp-Source: ABdhPJxI7VpXKJmZPAAzWLeHi6wM4l7xKzxiHLBrCNzzFeW86JBey7HQ+giLzYO7y6Ko67W2NU36yQ==
X-Received: by 2002:a1c:b387:: with SMTP id c129mr5161673wmf.66.1604500304441; 
 Wed, 04 Nov 2020 06:31:44 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id 205sm2493118wme.38.2020.11.04.06.31.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:44 -0800 (PST)
Subject: [PATCH net-next v2 08/10] vti: switch to dev_get_tstats64
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
Message-ID: <fa3534fa-6f15-0dd1-c9f9-9598e6d1d0ea@gmail.com>
Date: Wed, 4 Nov 2020 15:28:57 +0100
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
index 5f9c4fdc1..b7b2bb27d 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -889,7 +889,7 @@ static const struct net_device_ops vti6_netdev_ops = {
 	.ndo_uninit	= vti6_dev_uninit,
 	.ndo_start_xmit = vti6_tnl_xmit,
 	.ndo_do_ioctl	= vti6_ioctl,
-	.ndo_get_stats64 = ip_tunnel_get_stats64,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip6_tnl_get_iflink,
 };
 
-- 
2.29.2


