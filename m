Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 0F7FC299456
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 26 Oct 2020 18:52:30 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 554A019F70D;
	Mon, 26 Oct 2020 17:52:29 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=uWHea8p+
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 391 seconds by postgrey-1.37 at lists.osmocom.org;
 Sun, 25 Oct 2020 21:12:24 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id A8AAE19DDF2
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 25 Oct 2020 21:12:24 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F49A208B3;
 Sun, 25 Oct 2020 21:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603659951;
 bh=IWC2mraHXvnqqlJMze8XJ+U0kgMd9LFfpNCR3i6fDIo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uWHea8p+7opOynJtqFWPn/s1B+iCnWK7cfsioBC1gYVa7KRq2d18e6Py2SUzZGM4h
 Ioq5Bz0GwqoNGjUJWhRSP2qyZbfaIi9X5QvdbWrkvYetrJ9tAJn3mFGa3AZhPpzZMy
 BV5YbX24XN9q/skkSEka9J1OwNzS+Jd88DG5GeI8=
Date: Sun, 25 Oct 2020 14:05:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte
 <laforge@gnumonks.org>, "David S. Miller" <davem@davemloft.net>, Andreas
 Schultz <aschultz@tpip.net>, osmocom-net-gprs@lists.osmocom.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] gtp: fix an use-before-init in gtp_newlink()
Message-ID: <20201025140550.1e29f770@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201024154233.4024-1-fujiwara.masahiro@gmail.com>
References: <20201024154233.4024-1-fujiwara.masahiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 26 Oct 2020 17:52:12 +0000
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

On Sat, 24 Oct 2020 15:42:33 +0000 Masahiro Fujiwara wrote:
> *_pdp_find() from gtp_encap_recv() would trigger a crash when a peer
> sends GTP packets while creating new GTP device.
> 
> RIP: 0010:gtp1_pdp_find.isra.0+0x68/0x90 [gtp]
> <SNIP>
> Call Trace:
>  <IRQ>
>  gtp_encap_recv+0xc2/0x2e0 [gtp]
>  ? gtp1_pdp_find.isra.0+0x90/0x90 [gtp]
>  udp_queue_rcv_one_skb+0x1fe/0x530
>  udp_queue_rcv_skb+0x40/0x1b0
>  udp_unicast_rcv_skb.isra.0+0x78/0x90
>  __udp4_lib_rcv+0x5af/0xc70
>  udp_rcv+0x1a/0x20
>  ip_protocol_deliver_rcu+0xc5/0x1b0
>  ip_local_deliver_finish+0x48/0x50
>  ip_local_deliver+0xe5/0xf0
>  ? ip_protocol_deliver_rcu+0x1b0/0x1b0
> 
> gtp_encap_enable() should be called after gtp_hastable_new() otherwise
> *_pdp_find() will access the uninitialized hash table.

Looks good, minor nits:
 
 - is the time zone broken on your system? Looks like your email has
   arrived with the date far in the past, so the build systems have
   missed it. Could you double check the time on your system?

> Fixes: 1e3a3abd8 ("gtp: make GTP sockets in gtp_newlink optional")

The hash looks short, should be at lest 12 chars:

Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")

> Signed-off-by: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>

> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 8e47d0112e5d..6c56337b02a3 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -663,10 +663,6 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
>  
>  	gtp = netdev_priv(dev);
>  
> -	err = gtp_encap_enable(gtp, data);
> -	if (err < 0)
> -		return err;
> -
>  	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
>  		hashsize = 1024;
>  	} else {
> @@ -676,13 +672,18 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
>  	}
>  
>  	err = gtp_hashtable_new(gtp, hashsize);
> +	if (err < 0) {
> +		return err;
> +	}

no need for braces around single statement

> +
> +	err = gtp_encap_enable(gtp, data);
>  	if (err < 0)
>  		goto out_encap;
>  
>  	err = register_netdevice(dev);
>  	if (err < 0) {
>  		netdev_dbg(dev, "failed to register new netdev %d\n", err);
> -		goto out_hashtable;
> +		goto out_encap;
>  	}
>  
>  	gn = net_generic(dev_net(dev), gtp_net_id);
> @@ -693,11 +694,10 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
>  
>  	return 0;
>  
> -out_hashtable:
> -	kfree(gtp->addr_hash);
> -	kfree(gtp->tid_hash);
>  out_encap:
>  	gtp_encap_disable(gtp);

I'd personally move the out_hashtable: label here and keep it, just for
clarity. Otherwise reader has to double check that gtp_encap_disable()
can be safely called before gtp_encap_enable().

Also gtp_encap_disable() could change in the future breaking this
assumption.

> +	kfree(gtp->addr_hash);
> +	kfree(gtp->tid_hash);
>  	return err;
>  }
>  

