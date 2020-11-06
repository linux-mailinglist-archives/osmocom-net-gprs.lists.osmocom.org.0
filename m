Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D87D52A90EB
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  6 Nov 2020 09:03:31 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 77F0218D1FC;
	Fri,  6 Nov 2020 08:03:27 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=kLQY3sFy
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id E8C7D18D0E9
 for <osmocom-net-gprs@lists.osmocom.org>; Fri,  6 Nov 2020 07:48:54 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c16so427156wmd.2
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 05 Nov 2020 23:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WH3QuXQlKWhEUj+bRBQ/dSMtZW/vy09YGu3j1KAb8H0=;
 b=kLQY3sFya+HBpxhe0gsHfL5sBjNFKlxX2HGeCw8FO6pMddNkbyktGUsVuqLJr/btGR
 buJc7MNcBXMxqkOC/wZnhXSAouoSv4w/mG/sU/1d42KMzwihxal65tPBDM5ST+zj9FgG
 N5up7KyBDm1jTgro3/qBmKUNs5trHC/snirkILQAaP5IAzqx0Ssqs9JaAtTf3C+ydACz
 fekCtGUKxoUKGqI7hKbLgvsGMxzujDp5gusWzhV7VD3Tf1bpxYLGBMhy9g1kNltOwYq7
 ASUdmztnRnK1MY+MD8QYi3AxOwo8ToAKB7QQ56oK6DwM+oH9Njg1srf7N0PPraxQgY1M
 7lGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WH3QuXQlKWhEUj+bRBQ/dSMtZW/vy09YGu3j1KAb8H0=;
 b=N+eVuz5nUH6vkG6c3cPnOGDOluHZkJgXaj3PfjdZEOsTtcorNLy+LWkAi2AUBlnCZB
 kwZ9QSkhX/HuD8L64nT3Lz/+lBpzRxrPUwyL2as5/4FRMUxL/Ql4WOjk/GovZAOdvfxJ
 x7VTWSCXCLw+uuYhADeM1iMp9wKu/N+jzGXXrgw0yDY0yPFP4cE31PEG3Ng+Dulq5RxC
 yimn+zUWSiRzHF2ZWiyc1Bo3BQkKIW9g3Z49bw0v4Txe4adWifTpFlCEUBYZQNf+2mIx
 8LVRsEZB+ZNtQ8gAN/IFNlckk1FmxJ36by4H3ZJGdnAP/x4R5ipZMnTZONN5/Pf1D64J
 zy7w==
X-Gm-Message-State: AOAM530Lm/4Mf5pLNBPKnvCl0Yw182ZANBOqiP6J5JXQrLrWURoPQ52E
 7vGRQtNIfwbNcMKg219zHN8=
X-Google-Smtp-Source: ABdhPJx6q/68xSPg7yNNuimz3lvIELcLSvTiiBQ2W/8hZWSBUHN+fOnaVRJxEYQUrCk0aCiPJOSwBg==
X-Received: by 2002:a1c:7dc8:: with SMTP id y191mr1004454wmc.118.1604648934466; 
 Thu, 05 Nov 2020 23:48:54 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:8d7e:efd:393d:7a36?
 (p200300ea8f2328008d7e0efd393d7a36.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:8d7e:efd:393d:7a36])
 by smtp.googlemail.com with ESMTPSA id v12sm752195wro.72.2020.11.05.23.48.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 23:48:53 -0800 (PST)
Subject: Re: [PATCH net-next v2 03/10] tun: switch to net core provided
 statistics counters
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
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <dcb51de1-5e11-7c07-9784-bf3546a1246a@gmail.com>
Date: Fri, 6 Nov 2020 08:48:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201105171446.5f78f1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
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

On 06.11.2020 02:14, Jakub Kicinski wrote:
> On Wed, 4 Nov 2020 15:25:24 +0100 Heiner Kallweit wrote:
>> @@ -1066,7 +1054,7 @@ static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
>>  	return NETDEV_TX_OK;
>>  
>>  drop:
>> -	this_cpu_inc(tun->pcpu_stats->tx_dropped);
>> +	dev->stats.tx_dropped++;
>>  	skb_tx_error(skb);
>>  	kfree_skb(skb);
>>  	rcu_read_unlock();
> 
> This is no longer atomic. Multiple CPUs may try to update it at the
> same time.
> 
> Do you know what the story on dev->rx_dropped is? The kdoc says drivers
> are not supposed to use it but:
> 
> drivers/net/ipvlan/ipvlan_core.c:               atomic_long_inc(&skb->dev->rx_dropped);
> drivers/net/macvlan.c:  atomic_long_inc(&skb->dev->rx_dropped);
> drivers/net/vxlan.c:            atomic_long_inc(&vxlan->dev->rx_dropped);
> 
> Maybe tun can use it, too?
> 
Thanks, yes that should be possible. Here we speak about tx_dropped,
but AFAICS the same applies as for rx_dropped. Will change it accordingly
in a v3.
