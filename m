Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C33A434A9
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:47 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 553C71F402C;
	Tue, 25 Feb 2025 05:36:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2_Ri1-Ng84_V; Tue, 25 Feb 2025 05:36:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D66931F3FB1;
	Tue, 25 Feb 2025 05:36:43 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6DA9238A10C6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 07:35:06 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2C81A1F110C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 07:35:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jx5_t1xUb2gI for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 07:35:05 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by mail.osmocom.org (Postfix) with ESMTPS id 666941F1107
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 07:35:04 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-38f378498b0so1451414f8f.0
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Feb 2025 23:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740123304; x=1740728104; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z+QeLQVPsYwD13WdLTO9iwIZOqXlzHUuuYA44GHEnsU=;
        b=jXpkT9LFcAJ1Giqv2X81551dePZvvKHGxAHIxpyFZtQxY4sZW1zcfCVmy99QBm8x3w
         H1ajr6Cu05YGu9v5fm42l5XE8jajUyoqcjKy5jET7uku1IdUQghjP1FKZHpGcVz0tsSD
         ZoHED05et3N0jQhpmjbk4FHq1ye6RrbjJL94F5PxgJ0KdDJjWFL9ShF4iSdIopE3NL/z
         Uc2Z64k7V+sBfdrtwRhpcr+ihwbHedY/H6CKGyII9o3H5KR6ixArx1pGHLO4yatkpbEZ
         Ex2McbMEpcjKHv+PpYfDLAuxwTp7ayQZDsHP7UrYp++FJtoLXVTgLRc0MDvawIhc2jWE
         +odA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740123304; x=1740728104;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z+QeLQVPsYwD13WdLTO9iwIZOqXlzHUuuYA44GHEnsU=;
        b=FNnEMW+3swr3zYoP75DKWbOBhQ/1lQj2Jh+Ii2phvYHZHWW4UfBsAAH8bCiR2qIlyx
         F7IA+8w8rmSg0EldEGtGrFLwiITfuTFpKhz29CecG2xJU+jcUmMXns3gWpatghnNj5w8
         CaA1hgfds4UQ/VD/PIzdUwSAA8Ubb5JKNSt4Yspfptl6D6f5rej3EeVL3xEfExL3s+7R
         zo4WDjOKlyXZ7zNO3qeya7cFyOYvu1zvYruuYySzWihrj7AWxx62N+61/097rsDqsCcA
         S2MAO8qxHKbFPbglCORA3pEPP0hUQGaaEDngmK1pFTqDdcr95/jXTRKJ5VKGbtFKKtGm
         sCPA==
X-Forwarded-Encrypted: i=1; AJvYcCW/Qe7QAsWGuYpNp/IS/QicIBkNYCsGZvp+i3nsP+prr+ALRUn9L7MjrsjTeTmFjaeRUVAe1pc7msmluPgfZgSN@lists.osmocom.org
X-Gm-Message-State: AOJu0YycNuyhQy2+Tz+HlSOTlSvqVkPBwkOHAElXe4LpT/cbYdRsoOml
	bP89/J/K2Y9crskCnHZtBWoi3EVtm+dvozsevNaxpHiDO8xoIYiW4jL9M+hUkvVxjxd5D8rgLib
	gPn0CL5SRmjOZulMiNHkUSwMN8aE=
X-Gm-Gg: ASbGncubvIpgOeCU/7E0WNzKfD4xcX10VAzUShXe2wsXAzlrCK4+05+kcaj5ockdQN4
	dgq4OBFx8a73bKIPhUFtvcvl4rnjmub4ENv2Buta543MuD3dfC6bTy0d48sTj6CJ+MLB6vYuw4N
	0t6tlB9A==
X-Google-Smtp-Source: AGHT+IEnf7T/XWdU9Kctt2h3J5gBBMYg3Bh51JvuIgDPQVVK7cGhz8HpBuMv8GGd62Uk1SqkypkvwsyahBFfgLBFMsQ=
X-Received: by 2002:a05:6000:4026:b0:38f:2856:7d9a with SMTP id
 ffacd0b85a97d-38f6e7563cfmr1756891f8f.3.1740123304054; Thu, 20 Feb 2025
 23:35:04 -0800 (PST)
MIME-Version: 1.0
References: <20250219125039.18024-8-shaw.leon@gmail.com> <20250221040641.77646-1-kuniyu@amazon.com>
In-Reply-To: <20250221040641.77646-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Fri, 21 Feb 2025 15:34:27 +0800
X-Gm-Features: AWEUYZnNy9JuajIA_7tDw52YSOa4CSIEVEzv6mMTGyYFjN7-s6b2UXlhoSAg5e4
Message-ID: <CABAhCOS3BC+spLNrb_P8Ovzo18BwHU6UEc6Aq80_YKUoc8rfMQ@mail.gmail.com>
Subject: Re: [PATCH net-next v10 07/13] net: ipv6: Init tunnel link-netns
 before registering dev
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6EDYPZZF7K4Y3TROUZNBXYSZFSVB3YEE
X-Message-ID-Hash: 6EDYPZZF7K4Y3TROUZNBXYSZFSVB3YEE
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:42 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6EDYPZZF7K4Y3TROUZNBXYSZFSVB3YEE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Fri, Feb 21, 2025 at 12:07=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.c=
om> wrote:
>
> From: Xiao Liang <shaw.leon@gmail.com>
> Date: Wed, 19 Feb 2025 20:50:33 +0800
> > Currently some IPv6 tunnel drivers set tnl->net to dev_net(dev) in
> > ndo_init(), which is called in register_netdevice(). However, it lacks
> > the context of link-netns when we enable cross-net tunnels at device
> > registration time.
> >
> > Let's move the init of tunnel link-netns before register_netdevice().
> >
> > ip6_gre has already initialized netns, so just remove the redundant
> > assignment.
> >
> > Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
>
> Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
>
> left a small comment, but not a blocker.
>
>
> > @@ -1565,6 +1565,7 @@ static int ipip6_newlink(struct net_device *dev,
> >       int err;
> >
> >       nt =3D netdev_priv(dev);
> > +     nt->net =3D net;
>
> This hunk is not necessary as we'll call ipip6_tunnel_locate(),
> but it's harmless and not worth reposting the whole series given
> we are alredy in v10.  You can just post a follow-up patch after
> the series is applied.

Seems ipip6_tunnel_locate() only sets netns for newly created
devices (for ioctl). ipip6_newlink() is calling it to check for
conflicts, so we might need this line.

Thanks for your review!
