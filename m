Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5B99FF140
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:15 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8C5631B677C;
	Tue, 31 Dec 2024 18:40:15 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ai1tAJYsCEwE; Tue, 31 Dec 2024 18:40:15 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 418581B671B;
	Tue, 31 Dec 2024 18:40:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1877E38A78D1
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 12:41:46 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E6B8C1A7B8C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 12:41:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ojjXLPoi4yW7 for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Dec 2024 12:41:44 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by mail.osmocom.org (Postfix) with ESMTPS id A5CBA1A7B87
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 12:41:44 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-434b3e32e9dso6020245e9.2
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 04:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734007303; x=1734612103; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdqXBrFz+MhhB28jjWBHlFWKaOr9dT3/Vp6X30ps4DU=;
        b=GhVpYBbBd1TeSclJY6FYLGF60/Lw13BbDORYp36XTrbkaDpecDBLkIhfp2NGnmP1SB
         CeELLK9vno0TarJLXdZKdKP4pgT/EhzOy16yI5qiaX3jChrg6r4xxAPqyVesdoX8TQTE
         q7+nm7w62d4BHwk4bG+7b7J3/v4Ymk/mL3ff9LrLF00A85NMXWrgkphSEGjjxZCtgOr4
         VdsXRxbkCKpUOppVRpou8e4vN0bp4wzIl7TkZ5irMdsXIqNdzdywz0/6SwjXsB3VvBKk
         WJoV9rjlVJ9TkrBCohwc6elcndLX/gOicvJgb/BE8g3SYUVuxbpaRauFkMfsBnevMTPk
         Dw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734007303; x=1734612103;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UdqXBrFz+MhhB28jjWBHlFWKaOr9dT3/Vp6X30ps4DU=;
        b=nxPzRlpCtQfM1Koc7P5Cz9Z37jzwo+xmzVa7tzIKe2EJEtKbwB1TyohYnG/wc/XC9w
         DDqhrlzBCSuBcpjRQeuogRZI/8LCGFClVzXBkqklIPFbhq9c6tKK2yzKhnhe+iDpCl+H
         IPgjHPy5NoHUTsptGOKZR8HTxdSNhIMAlLF8guqUExlrAoUVdu44s+FUaPkxngPavUMz
         kKrVkdPjrg/Y6aIMHpxBYoXvNNrfwe1x/YhMLqGbIUxFD46Czj9I72VZs9wLzMrnioYx
         MtjQOL0EoXB/jcf4GQjcLjtkmTUdcruIBHMVoNZx+AqzJ9FWYJ42ISXaDqCK7wpnZpzr
         RltA==
X-Forwarded-Encrypted: i=1; AJvYcCXE1x45rGhnjyZLP0aD8cWU4391QKzzy6GMbx5/YLq6Bpe3L5l2Z6M+YZovGW11njNXjuDMjIDp2DRKWTv7Sq/A@lists.osmocom.org
X-Gm-Message-State: AOJu0YzRB4/LXg+mxZCe0jtKBILRD3+B3PLIeGDz/mvAvhHfoDiuk7O3
	HgsnThoxg4EMi6RVHYQ0Y7It+m7g1+wPxWybLvGqV/XR1d1VIHNONjlKvs62NxynTMhEnwGaQKG
	zXMIyf4LHgvHG3v0Dx7pwLgZq6Vw=
X-Gm-Gg: ASbGncumVy18sGSld6itvBaNYNDjiZdfyBrrviXypVt2e0QhtayYQ4gheEhEUi3KFhT
	HupItqV90FbLCP0JHz3EC2ccReSuJjnfQHqmg
X-Google-Smtp-Source: AGHT+IFqFk9dpKGWg1iKfKEea53yF0KmGIqYqHw17PI/mHu0HdGMd6qhUvlxmt/ZCzWy1qtAEPF2qQKT7Apiv7Ssc/8=
X-Received: by 2002:a05:6000:a0b:b0:385:f44a:a68 with SMTP id
 ffacd0b85a97d-3878769805bmr3014357f8f.35.1734007303234; Thu, 12 Dec 2024
 04:41:43 -0800 (PST)
MIME-Version: 1.0
References: <20241209140151.231257-1-shaw.leon@gmail.com> <20241209140151.231257-4-shaw.leon@gmail.com>
 <2b89667d-ccd6-40b7-b355-1c71e159d14f@redhat.com>
In-Reply-To: <2b89667d-ccd6-40b7-b355-1c71e159d14f@redhat.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 12 Dec 2024 20:41:06 +0800
Message-ID: <CABAhCOTv1tDOXBEE56CL1-S_J6ADZTcvso5GHtkarzJMqOC4xQ@mail.gmail.com>
Subject: Re: [PATCH net-next v5 3/5] rtnetlink: Decouple net namespaces in rtnl_newlink_create()
To: Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SBZJULL6VXJHX5T7B2HVYNLUIUZXKBO3
X-Message-ID-Hash: SBZJULL6VXJHX5T7B2HVYNLUIUZXKBO3
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:06 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Jakub Kicinski <kuba@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/SBZJULL6VXJHX5T7B2HVYNLUIUZXKBO3/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Dec 12, 2024 at 5:27=E2=80=AFPM Paolo Abeni <pabeni@redhat.com> wro=
te:
>
> On 12/9/24 15:01, Xiao Liang wrote:
> > There are 4 net namespaces involved when creating links:
> >
> >  - source netns - where the netlink socket resides,
> >  - target netns - where to put the device being created,
> >  - link netns - netns associated with the device (backend),
> >  - peer netns - netns of peer device.
> >
> > Currently, two nets are passed to newlink() callback - "src_net"
> > parameter and "dev_net" (implicitly in net_device). They are set as
> > follows, depending on netlink attributes.
> >
> >  +------------+-------------------+---------+---------+
> >  | peer netns | IFLA_LINK_NETNSID | src_net | dev_net |
> >  +------------+-------------------+---------+---------+
> >  |            | absent            | source  | target  |
> >  | absent     +-------------------+---------+---------+
> >  |            | present           | link    | link    |
> >  +------------+-------------------+---------+---------+
> >  |            | absent            | peer    | target  |
> >  | present    +-------------------+---------+---------+
> >  |            | present           | peer    | link    |
> >  +------------+-------------------+---------+---------+
> >
> > When IFLA_LINK_NETNSID is present, the device is created in link netns
> > first. This has some side effects, including extra ifindex allocation,
> > ifname validation and link notifications. There's also an extra step to
> > move the device to target netns. These could be avoided if we create it
> > in target netns at the beginning.
> >
> > On the other hand, the meaning of src_net is ambiguous. It varies
> > depending on how parameters are passed. It is the effective link or pee=
r
> > netns by design, but some drivers ignore it and use dev_net instead.
> >
> > This patch refactors netns handling by packing newlink() parameters int=
o
> > a struct, and passing source, link and peer netns as is through this
> > struct. Fallback logic is implemented in helper functions -
> > rtnl_newlink_link_net() and rtnl_newlink_peer_net(). If is not set, pee=
r
> > netns falls back to link netns, and link netns falls back to source net=
ns.
> > rtnl_newlink_create() now creates devices in target netns directly,
> > so dev_net is always target netns.
> >
> > For drivers that use dev_net as fallback of link_netns, current behavio=
r
> > is kept for compatibility.
> >
> > Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
>
> I must admit this patch is way too huge for me to allow any reasonable
> review except that this has the potential of breaking a lot of things.
>
> I think you should be splitted to make it more palatable; i.e.
> - a patch just add the params struct with no semantic changes.
> - a patch making the dev_change_net_namespace() conditional on net !=3D
> tge_net[1]
> - many per-device patches creating directly the device in the target
> namespace.
> - a patch reverting [1]
>
> Other may have different opinions, I'd love to hear them.

Thanks. I understand your concern. Since the device is created in common
code, how about splitting the patch this way:

 1) make the params struct contain both current src_net and other netns:
        struct rtnl_newlink_params {
                struct net *net;        // renamed from current src_net
                struct net *src_net;    // real src_net
                struct net *link_net;
                ...
        };
 2) convert each driver to use the accurate netns,
 3) remove "net", which is not used now, from params struct,
 4) change rtnl_newlink_create() to create device in target netns
    directly.

So 1) will be a big one but has no semantic changes.
And I will send Patch 1 in this series to the net tree instead.

>
> > diff --git a/drivers/net/amt.c b/drivers/net/amt.c
> > index 98c6205ed19f..2f7bf50e05d2 100644
> > --- a/drivers/net/amt.c
> > +++ b/drivers/net/amt.c
> > @@ -3161,14 +3161,17 @@ static int amt_validate(struct nlattr *tb[], st=
ruct nlattr *data[],
> >       return 0;
> >  }
> >
> > -static int amt_newlink(struct net *net, struct net_device *dev,
> > -                    struct nlattr *tb[], struct nlattr *data[],
> > -                    struct netlink_ext_ack *extack)
> > +static int amt_newlink(struct rtnl_newlink_params *params)
> >  {
> > +     struct net_device *dev =3D params->dev;
> > +     struct nlattr **tb =3D params->tb;
> > +     struct nlattr **data =3D params->data;
> > +     struct netlink_ext_ack *extack =3D params->extack;
> > +     struct net *link_net =3D rtnl_newlink_link_net(params);
> >       struct amt_dev *amt =3D netdev_priv(dev);
> >       int err =3D -EINVAL;
>
> Minor nit: here and and many other places, please respect the reverse
> xmas tree order.

Will fix this.
