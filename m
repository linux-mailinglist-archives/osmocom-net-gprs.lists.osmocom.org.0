Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id F122E2A793C
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:13 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2533118C5CF;
	Thu,  5 Nov 2020 08:27:57 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=eE8ak1TB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::444; helo=mail-wr1-x444.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by lists.osmocom.org (Postfix) with ESMTP id E06D318B53A
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:42 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id n18so22259048wrs.5
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ISdFe78IibjR0mRAQ86gBh/OHzTQrxaMboYtkFYsqpE=;
 b=eE8ak1TBDVXreX9muVNGINPPTvKoQUGUD0knZOHr+4cKU7tAK22S3ATaMp2kFxsxRy
 iiMxKWeDrIIOa6dXxEZmheaPMa7hXUAh4/BjqpaQDfLRVHSgPI+YYSvcYhpHfTHoLA5P
 wg2kho8HjLlH0ER5waUhPXWL7UvsSE/j6+h1ICFXEvcwE6nHlhA71k0EPzEyI4BEh8fE
 D9/Dw9aV15WdZbgs+6dF6oHQjVZPrvMdmqR3hbfxTeupHkARuPGWI/STHjm52TLbn2A3
 A3o4CVot3uA6ift59ypoE8kihX6cQlGv+OlXIPXLyF1MrYHykPZPGay7CfdBE1+FMAZc
 IRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ISdFe78IibjR0mRAQ86gBh/OHzTQrxaMboYtkFYsqpE=;
 b=Rzj5np81ed79tzcVTBx0JdI0I88c8idWcSv8AvY/s0pnAeOQEfF9w1i9qoX/0GsWcK
 wgyf3ORUeB6SYahoDwJVycMj2nCmqDo4Cn7bXrHV02Au0UEXV3JIrfCevXElHaH0p/Zz
 OCOrHGBiRT+7IJZaziyUt8dTP4x9eHYJVZJfDPksznzhGIGOfmpFVtKfOe+7tSNbWF/w
 f/Y5hytbNDM1V9HErCXhwSQRWzBycBa/ROFG2tpFDzeCpoIUbzlUHBCJW3FBfIf1PJiN
 zXSnHm7M2zHbAPgvw2m/CHThDAQif66Q6AOIcAA+RHVqCSjSHFRUGhVCQTHwypsZgtBr
 QhNw==
X-Gm-Message-State: AOAM531ft4AfrLyVp8a1pltskcm5w61DO++vFrk8VngVSZJWfQ77S4y4
 oA33J6YdErI1Gkkarl2f6r8=
X-Google-Smtp-Source: ABdhPJyTmgp2E3e/UB8WuI4mAejZD7B4seUjChiV1gJQIko6Xt6GU+2OLu3kC+3iK9h4fWeGCnAcTA==
X-Received: by 2002:adf:fa8a:: with SMTP id h10mr32097178wrr.336.1604500302448; 
 Wed, 04 Nov 2020 06:31:42 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id f17sm2938117wrm.27.2020.11.04.06.31.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:42 -0800 (PST)
Subject: [PATCH net-next v2 07/10] wireguard: switch to dev_get_tstats64
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
Message-ID: <4f731535-2a51-a673-5daf-d9ec2536a8f8@gmail.com>
Date: Wed, 4 Nov 2020 15:28:22 +0100
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
 drivers/net/wireguard/device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireguard/device.c b/drivers/net/wireguard/device.c
index c9f65e96c..a3ed49cd9 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -215,7 +215,7 @@ static const struct net_device_ops netdev_ops = {
 	.ndo_open		= wg_open,
 	.ndo_stop		= wg_stop,
 	.ndo_start_xmit		= wg_xmit,
-	.ndo_get_stats64	= ip_tunnel_get_stats64
+	.ndo_get_stats64	= dev_get_tstats64
 };
 
 static void wg_destruct(struct net_device *dev)
-- 
2.29.2


