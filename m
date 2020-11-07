Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 98B372AB5C9
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:23 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 4D80118F966;
	Mon,  9 Nov 2020 11:05:23 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=dFGiGENB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by lists.osmocom.org (Postfix) with ESMTP id 7D8B518E772
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  7 Nov 2020 20:48:18 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id b8so4821670wrn.0
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 07 Nov 2020 12:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=B8uI3ib+ND1jWJ9Vi+AOa576ZDPXSgB4pgJH3bG+/sA=;
 b=dFGiGENB8xjIgJjYbC6FXqkzDs/gQ4N8cNUMLJdCGqTIJ83/Os/XwDLFblGezOnkHH
 ND+nGjkGHhzw/ry0Y0gADRSczNt++LkTmgJdIJP9WYimw9mPJ47STOFygWAwitDwLBZt
 uUaipIz314tT0+cgsmSlOz7AzRd1tf5uM0fgVG1qXbLW2gNEOMChThJOmgFHAzlawxOE
 CEjH106Kg3p8KLepzkprIy18AfE//xB/S9TYodexOlTFObFhZxfkUheipXSbi9+Wr7NR
 Ddkb00j0xmAfUOb+NZv6pko4K2agJ7FhfPY7dF121lt5aXI3WPvb4uAK7c41eZENJFX9
 HN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=B8uI3ib+ND1jWJ9Vi+AOa576ZDPXSgB4pgJH3bG+/sA=;
 b=o0ufRlWE4Vw+ErSBCBGcdJe1zIJ2st0s7OlupZGYqMDtaZWrDHrjWhl5wmJqF3brhO
 1+3X7k5t9YCTXN4fU7wzV5hyyJqNoWd/9UIabEz8z8bKDYfySRTXiPFgc+75OIS7tFyP
 mFechkfl9QhRMCaMPCOj9kbfcWBvV0lrBHXGIxdGG6CCNEcE3K39MFz41saDBZvLLQ6U
 tvwI8a1eOizwvAZdoaQ5LjNcMcJpJShEIC+1X1DXPNwrwaQdTUWLmxFY5j508AtK6Vuh
 TZFanKlWBSyKEzGZijax3yvNyyB3zAjq2cA3DXFW6aUkJBJnJQkfRNFMRF1pkJYp6fWg
 ZZFw==
X-Gm-Message-State: AOAM530zpzMIVEN/4C8AQhbmLhmOVDD3fR4fKw7ROygAA4QrDrSQUcSj
 Aec5qdjsp0cM+/v9J+zXfhY=
X-Google-Smtp-Source: ABdhPJxQRIASrUDnVmJ4/YlnJY9R1ijNwNhlwQ9sKCsI/bMFlpH9zvDMMWsE3RFv0AWYqQC7sqv8Og==
X-Received: by 2002:a5d:6689:: with SMTP id l9mr3723656wru.134.1604782098173; 
 Sat, 07 Nov 2020 12:48:18 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:7051:31d:251f:edd6?
 (p200300ea8f2328007051031d251fedd6.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:7051:31d:251f:edd6])
 by smtp.googlemail.com with ESMTPSA id n15sm2157030wrq.48.2020.11.07.12.48.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Nov 2020 12:48:17 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next v3 00/10] net: add and use dev_get_tstats64
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
Message-ID: <99273e2f-c218-cd19-916e-9161d8ad8c56@gmail.com>
Date: Sat, 7 Nov 2020 21:48:13 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
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

It's a frequent pattern to use netdev->stats for the less frequently
accessed counters and per-cpu counters for the frequently accessed
counters (rx/tx bytes/packets). Add a default ndo_get_stats64()
implementation for this use case. Subsequently switch more drivers
to use this pattern.

v2:
- add patches for replacing ip_tunnel_get_stats64
  Requested additional migrations will come in a separate series.

v3:
- add atomic_long_t member rx_frame_errors in patch 3 for making
  counter updates atomic

Heiner Kallweit (10):
  net: core: add dev_get_tstats64 as a ndo_get_stats64 implementation
  net: dsa: use net core stats64 handling
  tun: switch to net core provided statistics counters
  ip6_tunnel: use ip_tunnel_get_stats64 as ndo_get_stats64 callback
  net: switch to dev_get_tstats64
  gtp: switch to dev_get_tstats64
  wireguard: switch to dev_get_tstats64
  vti: switch to dev_get_tstats64
  ipv4/ipv6: switch to dev_get_tstats64
  net: remove ip_tunnel_get_stats64

 drivers/net/bareudp.c          |   2 +-
 drivers/net/geneve.c           |   2 +-
 drivers/net/gtp.c              |   2 +-
 drivers/net/tun.c              | 121 +++++++++------------------------
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
 20 files changed, 75 insertions(+), 175 deletions(-)

-- 
2.29.2

