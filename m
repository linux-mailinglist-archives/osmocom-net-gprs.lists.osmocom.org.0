Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id C6F5A2AB5D2
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:32 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 8155E18F98C;
	Mon,  9 Nov 2020 11:05:32 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=uA5w57RM
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::443; helo=mail-wr1-x443.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by lists.osmocom.org (Postfix) with ESMTP id C440218E7E7
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:56:10 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id p1so4801879wrf.12
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=Cwoypn5vRWqLZ2PmtMFZW4bqe7uU2Xj951rJyZK/u3Y=;
 b=uA5w57RM7ywgt18FMf7D07PvnAQtTEODfa2EnI6V8xiVWq1azn63B5H3f/h7JvfmVE
 9kw/Z2MntQAZrHD25To8ecfavAJmdurMwqo7NJoEmbaukXBRbLxE3hEPpOf8P8QI/4Yu
 fCpgIhffGoFGpMpfU93I7DnmpAHrtz7RmrX26q3ORmV6R2soMmTE7KRxgSGOgYBo2ZhG
 PqoFLhKuoaxhmuxXnLefBr2MTi3QfTxyZledB5nAnj5STh9V+YbidbuRITpWn3mCLiBW
 HOCczSjxX20LSmLXwuQuL5cR7SeURMkZC/H1y5sSpLE8IHRDjQLmcj+PgV625rdwzSH3
 9Wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=Cwoypn5vRWqLZ2PmtMFZW4bqe7uU2Xj951rJyZK/u3Y=;
 b=mQpaK3dKDjbKoBNjFD5XEJGz/Oe0j4myELgS3Eky8KlL64OP+TBPcjRA3Ie/TGy6lk
 lklN/0UNawjiv78h+0IJSOePu3qIAWXQDCUcxQA9rnlhaPbAMJyL/5jWRU1oMs9qC0cC
 DSy1l+nAEA0hitilhG6W9r+T+SR0czkgVqLYZn4dHJfk66VW1xy9HaHPy9y6E9n8GMHn
 Xm/GFZsx4GmFD2dNvoalKV8r3g7XB63fVYztwOyEKMiIvG7XY04Z9aPLGPG7Z3kDl44M
 Rz5+vhorxQfZI55xeJKboPQ1ycFMrLa0X6DNfmkmz08t9F5mTLLeOPCxVSBBGI0SzaHH
 tTwA==
X-Gm-Message-State: AOAM533OaNbpix0imfI56a35gXw/GtMfoHaJ7AUD3Ao4vZJLrFz2R0wG
 6HhHhjk32/7mqrw7cUewlW8=
X-Google-Smtp-Source: ABdhPJy+e7yZL/cGFNMAeW5k7SlR5OQlFSoecym4Sj3wK2vqyInV36SGAAig7CT7aCgs0IhJVqxFPw==
X-Received: by 2002:a5d:4c4f:: with SMTP id n15mr9172276wrt.137.1604782570439; 
 Sat, 07 Nov 2020 12:56:10 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id u10sm7901369wrw.36.2020.11.07.12.56.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:56:10 -0800 (PST)
Subject: [PATCH net-next v3 06/10] gtp: switch to dev_get_tstats64
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
Message-ID: <e8b41c0a-e86d-b86a-28fa-4872d3f47a43@gmail.com>
Date: Sat, 7 Nov 2020 21:52:42 +0100
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

Acked-by: Harald Welte <laforge@gnumonks.org>
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


