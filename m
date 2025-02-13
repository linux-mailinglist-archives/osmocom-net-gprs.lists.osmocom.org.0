Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5439DA370AC
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:59 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 409381E8BD5;
	Sat, 15 Feb 2025 20:34:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xgv6QBMAbols; Sat, 15 Feb 2025 20:34:58 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7DA691E8A1A;
	Sat, 15 Feb 2025 20:34:41 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E868C38A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:38:12 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CFCDD1E5CF8
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:38:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nmnL_IjVptM2 for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 08:38:12 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by mail.osmocom.org (Postfix) with ESMTPS id 2253D1E5CF3
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 08:38:11 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-38dd0dc21b2so248028f8f.2
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 00:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739435891; x=1740040691; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N497oJdjUhCNRwjALBc63pGnF5BIugJi+C5NT1OFjnk=;
        b=k0yyEsrGZ91H1t6Yf0QRM6kGs5yOcPt/LVIarvqsZUYDNzLJc4U/OZaQnAPWUWkyX5
         DbvqmSEilIlpP+sYszJ/8jDH8U5fBXw1zr86G0MV8aC0sYxEoG94PjNSgOS2byve3A0Q
         c+dSWR7H532SIxMs0532D7xOMyWyI2/AfB/md+TZLOKbWMxQQGTRRsTGeWVrtxputYXe
         Lr6+UYAybj9qClbOe7RwcJA+p+AT56WqYNII8wQzXWI3dJq3Hulu3srr8/kAImMdphIv
         QV3X5gYagWVr2wUXls+RwLS7BRJxzxfdXGFBbBrdjTHPz1mfq3OI5yGw52H+XuBu6NVp
         oz4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739435891; x=1740040691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N497oJdjUhCNRwjALBc63pGnF5BIugJi+C5NT1OFjnk=;
        b=AeGlV7OGnnovHp0Mbbt005za6t/3F51sYKvIGakv2PDzwfjgSUCHq35Qexs7xiU4ab
         Y5whDjYqmRuv5SRuRcGmQmG7N2eIKJY4tZrTTtz0FU3iNgfWelr00fR42WJ4EVzhExnK
         FMdvVL5jUhVSh2hG+Mcf5Yba3oIIkZFWvD9XXuLStD2rXG9y/HSYfOerRwa0yUKSYL9+
         zIH43OeHIx29Z7N5TemliGvA13zc3jyctJ/oj6qXX6/MvowJ5IGsv2LE5z9wn0Om/HQq
         G1j1XEmoOrrNgDkK5J7Tp1A6HU6AZwp8fUXwhrNpIC0rwLhpTGw3DfAPtMIiD+JkQ/L6
         6z8A==
X-Forwarded-Encrypted: i=1; AJvYcCVI+p2DowCE+ZsyyKBdLUG05HS+yK74OLWyo5A3BcpDw32fEYsc06Ke4N/BpX57s7Boxd2e1IEVFtJCEEPCoErq@lists.osmocom.org
X-Gm-Message-State: AOJu0Yw4C/dSiZkjxmXQ2wuh6QS/NixQFLFLFVbSTXc5w66gGFAEO3QA
	df5OqfYpe+LAgVevm5EKR/N3WFMv79+iP7fJG4LBQvt0FtThNgflqmdbxSbGOcVo4QlfX7W9hIG
	FbZaGOGEt8xRoMR89SQt5HWnt/MA=
X-Gm-Gg: ASbGncuMGhAfzYeg/x99Uj8ucbKZrjnRR3caHefaH0xzVw90pRMOdu8b2CoIchJEjUH
	/rHC+uMXR6dWJ2otua6h1rgy9GBZyWZB2JzSUOz+plh94vckhSZ/36LALIBJrskKt5EU7uQs=
X-Google-Smtp-Source: AGHT+IGWOHKGGlDa4+BOJnu+aApZc9NQsBvpdTnebLsDtomfgfUQKAEsY8KxAxXyKMsTrm9S+vIZHhG3h4B48IT9F4E=
X-Received: by 2002:a5d:47a1:0:b0:38d:d299:7098 with SMTP id
 ffacd0b85a97d-38f244d4b2fmr2390520f8f.10.1739435890988; Thu, 13 Feb 2025
 00:38:10 -0800 (PST)
MIME-Version: 1.0
References: <20250210133002.883422-7-shaw.leon@gmail.com> <20250213070533.9926-1-kuniyu@amazon.com>
In-Reply-To: <20250213070533.9926-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 13 Feb 2025 16:37:34 +0800
X-Gm-Features: AWEUYZmLH4fO7VI_1h6eRsVKRwr1I73htkPFG-ZDVD1uQ9yC1n8P3g2_7anIJyE
Message-ID: <CABAhCOT8sCV4RgBWwfYjCw2xoZbdiYG8yuWReigx-u5DibTaiA@mail.gmail.com>
Subject: Re: [PATCH net-next v9 06/11] net: ipv6: Use link netns in newlink()
 of rtnl_link_ops
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 64K25MBC5OIMVSCQ2TDPCPIDDMUUDEGU
X-Message-ID-Hash: 64K25MBC5OIMVSCQ2TDPCPIDDMUUDEGU
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:38 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/64K25MBC5OIMVSCQ2TDPCPIDDMUUDEGU/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Feb 13, 2025 at 3:05=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.co=
m> wrote:
>
[...]
> > diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
> > index 863852abe8ea..108600dc716f 100644
> > --- a/net/ipv6/ip6_gre.c
> > +++ b/net/ipv6/ip6_gre.c
> > @@ -1498,7 +1498,8 @@ static int ip6gre_tunnel_init_common(struct net_d=
evice *dev)
> >       tunnel =3D netdev_priv(dev);
> >
> >       tunnel->dev =3D dev;
> > -     tunnel->net =3D dev_net(dev);
> > +     if (!tunnel->net)
> > +             tunnel->net =3D dev_net(dev);
>
> Same question as patch 5 for here and other parts.
> Do we need this check and assignment ?
>
> ip6gre_newlink_common
> -> nt->net =3D dev_net(dev)
> -> register_netdevice
>   -> ndo_init / ip6gre_tunnel_init()
>     -> ip6gre_tunnel_init_common
>       -> tunnel->net =3D dev_net(dev)

Will remove this line.
