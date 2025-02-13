Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FBAA370AE
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:35:01 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AEE8D1E8BFC;
	Sat, 15 Feb 2025 20:35:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYEjCS_T7IwR; Sat, 15 Feb 2025 20:35:00 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 374971E8A4C;
	Sat, 15 Feb 2025 20:34:43 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C0AC338A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 09:56:11 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 928FE1E5E08
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 09:56:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aBUlJAvlA79w for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 09:56:10 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by mail.osmocom.org (Postfix) with ESMTPS id CEECE1E5E03
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 09:56:10 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so422570f8f.0
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 01:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739440570; x=1740045370; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VgtMhO6+jJX1RjKLdoncmTjEAD+6FhglRm1uezg6DA=;
        b=GJPsY4ieio5QJpBVUzGFfq+7KOqdrEzPF76+Ma5BKwucbTpX2yi1JRZoIObSUI+ik8
         U02DwlhVkX1kv/cHvGpcYLmHR1EsUAXcbJsHORDWPitL6nVjxdSwlVACF9lJ0FxobC+c
         jYKhW7J4NmSfJr09MmGKtHekjnWbl6Tkwk30ZJJR7gHRGprWWIVyfWZ/Exmywtqsi5OP
         ZHwNvgywTzJ84reNMdqFYQkdxc+bl6QJnDGIMhfxW3+3u678t6o8PwPF+UI0k0naijTV
         M8OikmEmHcvF9O9u7a2Bjl9OGVxXqCzyhbPjoDo+o7jMXCxT/SfjDo58RnDzLzYPo8LR
         9qIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739440570; x=1740045370;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6VgtMhO6+jJX1RjKLdoncmTjEAD+6FhglRm1uezg6DA=;
        b=X9yo7s5QWi3+Mn9Vkn52xQIAJcm61WF/0LP6eFjk/f5/5H/iWpQ13qgEiwCZgeG9nr
         n+pPy/gwmYMt+vLGAsRWN5cTaCE63HIPdIyIUC9fbig7JCccQdcutdDpZwYk72yuazeC
         hfidOHAy8mgWCrLnesORuIlVh1Gpw7K/RsPm3wp/PtCA9IT5G0IPjgfgw8nXw7ya/QzT
         MFZv3nAQOmREYwsirKeiKFmE7hY5twRajAy3339PqDBPKlh7ayPduS+VQO02JSQ6Wgny
         CGiT1U/gpmsG3PXgV7gSQAfmnuZpl4vH+1HSCW7M3zMIaFiT71JxsEbCfJibwA5e1+wX
         Stug==
X-Forwarded-Encrypted: i=1; AJvYcCUkcsC5JODgKgj1Oh8AtSA2AAY/+SjhQSz/Id4rBNAGOwokibkjUInFqHNxoP/RtuAcz8gXfeM5tt+lhPl8ztwX@lists.osmocom.org
X-Gm-Message-State: AOJu0Yw9aaEg8DWHvCSpmeqpFMcGh9Ri4i2xv4O7y12fO3sBzleAX+gO
	CO3Ipf/epdw+xO3YQXE1/0vdx9vtrAZFmiCWfSeJR7tjh9b5grR7ohkFNXHw2aNmx/IiKPaat/b
	oTrB/SuFbU2Dzq/zGfkqnWln/Y3U=
X-Gm-Gg: ASbGncupGG9pxnWyM2ylZ8nHpic4KzzjKbn18QG6kqbR7KHPI33OwiF4VTR1uHXPjDd
	T7Oa+njf7y22M5AEiBTmnASk4xDjnxunOZn0ZBvPILoS3M+GDYhcIQyQkZJMfniiGiYxwNc0=
X-Google-Smtp-Source: AGHT+IF4vz9ZMNWiLlURtMBrw7f64+VQaaApf4FQsQ85yq8rGSoIhlhaKmw+1l1LVh0uOeuQn3pwG9KU0hl60Rc/heo=
X-Received: by 2002:a5d:5889:0:b0:38f:24f9:8bac with SMTP id
 ffacd0b85a97d-38f24f9912fmr1885857f8f.23.1739440569419; Thu, 13 Feb 2025
 01:56:09 -0800 (PST)
MIME-Version: 1.0
References: <20250210133002.883422-7-shaw.leon@gmail.com> <20250213070533.9926-1-kuniyu@amazon.com>
 <CABAhCOT8sCV4RgBWwfYjCw2xoZbdiYG8yuWReigx-u5DibTaiA@mail.gmail.com>
In-Reply-To: <CABAhCOT8sCV4RgBWwfYjCw2xoZbdiYG8yuWReigx-u5DibTaiA@mail.gmail.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 13 Feb 2025 17:55:32 +0800
X-Gm-Features: AWEUYZkW9l6r7KSPGBGbQx_PCRCw6eQRHHUgG_KYRCauok2SpPFULcU0b728Vqw
Message-ID: <CABAhCORgi7Jqu=Aigs6Fc8ewG5OshFvcunye03R43C+Z0ojZyw@mail.gmail.com>
Subject: Re: [PATCH net-next v9 06/11] net: ipv6: Use link netns in newlink()
 of rtnl_link_ops
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YLX7FALWKK4J5QORUJIDOCE6SBI67BVH
X-Message-ID-Hash: YLX7FALWKK4J5QORUJIDOCE6SBI67BVH
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:38 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/YLX7FALWKK4J5QORUJIDOCE6SBI67BVH/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Feb 13, 2025 at 4:37=E2=80=AFPM Xiao Liang <shaw.leon@gmail.com> wr=
ote:
>
> On Thu, Feb 13, 2025 at 3:05=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.=
com> wrote:
> >
> [...]
> > > diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
> > > index 863852abe8ea..108600dc716f 100644
> > > --- a/net/ipv6/ip6_gre.c
> > > +++ b/net/ipv6/ip6_gre.c
> > > @@ -1498,7 +1498,8 @@ static int ip6gre_tunnel_init_common(struct net=
_device *dev)
> > >       tunnel =3D netdev_priv(dev);
> > >
> > >       tunnel->dev =3D dev;
> > > -     tunnel->net =3D dev_net(dev);
> > > +     if (!tunnel->net)
> > > +             tunnel->net =3D dev_net(dev);
> >
> > Same question as patch 5 for here and other parts.
> > Do we need this check and assignment ?
> >
> > ip6gre_newlink_common
> > -> nt->net =3D dev_net(dev)
> > -> register_netdevice
> >   -> ndo_init / ip6gre_tunnel_init()
> >     -> ip6gre_tunnel_init_common
> >       -> tunnel->net =3D dev_net(dev)
>
> Will remove this line.

However, fb tunnel of ip6_tunnel, ip6_vti and sit can have
tunnel->net =3D=3D NULL here. Take ip6_tunnel for example:

ip6_tnl_init_net()
    -> ip6_fb_tnl_dev_init()
    -> register_netdev()
        -> register_netdevice()
            -> ip6_tnl_dev_init()

This code path (including ip6_fb_tnl_dev_init()) doesn't set
tunnel->net. But for ip6_gre, ip6gre_fb_tunnel_init() does.
