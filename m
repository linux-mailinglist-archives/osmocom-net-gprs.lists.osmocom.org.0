Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id E256E9FF13E
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:12 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4E8711B6739;
	Tue, 31 Dec 2024 18:40:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t6objqLt4KBN; Tue, 31 Dec 2024 18:40:11 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 32B471B66E3;
	Tue, 31 Dec 2024 18:40:08 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E664938A776F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 09:27:56 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C3B251A76E2
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 09:27:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BemvmwAIQ9OQ for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Dec 2024 09:27:56 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.osmocom.org (Postfix) with ESMTPS id D84391A76DD
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 09:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733995673;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YQDLEldT18Fc0IWLf1h2y9YzeGe3KbZy7EnSjmgH5Ac=;
	b=c87EtkV6eYaUI8u387TMDiiFfhEPpYXq+7Js0ftv7XrrdVSAewFJozVdeBZipmXtche6+F
	lxsaMfZizWIo4ZpPWuLhJAcFhK37BMzxZ8vXmyeMC+Kvs5pqFJbsmOh13vs0vZxH2kXCWi
	M8Ns+xqwNWwAPX8HuKvFjRktYTnBV9Q=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590--PfC3riiPLigzz8lKunfmA-1; Thu, 12 Dec 2024 04:27:52 -0500
X-MC-Unique: -PfC3riiPLigzz8lKunfmA-1
X-Mimecast-MFC-AGG-ID: -PfC3riiPLigzz8lKunfmA
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4361efc9dc6so2285295e9.3
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 01:27:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733995671; x=1734600471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YQDLEldT18Fc0IWLf1h2y9YzeGe3KbZy7EnSjmgH5Ac=;
        b=oRyQH8TpbpRuSm4mNMLv8CZd6MzFqLlj8QErK1aV0k2iIT1twFDWa+XNQ7rw7cqh4p
         fj13ssgdcKjmFQpFQ57QMiQUqSbZkyB+kHB61nl+5isTQIuaCqQrpOdK1dcvmcp/LuIc
         tSx0dVpjBtuiOi+qF4NrEfr9+P+Bo4ImMwCIUYVw8Sn9YeaxW7rDJsTc4miPSQLih01t
         +Iss8BxsLmP2z8yG2tqg5CxyMuj8VgSDDleYMxl9PvwTlTo5AoM3B5d9pTGh+indTnUb
         udUlEw+vYMdey4x6b3cRDrMRgWuq8MKDZc45ZOl4tFGaEzt5GWpDMStwRhjgEUxmHi+Q
         LMNg==
X-Forwarded-Encrypted: i=1; AJvYcCUhctw9K0sfUEuzXhUDMV680HGJTsncXNqF9DEEyLHBtI4Csf+21OWHxCLJVkHnXQR6Ko0DxJ+BIDXY4wBaRFTo@lists.osmocom.org
X-Gm-Message-State: AOJu0YxrlAjlDN7b61r4I00hJJ20+k8YtipxN9BfvisZbEzZGB8UVbOJ
	MkN0vhP9uomIBYDW6SjFaqbA7TcX+ay9PAILs+AKlTX9JbSp5icHUgD9XmupSU9tDRsfFspNLUf
	WaLG0ulQvAwrTRc8ChA9rZwC67zgRl+U1PahYlLwXODWdtRKRaGz1J4NFnTXm378rBYzZDw==
X-Gm-Gg: ASbGncvCIZi/UYTlKj9g+APQLOS0ZX4OleP6nNE3bToMP8uv5XzQ0KAgMD7CE6VpvPf
	rb5QXTeex44yEFYk06QKqqBskoZOaCrpRgZoilTYGoZVMSCmzLLbYE5SxmTui0t3yH+rCmMsVdz
	62jNkUcchzOa6Y97kf1YvFq8rqgc1SUIzsKlbcaw6Z26GMUzoL0z/VHjp5hHaypQjZZuUxK9rTh
	9v8PVjETLexE//WZgdTEGd52tUp8torm7gPNc/oiKK/Vs0+JJ03wdY+IowHwuwHwkB2BlMytRNx
	9WKXY5c=
X-Received: by 2002:a05:600c:548a:b0:434:f609:1afa with SMTP id 5b1f17b1804b1-43622823a9bmr23141995e9.4.1733995671082;
        Thu, 12 Dec 2024 01:27:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGfecq/fvmxWbZmLr9mwKSJq21xM6RVRZ1wSoCEsNQjvNePz0TX5CuMdaiXcW+mTqnLDcuA8w==
X-Received: by 2002:a05:600c:548a:b0:434:f609:1afa with SMTP id 5b1f17b1804b1-43622823a9bmr23141765e9.4.1733995670687;
        Thu, 12 Dec 2024 01:27:50 -0800 (PST)
Received: from [192.168.88.24] (146-241-48-67.dyn.eolo.it. [146.241.48.67])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42a3sm10746345e9.28.2024.12.12.01.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 01:27:50 -0800 (PST)
Message-ID: <2b89667d-ccd6-40b7-b355-1c71e159d14f@redhat.com>
Date: Thu, 12 Dec 2024 10:27:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v5 3/5] rtnetlink: Decouple net namespaces in
 rtnl_newlink_create()
To: Xiao Liang <shaw.leon@gmail.com>, netdev@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>,
 Jakub Kicinski <kuba@kernel.org>, Donald Hunter <donald.hunter@gmail.com>
References: <20241209140151.231257-1-shaw.leon@gmail.com>
 <20241209140151.231257-4-shaw.leon@gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20241209140151.231257-4-shaw.leon@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mzAjbw34HkO-xrepJzgj92S3-N6BEJJdeCjfy9Fmt5A_1733995671
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-MailFrom: pabeni@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PROXYY43LXOVQ5Q635MBRAWJ5KHR57KQ
X-Message-ID-Hash: PROXYY43LXOVQ5Q635MBRAWJ5KHR57KQ
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PROXYY43LXOVQ5Q635MBRAWJ5KHR57KQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 12/9/24 15:01, Xiao Liang wrote:
> There are 4 net namespaces involved when creating links:
> 
>  - source netns - where the netlink socket resides,
>  - target netns - where to put the device being created,
>  - link netns - netns associated with the device (backend),
>  - peer netns - netns of peer device.
> 
> Currently, two nets are passed to newlink() callback - "src_net"
> parameter and "dev_net" (implicitly in net_device). They are set as
> follows, depending on netlink attributes.
> 
>  +------------+-------------------+---------+---------+
>  | peer netns | IFLA_LINK_NETNSID | src_net | dev_net |
>  +------------+-------------------+---------+---------+
>  |            | absent            | source  | target  |
>  | absent     +-------------------+---------+---------+
>  |            | present           | link    | link    |
>  +------------+-------------------+---------+---------+
>  |            | absent            | peer    | target  |
>  | present    +-------------------+---------+---------+
>  |            | present           | peer    | link    |
>  +------------+-------------------+---------+---------+
> 
> When IFLA_LINK_NETNSID is present, the device is created in link netns
> first. This has some side effects, including extra ifindex allocation,
> ifname validation and link notifications. There's also an extra step to
> move the device to target netns. These could be avoided if we create it
> in target netns at the beginning.
> 
> On the other hand, the meaning of src_net is ambiguous. It varies
> depending on how parameters are passed. It is the effective link or peer
> netns by design, but some drivers ignore it and use dev_net instead.
> 
> This patch refactors netns handling by packing newlink() parameters into
> a struct, and passing source, link and peer netns as is through this
> struct. Fallback logic is implemented in helper functions -
> rtnl_newlink_link_net() and rtnl_newlink_peer_net(). If is not set, peer
> netns falls back to link netns, and link netns falls back to source netns.
> rtnl_newlink_create() now creates devices in target netns directly,
> so dev_net is always target netns.
> 
> For drivers that use dev_net as fallback of link_netns, current behavior
> is kept for compatibility.
> 
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

I must admit this patch is way too huge for me to allow any reasonable
review except that this has the potential of breaking a lot of things.

I think you should be splitted to make it more palatable; i.e.
- a patch just add the params struct with no semantic changes.
- a patch making the dev_change_net_namespace() conditional on net !=
tge_net[1]
- many per-device patches creating directly the device in the target
namespace.
- a patch reverting [1]

Other may have different opinions, I'd love to hear them.

> diff --git a/drivers/net/amt.c b/drivers/net/amt.c
> index 98c6205ed19f..2f7bf50e05d2 100644
> --- a/drivers/net/amt.c
> +++ b/drivers/net/amt.c
> @@ -3161,14 +3161,17 @@ static int amt_validate(struct nlattr *tb[], struct nlattr *data[],
>  	return 0;
>  }
>  
> -static int amt_newlink(struct net *net, struct net_device *dev,
> -		       struct nlattr *tb[], struct nlattr *data[],
> -		       struct netlink_ext_ack *extack)
> +static int amt_newlink(struct rtnl_newlink_params *params)
>  {
> +	struct net_device *dev = params->dev;
> +	struct nlattr **tb = params->tb;
> +	struct nlattr **data = params->data;
> +	struct netlink_ext_ack *extack = params->extack;
> +	struct net *link_net = rtnl_newlink_link_net(params);
>  	struct amt_dev *amt = netdev_priv(dev);
>  	int err = -EINVAL;

Minor nit: here and and many other places, please respect the reverse
xmas tree order.

Thanks,

Paolo

