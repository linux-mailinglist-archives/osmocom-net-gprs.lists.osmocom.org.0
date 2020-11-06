Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 37A182A90E7
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  6 Nov 2020 09:03:26 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9694518D1EF;
	Fri,  6 Nov 2020 08:03:18 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=ineufTY4
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id D7DC318CF58
 for <osmocom-net-gprs@lists.osmocom.org>; Fri,  6 Nov 2020 01:14:50 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B78DF20759;
 Fri,  6 Nov 2020 01:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604625288;
 bh=ais4RAG5J5KbGpzBalzy6kY8SokXfVySb1Kn46M5B2E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ineufTY4gfwEtblPwybn2JPUuMn42nQHtjK9ZZboHE/r4v8AE6puMvjz89FsibJIr
 mWvWFo9wntDfjzuGjiEoCFLsrOHYw0THqpEFTeFm8/s3O5P5hU6Ki9oomXAJmCOu27
 rDr2v2YgGI3MDT2FxlO0YVh1g3XtAv3UqysVEiCc=
Date: Thu, 5 Nov 2020 17:14:46 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>, Willem de Bruijn
 <willemb@google.com>
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
Subject: Re: [PATCH net-next v2 03/10] tun: switch to net core provided
 statistics counters
Message-ID: <20201105171446.5f78f1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <30fd49be-f467-95f5-9586-fec9fbde8e48@gmail.com>
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
 <30fd49be-f467-95f5-9586-fec9fbde8e48@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 06 Nov 2020 08:03:14 +0000
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

On Wed, 4 Nov 2020 15:25:24 +0100 Heiner Kallweit wrote:
> @@ -1066,7 +1054,7 @@ static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
>  	return NETDEV_TX_OK;
>  
>  drop:
> -	this_cpu_inc(tun->pcpu_stats->tx_dropped);
> +	dev->stats.tx_dropped++;
>  	skb_tx_error(skb);
>  	kfree_skb(skb);
>  	rcu_read_unlock();

This is no longer atomic. Multiple CPUs may try to update it at the
same time.

Do you know what the story on dev->rx_dropped is? The kdoc says drivers
are not supposed to use it but:

drivers/net/ipvlan/ipvlan_core.c:               atomic_long_inc(&skb->dev->rx_dropped);
drivers/net/macvlan.c:  atomic_long_inc(&skb->dev->rx_dropped);
drivers/net/vxlan.c:            atomic_long_inc(&vxlan->dev->rx_dropped);

Maybe tun can use it, too?
