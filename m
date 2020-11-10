Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 500CC2AD25C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 10 Nov 2020 10:23:19 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 328391907EB;
	Tue, 10 Nov 2020 09:23:13 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=PeG9ireB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id A7E31190503
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 10 Nov 2020 03:58:14 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC48B2054F;
 Tue, 10 Nov 2020 03:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604980693;
 bh=LYd6sGtqAyllUZ+TrvpQ0ZyMTLKy+YxG+IC0lRSP0tg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PeG9ireBIMzUv7Q12nrOYnN4Q8LVc3jZHg2H91I8KoS4gDGeTGasfMomSW9KGU4zm
 PriQL/3QKFPXnDXQAPN8fZzHi6/H5q39LcJ68hn9LVI5dYFWE0um2AkZsH5pcX0q5v
 cGixoTXrRdTRFjj/0r+ZKnEplwPxM7H1iEuSDhkU=
Date: Mon, 9 Nov 2020 19:58:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: David Miller <davem@davemloft.net>, Alexey Kuznetsov
 <kuznet@ms2.inr.ac.ru>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Andrew
 Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Pablo Neira Ayuso
 <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, "Jason A.
 Donenfeld" <Jason@zx2c4.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 osmocom-net-gprs@lists.osmocom.org, wireguard@lists.zx2c4.com, Steffen
 Klassert <steffen.klassert@secunet.com>
Subject: Re: [PATCH net-next v3 00/10] net: add and use dev_get_tstats64
Message-ID: <20201109195811.7be5882c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <99273e2f-c218-cd19-916e-9161d8ad8c56@gmail.com>
References: <99273e2f-c218-cd19-916e-9161d8ad8c56@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 10 Nov 2020 09:23:08 +0000
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

On Sat, 7 Nov 2020 21:48:13 +0100 Heiner Kallweit wrote:
> It's a frequent pattern to use netdev->stats for the less frequently
> accessed counters and per-cpu counters for the frequently accessed
> counters (rx/tx bytes/packets). Add a default ndo_get_stats64()
> implementation for this use case. Subsequently switch more drivers
> to use this pattern.
> 
> v2:
> - add patches for replacing ip_tunnel_get_stats64
>   Requested additional migrations will come in a separate series.
> 
> v3:
> - add atomic_long_t member rx_frame_errors in patch 3 for making
>   counter updates atomic

Applied, thank you!
