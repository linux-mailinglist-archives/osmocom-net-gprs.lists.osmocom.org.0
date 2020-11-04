Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 93F742A7934
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:08 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5115018C523;
	Thu,  5 Nov 2020 08:27:30 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=QtgT+zS0
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by lists.osmocom.org (Postfix) with ESMTP id B1B7F18B452
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:23:13 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id 205so2488880wma.4
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=sAFLjN4ixxy17kgbFWahJMbPyXmphyBag2SqscTf81U=;
 b=QtgT+zS0egP5DPQ1l06MHd/ZoaweA4XkqKLQqOOODh89FNmYsrIHcKFLRCmzXZmo/x
 w8keMj7G8YEk8ozSzHRY5ZrDz9iFAZRAbhq59u/2olT7o9cI17KTWT37hpZqns9q4X8Z
 eyd2KlVHieVzZgNP9lec3P3A5BHXwVoJW+c1YX2Ci5dzfxEpBRl5+HdaZtna3a1Eh/LU
 ENjQU0oXHIwZYqdYLcyaD6Uyw4S8E4QZgjWL4PHKo6ZBg0Ql3KCnA5IGJ86/ELFRMPXT
 mnCz6vwUq/zD2sVs8DmUDnZM2lL05HRU2RpO003y7vQCU+PTqL20DkYSeYNw0yXkzzzj
 E73w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=sAFLjN4ixxy17kgbFWahJMbPyXmphyBag2SqscTf81U=;
 b=FQuVL/Cx3vhpueTiQ2dBVjl88s+0/f9iQAFdK5nQEgOozASJtUM39Bi9AcnPZPrur7
 wvHqh+RQnicabpMlla/fEZqPiqWCvWPVbEcmIDVj4g7/rhOaN5zxB2n+FFlToFm+lc33
 ibFVx1VQ/TYNvFCgrXxSbX/fpIz9BLX7O32bLjSOePwf1HR+8OCBBaP2oFhP3JpryQtt
 gSNZ9zbxEJu0bVN7MI8ufHT5VpbNdDCVxLgGFvAUGkorq0OSsG2iU1hI/+3QxtVXMBq+
 V7o0CxYdtFa/+eYYJtI8HACt3ET01cbYKdHThevvnv37xSp0F2eObUhtvCY/obdl8duI
 wjsA==
X-Gm-Message-State: AOAM533LkjQVvyJILlQ1MvdnVKiN/BxA3CGpKnky5Lu9jbzkO4f0150W
 tCjbg2yK60SQsG2o7tT82f8=
X-Google-Smtp-Source: ABdhPJyIXiEIUfwfazgmJaWSHB/oz7V51EN1FrvzBr4dTC9NTfkCsHD2QEpvmenUDs3pPo9PQGaEow==
X-Received: by 2002:a1c:3502:: with SMTP id c2mr5022741wma.79.1604499793388;
 Wed, 04 Nov 2020 06:23:13 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id m126sm2356252wmm.0.2020.11.04.06.23.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:23:12 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next v2 00/10] net: add and use dev_get_tstats64
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
Message-ID: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
Date: Wed, 4 Nov 2020 15:23:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
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

It's a frequent pattern to use netdev->stats for the less frequently
accessed counters and per-cpu counters for the frequently accessed
counters (rx/tx bytes/packets). Add a default ndo_get_stats64()
implementation for this use case. Subsequently switch more drivers
to use this pattern.

v2:
- add patches for replacing ip_tunnel_get_stats64
  Requested additional migrations will come in a separate series.

Heiner Kallweit (10):
  net: core: add dev_get_tstats64 as a ndo_get_stats64 implementation
  net: dsa: use net core stats64 handling
  tun: switch to net core provided statistics counters
  ip6_tunnel: switch to dev_get_tstats64
  net: switch to dev_get_tstats64
  gtp: switch to dev_get_tstats64
  wireguard: switch to dev_get_tstats64
  vti: switch to dev_get_tstats64
  ipv4/ipv6: switch to dev_get_tstats64
  net: remove ip_tunnel_get_stats64

 drivers/net/bareudp.c          |   2 +-
 drivers/net/geneve.c           |   2 +-
 drivers/net/gtp.c              |   2 +-
 drivers/net/tun.c              | 127 ++++++++-------------------------
 drivers/net/vxlan.c            |   4 +-
 drivers/net/wireguard/device.c |   2 +-
 include/linux/netdevice.h      |   1 +
 include/net/ip_tunnels.h       |   2 -
 net/core/dev.c                 |  15 ++++
 net/dsa/dsa.c                  |   7 +-
 net/dsa/dsa_priv.h             |   2 -
 net/dsa/slave.c                |  29 ++------
 net/ipv4/ip_gre.c              |   6 +-
 net/ipv4/ip_tunnel_core.c      |   9 ---
 net/ipv4/ip_vti.c              |   2 +-
 net/ipv4/ipip.c                |   2 +-
 net/ipv6/ip6_gre.c             |   6 +-
 net/ipv6/ip6_tunnel.c          |  32 +--------
 net/ipv6/ip6_vti.c             |   2 +-
 net/ipv6/sit.c                 |   2 +-
 20 files changed, 72 insertions(+), 184 deletions(-)

-- 
2.29.2

