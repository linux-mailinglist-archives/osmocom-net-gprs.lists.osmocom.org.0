Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 84686AD85FF
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 13 Jun 2025 10:50:45 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 06148268C91;
	Fri, 13 Jun 2025 08:50:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6tJXe4VyO0J; Fri, 13 Jun 2025 08:50:44 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 40E07268C7B;
	Fri, 13 Jun 2025 08:50:43 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2589838ADD01
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 10:28:24 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 01AF726834D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 10:28:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AVpsMNQRZyaM for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Jun 2025 10:28:23 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by mail.osmocom.org (Postfix) with ESMTPS id 2AFA7268348
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 10:28:22 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5534edc646dso836107e87.1
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 03:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1749724102; x=1750328902; darn=lists.osmocom.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jdrRzDXFOwHG448jvig1wt2IVm7ZK5vVmOxfUEc3Mfw=;
        b=y2EvbHZTV1Avfu3y9c70WieHhADJ6W1d4Rc83MHc7IFismXRk9d38whSv9o1cXL9Sn
         0Pzzp/VorinPhCIpQ3hjumrldszAGlYakQUVNkDalCzM/ZuuENpgwKAm3iJr2WWZuQpo
         sg7CCuNv47xRX1qiz/vp8OLsC5aui4ZaZ+PYWHgVYea/7aEb9oYEi1DzBx0HX1Hg5HtG
         oLJtGmsOYx3isMQAM3shZq++8LSUQ7Dn0sVGxeg4H9GZRqN7DIa8EpH03xj3+DVQnbM+
         l+x2V+z0BR1ptRsTzYxDOiKi8900q5bd9lkkYsyQ9dsTVafEWwBK0Sh7n8o2FJGq+xqx
         +fVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749724102; x=1750328902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jdrRzDXFOwHG448jvig1wt2IVm7ZK5vVmOxfUEc3Mfw=;
        b=VZ7GzcXDs5MHJoN7qSg8Cn3miu0OSa0fLBspqR6og5htLq8bWHyAGQSFUIi9M727lB
         nz6MszGzterEkXtirULojKAZxpOWgSmLaRndX7wsL1cd9xlBtALvUBbOsKJnSUbB4pL3
         6ewchlPxQVDBTREzlbMtRzz8sb5VUFNurEthsyg7o0iLK2Bum4Sj7OFOP3kWAkOqC44E
         U8aF0lEeIko7+s7zM1iwKebK199UJ7xzR411kbyC7nlK02dd8ZDvTZxBFFbmOfQBmrqJ
         oQsL8qHrqETEEVGmSJYGWdrFQBy8qo5xB3uza9Hq74qYbbbP26UgoikZmkkSE4QrzjDr
         UOLw==
X-Forwarded-Encrypted: i=1; AJvYcCXF6pxt9K4ntyT7Oye08rDH2Bnxom8m7LL7mS24ZZ+4fQnhDOQ2/xhFOj+mFbljwi5nVWnjkXyAMsaIglCdEuSF@lists.osmocom.org
X-Gm-Message-State: AOJu0Yx0Y8FdniMdc6+dHnc0FfVLT+xkOkcGm+gckFqkor98m61CgZmM
	h6ImASVbGKKMP8UCPGht6l35DzAiq1OjtZ1IGd21thS6tZdUNQUWQKXJ0++Otspjlfw=
X-Gm-Gg: ASbGnct1w0uAvyEWBK1+AXvyLK0ws9ElMUcOfkMdAqU0Tzu/JXdRoQPHX9XeXlyI2Ac
	3PVmqTNGc1nXJWNEGcYJOPnoUAgPYE4Q3wUPT5r3LheafwL4WhEYE/2PbtVUvZ5eQwP8PHrCvdL
	BjF5OUKq1nnztyYZ0DEik+Jsj8FSQAfRjdmKQ7kLK6+t7EIojtkd+bkNXru+J4JxjEalrBbdGMJ
	FIlrLzyH8ICwBsepnRZX4w4ZEnunfbEfW2IsCb2PxqaoigyN9TvkxQjrJLzl7wcxTbG1McqJnf6
	9RpnoRxIUbMHzj1PlJil5MT8Fr/GPPiR+E8X6oF7mMOEsvSHmp6jIHnDV5Rce3nYl+erDE1nneI
	L8LlRO6m0V6u+e06cD1T09E+9c30SFWTYqZJTyx2lEg==
X-Google-Smtp-Source: AGHT+IGMFEbW3kewoiFhwiIdhmG/b2bgCVSsV0qnpHHNcqp+03mzW/XSSQXifX6p6Cue4i8glJvBHQ==
X-Received: by 2002:a05:6512:4004:b0:54f:c6b0:4b67 with SMTP id 2adb3069b0e04-553a5453064mr1024275e87.4.1749724101957;
        Thu, 12 Jun 2025 03:28:21 -0700 (PDT)
Received: from [100.115.92.205] (176.111.185.210.kyiv.nat.volia.net. [176.111.185.210])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac13f0besm68262e87.84.2025.06.12.03.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 03:28:21 -0700 (PDT)
Message-ID: <def0704c-38ed-42ac-8287-503ebbb61115@blackwall.org>
Date: Thu, 12 Jun 2025 13:28:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 01/14] net: ipv4: Add a flags argument to
 iptunnel_xmit(), udp_tunnel_xmit_skb()
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, David Ahern <dsahern@gmail.com>,
 netdev@vger.kernel.org
References: <cover.1749499963.git.petrm@nvidia.com>
 <c77a0c8e4ada63a0a69d7011fb901703ebf1f09a.1749499963.git.petrm@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <c77a0c8e4ada63a0a69d7011fb901703ebf1f09a.1749499963.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: razor@blackwall.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VXIB7FOUJHC4PDLVWM5MZ32TVC3DGERN
X-Message-ID-Hash: VXIB7FOUJHC4PDLVWM5MZ32TVC3DGERN
X-Mailman-Approved-At: Fri, 13 Jun 2025 08:50:36 +0000
CC: Simon Horman <horms@kernel.org>, Ido Schimmel <idosch@nvidia.com>, mlxsw@nvidia.com, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org, Andrew Lunn <andrew+netdev@lunn.ch>, Taehee Yoo <ap420073@gmail.com>, Antonio Quartulli <antonio@openvpn.net>, "Jason A. Donenfeld" <Jason@zx2c4.com>, wireguard@lists.zx2c4.com, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, linux-sctp@vger.kernel.org, Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VXIB7FOUJHC4PDLVWM5MZ32TVC3DGERN/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 6/9/25 23:50, Petr Machata wrote:
> iptunnel_xmit() erases the contents of the SKB control block. In order to
> be able to set particular IPCB flags on the SKB, add a corresponding
> parameter, and propagate it to udp_tunnel_xmit_skb() as well.
> 
> In one of the following patches, VXLAN driver will use this facility to
> mark packets as subject to IP multicast routing.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
> CC: Pablo Neira Ayuso <pablo@netfilter.org>
> CC: osmocom-net-gprs@lists.osmocom.org
> CC: Andrew Lunn <andrew+netdev@lunn.ch>
> CC: Taehee Yoo <ap420073@gmail.com>
> CC: Antonio Quartulli <antonio@openvpn.net>
> CC: "Jason A. Donenfeld" <Jason@zx2c4.com>
> CC: wireguard@lists.zx2c4.com
> CC: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
> CC: linux-sctp@vger.kernel.org
> CC: Jon Maloy <jmaloy@redhat.com>
> CC: tipc-discussion@lists.sourceforge.net
> 
>   drivers/net/amt.c              |  9 ++++++---
>   drivers/net/bareudp.c          |  4 ++--
>   drivers/net/geneve.c           |  4 ++--
>   drivers/net/gtp.c              | 10 ++++++----
>   drivers/net/ovpn/udp.c         |  2 +-
>   drivers/net/vxlan/vxlan_core.c |  2 +-
>   drivers/net/wireguard/socket.c |  2 +-
>   include/net/ip_tunnels.h       |  2 +-
>   include/net/udp_tunnel.h       |  2 +-
>   net/ipv4/ip_tunnel.c           |  4 ++--
>   net/ipv4/ip_tunnel_core.c      |  4 +++-
>   net/ipv4/udp_tunnel_core.c     |  5 +++--
>   net/ipv6/sit.c                 |  2 +-
>   net/sctp/protocol.c            |  3 ++-
>   net/tipc/udp_media.c           |  2 +-
>   15 files changed, 33 insertions(+), 24 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

