Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 9CE7D2AB5C6
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  9 Nov 2020 12:05:19 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id BC3C118F95B;
	Mon,  9 Nov 2020 11:05:17 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=KL1dCFOz
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::644; helo=mail-ej1-x644.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by lists.osmocom.org (Postfix) with ESMTP id 212C518D238
 for <osmocom-net-gprs@lists.osmocom.org>; Fri,  6 Nov 2020 08:27:52 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id o23so717615ejn.11
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 06 Nov 2020 00:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Dxxdg5vykW5t09YvbbZDwBqARbOva9lwcwb08iLB/24=;
 b=KL1dCFOzK5EkGlCiUJnvY/OmmVeFNBiDP7tzgPW/LZ3z+wUJY2h074oY28KKJk9G8O
 LvLkrB/Y7ey5xNEaI+H/n05rdS4HohO+wxxFY5RQJQR+XCPlUCtGKq0sAulgj6oFi1qN
 3W3tJBIie9jBB3xUvgfjY3/ykwtQZcnXN8kd+pSG2047sR4E96znrx9oJLnrUX+Ht8Nm
 T+KC+xNDPC4lHwBFWGQZTUoTGmAZCWQUYyGB5+C0ccEcgedgf+NDrfETmXIFUD9zBjxE
 noSREBDBVHEI5IIxkR8/IVALmcJpk1AbgvnKS8mLw650bP3bEk44RyYRUuqh/Yxm15Nz
 jUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dxxdg5vykW5t09YvbbZDwBqARbOva9lwcwb08iLB/24=;
 b=d325072rxh/v7WxK+gxcAfz9zAx/2YxoikIVP7kN5PB8KydVR87UsLJZQRwW0+I9+U
 09tmDsehNWk3KBOnuvP6LewO3/gk8IbLcJa70xbVCn3+0iDKOoVdDYWr77oEHWaaLspz
 TvhWvynPbfE1WOTUvC6qpqgZwDzWzLUjSXRLHlmiDqxzcltG3lMRuTXNldSF/R7STUNA
 r9xL0sDpZtcOGWCJ2djSiqLW+luLQlKl4On0QsOnSZu04MWVsIGg12aOSiV4iMbRfmLr
 0/qmyJL6aX87G6Ng/vK7p/6BQLLY0a4poiaGl73h3AqWA+ke6mwbBAa7sWektzifxTro
 6wTA==
X-Gm-Message-State: AOAM5318ZE+nw7c+nsPze4DE5WwX+qvg3TfMWX8ejrrc68kD6eMAoY/T
 kIhcg5t2kpXFT+jbas04IZA9zw55mb+wIQ==
X-Google-Smtp-Source: ABdhPJyA57t3TXgYGGKSt0xMLLx0kO1yOoiQcMXncLpqzjt1ZvxZolqzWQ96PQ5gIMyJg0GVjqp+IQ==
X-Received: by 2002:a17:906:1989:: with SMTP id g9mr918597ejd.62.1604651272250; 
 Fri, 06 Nov 2020 00:27:52 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:8d7e:efd:393d:7a36?
 (p200300ea8f2328008d7e0efd393d7a36.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:8d7e:efd:393d:7a36])
 by smtp.googlemail.com with ESMTPSA id o20sm383127eja.34.2020.11.06.00.27.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 00:27:51 -0800 (PST)
Subject: Re: [PATCH net-next v2 03/10] tun: switch to net core provided
 statistics counters
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, Willem de Bruijn <willemb@google.com>
Cc: David Miller <davem@davemloft.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte
 <laforge@gnumonks.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 osmocom-net-gprs@lists.osmocom.org, wireguard@lists.zx2c4.com,
 Steffen Klassert <steffen.klassert@secunet.com>
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
 <30fd49be-f467-95f5-9586-fec9fbde8e48@gmail.com>
 <20201105171446.5f78f1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <dcb51de1-5e11-7c07-9784-bf3546a1246a@gmail.com>
Message-ID: <aea7d78e-2d77-1f8a-70f0-73d46c96b44e@gmail.com>
Date: Fri, 6 Nov 2020 09:27:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <dcb51de1-5e11-7c07-9784-bf3546a1246a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
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

On 06.11.2020 08:48, Heiner Kallweit wrote:
> On 06.11.2020 02:14, Jakub Kicinski wrote:
>> On Wed, 4 Nov 2020 15:25:24 +0100 Heiner Kallweit wrote:
>>> @@ -1066,7 +1054,7 @@ static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
>>>  	return NETDEV_TX_OK;
>>>  
>>>  drop:
>>> -	this_cpu_inc(tun->pcpu_stats->tx_dropped);
>>> +	dev->stats.tx_dropped++;
>>>  	skb_tx_error(skb);
>>>  	kfree_skb(skb);
>>>  	rcu_read_unlock();
>>
>> This is no longer atomic. Multiple CPUs may try to update it at the
>> same time.
>>
>> Do you know what the story on dev->rx_dropped is? The kdoc says drivers
>> are not supposed to use it but:
>>
>> drivers/net/ipvlan/ipvlan_core.c:               atomic_long_inc(&skb->dev->rx_dropped);
>> drivers/net/macvlan.c:  atomic_long_inc(&skb->dev->rx_dropped);
>> drivers/net/vxlan.c:            atomic_long_inc(&vxlan->dev->rx_dropped);
>>
>> Maybe tun can use it, too?
>>
> Thanks, yes that should be possible. Here we speak about tx_dropped,
> but AFAICS the same applies as for rx_dropped. Will change it accordingly
> in a v3.
> 
For rx_dropped and tx_dropped it's easy, however tun also has a per-cpu
counter for rx_frame_errors that is incremented if virtio_net_hdr_to_skb()
fails. Not sure how to deal best with this one.
