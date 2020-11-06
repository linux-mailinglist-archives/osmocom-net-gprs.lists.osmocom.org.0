Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id F22162AB5C8
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:21 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id AF45E18F961;
	Mon,  9 Nov 2020 11:05:20 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=qZnx3ALp
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 2951318DC2F
 for <osmocom-net-gprs@lists.osmocom.org>; Fri,  6 Nov 2020 16:18:51 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D77E922202;
 Fri,  6 Nov 2020 16:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604679529;
 bh=1OGiCj6diov6W4McEbxpKOj+fj5u/W5GEP7kzpgc6ZU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qZnx3ALpLlM5ehOv6O1rJ3D6pwuiJo58f9Lnmc3/7hnd7moHaW5RjAc3DlRqdGLHT
 co3GWnTc+tZ8w/Bq8Aj+dcqE+pif1ym6/9KOFJ19ABJmMY0UYJLnNRw5czyBu2nHsk
 r4XMeij6RQGLATWJDCGvnaHfpL7kJ9tzgPp+A+wY=
Date: Fri, 6 Nov 2020 08:18:46 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Willem de Bruijn <willemb@google.com>, David Miller
 <davem@davemloft.net>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Hideaki
 YOSHIFUJI <yoshfuji@linux-ipv6.org>, Andrew Lunn <andrew@lunn.ch>, Vivien
 Didelot <vivien.didelot@gmail.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Pablo Neira Ayuso <pablo@netfilter.org>, Harald
 Welte <laforge@gnumonks.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, osmocom-net-gprs@lists.osmocom.org,
 wireguard@lists.zx2c4.com, Steffen Klassert <steffen.klassert@secunet.com>
Subject: Re: [PATCH net-next v2 03/10] tun: switch to net core provided
 statistics counters
Message-ID: <20201106081846.27212e9e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <aea7d78e-2d77-1f8a-70f0-73d46c96b44e@gmail.com>
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
 <30fd49be-f467-95f5-9586-fec9fbde8e48@gmail.com>
 <20201105171446.5f78f1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <dcb51de1-5e11-7c07-9784-bf3546a1246a@gmail.com>
 <aea7d78e-2d77-1f8a-70f0-73d46c96b44e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 6 Nov 2020 09:27:45 +0100 Heiner Kallweit wrote:
> On 06.11.2020 08:48, Heiner Kallweit wrote:
> > On 06.11.2020 02:14, Jakub Kicinski wrote:  
> >> On Wed, 4 Nov 2020 15:25:24 +0100 Heiner Kallweit wrote:  
> >>> @@ -1066,7 +1054,7 @@ static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
> >>>  	return NETDEV_TX_OK;
> >>>  
> >>>  drop:
> >>> -	this_cpu_inc(tun->pcpu_stats->tx_dropped);
> >>> +	dev->stats.tx_dropped++;
> >>>  	skb_tx_error(skb);
> >>>  	kfree_skb(skb);
> >>>  	rcu_read_unlock();  
> >>
> >> This is no longer atomic. Multiple CPUs may try to update it at the
> >> same time.
> >>
> >> Do you know what the story on dev->rx_dropped is? The kdoc says drivers
> >> are not supposed to use it but:
> >>
> >> drivers/net/ipvlan/ipvlan_core.c:               atomic_long_inc(&skb->dev->rx_dropped);
> >> drivers/net/macvlan.c:  atomic_long_inc(&skb->dev->rx_dropped);
> >> drivers/net/vxlan.c:            atomic_long_inc(&vxlan->dev->rx_dropped);
> >>
> >> Maybe tun can use it, too?
> >>  
> > Thanks, yes that should be possible. Here we speak about tx_dropped,
> > but AFAICS the same applies as for rx_dropped. Will change it accordingly
> > in a v3.
> >   
> For rx_dropped and tx_dropped it's easy, however tun also has a per-cpu
> counter for rx_frame_errors that is incremented if virtio_net_hdr_to_skb()
> fails. Not sure how to deal best with this one.

Umpf, yeah, so I'd probably add an atomic long to struct tun_struct,
but then you'll need to keep the ndo implementation instead of using
dev_get_tstats64 directly. I can't think of a better way, tho.
