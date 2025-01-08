Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 27317A0B46F
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 13 Jan 2025 11:21:49 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 05FA01C2F03;
	Mon, 13 Jan 2025 10:21:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l19qBnzkBR7q; Mon, 13 Jan 2025 10:21:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 117A91C2EF7;
	Mon, 13 Jan 2025 10:21:45 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 270D738AD585
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jan 2025 17:31:47 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 967831BD4EA
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jan 2025 17:31:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id foOsgexSvfOi for <osmocom-net-gprs@lists.osmocom.org>;
 Wed,  8 Jan 2025 17:31:45 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [IPv6:2604:1380:45d1:ec00::3])
	by mail.osmocom.org (Postfix) with ESMTPS id 28DA61BD4E5
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jan 2025 17:31:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9978EA40C9E;
	Wed,  8 Jan 2025 17:29:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17A24C4CED3;
	Wed,  8 Jan 2025 17:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736357500;
	bh=nFNghkqYK0OyBrmna6riJjtdRf/DJ2kks0ygjdBlGVE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=dHciAqjYDmfJ4f1GrLA+k2mHdvH/PcVoEoaHp5l6oKUNCl2H/rGngM0bwH32RiDGA
	 RKqyu4tcA5nz7uUemz8c9pBwQy5/Yl8okpkaljtV2r2hG4AolL+jj/8d3xoqFgJj/k
	 A8Gm9TIsj/lz+b3kQ9boVv/nZhWvr6TKHL4QkMBonYptSr9cZeQpQoKuXcOHybpkHo
	 e98f1a4tvA5J5nyWISRW/K9JoOD2UBjXudUvXF9tlj/7wrEctr/u5Qqq3QhEk/fT8p
	 UuTt5BSsN/f7ZpDAzFwxdIWvEiqXFx0/T5vxvOySo2ialJKoOi0JYP1ThEhqIye8Rl
	 dB8lzKIIuuacA==
Date: Wed, 8 Jan 2025 09:31:39 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v7 02/11] rtnetlink: Pack newlink() params into
 struct
Message-ID: <20250108093139.126716e9@kernel.org>
In-Reply-To: <CABAhCORV_s9m-EJ8914zUXCXt6O_e1wsaOVdSKUtm0Rbvc4orQ@mail.gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
	<20250104125732.17335-3-shaw.leon@gmail.com>
	<20250107123805.748080ab@kernel.org>
	<CABAhCORV_s9m-EJ8914zUXCXt6O_e1wsaOVdSKUtm0Rbvc4orQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: X4GYPPDQZL3C6WJ7IW2GEAGOQGEMWNL7
X-Message-ID-Hash: X4GYPPDQZL3C6WJ7IW2GEAGOQGEMWNL7
X-Mailman-Approved-At: Mon, 13 Jan 2025 10:21:41 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/X4GYPPDQZL3C6WJ7IW2GEAGOQGEMWNL7/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, 8 Jan 2025 16:36:26 +0800 Xiao Liang wrote:
> On Wed, Jan 8, 2025 at 4:38=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> w=
rote:
> >
> > On Sat,  4 Jan 2025 20:57:23 +0800 Xiao Liang wrote: =20
> > > -static int amt_newlink(struct net *net, struct net_device *dev,
> > > -                    struct nlattr *tb[], struct nlattr *data[],
> > > -                    struct netlink_ext_ack *extack)
> > > +static int amt_newlink(struct rtnl_newlink_params *params)
> > >  {
> > > -     struct amt_dev *amt =3D netdev_priv(dev);
> > > +     struct netlink_ext_ack *extack =3D params->extack;
> > > +     struct net_device *dev =3D params->dev;
> > > +     struct nlattr **data =3D params->data;
> > > +     struct nlattr **tb =3D params->tb;
> > > +     struct net *net =3D params->net;
> > > +     struct amt_dev *amt; =20
> >
> > IMHO you packed a little too much into the struct.
> > Could you take the dev and the extack back out? =20
>=20
> Sure. I thought you were suggesting packing them all
> in review of v3...

Sorry about that, I wasn't very clear :(

What I had in mind was similar to how we define ethtool ops,
(especially the more recent ones which have extack)
for example:

	int	(*set_mm)(struct net_device *dev, struct ethtool_mm_cfg *cfg,
			  struct netlink_ext_ack *extack);
