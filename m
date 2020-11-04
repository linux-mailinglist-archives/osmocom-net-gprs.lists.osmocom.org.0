Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 86AF32A793F
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:15 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id B9FF918C5C0;
	Thu,  5 Nov 2020 08:27:49 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=oqc3LELb
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::441; helo=mail-wr1-x441.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by lists.osmocom.org (Postfix) with ESMTP id C423518B4D7
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:38 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id e6so5021011wro.1
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qEB7Z1RjR0G+DQiP2hCHYNQbM1LDy8ydPvZ+5mT8PJY=;
 b=oqc3LELbOHqVlrEwxcr95Uzj3oPBsqK0Nak4vw7gcR4/dVI6RUxZUXW6f5i47wIvsS
 8ArQM6PlzCm2AppC7MMF2DLcku+T4teyS7eGqkcwZS406IFUqnbcqvzlF2TZRgBLx06p
 3HYc641WliszKdF0S62P1MqROLAJa3FB6pmc6Z6egnxCdFZoQ+gEJmkj+mF+t8YmRvhZ
 UfkATTDdmC+MNlVBNBD4awnkkoO726ky7JLrG5VJhFN0yhTTj5usRcgam6icQsKrKG64
 ccw7SUtnjKE4WdBzCfxZAMK/j19148XNTbs/Vf3zjp3xxQlNuTeEQyxxag5Y+szOsP9a
 oByg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qEB7Z1RjR0G+DQiP2hCHYNQbM1LDy8ydPvZ+5mT8PJY=;
 b=kLTNeasRBaOmCm7p1ujRA2ZCs6x4xhkQUrzjMXYIEMYFzk2KswZdHiJc3YilItfOQS
 TwfK4KcdWh6tfkHAEqWo/d5wLb/SxBk6m7gOu6F3jlMEOxWge8yf2okRJO0WY2MXIpnq
 R29IgIrvvC1MM4qAUYtUyXYtdHvmsPw4VFzpP2nFVK9fJtGlJLFC2+ZJaeAKbooUEDZf
 p+h+WBfrhfz4jNlfqeVCdXicxFd06MwIInaTuuZGIsahWQpedGiAEnsEJ3el+QhBKDDa
 0D8uBcw5YplYREiEqXakrXKp59KRHbbIhDZZ560Jbh+M8k1WPpYmgoRFUNquOvP4IlrY
 amuw==
X-Gm-Message-State: AOAM530SYt4jQiK4eWo7n7tf4rqPug9ZE5U1354eNL32DlvJUMc+hIAp
 jxa99j/T8iIx2k7Tb3RmsXw=
X-Google-Smtp-Source: ABdhPJzroOAM2nk7AMGE88U8txABdnW1WShg9Kwj96gyky21jL4XWyUtijC9VSYFoEfWdADhvSeNQw==
X-Received: by 2002:a5d:5612:: with SMTP id l18mr34275754wrv.372.1604500298030; 
 Wed, 04 Nov 2020 06:31:38 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id a185sm2595233wmf.24.2020.11.04.06.31.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:37 -0800 (PST)
Subject: [PATCH net-next v2 04/10] ip6_tunnel: switch to dev_get_tstats64
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
Message-ID: <4dc3d9f1-bf5e-1f56-9810-7af29988a5f1@gmail.com>
Date: Wed, 4 Nov 2020 15:26:11 +0100
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

Switch ip6_tunnel to the standard statistics pattern:
- use dev->stats for the less frequently accessed counters
- use dev->tstats for the frequently accessed counters

An additional benefit is that we now have 64bit statistics also on
32bit systems.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 net/ipv6/ip6_tunnel.c | 32 +-------------------------------
 1 file changed, 1 insertion(+), 31 deletions(-)

diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 648db3fe5..321d057c5 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -94,36 +94,6 @@ static inline int ip6_tnl_mpls_supported(void)
 	return IS_ENABLED(CONFIG_MPLS);
 }
 
-static struct net_device_stats *ip6_get_stats(struct net_device *dev)
-{
-	struct pcpu_sw_netstats tmp, sum = { 0 };
-	int i;
-
-	for_each_possible_cpu(i) {
-		unsigned int start;
-		const struct pcpu_sw_netstats *tstats =
-						   per_cpu_ptr(dev->tstats, i);
-
-		do {
-			start = u64_stats_fetch_begin_irq(&tstats->syncp);
-			tmp.rx_packets = tstats->rx_packets;
-			tmp.rx_bytes = tstats->rx_bytes;
-			tmp.tx_packets = tstats->tx_packets;
-			tmp.tx_bytes =  tstats->tx_bytes;
-		} while (u64_stats_fetch_retry_irq(&tstats->syncp, start));
-
-		sum.rx_packets += tmp.rx_packets;
-		sum.rx_bytes   += tmp.rx_bytes;
-		sum.tx_packets += tmp.tx_packets;
-		sum.tx_bytes   += tmp.tx_bytes;
-	}
-	dev->stats.rx_packets = sum.rx_packets;
-	dev->stats.rx_bytes   = sum.rx_bytes;
-	dev->stats.tx_packets = sum.tx_packets;
-	dev->stats.tx_bytes   = sum.tx_bytes;
-	return &dev->stats;
-}
-
 #define for_each_ip6_tunnel_rcu(start) \
 	for (t = rcu_dereference(start); t; t = rcu_dereference(t->next))
 
@@ -1835,7 +1805,7 @@ static const struct net_device_ops ip6_tnl_netdev_ops = {
 	.ndo_start_xmit = ip6_tnl_start_xmit,
 	.ndo_do_ioctl	= ip6_tnl_ioctl,
 	.ndo_change_mtu = ip6_tnl_change_mtu,
-	.ndo_get_stats	= ip6_get_stats,
+	.ndo_get_stats64 = dev_get_tstats64,
 	.ndo_get_iflink = ip6_tnl_get_iflink,
 };
 
-- 
2.29.2


