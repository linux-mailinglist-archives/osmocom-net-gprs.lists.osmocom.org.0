Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCB9A370A6
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:36 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D831A1E89BA;
	Sat, 15 Feb 2025 20:34:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MO4_zTDB7w83; Sat, 15 Feb 2025 20:34:36 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 332E51E889B;
	Sat, 15 Feb 2025 20:34:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7F10338A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:20:54 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5D8331E5A82
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:20:54 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blYpYShwPIEy for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 06:20:53 +0000 (UTC)
Received: from smtp-fw-80008.amazon.com (smtp-fw-80008.amazon.com [99.78.197.219])
	by mail.osmocom.org (Postfix) with ESMTPS id 0FAD91E5A7C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1739427653; x=1770963653;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=y0qqspgyXFQAiVZhV1is4ipJluGgHz+aCeCybrjLYs8=;
  b=KxwTq8fhS5vKxKjmFO5LGSaQ7R0h3kgBHM+TdRMlY6Cu6Xtymzc1IZLe
   Wwa3Mcs88MsjVKLvrPK5Aeyl8EdI+FmJmnsy+4zW33uYbelSOF7V3u/Dp
   oSbbZr+7bg6pjaZWOLQgii0X6lxhGMEZjYIkE/CXkTAW4VYMf1YOPtcGm
   Y=;
X-IronPort-AV: E=Sophos;i="6.13,282,1732579200";
   d="scan'208";a="169268254"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.214])
  by smtp-border-fw-80008.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2025 06:20:49 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.21.151:11164]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.32.208:2525] with esmtp (Farcaster)
 id 6c86040e-10d2-4a2e-98fc-c45ba71a877d; Thu, 13 Feb 2025 06:20:48 +0000 (UTC)
X-Farcaster-Flow-ID: 6c86040e-10d2-4a2e-98fc-c45ba71a877d
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.204) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Thu, 13 Feb 2025 06:20:48 +0000
Received: from 6c7e67bfbae3.amazon.com (10.37.244.7) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 13 Feb 2025 06:20:40 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v9 05/11] net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
Date: Thu, 13 Feb 2025 15:20:31 +0900
Message-ID: <20250213062031.4547-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250210133002.883422-6-shaw.leon@gmail.com>
References: <20250210133002.883422-6-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D040UWB002.ant.amazon.com (10.13.138.89) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=132b843d4=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BEL6K63GTM5TT3YSLLXHU6DLAJLPPHXS
X-Message-ID-Hash: BEL6K63GTM5TT3YSLLXHU6DLAJLPPHXS
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:55 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BEL6K63GTM5TT3YSLLXHU6DLAJLPPHXS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 10 Feb 2025 21:29:56 +0800
> When link_net is set, use it as link netns instead of dev_net(). This
> prepares for rtnetlink core to create device in target netns directly,
> in which case the two namespaces may be different.
>=20
> Convert common ip_tunnel_newlink() to accept an extra link netns
> argument. Don't overwrite ip_tunnel.net in ip_tunnel_init().

Why... ?  see a comment below.


[...]
> diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
> index 1fe9b13d351c..26d15f907551 100644
> --- a/net/ipv4/ip_gre.c
> +++ b/net/ipv4/ip_gre.c
> @@ -1413,7 +1413,8 @@ static int ipgre_newlink(struct net_device *dev,
>  	err =3D ipgre_netlink_parms(dev, data, tb, &p, &fwmark);
>  	if (err < 0)
>  		return err;
> -	return ip_tunnel_newlink(dev, tb, &p, fwmark);
> +	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb, =
&p,

This is duplicate at all call sites, let's move it into
ip_tunnel_newlink() by passing params.


> +				 fwmark);
>  }
> =20
>  static int erspan_newlink(struct net_device *dev,
>=20
>=20
> diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
> index 09b73acf037a..618a50d5c0c2 100644
> --- a/net/ipv4/ip_tunnel.c
> +++ b/net/ipv4/ip_tunnel.c
> @@ -1213,11 +1213,11 @@ void ip_tunnel_delete_nets(struct list_head *ne=
t_list, unsigned int id,
>  }
>  EXPORT_SYMBOL_GPL(ip_tunnel_delete_nets);
> =20
> -int ip_tunnel_newlink(struct net_device *dev, struct nlattr *tb[],
> -		      struct ip_tunnel_parm_kern *p, __u32 fwmark)
> +int ip_tunnel_newlink(struct net *net, struct net_device *dev,
> +		      struct nlattr *tb[], struct ip_tunnel_parm_kern *p,
> +		      __u32 fwmark)
>  {
>  	struct ip_tunnel *nt;
> -	struct net *net =3D dev_net(dev);
>  	struct ip_tunnel_net *itn;
>  	int mtu;
>  	int err;
> @@ -1326,7 +1326,9 @@ int ip_tunnel_init(struct net_device *dev)
>  	}
> =20
>  	tunnel->dev =3D dev;
> -	tunnel->net =3D dev_net(dev);
> +	if (!tunnel->net)
> +		tunnel->net =3D dev_net(dev);

Isn't tunnel->net always non-NULL ?

ip_tunnel_newlink
-> netdev_priv(dev)->net =3D net
-> register_netdevice(dev)
  -> dev->netdev_ops->ndo_init(dev)
    -> ip_tunnel_init(dev)
      -> netdev_priv(dev)->net =3D dev_net(dev)
