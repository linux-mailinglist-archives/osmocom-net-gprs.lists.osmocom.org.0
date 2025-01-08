Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 847A7A05DF4
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:43 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 63D031BD298;
	Wed,  8 Jan 2025 14:04:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9h7zY8-AVrzF; Wed,  8 Jan 2025 14:04:43 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BA7641BD158;
	Wed,  8 Jan 2025 14:04:27 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 63BCD38A2780
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jan 2025 08:37:11 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2EDA71BC849
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jan 2025 08:37:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WD1d1bUbIM5X for <osmocom-net-gprs@lists.osmocom.org>;
 Wed,  8 Jan 2025 08:37:05 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by mail.osmocom.org (Postfix) with ESMTPS id 61A401BC844
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jan 2025 08:37:04 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so6239028f8f.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 08 Jan 2025 00:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736325424; x=1736930224; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvettVxfJ9lYY3or3UxLpfyl/cdkwWLgR9kVNnFx6ho=;
        b=U5deiF+Ls6j4vJxfAkjDx0yiJL6PUCK9bluhPcgv3jqVflPK9lj1pzqv86rdPqUZYa
         PIhyMfgpiFdrS4LNN4S671LeinXfkL4lhVo9Q8MBytOu+DAbaPH2JN7kbvlysZcq8gSz
         pb8h1RxUJXQ5iQvrVAw0EcPgycpUxb9Bmr2wZoVfJMH0fIA+iCTQvaSmZBNZxBkRU4vi
         NUKWTkTK6LOu1mCZtIRY+QBjgTrn8IRbkZ6A9YPgR4D9mfKPbVuhs39CFTKk9NKESwIr
         lQYDjx4npHdchuWC7ATYqN94z/vYOYgzH894mWMuudBQUcfvW7ii+hkTjsDEu4cQ5gpv
         VQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736325424; x=1736930224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vvettVxfJ9lYY3or3UxLpfyl/cdkwWLgR9kVNnFx6ho=;
        b=K6L6pZLFFC2xiBRpmGNMURxMCUbl5ETABX+n7muR6zE7GSlwjUL1zB1KqgLM67Ld/d
         8SQOwsb1haxicE4Xk/1j+pAs/hSRG7rCuU8qm+NnmlhNbXyHj3zKtdHU9Cgd9co+Cr5X
         lZlmcHeU0GDYk4oBu3qBYZQQ061mG+QKf40iZTh98tiejR7rQd6X/NkwPZ5xH3FY5z2v
         6UqMHhcfV+rLnUIyzXmRpaxqG6TWhCek/Cv/CyLhU3CEz9dTFWknqdpQm3EtPHV6DBYu
         BMsyMm5EhZDjkgXuZ5BWFoboE63pqWuZnyKJLVkgcLTU6Whb/OJTiNC3aOzcsaUK1JId
         WnfA==
X-Forwarded-Encrypted: i=1; AJvYcCVpwyZQ26h/iWTd61pK6zbkC9MZjZbt7yS/aLuDvQUaaTi7PevuzB6I0njapSsku1dHvmf1/y4W5i+h9p05mglL@lists.osmocom.org
X-Gm-Message-State: AOJu0YzHXWfVftGwoeGyTomC62SA1RNV5LiqdJFSjNhLfxYuGjoeQDOQ
	p1WJ1W0yWAj2UL+7O8tdTeGkUZEBZBPFiZoOBHwB/KmYmrR7Xb3k/dv05gE7BdKJQ1f3u3/Q9lv
	czU2LggwlqqIZ6kl7tSj+/uzNO1Q=
X-Gm-Gg: ASbGncuiWMDLmw3BwxTdE0aOyDxRJx3asuRUulf/HlkiG4OZqxhXuaL9TXQKpeQDTOG
	EYNVB47JGFZf8wxgX7vU8wB3HY8prdoTwTqR6
X-Google-Smtp-Source: AGHT+IFnmy3aEmpEtSYOMGcp/W5oHyWUG1cZe2OhDShkb+8U3jvy3oPHzekY3BLrSLnXQaOhfCodhl5ttnW21/EGgAw=
X-Received: by 2002:a05:6000:4712:b0:385:f38e:c0d3 with SMTP id
 ffacd0b85a97d-38a8731a4d3mr1171129f8f.58.1736325423889; Wed, 08 Jan 2025
 00:37:03 -0800 (PST)
MIME-Version: 1.0
References: <20250104125732.17335-1-shaw.leon@gmail.com> <20250104125732.17335-3-shaw.leon@gmail.com>
 <20250107123805.748080ab@kernel.org>
In-Reply-To: <20250107123805.748080ab@kernel.org>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 8 Jan 2025 16:36:26 +0800
X-Gm-Features: AbW1kvZots7MSnDo6hVFO1pdLy0jTDp88J1frKk6l9Bo0g1-dsYfw260dsxsY30
Message-ID: <CABAhCORV_s9m-EJ8914zUXCXt6O_e1wsaOVdSKUtm0Rbvc4orQ@mail.gmail.com>
Subject: Re: [PATCH net-next v7 02/11] rtnetlink: Pack newlink() params into struct
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6DNK4CG6MGFZ5Y5BLLUBP4TJRVFLV3AK
X-Message-ID-Hash: 6DNK4CG6MGFZ5Y5BLLUBP4TJRVFLV3AK
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:07 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6DNK4CG6MGFZ5Y5BLLUBP4TJRVFLV3AK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, Jan 8, 2025 at 4:38=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> wro=
te:
>
> On Sat,  4 Jan 2025 20:57:23 +0800 Xiao Liang wrote:
> > -static int amt_newlink(struct net *net, struct net_device *dev,
> > -                    struct nlattr *tb[], struct nlattr *data[],
> > -                    struct netlink_ext_ack *extack)
> > +static int amt_newlink(struct rtnl_newlink_params *params)
> >  {
> > -     struct amt_dev *amt =3D netdev_priv(dev);
> > +     struct netlink_ext_ack *extack =3D params->extack;
> > +     struct net_device *dev =3D params->dev;
> > +     struct nlattr **data =3D params->data;
> > +     struct nlattr **tb =3D params->tb;
> > +     struct net *net =3D params->net;
> > +     struct amt_dev *amt;
>
> IMHO you packed a little too much into the struct.
> Could you take the dev and the extack back out?

Sure. I thought you were suggesting packing them all
in review of v3...
