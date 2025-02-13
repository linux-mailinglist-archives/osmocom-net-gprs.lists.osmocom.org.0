Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F09A370AA
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:56 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D46CA1E8B9B;
	Sat, 15 Feb 2025 20:34:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FtRxdhco6ClV; Sat, 15 Feb 2025 20:34:56 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BED721E89F8;
	Sat, 15 Feb 2025 20:34:39 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 58FB238A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:28:00 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 36B0F1E5C93
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:28:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ee5noKrRlWvl for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 08:27:59 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by mail.osmocom.org (Postfix) with ESMTPS id 713C11E5C8B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:27:58 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so3786395e9.0
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 00:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739435278; x=1740040078; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CYDCewrdvYreNRJlqbHeSMs4C/POtyIRcHlnfcP0ZCY=;
        b=kZ3QVNY1J4xADZgXLjxi/+oLp7JhAZjBNiofy8g3EqZEfs3UmhiaW1D8h+4V9HfHZw
         9Ym9IMwRIEPUiOm1/0fNo5lRg8Ur1R4caSa6ZjX0V8lwvPsd79v9/X8sCjJGz8ljFm5y
         54qr8yYbzduVCgL9IQF6hQrMUjr+BgHbm9gtj+cyjof6x74s3hcf0NQa96zrmjFQgDjx
         lu0zGq5Iippfz/bC+flq8Hjwp8fn+tGbS2DCU1leJrqZPjuhbvTAKbekA5cv0G+0lZEl
         lhjSq9+XoHbKJBTonSaZskFDPdsneH2JLAVc4H8guFSrq+iSXoaHBYYYvkTCtg2koS4w
         Xa9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739435278; x=1740040078;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CYDCewrdvYreNRJlqbHeSMs4C/POtyIRcHlnfcP0ZCY=;
        b=D9Dn5BAvb+q/VTZm5dKo+BbbFQyVK+1Jk9EsTiKo0evkxcnEwb89eYVG3UeicZHQta
         KiuPoH8u9F+LMylUrbOa/fFVRLNyZRAlDt8uKmh9/7Nv2v7nf2Nx04Ch3qSoJJwzsKk1
         9KOV8IfL2+yR+ZDlW2q5KEYsEDOuYMynIG5/ugzmC57d7q4l76PodxDqNnUi/A4OzJej
         g+pFm0Dd2SL6jBEBVPw7cwR9tvTpE6njtd6jfkyYYe03s4tZk7LD4EjBwbTxmqhNC3iH
         4DN+B3XaHxcYG3DR5IX3Cneq7HtU+grzB99ghgp0hrGMAa9gecqjDFlQHsE4XG+k0RDh
         CVFg==
X-Forwarded-Encrypted: i=1; AJvYcCWm0Q7R5JRxbJ6Kijb5g8KwnqPSvksMLkLmmt4wQ7qBFffKLyD7D6IhrEqONZ1qXWwiI1/zg4/UjkC23TfoqVP7@lists.osmocom.org
X-Gm-Message-State: AOJu0YwkAxoAjE9UDFYMtmpftT/TU/6ArtUotjSbkDx+BA1asBGB0sR3
	qMF0YMJuSQOB9cGgcfcDM5DDQZ4uUpGzb3vQ1Rqv7kOxP0X2BB3tMptKNShSsh3uRf7RVUcp8AS
	wWJEUpK8aw1DlgsK+GnieC8brW5s=
X-Gm-Gg: ASbGncvXlav+Pb1RPgdbYGnQrVgUfeKgjxL+KH9f3s5W7ycHaS3GTamLCNR6Z03lEsS
	jKMFRxw/YBjeJzN+A+Z9YsqD3mNH3pKHCftul7+iLZl0hlraQbbjUvuc4PdXNQqQ9AYep46Y=
X-Google-Smtp-Source: AGHT+IGZE6zJIuhM6pmlASWXo0USdC2hFnASTias2WRNOVzNleb2xd7k0p6fviBFvki3FKkZ15YNMXus/cLozeOxCp8=
X-Received: by 2002:a5d:598e:0:b0:38f:21ce:aa28 with SMTP id
 ffacd0b85a97d-38f21ceb0famr3670345f8f.36.1739435278200; Thu, 13 Feb 2025
 00:27:58 -0800 (PST)
MIME-Version: 1.0
References: <20250210133002.883422-6-shaw.leon@gmail.com> <20250213062031.4547-1-kuniyu@amazon.com>
In-Reply-To: <20250213062031.4547-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 13 Feb 2025 16:27:21 +0800
X-Gm-Features: AWEUYZkYMDLgFWGQwQihDPwSk4qrLNJu_sLyRJOyUa3GWsERW-M3HJO2WaC6w5g
Message-ID: <CABAhCOSqruMoMTg_=6Apo=gvnfe1j2fptADzoi=Gb8cdJqhgVw@mail.gmail.com>
Subject: Re: [PATCH net-next v9 05/11] net: ip_tunnel: Use link netns in
 newlink() of rtnl_link_ops
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7IV2ZYJPCVKHZN42R66GNVAUSOXYEF7U
X-Message-ID-Hash: 7IV2ZYJPCVKHZN42R66GNVAUSOXYEF7U
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:37 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7IV2ZYJPCVKHZN42R66GNVAUSOXYEF7U/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Feb 13, 2025 at 2:20=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.co=
m> wrote:
>
> From: Xiao Liang <shaw.leon@gmail.com>
> Date: Mon, 10 Feb 2025 21:29:56 +0800
> > When link_net is set, use it as link netns instead of dev_net(). This
> > prepares for rtnetlink core to create device in target netns directly,
> > in which case the two namespaces may be different.
> >
> > Convert common ip_tunnel_newlink() to accept an extra link netns
> > argument. Don't overwrite ip_tunnel.net in ip_tunnel_init().
>
> Why... ?  see a comment below.
>
>
> [...]
> > diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
> > index 1fe9b13d351c..26d15f907551 100644
> > --- a/net/ipv4/ip_gre.c
> > +++ b/net/ipv4/ip_gre.c
> > @@ -1413,7 +1413,8 @@ static int ipgre_newlink(struct net_device *dev,
> >       err =3D ipgre_netlink_parms(dev, data, tb, &p, &fwmark);
> >       if (err < 0)
> >               return err;
> > -     return ip_tunnel_newlink(dev, tb, &p, fwmark);
> > +     return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, =
tb, &p,
>
> This is duplicate at all call sites, let's move it into
> ip_tunnel_newlink() by passing params.
>

Existing tunnels use `params->link_net ? : dev_net(dev)` for
backward compatibility. But I think we can leave the choice of netns
to future tunnel drivers because rtnl_newlink_link_net() is preferred
in general.

>
> > +                              fwmark);
> >  }
> >
> >  static int erspan_newlink(struct net_device *dev,
> >
> >
> > diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
> > index 09b73acf037a..618a50d5c0c2 100644
> > --- a/net/ipv4/ip_tunnel.c
> > +++ b/net/ipv4/ip_tunnel.c
> > @@ -1213,11 +1213,11 @@ void ip_tunnel_delete_nets(struct list_head *ne=
t_list, unsigned int id,
> >  }
> >  EXPORT_SYMBOL_GPL(ip_tunnel_delete_nets);
> >
> > -int ip_tunnel_newlink(struct net_device *dev, struct nlattr *tb[],
> > -                   struct ip_tunnel_parm_kern *p, __u32 fwmark)
> > +int ip_tunnel_newlink(struct net *net, struct net_device *dev,
> > +                   struct nlattr *tb[], struct ip_tunnel_parm_kern *p,
> > +                   __u32 fwmark)
> >  {
> >       struct ip_tunnel *nt;
> > -     struct net *net =3D dev_net(dev);
> >       struct ip_tunnel_net *itn;
> >       int mtu;
> >       int err;
> > @@ -1326,7 +1326,9 @@ int ip_tunnel_init(struct net_device *dev)
> >       }
> >
> >       tunnel->dev =3D dev;
> > -     tunnel->net =3D dev_net(dev);
> > +     if (!tunnel->net)
> > +             tunnel->net =3D dev_net(dev);
>
> Isn't tunnel->net always non-NULL ?
>
> ip_tunnel_newlink
> -> netdev_priv(dev)->net =3D net
> -> register_netdevice(dev)
>   -> dev->netdev_ops->ndo_init(dev)
>     -> ip_tunnel_init(dev)
>       -> netdev_priv(dev)->net =3D dev_net(dev)

Didn't find a path that can leave tunnel->net to NULL either.
I think we can remove this.

Thanks.
