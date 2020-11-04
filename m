Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 8E81A2A793B
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:13 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 09E4018C5E6;
	Thu,  5 Nov 2020 08:28:06 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=zx2c4.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=zx2c4.com header.i=@zx2c4.com header.b=YZ0TuiB2
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 400 seconds by postgrey-1.37 at lists.osmocom.org;
 Wed, 04 Nov 2020 19:53:15 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=zx2c4.com
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.95.5.64;
 helo=mail.zx2c4.com; envelope-from=jason@zx2c4.com; receiver=<UNKNOWN> 
Received: from mail.zx2c4.com (mail.zx2c4.com [192.95.5.64])
 by lists.osmocom.org (Postfix) with ESMTP id D7C2A18BCDF
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 19:53:14 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 5fac69ff
 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 4 Nov 2020 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=A3txSEFLmhKqctZhBsIbAmC27m4=; b=YZ0Tui
 B294RZlMp3QLM3Ri3JNXVOGFuWXm59fll9PFQbjflCH4iIqHSuP9Z8petTgmMsoa
 SYbiicDRJ07VU2USeeAHNCxPXmve1Apkqxc2QSqq56SCB5oDAhRL9G8qX5ELPRAl
 54WzpqWLpl51bZ18F02TkblOIVULgtTHAnmPCkQj7KUZEp1nFOpeB7z7821tZ+Cs
 d4R9vFfZ9lrK8MTI1fhIo66OpbCgYcENeFySwtOV6gsfTWVeMOqVYmJVQde4Dmq/
 7KXYw7NydK/I3c7Kc51z6FfX96jcuI8qpyujURHaLwNUi72UpnTdRv8h0yarEddf
 MIBiq3jLEgYQu1Rw==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 88391be6
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 4 Nov 2020 19:44:21 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id h196so19069193ybg.4
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 11:46:32 -0800 (PST)
X-Gm-Message-State: AOAM532LkLcREpHgulMYUSH3WjaUANxKM/0Fkze8GzfSKmLZx6FVWCA9
 qp4XdaTPPmy/VAOqgOzmI3cf21HePqqDr/6N+yE=
X-Google-Smtp-Source: ABdhPJwrKS1Qe6FXigKFOooqaDL+07TCiLCBrWPsMRVnWDv3P9m/KovJNUleFszPuWdGWRHEv9qhIoS2MVT6MLp9zZs=
X-Received: by 2002:a25:4943:: with SMTP id w64mr27765905yba.178.1604519191132; 
 Wed, 04 Nov 2020 11:46:31 -0800 (PST)
MIME-Version: 1.0
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
 <4f731535-2a51-a673-5daf-d9ec2536a8f8@gmail.com>
In-Reply-To: <4f731535-2a51-a673-5daf-d9ec2536a8f8@gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 4 Nov 2020 20:46:20 +0100
X-Gmail-Original-Message-ID: <CAHmME9qkPLwO4+H=+GAvWXDMQz-tHhyK1mmmtmb5Waph7fTiCw@mail.gmail.com>
Message-ID: <CAHmME9qkPLwO4+H=+GAvWXDMQz-tHhyK1mmmtmb5Waph7fTiCw@mail.gmail.com>
Subject: Re: [PATCH net-next v2 07/10] wireguard: switch to dev_get_tstats64
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>, 
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Pablo Neira Ayuso <pablo@netfilter.org>, 
 Harald Welte <laforge@gnumonks.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 osmocom-net-gprs@lists.osmocom.org, 
 WireGuard mailing list <wireguard@lists.zx2c4.com>,
 Steffen Klassert <steffen.klassert@secunet.com>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Nov 4, 2020 at 3:31 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Replace ip_tunnel_get_stats64() with the new identical core fucntion
> dev_get_tstats64().
>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  drivers/net/wireguard/device.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireguard/device.c b/drivers/net/wireguard/device.c
> index c9f65e96c..a3ed49cd9 100644
> --- a/drivers/net/wireguard/device.c
> +++ b/drivers/net/wireguard/device.c
> @@ -215,7 +215,7 @@ static const struct net_device_ops netdev_ops = {
>         .ndo_open               = wg_open,
>         .ndo_stop               = wg_stop,
>         .ndo_start_xmit         = wg_xmit,
> -       .ndo_get_stats64        = ip_tunnel_get_stats64
> +       .ndo_get_stats64        = dev_get_tstats64
>  };
>
>  static void wg_destruct(struct net_device *dev)
> --
> 2.29.2

Looks fine to me.

Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
