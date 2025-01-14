Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B8461A188A6
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:28 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A57361D313F;
	Tue, 21 Jan 2025 23:58:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5mYm7T47DOz; Tue, 21 Jan 2025 23:58:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C9FA91D306D;
	Tue, 21 Jan 2025 23:58:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4588138A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 04:50:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 137871C51D6
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 04:50:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JsrVXK-_Ok_Y for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 14 Jan 2025 04:50:00 +0000 (UTC)
Received: from smtp-fw-52003.amazon.com (smtp-fw-52003.amazon.com [52.119.213.152])
	by mail.osmocom.org (Postfix) with ESMTPS id 02BFD1C51D1
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 04:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1736830201; x=1768366201;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=A4qSpa9PKTl3u7k1DQyLqfv8mgl5yR42K0bhyD7dYtE=;
  b=COW1ZdIwZiklBml6Wt/rKHHhfhf0eL4SlXcS5jjqeHHLzX9kF+aJ6MLt
   UHKkt6j6aRIzzo2r/7GrRfWU7vwdmVX7+L+ZtGXjUtMV8k7KRAb+2pFSg
   WgRtxA6fzX2AAKW8eClhT1+Tk+4SEFJYAUeZ4LXBN96EqpoN6Fu4S+1nN
   I=;
X-IronPort-AV: E=Sophos;i="6.12,313,1728950400";
   d="scan'208";a="57499934"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-52003.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2025 04:49:55 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.38.20:22602]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.15.93:2525] with esmtp (Farcaster)
 id 7019b803-c524-49e9-8de0-4c37547d545c; Tue, 14 Jan 2025 04:49:53 +0000 (UTC)
X-Farcaster-Flow-ID: 7019b803-c524-49e9-8de0-4c37547d545c
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Tue, 14 Jan 2025 04:49:53 +0000
Received: from 6c7e67c6786f.amazon.com (10.119.11.99) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Tue, 14 Jan 2025 04:49:44 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v8 06/11] net: ipv6: Use link netns in newlink() of rtnl_link_ops
Date: Tue, 14 Jan 2025 13:49:35 +0900
Message-ID: <20250114044935.26418-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250113143719.7948-3-shaw.leon@gmail.com>
References: <20250113143719.7948-3-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.119.11.99]
X-ClientProxiedBy: EX19D033UWA004.ant.amazon.com (10.13.139.85) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=102578ec8=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CUMISOOVEYFHY52BKZA64BWYQTKLGQOT
X-Message-ID-Hash: CUMISOOVEYFHY52BKZA64BWYQTKLGQOT
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:00 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CUMISOOVEYFHY52BKZA64BWYQTKLGQOT/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 13 Jan 2025 22:37:14 +0800
> diff --git a/drivers/net/bonding/bond_netlink.c b/drivers/net/bonding/b=
ond_netlink.c
> index 2a6a424806aa..ac5e402c34bc 100644
> --- a/drivers/net/bonding/bond_netlink.c
> +++ b/drivers/net/bonding/bond_netlink.c
> @@ -564,10 +564,12 @@ static int bond_changelink(struct net_device *bon=
d_dev, struct nlattr *tb[],
>  	return 0;
>  }
> =20
> -static int bond_newlink(struct net *src_net, struct net_device *bond_d=
ev,
> -			struct nlattr *tb[], struct nlattr *data[],
> +static int bond_newlink(struct net_device *bond_dev,
> +			struct rtnl_newlink_params *params,
>  			struct netlink_ext_ack *extack)
>  {
> +	struct nlattr **data =3D params->data;
> +	struct nlattr **tb =3D params->tb;
>  	int err;
> =20
>  	err =3D bond_changelink(bond_dev, tb, data, extack);

Note that IFLA_BOND_ACTIVE_SLAVE uses dev_net(dev) for
__dev_get_by_index().


[...]
> diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
> index fed4fe2a4748..0c496aa1f706 100644
> --- a/drivers/net/macvlan.c
> +++ b/drivers/net/macvlan.c
> @@ -1565,11 +1565,12 @@ int macvlan_common_newlink(struct net *src_net,=
 struct net_device *dev,
>  }
>  EXPORT_SYMBOL_GPL(macvlan_common_newlink);
> =20
> -static int macvlan_newlink(struct net *src_net, struct net_device *dev=
,
> -			   struct nlattr *tb[], struct nlattr *data[],
> +static int macvlan_newlink(struct net_device *dev,
> +			   struct rtnl_newlink_params *params,
>  			   struct netlink_ext_ack *extack)
>  {
> -	return macvlan_common_newlink(src_net, dev, tb, data, extack);
> +	return macvlan_common_newlink(params->net, dev, params->tb,
> +				      params->data, extack);

Pass params as is as you did for ipvlan_link_new().

Same for macvtap_newlink().


[...]
> diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
> index 1e1b00756be7..1e9eadc77da2 100644
> --- a/drivers/net/netkit.c
> +++ b/drivers/net/netkit.c
> @@ -327,10 +327,13 @@ static int netkit_validate(struct nlattr *tb[], s=
truct nlattr *data[],
> =20
>  static struct rtnl_link_ops netkit_link_ops;
> =20
> -static int netkit_new_link(struct net *peer_net, struct net_device *de=
v,
> -			   struct nlattr *tb[], struct nlattr *data[],
> +static int netkit_new_link(struct net_device *dev,
> +			   struct rtnl_newlink_params *params,
>  			   struct netlink_ext_ack *extack)
>  {
> +	struct nlattr **data =3D params->data;
> +	struct net *peer_net =3D params->net;
> +	struct nlattr **tb =3D params->tb;

nit: please keep the reverse xmas tree order.


>  	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;

you can define *tbp here and initialise it later.

  	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp, *attr;

>  	enum netkit_action policy_prim =3D NETKIT_PASS;
>  	enum netkit_action policy_peer =3D NETKIT_PASS;


[...]
> @@ -1064,6 +1067,11 @@ static void wwan_create_default_link(struct wwan=
_device *wwandev,
>  	struct net_device *dev;
>  	struct nlmsghdr *nlh;
>  	struct sk_buff *msg;
> +	struct rtnl_newlink_params params =3D {
> +		.net =3D &init_net,
> +		.tb =3D tb,
> +		.data =3D data,
> +	};

nit: Reverse xmas tree order


[...]
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index ec98349b9620..7ff5e96f6ba7 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -3766,6 +3766,14 @@ static int rtnl_newlink_create(struct sk_buff *s=
kb, struct ifinfomsg *ifm,
>  	struct net_device *dev;
>  	char ifname[IFNAMSIZ];
>  	int err;
> +	struct rtnl_newlink_params params =3D {

nit: Reverse xmas tree order


> +		.net =3D net,

Use sock_net(skb->sk) directly here and remove net defined above,
which is no longer used in this function.

---8<---
        unsigned char name_assign_type =3D NET_NAME_USER;
        struct rtnl_newlink_params params =3D {
                .net =3D sock_net(skb->sk),
                .src_net =3D net,
                .link_net =3D link_net,
                .peer_net =3D peer_net,
                .tb =3D tb,
                .data =3D data,
        };
        u32 portid =3D NETLINK_CB(skb).portid;
---8<---


[...]
> @@ -1698,6 +1702,10 @@ struct net_device *gretap_fb_dev_create(struct n=
et *net, const char *name,
>  	LIST_HEAD(list_kill);
>  	struct ip_tunnel *t;
>  	int err;
> +	struct rtnl_newlink_params params =3D {
> +		.net =3D net,
> +		.tb =3D tb,
> +	};
> =20
>  	memset(&tb, 0, sizeof(tb));

nit: Reverse xmas tree
