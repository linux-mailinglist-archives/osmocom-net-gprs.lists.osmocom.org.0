Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id C480F2AB5D3
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:33 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 85EC418F991;
	Mon,  9 Nov 2020 11:05:33 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=o5FYj6Zm
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id C54E418E80A
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:56:12 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id 10so3888776wml.2
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=AqDWLm8KXcv4xkeQId6Y5dIQy0TCTVRseOitm1HQ4jk=;
 b=o5FYj6ZmqzBJ/ivWXmw0usJBDgDyyPssyFiWvYojyryyHUVaxlpBIQhvTj0d2Jq46B
 D4l6vk4/QpxizZ6JJIf4O+b9j9HczFpBN9Dp+3gjzE+KhmPmswcwvzRV2ii2pGLFA+EA
 E7G3Dbvisgrnj9ADNpesPuq+eZ2nC2ZGAeyvXy6oYtn4C0/ZFEoQH+TjIZ/l3LwXgLah
 vPICg7OrR0m4VJFzt5Sss0lLh9jYwlhwLyjOM1jdjADV559ro+xLH9PxXGoCCLXXXkgG
 slazgJif12aQ9AHHPTuSTpsKyr7QyeihdsP1HuT+fte/J8U/393MV7tBDF3ETCI5AiD2
 75xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=AqDWLm8KXcv4xkeQId6Y5dIQy0TCTVRseOitm1HQ4jk=;
 b=I9+wypW9PTahLMmRn2bKtKC98iLrEAv+ve/oTKp1LBQ8yqplf1UiFNUDvw7ivvmRWd
 6Gchmus6EKuHJoz6rHNpqIlGxA0xV9Bn75dXBcU3WSFpZ1/CuXBhNGPz6c54Hlaq3IVA
 20cmtfb4ie8QbQ+2D2OGVx3ag3cCR9498nDYZ0nxozgtqJGpaJsCi3MS2vtvJR1005sB
 IC31jQ9m6pZfTZ37yw0refl+/GtmZA7TE0EH8dUTBNZkz99IEtT1QzutRYb7d3mY5c4g
 /Lry5Jig4io47V8moHNb/FX5BbSd1knoS0hlGacYbPZifu3GCzgNHsBrNjxHmUv87paY
 M0Yg==
X-Gm-Message-State: AOAM530J0NCh1WPti/Gz9e4yoUIxUjS5Km0JCOA2I5Z4TkwNa2zaulzo
 snMTjvV6QXmRTWqOBpn2Osc=
X-Google-Smtp-Source: ABdhPJxKbOxtoWrYoXQo5USaK5yvt3T+8kM2r5oGGLK/j28grM6DP89KLS6rfO4/loYh1jJmON/rnA==
X-Received: by 2002:a1c:8145:: with SMTP id c66mr6258741wmd.75.1604782571875; 
 Sat, 07 Nov 2020 12:56:11 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id 71sm7973217wrm.20.2020.11.07.12.56.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:56:11 -0800 (PST)
Subject: [PATCH net-next v3 07/10] wireguard: switch to dev_get_tstats64
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
Message-ID: <79e9a040-c097-1d33-8de1-4833f1c68828@gmail.com>
Date: Sat, 7 Nov 2020 21:53:19 +0100
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

Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
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


