Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD192AB5D9
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:38 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 4B9AA18F9A0;
	Mon,  9 Nov 2020 11:05:38 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=RewXkz0y
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by lists.osmocom.org (Postfix) with ESMTP id 6345918E849
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:56:16 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id d142so4651831wmd.4
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=K0xwbWgfzNb+siGOnTIoHV8a22y8LDX4Jm2bW67sNRs=;
 b=RewXkz0yxtg6uetza1ABn8L2kBaJ7gR1QEC6XOoJfzcxVIdzO9VtMc34ucxIQo9HAB
 47oWrL5XwzFQkwDWdzldihU7pUwuSfMwQNbOlV8nfxNcjmynsTI+1xCLC6O8CzJx7HDb
 rqfTjTPrOG1R0OAsX25BSosCjbVtjFegUHAV9eZMI1Aal9pkD9hmk1oTFuoNZbFLzfVW
 8CLvhBJwaAVCUGuPhZ5EpuYJPNpjt7nVwDUBRiPWV0lBlCUKXav+jfHlLKshvUituOx5
 6Cf94DQVBThnAC062jsQ2dnbdyyapRLhFtpZipWKyJO6hCO32VaWhshQ0yxau5fK39Hf
 5LQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=K0xwbWgfzNb+siGOnTIoHV8a22y8LDX4Jm2bW67sNRs=;
 b=LwKXQTx3GzYbJO+1Px1ITfcD5VB9fvtA9QYh6RmFZj/hzoy1aii5ymA6sNPEwXLoOm
 /XOYmJgV0860RuzVLz1/RD0YiHC9AsJk0J9Lbzz1RYuNxgFn1WZ+8LkTgLSnfD4sl4+K
 YBWjYGQQCwTqKMpwJbtwR8N4HU201duLe6jTRJDaaVSweae4nArLow01yBNZd65z/Rmq
 aePhzeAviyH+HFsYuLlFxK6QHN0eVWlPD3i7CsXKhb2NW56pEDY/Ib/DnVdYjwlqAryK
 S7s0jZaHDuN9+E0pfN7i5RCLoqr+tUIVweIt3lEjZwU9FLT1U1IcD/95W64txLXqZyqz
 x+yQ==
X-Gm-Message-State: AOAM533tSMkD8wWkIfx/3A/HKG6eI7wGVaO0Zl+Ae92nTYMJF32RV29a
 2f4K7T6bbXTN4GIZwTsxF8Q=
X-Google-Smtp-Source: ABdhPJwpKeyWsiU5WCdAlSQ/eplYWVZkfVvVQccFtw50TJ/mpHkRmbUHbOQxf4ZPHjy4+Y7KWGUlag==
X-Received: by 2002:a1c:1906:: with SMTP id 6mr6213436wmz.87.1604782576497;
 Sat, 07 Nov 2020 12:56:16 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id k16sm1179409wrl.65.2020.11.07.12.56.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:56:15 -0800 (PST)
Subject: [PATCH net-next v3 10/10] net: remove ip_tunnel_get_stats64
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
Message-ID: <1d5992f4-6d88-1bef-9756-06d48fc10a31@gmail.com>
Date: Sat, 7 Nov 2020 21:55:11 +0100
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

After having migrated all users remove ip_tunnel_get_stats64().

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/net/ip_tunnels.h  | 2 --
 net/ipv4/ip_tunnel_core.c | 9 ---------
 2 files changed, 11 deletions(-)

diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
index 02ccd3254..1b7905eb7 100644
--- a/include/net/ip_tunnels.h
+++ b/include/net/ip_tunnels.h
@@ -274,8 +274,6 @@ int ip_tunnel_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd);
 int __ip_tunnel_change_mtu(struct net_device *dev, int new_mtu, bool strict);
 int ip_tunnel_change_mtu(struct net_device *dev, int new_mtu);
 
-void ip_tunnel_get_stats64(struct net_device *dev,
-			   struct rtnl_link_stats64 *tot);
 struct ip_tunnel *ip_tunnel_lookup(struct ip_tunnel_net *itn,
 				   int link, __be16 flags,
 				   __be32 remote, __be32 local,
diff --git a/net/ipv4/ip_tunnel_core.c b/net/ipv4/ip_tunnel_core.c
index 25f1caf5a..923a9fa2e 100644
--- a/net/ipv4/ip_tunnel_core.c
+++ b/net/ipv4/ip_tunnel_core.c
@@ -429,15 +429,6 @@ int skb_tunnel_check_pmtu(struct sk_buff *skb, struct dst_entry *encap_dst,
 }
 EXPORT_SYMBOL(skb_tunnel_check_pmtu);
 
-/* Often modified stats are per cpu, other are shared (netdev->stats) */
-void ip_tunnel_get_stats64(struct net_device *dev,
-			   struct rtnl_link_stats64 *tot)
-{
-	netdev_stats_to_stats64(tot, &dev->stats);
-	dev_fetch_sw_netstats(tot, dev->tstats);
-}
-EXPORT_SYMBOL_GPL(ip_tunnel_get_stats64);
-
 static const struct nla_policy ip_tun_policy[LWTUNNEL_IP_MAX + 1] = {
 	[LWTUNNEL_IP_UNSPEC]	= { .strict_start_type = LWTUNNEL_IP_OPTS },
 	[LWTUNNEL_IP_ID]	= { .type = NLA_U64 },
-- 
2.29.2


