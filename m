Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 86B122A793A
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:12 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 08AB518C5C8;
	Thu,  5 Nov 2020 08:27:55 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=gydV31gZ
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::444; helo=mail-wr1-x444.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by lists.osmocom.org (Postfix) with ESMTP id 8BFF118B51C
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:41 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id s9so22253717wro.8
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xp6oy8hFijEmY9NkC9fHkoFa4aR3nW13I4ZttL2CY1s=;
 b=gydV31gZS7M+j5E46kP9AIaz8+BM5M32QpZbH/YNlCKoV/ZpmW6d81ZlDl2VCcdXas
 tKYGkBIlQGA4J/CbWlOD8h++H0zwu4ZMdKjneqQBTk6hR54YzL6GFu2A2dc4UAKXFEIU
 BAW+1cFOjFLDoecjZWP9OJcXLKm3C07PCk8C6MmUXxJE+c8pytKWDMQ1VuYizJNkaiKS
 DxOaZ4BIo72zZ0QtJ+JPj5v5eu8sRpTOynCk2lo5W0guQPj9DoTFQom2CXoQBP74e2w6
 4c3ALEpoidWzuDh9nyOiIDPnpPTeDpp+rxcN9yTFS8ajTAUcfCVRP/P5YKsoIWfD2nRS
 ZX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xp6oy8hFijEmY9NkC9fHkoFa4aR3nW13I4ZttL2CY1s=;
 b=JyxGpO+Qke7Y4E5RB1jd1Mt6dhMPb14dJAENoJrRG52nV9gFnjnyYnqywGzl7I2C4m
 COeTHYeq85Av+xHYYaXKxDyU67olv3HnoUPd0tKrdmcdvblVydVftkivYqrn/1tYdbtL
 MAIM2ULW1vPKf4n1SffGGJAKUpWpp9AACFwZInpXewpCjP/h5zWkc2rSSZoPzI+2RUS0
 w7olsJX1E6WmLiL1+oQBS1S6z4QtC5Y+YWolq0w4kJGVCOFUdx+wFtGacUlkUZCHTPd+
 q8UZoGvGVgymIjQSoWkJp6XtochIufVDgZuody0Kjh/OugxQq5KjBbLE6Pbq9bubEME3
 su1Q==
X-Gm-Message-State: AOAM532H8HIWgXIjLfWY9Kr1LkPQNVA9+XVtMVn4enmqr9Y+lCxltZK4
 24Pl/mFueH9O8B8zRd0SaFs=
X-Google-Smtp-Source: ABdhPJyvvhuRWzQmFq7CIZ0Iq/4dBo0VuuTGRZ7iy05CIxTO7DdreWemTSw/gAg+68JIxl2poVPGKA==
X-Received: by 2002:adf:dec1:: with SMTP id i1mr30822590wrn.50.1604500301068; 
 Wed, 04 Nov 2020 06:31:41 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id t12sm2976964wrm.25.2020.11.04.06.31.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:40 -0800 (PST)
Subject: [PATCH net-next v2 06/10] gtp: switch to dev_get_tstats64
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
Message-ID: <52d228fe-9ed3-7cd0-eebc-051c38b5e45f@gmail.com>
Date: Wed, 4 Nov 2020 15:27:47 +0100
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
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index dc668ed28..4c04e271f 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -607,7 +607,7 @@ static const struct net_device_ops gtp_netdev_ops = {
 	.ndo_init		= gtp_dev_init,
 	.ndo_uninit		= gtp_dev_uninit,
 	.ndo_start_xmit		= gtp_dev_xmit,
-	.ndo_get_stats64	= ip_tunnel_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 };
 
 static void gtp_link_setup(struct net_device *dev)
-- 
2.29.2


