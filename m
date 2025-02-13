Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id C387DA370A7
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:40 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AE7DE1E8A0C;
	Sat, 15 Feb 2025 20:34:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5FFJMqRWfP96; Sat, 15 Feb 2025 20:34:40 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 429E11E88C1;
	Sat, 15 Feb 2025 20:34:25 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A9D1238A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:54:22 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 864511E5AF7
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:54:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kgK7U_nRZOF4 for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 06:54:21 +0000 (UTC)
Received: from smtp-fw-80006.amazon.com (smtp-fw-80006.amazon.com [99.78.197.217])
	by mail.osmocom.org (Postfix) with ESMTPS id 395CC1E5AF2
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1739429661; x=1770965661;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vJk+OOP08wb+BW+/huJFBkOKxAdi/eEFURshZRzHTxA=;
  b=sDMoFXu6aPvsQCllTNWOpMgaTHoH9b4R33FpQJ90SobeOOPpYzs9nLm0
   oRXrtqrOQRcE2tcQ1Kp1w+35OzlNv6h4gpJS8MOH1RtyxirGKZ/2UJVqu
   X+V7TjNyWwrh1+bk7HyfAaig6Dhzd8l342gzP4y12dJ3k9PisCz+7c3Ky
   c=;
X-IronPort-AV: E=Sophos;i="6.13,282,1732579200";
   d="scan'208";a="22171230"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.214])
  by smtp-border-fw-80006.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2025 06:54:17 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.38.20:56641]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.32.208:2525] with esmtp (Farcaster)
 id d7a2dd72-4afe-411d-a503-05d091406983; Thu, 13 Feb 2025 06:54:17 +0000 (UTC)
X-Farcaster-Flow-ID: d7a2dd72-4afe-411d-a503-05d091406983
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Thu, 13 Feb 2025 06:54:10 +0000
Received: from 6c7e67bfbae3.amazon.com (10.37.244.7) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 13 Feb 2025 06:54:01 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v9 02/11] rtnetlink: Pack newlink() params into struct
Date: Thu, 13 Feb 2025 15:53:48 +0900
Message-ID: <20250213065348.8507-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250210133002.883422-3-shaw.leon@gmail.com>
References: <20250210133002.883422-3-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D031UWC003.ant.amazon.com (10.13.139.252) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=132b843d4=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C6FFX6YPJL7MTQJNA2ZUWA4KLR3CS47I
X-Message-ID-Hash: C6FFX6YPJL7MTQJNA2ZUWA4KLR3CS47I
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:04 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/C6FFX6YPJL7MTQJNA2ZUWA4KLR3CS47I/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 10 Feb 2025 21:29:53 +0800
> There are 4 net namespaces involved when creating links:
>=20
>  - source netns - where the netlink socket resides,
>  - target netns - where to put the device being created,
>  - link netns - netns associated with the device (backend),
>  - peer netns - netns of peer device.
>=20
> Currently, two nets are passed to newlink() callback - "src_net"
> parameter and "dev_net" (implicitly in net_device). They are set as
> follows, depending on netlink attributes in the request.
>=20
>  +------------+-------------------+---------+---------+
>  | peer netns | IFLA_LINK_NETNSID | src_net | dev_net |
>  +------------+-------------------+---------+---------+
>  |            | absent            | source  | target  |
>  | absent     +-------------------+---------+---------+
>  |            | present           | link    | link    |
>  +------------+-------------------+---------+---------+
>  |            | absent            | peer    | target  |
>  | present    +-------------------+---------+---------+
>  |            | present           | peer    | link    |
>  +------------+-------------------+---------+---------+
>=20
> When IFLA_LINK_NETNSID is present, the device is created in link netns
> first and then moved to target netns. This has some side effects,
> including extra ifindex allocation, ifname validation and link events.
> These could be avoided if we create it in target netns from
> the beginning.
>=20
> On the other hand, the meaning of src_net parameter is ambiguous. It
> varies depending on how parameters are passed. It is the effective
> link (or peer netns) by design, but some drivers ignore it and use
> dev_net instead.
>=20
> This patch packs existing newlink() parameters, along with the source
> netns, link netns and peer netns, into a struct. The old "src_net"
> is renamed to "net" to avoid confusion with real source netns, and
> will be deprecated later. The use of src_net are converted to
> params->net trivially.
>=20
> To make the semantics more clear, two helper functions -
> rtnl_newlink_link_net() and rtnl_newlink_peer_net() - are provided
> for netns fallback logic. Peer netns falls back to link netns, and
> link netns falls back to source netns.
>=20
> In following patches, to prepare for creating link in target netns
> directly:
>=20
>   - For device drivers that are aware of the old "src_net", the use of
>     it are replace with one of the two helper functions.
>   - And for those that takes dev_net() as link netns, we try
>     params->link_net and then dev_net(), in order to maintain
>     compatibility with the old behavior.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>

I left small comments below.


[...]
> diff --git a/include/linux/if_macvlan.h b/include/linux/if_macvlan.h
> index 523025106a64..0f7281e3e448 100644
> --- a/include/linux/if_macvlan.h
> +++ b/include/linux/if_macvlan.h
> @@ -59,8 +59,10 @@ static inline void macvlan_count_rx(const struct mac=
vlan_dev *vlan,
> =20
>  extern void macvlan_common_setup(struct net_device *dev);
> =20
> -extern int macvlan_common_newlink(struct net *src_net, struct net_devi=
ce *dev,
> -				  struct nlattr *tb[], struct nlattr *data[],
> +struct rtnl_newlink_params;

You can just include <net/rtnetlink.h> and remove it from .c
files, then this forward declaration will be unnecessary.


> +
> +extern int macvlan_common_newlink(struct net_device *dev,
> +				  struct rtnl_newlink_params *params,
>  				  struct netlink_ext_ack *extack);
> =20
>  extern void macvlan_dellink(struct net_device *dev, struct list_head *=
head);


[...]
> diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
> index bc0069a8b6ea..00c086ca0c11 100644
> --- a/include/net/rtnetlink.h
> +++ b/include/net/rtnetlink.h
> @@ -69,6 +69,42 @@ static inline int rtnl_msg_family(const struct nlmsg=
hdr *nlh)
>  		return AF_UNSPEC;
>  }
> =20
> +/**
> + *	struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()

The '\t' after '*' should be single '\s'.

Same for lines below.


> + *
> + *	@net: Netns of interest
> + *	@src_net: Source netns of rtnetlink socket
> + *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
> + *	@peer_net: Peer netns
> + *	@tb: IFLA_* attributes
> + *	@data: IFLA_INFO_DATA attributes
> + */
> +struct rtnl_newlink_params {

[...]
> +/* Get effective link netns from newlink params. Generally, this is li=
nk_net
> + * and falls back to src_net. But for compatibility, a driver may * ch=
oose to
> + * use dev_net(dev) instead.
> + */
> +static inline struct net *rtnl_newlink_link_net(struct rtnl_newlink_pa=
rams *p)
> +{
> +	return p->link_net ? : p->src_net;
> +}
> +
> +/* Get peer netns from newlink params. Fallback to link netns if peer =
netns is
> + * not specified explicitly.
> + */
> +static inline struct net *rtnl_newlink_peer_net(struct rtnl_newlink_pa=
rams *p)
> +{
> +	return p->peer_net ? : rtnl_newlink_link_net(p);
> +}

These helpers should belong to patch 2 ?
