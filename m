Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 23701A370AB
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:58 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 111B61E8BBA;
	Sat, 15 Feb 2025 20:34:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l1D8Eg2zweKk; Sat, 15 Feb 2025 20:34:57 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A2AE01E8A0B;
	Sat, 15 Feb 2025 20:34:40 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9E0D438A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:36:42 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 78E641E5CCC
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:36:42 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iexi1UraCZ3Y for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 08:36:41 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by mail.osmocom.org (Postfix) with ESMTPS id B2D451E5CC7
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:36:40 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so6361955e9.1
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 00:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739435800; x=1740040600; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lEMTU9K2wwIY9JpwBI5RzgY3pZNF2c520syU90CJZKI=;
        b=lEchR+MmpRu7GR/ztqIna7ske3S5KLBzS2iNLm6/eukP3Yz0+ONbKglbuHgli6xAB6
         ksM6xFGsHExX9A+scy9GRsHlznvH+LWVO70Ah90dOsBHvyGvD+04NiLKHK9YBYa7VSYt
         oHtnEihSAT9k23YCAkCgqsgYRSuNBhMSUYC0VZ9HHnZiOfKyrdIZPYQrcIfGq5owRR9m
         Ph09vwMIA0UatiR1dccvXlZOJazJ111zRESHkrXF47CNf0x7A4TnY25eoZllT4kBMS4T
         ezGTKKSgEXa0lRQr7yr5GJLyKK/6Xl4XZ3f4CsKtxwzk1o6VslsAPSbFiQj0h94OSASZ
         vrhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739435800; x=1740040600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lEMTU9K2wwIY9JpwBI5RzgY3pZNF2c520syU90CJZKI=;
        b=mM02fNmzdRgY8eDjr1ePzv1GETy4vooQ7ZNDF6a6wZuIMAOerpXEAyEJ725MZRFBY1
         OCWpsSZ3vYkbHxjBjvMUdYWUv1YBuFWblE27CRQm7njA2OhS3cR6arv91N0+vUy1UzxZ
         widhxGhuoSVczZxzdyoXBODXdMG1jdI1rSMAHjoNmrkTQRVgncrHHgDKmh9ecEqonPKJ
         plT0r8d3I5v1/e5bDdBi6o3iD+0bHpvgmNDZqFTvdjhLZKD0HEKDihTCIU9fMpfPxUia
         FgL7CXHt4M2iFjQIJ4VpyPzwBjmfXomPCtOtjT/axHq1fziPt43PAu5AYXa4pUvEhfif
         Gnfg==
X-Forwarded-Encrypted: i=1; AJvYcCXuWPqzxmiOJPIH7I6lcH8nrKuG/SrNwi7kEu1FN3r4XlLm39LbWEZD42pfIWUmfXgJ7w7B4vFpIOT3r+hrUYDd@lists.osmocom.org
X-Gm-Message-State: AOJu0YzKKfVO6EoTfUgUbWHQKdCQJl9F7x497sFEBBsR1vbkbp/xv9jo
	iiEmhRt3IlePg5k5EzumzogxGQoDC5VssDrvHxak490ZSmHUT4ouZ1mpxeHtcxcryp77+hVzfPf
	Y6esHK9bcpN777CpozIUgzzgaHmU=
X-Gm-Gg: ASbGncvMkBkcshxVFM8qvp7ezw06j6HKUyvTupww5d+QWH7GdnOAziS43qFA7Ut7B/Z
	ah4DJ+/aDjz1gJdCtOsYt9/reqgdtqITNcOr1sP0PYYZH5XlB64CbFFRgAKvp+PQM9Uuq4Oo=
X-Google-Smtp-Source: AGHT+IEezeJ/RlI8/fvqsCpwdXF55uEWmtOYc3P4zBx3ojP1z2I7SGCdQ1/EUaOR3dd1EY2OITuGZF4nnmEaOHg8QZ0=
X-Received: by 2002:a05:600c:19c8:b0:439:55fc:81a9 with SMTP id
 5b1f17b1804b1-4395816f13dmr68016965e9.7.1739435800139; Thu, 13 Feb 2025
 00:36:40 -0800 (PST)
MIME-Version: 1.0
References: <20250210133002.883422-3-shaw.leon@gmail.com> <20250213065348.8507-1-kuniyu@amazon.com>
In-Reply-To: <20250213065348.8507-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 13 Feb 2025 16:36:02 +0800
X-Gm-Features: AWEUYZncbGUNO7oNcYsuGlVcwlKbEKWZpPvVt5uCQTeloMATtiMLOZ95K2VoEX4
Message-ID: <CABAhCOTw+CpiwwRGNtDS3gntTQe7XESNzzi6RXd9ju1xO_a5Hw@mail.gmail.com>
Subject: Re: [PATCH net-next v9 02/11] rtnetlink: Pack newlink() params into struct
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2A7LY2RMFSCJJWFIK4TIOICKYYHBDLUC
X-Message-ID-Hash: 2A7LY2RMFSCJJWFIK4TIOICKYYHBDLUC
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:37 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2A7LY2RMFSCJJWFIK4TIOICKYYHBDLUC/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Feb 13, 2025 at 2:54=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.co=
m> wrote:
>
[...]
> > diff --git a/include/linux/if_macvlan.h b/include/linux/if_macvlan.h
> > index 523025106a64..0f7281e3e448 100644
> > --- a/include/linux/if_macvlan.h
> > +++ b/include/linux/if_macvlan.h
> > @@ -59,8 +59,10 @@ static inline void macvlan_count_rx(const struct mac=
vlan_dev *vlan,
> >
> >  extern void macvlan_common_setup(struct net_device *dev);
> >
> > -extern int macvlan_common_newlink(struct net *src_net, struct net_devi=
ce *dev,
> > -                               struct nlattr *tb[], struct nlattr *dat=
a[],
> > +struct rtnl_newlink_params;
>
> You can just include <net/rtnetlink.h> and remove it from .c
> files, then this forward declaration will be unnecessary.

OK. Was not sure if it's desirable to include include/net files from
include/linux.

>
>
> > +
> > +extern int macvlan_common_newlink(struct net_device *dev,
> > +                               struct rtnl_newlink_params *params,
> >                                 struct netlink_ext_ack *extack);
> >
> >  extern void macvlan_dellink(struct net_device *dev, struct list_head *=
head);
>
>
> [...]
> > diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
> > index bc0069a8b6ea..00c086ca0c11 100644
> > --- a/include/net/rtnetlink.h
> > +++ b/include/net/rtnetlink.h
> > @@ -69,6 +69,42 @@ static inline int rtnl_msg_family(const struct nlmsg=
hdr *nlh)
> >               return AF_UNSPEC;
> >  }
> >
> > +/**
> > + *   struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink=
()
>
> The '\t' after '*' should be single '\s'.
>
> Same for lines below.
>

This is copied from other structs in the same file. Should I change it?

>
> > + *
> > + *   @net: Netns of interest
> > + *   @src_net: Source netns of rtnetlink socket
> > + *   @link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
> > + *   @peer_net: Peer netns
> > + *   @tb: IFLA_* attributes
> > + *   @data: IFLA_INFO_DATA attributes
> > + */
> > +struct rtnl_newlink_params {
>
> [...]
> > +/* Get effective link netns from newlink params. Generally, this is li=
nk_net
> > + * and falls back to src_net. But for compatibility, a driver may * ch=
oose to
> > + * use dev_net(dev) instead.
> > + */
> > +static inline struct net *rtnl_newlink_link_net(struct rtnl_newlink_pa=
rams *p)
> > +{
> > +     return p->link_net ? : p->src_net;
> > +}
> > +
> > +/* Get peer netns from newlink params. Fallback to link netns if peer =
netns is
> > + * not specified explicitly.
> > + */
> > +static inline struct net *rtnl_newlink_peer_net(struct rtnl_newlink_pa=
rams *p)
> > +{
> > +     return p->peer_net ? : rtnl_newlink_link_net(p);
> > +}
>
> These helpers should belong to patch 2 ?

I was trying to split API and driver changes. Can move this to
next patch if it's better.
