Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F6A370A9
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:43 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 616021E8A4E;
	Sat, 15 Feb 2025 20:34:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6iLj81SupEK; Sat, 15 Feb 2025 20:34:43 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0B60E1E88EF;
	Sat, 15 Feb 2025 20:34:27 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D34A438A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 07:05:58 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1C0CD1E5BCD
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 07:05:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id id3D6Rmk1zZg for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 07:05:57 +0000 (UTC)
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
	by mail.osmocom.org (Postfix) with ESMTPS id 021401E5BC8
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 07:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1739430357; x=1770966357;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HIz1Atlqpi5tnoN7n4BPu3eHETPxx2TUlMkVpEwhuEo=;
  b=QgfaSyLrgHl/mTSXPfa1O1cScChJD9IlWGd8eMDbkZuzCWMyBI5znAao
   +oebj9g9O3QcE4mKdwnQ324nwwAjpwy0Ll9o74E1a4i7iPpaPXhr9EYbH
   Bz+dF79qwKu5tSpHFMLm+9JFzuSw5Q33bGG/M3J5HJNyiPfAy7o+cNlGM
   w=;
X-IronPort-AV: E=Sophos;i="6.13,282,1732579200";
   d="scan'208";a="462133403"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
  by smtp-border-fw-6001.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2025 07:05:51 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.7.35:18133]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.32.208:2525] with esmtp (Farcaster)
 id 044845a0-eb50-4d20-a33f-ef53eec55ed0; Thu, 13 Feb 2025 07:05:50 +0000 (UTC)
X-Farcaster-Flow-ID: 044845a0-eb50-4d20-a33f-ef53eec55ed0
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Thu, 13 Feb 2025 07:05:50 +0000
Received: from 6c7e67bfbae3.amazon.com (10.37.244.7) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 13 Feb 2025 07:05:42 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v9 06/11] net: ipv6: Use link netns in newlink() of rtnl_link_ops
Date: Thu, 13 Feb 2025 16:05:33 +0900
Message-ID: <20250213070533.9926-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250210133002.883422-7-shaw.leon@gmail.com>
References: <20250210133002.883422-7-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D035UWA002.ant.amazon.com (10.13.139.60) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=132b843d4=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 67FXGYCQJCPD53HNPZQUQMIEB42BP47E
X-Message-ID-Hash: 67FXGYCQJCPD53HNPZQUQMIEB42BP47E
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:04 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/67FXGYCQJCPD53HNPZQUQMIEB42BP47E/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 10 Feb 2025 21:29:57 +0800
> When link_net is set, use it as link netns instead of dev_net(). This
> prepares for rtnetlink core to create device in target netns directly,
> in which case the two namespaces may be different.
>=20
> Set correct netns in priv before registering device, and avoid
> overwriting it in ndo_init() path.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
> ---
>  net/ipv6/ip6_gre.c    | 20 ++++++++++----------
>  net/ipv6/ip6_tunnel.c | 13 ++++++++-----
>  net/ipv6/ip6_vti.c    | 10 ++++++----
>  net/ipv6/sit.c        | 11 +++++++----
>  4 files changed, 31 insertions(+), 23 deletions(-)
>=20
> diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
> index 863852abe8ea..108600dc716f 100644
> --- a/net/ipv6/ip6_gre.c
> +++ b/net/ipv6/ip6_gre.c
> @@ -1498,7 +1498,8 @@ static int ip6gre_tunnel_init_common(struct net_d=
evice *dev)
>  	tunnel =3D netdev_priv(dev);
> =20
>  	tunnel->dev =3D dev;
> -	tunnel->net =3D dev_net(dev);
> +	if (!tunnel->net)
> +		tunnel->net =3D dev_net(dev);

Same question as patch 5 for here and other parts.
Do we need this check and assignment ?

ip6gre_newlink_common
-> nt->net =3D dev_net(dev)
-> register_netdevice
  -> ndo_init / ip6gre_tunnel_init()
    -> ip6gre_tunnel_init_common
      -> tunnel->net =3D dev_net(dev)
