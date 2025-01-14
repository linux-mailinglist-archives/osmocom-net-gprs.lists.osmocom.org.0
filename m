Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2A9A188A7
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:30 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 230FF1D3167;
	Tue, 21 Jan 2025 23:58:30 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYusWL7PdqfB; Tue, 21 Jan 2025 23:58:29 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A74141D308A;
	Tue, 21 Jan 2025 23:58:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CB6C038A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 09:03:19 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id ABA631C55F7
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 09:03:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XeGbE97sNPvP for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 14 Jan 2025 09:03:19 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by mail.osmocom.org (Postfix) with ESMTPS id 0B1091C55F2
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 09:03:18 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-436345cc17bso37198395e9.0
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 01:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736845398; x=1737450198; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJdpc5af8GraPbTvgj2FYJk8F44uMY7sTK/kVSc+LHs=;
        b=SPGPEV5TPrLVFBzJLSAIgOY1PFm+zy9hztatqjBhl/DpSETQOSNaOGL+hyA1mFzDBQ
         zwP2xV/p5PQ9hziLqE+QX/VK1UGdxv17Fu3RDfNvWA5++BPurOdyiOA1l8a3SGOZUzeR
         WiDBSRHg9hAUMNLraw7qTm3wjq3ndknHckkWn3iMKjUWQo17xvbMJsDk7mvdosHkrMAv
         jXh/BQ/8WMP7vQRbaW28JXwCgKo/HTYBtRWpoaKYvPC5jNLBxBhn2Vtokn72OZo/HD7j
         MnMNBCTU8Pu478zoUL2W/mseY4aYg5ip6BGHYz5hPr/sXrmuJ46Ha+1Wbr8FLy6oDSFX
         JVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845398; x=1737450198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RJdpc5af8GraPbTvgj2FYJk8F44uMY7sTK/kVSc+LHs=;
        b=TotKsmObPT+rb+1vWV1vxGyjaJMqs4wFSc+xb7aawX53xEt9/gfSXGiweM4SJdJlsq
         1nFvA0MHhwlKZL+AOpBixS6nKjtmpDDJWdvtgxCdO8sUkMgZ0rH7sUHdeoIVaaato4nw
         hjONs7ro0S4+05CTgYyb/KRKHQzjQCF+16vEdgVEYVVFSKm290fixHGEjwywW/X3igGI
         qHutaLeAbZ1ydZkXGW6CeZHV2hZcYcEobW7clR8xBu44yryBW69ji+gSf3+4b+b9LrqO
         m3yQZ4YL/+dlPXAckQAJwull5NADoBUnr/y5/J/fUfyKCr0G0GPYBNd8CWyUbkF1EzYX
         tc8w==
X-Forwarded-Encrypted: i=1; AJvYcCUPGBuATEJhN5NSpOO6Nwlos2uBVUlyMU2kgxEb6k9sKS9CR5P8DfppClBJb76dO/UR2YIzxCjPk9f0a5LGwWum@lists.osmocom.org
X-Gm-Message-State: AOJu0YzPR8elXBg6gb+VZy6M0AueJCyPMXGpVoHrxl5JG9SsDSLgEBo6
	UnU6+Q/Bnpus/6zpvSOzScSqZ3eV0/NI8HkvZbBK3em7p3orPR6ZNc/eK1fuxm9zLD3dWt2Tws/
	pqObrBGIm4ZZ7cH4C7VBRplmJb8I=
X-Gm-Gg: ASbGnctRwCbsYIx08IEr5wGq0zMRQAJHM1hIRqK7+I0cmBihRM+c6iEFuttU+J2MAA1
	sdkzuECRRXSd6vZsEMyPEmurC+Y7Lk5F44IlQ
X-Google-Smtp-Source: AGHT+IE8ZeqfL/AgiOHI7JzByaRH/gCmdKgPWO5Hj9zc39/ATmbh/1nt9GKO3Q2GNRNSP3Oe53/t8se7t847Ok8yve4=
X-Received: by 2002:a05:600c:1ca9:b0:435:136:75f6 with SMTP id
 5b1f17b1804b1-436e2551d7bmr233515785e9.0.1736845397493; Tue, 14 Jan 2025
 01:03:17 -0800 (PST)
MIME-Version: 1.0
References: <20250113143719.7948-3-shaw.leon@gmail.com> <20250114044935.26418-1-kuniyu@amazon.com>
In-Reply-To: <20250114044935.26418-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Tue, 14 Jan 2025 17:02:40 +0800
X-Gm-Features: AbW1kvbnYf6XKcEPFQ7StR4SBvDI6u3mnWVP_-_JSDczC5xWtD3eG1aBQEYey8A
Message-ID: <CABAhCOQy-qw8pY+8XjHGPVz7jWZ7wqnadPXZrF-enAO0AEgXyQ@mail.gmail.com>
Subject: Re: [PATCH net-next v8 06/11] net: ipv6: Use link netns in newlink()
 of rtnl_link_ops
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FN43BYEMKPQL5VNINKPUGDNSC3RIHC6J
X-Message-ID-Hash: FN43BYEMKPQL5VNINKPUGDNSC3RIHC6J
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:00 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FN43BYEMKPQL5VNINKPUGDNSC3RIHC6J/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, Jan 14, 2025 at 12:49=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.c=
om> wrote:
>
> From: Xiao Liang <shaw.leon@gmail.com>
> Date: Mon, 13 Jan 2025 22:37:14 +0800
> > diff --git a/drivers/net/bonding/bond_netlink.c b/drivers/net/bonding/b=
ond_netlink.c
> > index 2a6a424806aa..ac5e402c34bc 100644
> > --- a/drivers/net/bonding/bond_netlink.c
> > +++ b/drivers/net/bonding/bond_netlink.c
> > @@ -564,10 +564,12 @@ static int bond_changelink(struct net_device *bon=
d_dev, struct nlattr *tb[],
> >       return 0;
> >  }
> >
> > -static int bond_newlink(struct net *src_net, struct net_device *bond_d=
ev,
> > -                     struct nlattr *tb[], struct nlattr *data[],
> > +static int bond_newlink(struct net_device *bond_dev,
> > +                     struct rtnl_newlink_params *params,
> >                       struct netlink_ext_ack *extack)
> >  {
> > +     struct nlattr **data =3D params->data;
> > +     struct nlattr **tb =3D params->tb;
> >       int err;
> >
> >       err =3D bond_changelink(bond_dev, tb, data, extack);
>
> Note that IFLA_BOND_ACTIVE_SLAVE uses dev_net(dev) for
> __dev_get_by_index().

That's true. Bond devices have no "link-netns", and a slave
device must be in the same namespace of the main dev.

> [...]
> > diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
> > index fed4fe2a4748..0c496aa1f706 100644
> > --- a/drivers/net/macvlan.c
> > +++ b/drivers/net/macvlan.c
> > @@ -1565,11 +1565,12 @@ int macvlan_common_newlink(struct net *src_net,=
 struct net_device *dev,
> >  }
> >  EXPORT_SYMBOL_GPL(macvlan_common_newlink);
> >
> > -static int macvlan_newlink(struct net *src_net, struct net_device *dev=
,
> > -                        struct nlattr *tb[], struct nlattr *data[],
> > +static int macvlan_newlink(struct net_device *dev,
> > +                        struct rtnl_newlink_params *params,
> >                          struct netlink_ext_ack *extack)
> >  {
> > -     return macvlan_common_newlink(src_net, dev, tb, data, extack);
> > +     return macvlan_common_newlink(params->net, dev, params->tb,
> > +                                   params->data, extack);
>
> Pass params as is as you did for ipvlan_link_new().
>
> Same for macvtap_newlink().

OK.

> [...]
> > diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
> > index 1e1b00756be7..1e9eadc77da2 100644
> > --- a/drivers/net/netkit.c
> > +++ b/drivers/net/netkit.c
> > @@ -327,10 +327,13 @@ static int netkit_validate(struct nlattr *tb[], s=
truct nlattr *data[],
> >
> >  static struct rtnl_link_ops netkit_link_ops;
> >
> > -static int netkit_new_link(struct net *peer_net, struct net_device *de=
v,
> > -                        struct nlattr *tb[], struct nlattr *data[],
> > +static int netkit_new_link(struct net_device *dev,
> > +                        struct rtnl_newlink_params *params,
> >                          struct netlink_ext_ack *extack)
> >  {
> > +     struct nlattr **data =3D params->data;
> > +     struct net *peer_net =3D params->net;
> > +     struct nlattr **tb =3D params->tb;
>
> nit: please keep the reverse xmas tree order.
>
>
> >       struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;
>
> you can define *tbp here and initialise it later.
>
>         struct nlattr *peer_tb[IFLA_MAX + 1], **tbp, *attr;
>
> >       enum netkit_action policy_prim =3D NETKIT_PASS;
> >       enum netkit_action policy_peer =3D NETKIT_PASS;
>
>
> [...]
> > @@ -1064,6 +1067,11 @@ static void wwan_create_default_link(struct wwan=
_device *wwandev,
> >       struct net_device *dev;
> >       struct nlmsghdr *nlh;
> >       struct sk_buff *msg;
> > +     struct rtnl_newlink_params params =3D {
> > +             .net =3D &init_net,
> > +             .tb =3D tb,
> > +             .data =3D data,
> > +     };
>
> nit: Reverse xmas tree order
>
>
> [...]
> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > index ec98349b9620..7ff5e96f6ba7 100644
> > --- a/net/core/rtnetlink.c
> > +++ b/net/core/rtnetlink.c
> > @@ -3766,6 +3766,14 @@ static int rtnl_newlink_create(struct sk_buff *s=
kb, struct ifinfomsg *ifm,
> >       struct net_device *dev;
> >       char ifname[IFNAMSIZ];
> >       int err;
> > +     struct rtnl_newlink_params params =3D {
>
> nit: Reverse xmas tree order
>
>
> > +             .net =3D net,
>
> Use sock_net(skb->sk) directly here and remove net defined above,
> which is no longer used in this function.
>
> ---8<---
>         unsigned char name_assign_type =3D NET_NAME_USER;
>         struct rtnl_newlink_params params =3D {
>                 .net =3D sock_net(skb->sk),
>                 .src_net =3D net,
>                 .link_net =3D link_net,
>                 .peer_net =3D peer_net,
>                 .tb =3D tb,
>                 .data =3D data,
>         };
>         u32 portid =3D NETLINK_CB(skb).portid;
> ---8<---
>
>
> [...]
> > @@ -1698,6 +1702,10 @@ struct net_device *gretap_fb_dev_create(struct n=
et *net, const char *name,
> >       LIST_HEAD(list_kill);
> >       struct ip_tunnel *t;
> >       int err;
> > +     struct rtnl_newlink_params params =3D {
> > +             .net =3D net,
> > +             .tb =3D tb,
> > +     };
> >
> >       memset(&tb, 0, sizeof(tb));
>
> nit: Reverse xmas tree

Will fix the style issues mentioned above in the next version.

Thanks.
