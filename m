Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC11A370B1
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:35:04 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 09CBC1E8C74;
	Sat, 15 Feb 2025 20:35:04 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eL21VYTSCaNy; Sat, 15 Feb 2025 20:35:03 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BABFA1E8AAB;
	Sat, 15 Feb 2025 20:34:45 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 907E038A10BF
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 14 Feb 2025 09:23:08 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 667F21E717B
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 14 Feb 2025 09:23:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pZ0trszETjyJ for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 14 Feb 2025 09:23:07 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by mail.osmocom.org (Postfix) with ESMTPS id A603B1E7175
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 14 Feb 2025 09:23:06 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-38f22fe8762so891859f8f.2
        for <osmocom-net-gprs@lists.osmocom.org>; Fri, 14 Feb 2025 01:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739524986; x=1740129786; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k7BNqikEMUFZIk3bGCtvMWc4aGoto03Aq8Yw25jOfXg=;
        b=IJ2ABNXw7u0GKCZwOmHe/s/tTDIZdlN6eXr6Ti5aDG1ySr5QyY/f0wb5rA5Z7PHy0Z
         Snq5+jtNFrq0SSotct1gkW2MTv/2cjmFQd+aM6cvhGAA/JTPlbR8pQ6ujzOkfij0HPyY
         ynL9aZlqfx0cCKH8wAa8F+NQggXWYcAB0ZU2fYIr+vVkEj3jyQbS5LOnKkVjKgXVvq+l
         5aFsDoksVeuUzxqeIwBN0bD/DSU2nGgQL4JAbkY3nmnK1TXD+V/lLNbziQjId4xpzzxl
         rvrfDevSktw3UMjwIusShC/hGULWX3SeoJQ4naCWgUys7obSoSIJCq2yUblFZbMfLb54
         e/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739524986; x=1740129786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k7BNqikEMUFZIk3bGCtvMWc4aGoto03Aq8Yw25jOfXg=;
        b=tiWk6xq/37bFjq2dqowOE5OliLIY4x8fB45dLCNnLi1ovkvPvkiR3DtLulpS/G1eIf
         qdmn/sV0xOQRgUuQ1ABWofX1i/AzIPWUFKrzD3pNyUTJ02poLUFwyICWHZx6ZyE9WBfp
         eNASW9WJq+d3Pz8mCX2duUEO75IvuwVmcTr+2GrlOyxE34HQnXQYIOOGk4R5LyqLX6Oq
         azEBMcVZV7nN1BgisBiLjHixvcrqkgci1vB+Go/L2vVj4xeKp+NgZ0Ej/IhbFWgVZdtk
         x6VxiSD1A7/v/9Bt54QyHdrE3MNYs7tZ/Kz9MjvrIKDGqwZpN3J5pYtyOA+jR18sS9iR
         ldwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMre7EdPIlgx1KwMglgcRLkp8qSD6n2xFlNgEqnZ71Cc559F+UW281hLCCu7GlgVJpjOK/FufA+W4Z7xswm8G2@lists.osmocom.org
X-Gm-Message-State: AOJu0Yy+5gKEaAetb/A+QTKwA7V8POjno2BUytNbpj6Z12uYwl+uNefV
	7w9ETPdTVNjNuR4XHvy0vYH4KXQ7vvT8TbrSVtR7SyiEsBhgfNM2kPE+d8sspro+eLX4lyWffzx
	GdxqLfwjIQ8IsIq8AwBqj3PsTtpg=
X-Gm-Gg: ASbGncu6KxE4S/Ni2oHMZGjrCoEHxxys22E4Jmr/8DVICQAOXFGln8TEDHRFGa+MTzR
	kcIF6OeyCuM7IUVOQvBhenfmAgVAY9Oggpxjqaa/A2CBjL0RSB7Wi0xwuB9+NSSDQ8xvNNGI=
X-Google-Smtp-Source: AGHT+IFc4q5LtCR4oH56B/JnsUWjOnr2P8qnhLaQaAQF/xsTMWgc84lPizP0lboCQWCd1BP4FsSRkQxEWx0I5MF+EcM=
X-Received: by 2002:a05:6000:18ae:b0:38f:23bc:c19e with SMTP id
 ffacd0b85a97d-38f23bcc233mr9719529f8f.29.1739524985787; Fri, 14 Feb 2025
 01:23:05 -0800 (PST)
MIME-Version: 1.0
References: <CABAhCORgi7Jqu=Aigs6Fc8ewG5OshFvcunye03R43C+Z0ojZyw@mail.gmail.com>
 <20250213110004.38415-1-kuniyu@amazon.com>
In-Reply-To: <20250213110004.38415-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Fri, 14 Feb 2025 17:22:28 +0800
X-Gm-Features: AWEUYZmC-_4d4WbO4zj0CDnf9myDuv_5df2UqBnW8RiGwAq7tiZ7QonxxL4s5P4
Message-ID: <CABAhCOSsZqzrsqct+c613TVhGJdubv+_wTDxmjH8z6-PL1Mu2A@mail.gmail.com>
Subject: Re: [PATCH net-next v9 06/11] net: ipv6: Use link netns in newlink()
 of rtnl_link_ops
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HSFJTGHJTVVW4QH4QVTNWI3OVDLEENXI
X-Message-ID-Hash: HSFJTGHJTVVW4QH4QVTNWI3OVDLEENXI
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:38 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/HSFJTGHJTVVW4QH4QVTNWI3OVDLEENXI/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Feb 13, 2025 at 7:00=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.co=
m> wrote:
>
> From: Xiao Liang <shaw.leon@gmail.com>
> Date: Thu, 13 Feb 2025 17:55:32 +0800
> > On Thu, Feb 13, 2025 at 4:37=E2=80=AFPM Xiao Liang <shaw.leon@gmail.com=
> wrote:
> > >
> > > On Thu, Feb 13, 2025 at 3:05=E2=80=AFPM Kuniyuki Iwashima <kuniyu@ama=
zon.com> wrote:
> > > >
> > > [...]
> > > > > diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
> > > > > index 863852abe8ea..108600dc716f 100644
> > > > > --- a/net/ipv6/ip6_gre.c
> > > > > +++ b/net/ipv6/ip6_gre.c
> > > > > @@ -1498,7 +1498,8 @@ static int ip6gre_tunnel_init_common(struct=
 net_device *dev)
> > > > >       tunnel =3D netdev_priv(dev);
> > > > >
> > > > >       tunnel->dev =3D dev;
> > > > > -     tunnel->net =3D dev_net(dev);
> > > > > +     if (!tunnel->net)
> > > > > +             tunnel->net =3D dev_net(dev);
> > > >
> > > > Same question as patch 5 for here and other parts.
> > > > Do we need this check and assignment ?
> > > >
> > > > ip6gre_newlink_common
> > > > -> nt->net =3D dev_net(dev)
> > > > -> register_netdevice
> > > >   -> ndo_init / ip6gre_tunnel_init()
> > > >     -> ip6gre_tunnel_init_common
> > > >       -> tunnel->net =3D dev_net(dev)
> > >
> > > Will remove this line.
> >
> > However, fb tunnel of ip6_tunnel, ip6_vti and sit can have
> > tunnel->net =3D=3D NULL here. Take ip6_tunnel for example:
> >
> > ip6_tnl_init_net()
> >     -> ip6_fb_tnl_dev_init()
> >     -> register_netdev()
> >         -> register_netdevice()
> >             -> ip6_tnl_dev_init()
> >
> > This code path (including ip6_fb_tnl_dev_init()) doesn't set
> > tunnel->net. But for ip6_gre, ip6gre_fb_tunnel_init() does.
>
> Ah, okay.  Then, let's set net in a single place, which would
> be better than spreading net assignment and adding null check
> in ->ndo_init(), and maybe apply the same to IPv4 tunnels ?

Tunnels are created in three ways: a) rtnetlink newlink,
b) ioctl SIOCADDTUNNEL and c) during per netns init (fb).
The code paths don't have much in common, and refactoring
to set net in a single place is somewhat beyond the scope
of this series. But for now I think we could put a general rule:
net should be set prior to register_netdevice().

For IPv4 tunnels, tunnel->net of a) is set in ip_tunnel_newlink().
b) and c) are set in __ip_tunnel_create():
ip_tunnel_init_net() -> __ip_tunnel_create()
ip_tunnel_ctl() -> ip_tunnel_create() -> __ip_tunnel_create()
So net has already been initialized when register_netdevice()
is called.

But it varies for IPv6 tunnels. Some set net for a) or c) while
some don't. This patch has "fixed" for a). As for c) we can
adopt the way of ip6_gre - setting net in *_fb_tunnel_init(),
then remove the check in ndo_init().

Is it reasonable?

Thanks.
