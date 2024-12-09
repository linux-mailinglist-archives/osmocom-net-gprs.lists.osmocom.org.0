Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCFA9FF13C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:06 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7B4781B66CA;
	Tue, 31 Dec 2024 18:40:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2NHqrdTQ6Ptn; Tue, 31 Dec 2024 18:40:05 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6A9491B669C;
	Tue, 31 Dec 2024 18:40:02 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 286A538A77A2
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:06:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 05AB11A291B
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:06:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QJ_pi_iupkY0 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  9 Dec 2024 14:05:59 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by mail.osmocom.org (Postfix) with ESMTPS id 5A7541A2916
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:05:58 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-21631789fcdso10134155ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 09 Dec 2024 06:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733753157; x=1734357957; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPy/Wa4sfWIv6r2JdpWfPhpUlAIM+rgHQUPWOAmdvfo=;
        b=nFAfkXtJr5Isw6AWaQdfBToZ6IqZJQzoSTeLZS9aV1cQTojdi0VhcmcZqKL9pCRL1G
         Yg4vqZQaM/9s/i0bOPDN5jQfhlbgQ2NHHlHmVxvdwsaRLd19qIQgjfA3VSy4DupHEgwI
         bpwMXigfx1O2oomqh7FpvG/PnB884ZpmdyfZvUVfrdoBhVGz4MnPkb3F7onMu+BqGyUZ
         ieMuNIECUMeUJgTON6voLaGF5tMthto/grtbQPSY0Opc+mU8pFc2QW/AhFF0EvEf4mNE
         24Nq75lQZVqzdUr5E4qALH0yEV+IBcwMqvba3HksntwakcvNp6IC3GIqalXJZ8Hzg3T1
         L6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733753157; x=1734357957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPy/Wa4sfWIv6r2JdpWfPhpUlAIM+rgHQUPWOAmdvfo=;
        b=Lf7/LcM3ML75PGNilCHIvuLx4HMFmXkoa8C/UMWYydV98GsE+26ipgXlcaP2KZduCz
         nww8tUI6LriGbajILUz5OOrI+ULqpf2kue9u4dpOlOc/wWvujqGx6Xg6tsVkB0EtrEk+
         U6pZeH4ZM+5WbYS6J1C7HZbQ5jqZ5snafoAVp90z9ZO2LAArL7GPvhPR3lpfu1jCA1Yh
         0SpD2gmnsakj7q5jXVTGJJxC0FZDUhUeETmW7gATOxmB4EfJ2+nIzS69Jfp7MdG/HIOV
         umd0DdqwrDpqUWv4sy3fxiNSVtToiCshzhxyYvqEaSwb+vLXrlZzrSZ9T+YJJHrrXCsI
         5VOg==
X-Forwarded-Encrypted: i=1; AJvYcCVGC45RFIwFQXSELUgl9bN96+dvdwnkUtQsDoJxZ6phBCK85LEvaN0/ZpLmMB/lvS4HOMVXIPRJgcgdFXzx8Kzx@lists.osmocom.org
X-Gm-Message-State: AOJu0YzeArTEj1b0jaLfi0rBAeRc7ZesE2L7S4SboTYCITjOkRirEecG
	42UrkM2U+S5a1jSg+9YW82bdvaHJViisuLzgLm3/gG509RH0jdIK
X-Gm-Gg: ASbGncvM0XhOM7eKgx4SYx04IJDsFiC0YxtiPp8koTCTIhk626p28kU0HCLqmCnHP02
	KnuW6udaye2cmmE8kMsYn3DbaZOow7PLW7JbGcvxLFhODD8swjD7ofhgnLuykklb/BJoN6WCQc5
	cZ0//BEhj4yq+XOZzltnlgOWulyqFYFjLW8pUn4IL3JOmTQTs3dxHiaqZTYVHX6P3u7mfX+wWVd
	yZTeVI831vOQSkvdCGJspeZtWUCylGq85ARsYaEZmNuhHI=
X-Google-Smtp-Source: AGHT+IFhtw6aOaRBRqvTJbYhi/Fe6yXPqzisSZXdysCa+uK3mB+MiqtBQc7Dx64qWN61pTDIg+VOTg==
X-Received: by 2002:a17:902:ce03:b0:212:1abb:cba1 with SMTP id d9443c01a7336-21611b1362emr181353375ad.24.1733753156954;
        Mon, 09 Dec 2024 06:05:56 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216221db645sm49605645ad.46.2024.12.09.06.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 06:05:55 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v5 3/5] rtnetlink: Decouple net namespaces in rtnl_newlink_create()
Date: Mon,  9 Dec 2024 22:01:49 +0800
Message-ID: <20241209140151.231257-4-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241209140151.231257-1-shaw.leon@gmail.com>
References: <20241209140151.231257-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ONIY4M4Y65ODRRV6VDZ3RIMG27TCQBZD
X-Message-ID-Hash: ONIY4M4Y65ODRRV6VDZ3RIMG27TCQBZD
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:39:49 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ONIY4M4Y65ODRRV6VDZ3RIMG27TCQBZD/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

There are 4 net namespaces involved when creating links:

 - source netns - where the netlink socket resides,
 - target netns - where to put the device being created,
 - link netns - netns associated with the device (backend),
 - peer netns - netns of peer device.

Currently, two nets are passed to newlink() callback - "src_net"
parameter and "dev_net" (implicitly in net_device). They are set as
follows, depending on netlink attributes.

 +------------+-------------------+---------+---------+
 | peer netns | IFLA_LINK_NETNSID | src_net | dev_net |
 +------------+-------------------+---------+---------+
 |            | absent            | source  | target  |
 | absent     +-------------------+---------+---------+
 |            | present           | link    | link    |
 +------------+-------------------+---------+---------+
 |            | absent            | peer    | target  |
 | present    +-------------------+---------+---------+
 |            | present           | peer    | link    |
 +------------+-------------------+---------+---------+

When IFLA_LINK_NETNSID is present, the device is created in link netns
first. This has some side effects, including extra ifindex allocation,
ifname validation and link notifications. There's also an extra step to
move the device to target netns. These could be avoided if we create it
in target netns at the beginning.

On the other hand, the meaning of src_net is ambiguous. It varies
depending on how parameters are passed. It is the effective link or peer
netns by design, but some drivers ignore it and use dev_net instead.

This patch refactors netns handling by packing newlink() parameters into
a struct, and passing source, link and peer netns as is through this
struct. Fallback logic is implemented in helper functions -
rtnl_newlink_link_net() and rtnl_newlink_peer_net(). If is not set, peer
netns falls back to link netns, and link netns falls back to source netns=
.
rtnl_newlink_create() now creates devices in target netns directly,
so dev_net is always target netns.

For drivers that use dev_net as fallback of link_netns, current behavior
is kept for compatibility.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---

There're some issues found when coverting drivers. Please check if they
work as intended:

- In amt_newlink() drivers/net/amt.c:

    amt->net =3D net;
    ...
    amt->stream_dev =3D dev_get_by_index(net, ...

  Uses net (src_net actually), but amt_lookup_upper_dev() only searches
  in dev_net.

- In gtp_newlink() in drivers/net/gtp.c:

    gtp->net =3D src_net;
    ...
    gn =3D net_generic(dev_net(dev), gtp_net_id);
    list_add_rcu(&gtp->list, &gn->gtp_dev_list);

  Uses src_net, but is linked to list in dev_net.

- In pfcp_newlink() in drivers/net/pfcp.c:

    pfcp->net =3D net;
    ...
    pn =3D net_generic(dev_net(dev), pfcp_net_id);
    list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);

  Same.

- In lowpan_newlink() in net/ieee802154/6lowpan/core.c:

    wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));

  Looks for IFLA_LINK in dev_net, but in theory the ifindex is defined
  in link netns.

---

 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  | 11 +++--
 drivers/net/amt.c                             | 13 +++---
 drivers/net/bareudp.c                         | 11 +++--
 drivers/net/bonding/bond_netlink.c            |  8 ++--
 drivers/net/can/dev/netlink.c                 |  4 +-
 drivers/net/can/vxcan.c                       |  9 ++--
 .../ethernet/qualcomm/rmnet/rmnet_config.c    | 11 +++--
 drivers/net/geneve.c                          | 11 +++--
 drivers/net/gtp.c                             |  9 ++--
 drivers/net/ipvlan/ipvlan.h                   |  4 +-
 drivers/net/ipvlan/ipvlan_main.c              | 11 +++--
 drivers/net/ipvlan/ipvtap.c                   |  7 ++-
 drivers/net/macsec.c                          | 11 +++--
 drivers/net/macvlan.c                         |  8 ++--
 drivers/net/macvtap.c                         |  8 ++--
 drivers/net/netkit.c                          |  9 ++--
 drivers/net/pfcp.c                            |  8 ++--
 drivers/net/ppp/ppp_generic.c                 | 10 +++--
 drivers/net/team/team_core.c                  |  7 +--
 drivers/net/veth.c                            |  9 ++--
 drivers/net/vrf.c                             |  7 +--
 drivers/net/vxlan/vxlan_core.c                | 11 +++--
 drivers/net/wireguard/device.c                |  8 ++--
 drivers/net/wireless/virtual/virt_wifi.c      | 10 +++--
 drivers/net/wwan/wwan_core.c                  | 15 +++++--
 include/net/ip_tunnels.h                      |  5 ++-
 include/net/rtnetlink.h                       | 44 ++++++++++++++++---
 net/8021q/vlan_netlink.c                      | 11 +++--
 net/batman-adv/soft-interface.c               | 12 ++---
 net/bridge/br_netlink.c                       |  8 ++--
 net/caif/chnl_net.c                           |  6 +--
 net/core/rtnetlink.c                          | 25 +++++------
 net/hsr/hsr_netlink.c                         | 14 +++---
 net/ieee802154/6lowpan/core.c                 |  9 ++--
 net/ipv4/ip_gre.c                             | 27 ++++++++----
 net/ipv4/ip_tunnel.c                          | 10 +++--
 net/ipv4/ip_vti.c                             | 10 +++--
 net/ipv4/ipip.c                               | 10 +++--
 net/ipv6/ip6_gre.c                            | 28 +++++++-----
 net/ipv6/ip6_tunnel.c                         | 16 +++----
 net/ipv6/ip6_vti.c                            | 15 +++----
 net/ipv6/sit.c                                | 16 +++----
 net/xfrm/xfrm_interface_core.c                | 14 +++---
 43 files changed, 305 insertions(+), 205 deletions(-)

diff --git a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c b/drivers/infin=
iband/ulp/ipoib/ipoib_netlink.c
index 9ad8d9856275..da587af85d4f 100644
--- a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
+++ b/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
@@ -97,10 +97,13 @@ static int ipoib_changelink(struct net_device *dev, s=
truct nlattr *tb[],
 	return ret;
 }
=20
-static int ipoib_new_child_link(struct net *src_net, struct net_device *=
dev,
-				struct nlattr *tb[], struct nlattr *data[],
-				struct netlink_ext_ack *extack)
+static int ipoib_new_child_link(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct net_device *pdev;
 	struct ipoib_dev_priv *ppriv;
 	u16 child_pkey;
@@ -109,7 +112,7 @@ static int ipoib_new_child_link(struct net *src_net, =
struct net_device *dev,
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	pdev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	pdev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!pdev || pdev->type !=3D ARPHRD_INFINIBAND)
 		return -ENODEV;
=20
diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index 98c6205ed19f..2f7bf50e05d2 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -3161,14 +3161,17 @@ static int amt_validate(struct nlattr *tb[], stru=
ct nlattr *data[],
 	return 0;
 }
=20
-static int amt_newlink(struct net *net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int amt_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct amt_dev *amt =3D netdev_priv(dev);
 	int err =3D -EINVAL;
=20
-	amt->net =3D net;
+	amt->net =3D link_net;
 	amt->mode =3D nla_get_u32(data[IFLA_AMT_MODE]);
=20
 	if (data[IFLA_AMT_MAX_TUNNELS] &&
@@ -3183,7 +3186,7 @@ static int amt_newlink(struct net *net, struct net_=
device *dev,
 	amt->hash_buckets =3D AMT_HSIZE;
 	amt->nr_tunnels =3D 0;
 	get_random_bytes(&amt->hash_seed, sizeof(amt->hash_seed));
-	amt->stream_dev =3D dev_get_by_index(net,
+	amt->stream_dev =3D dev_get_by_index(link_net,
 					   nla_get_u32(data[IFLA_AMT_LINK]));
 	if (!amt->stream_dev) {
 		NL_SET_ERR_MSG_ATTR(extack, tb[IFLA_AMT_LINK],
diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index 70814303aab8..91e1c02ada72 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -698,10 +698,13 @@ static void bareudp_dellink(struct net_device *dev,=
 struct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
=20
-static int bareudp_newlink(struct net *net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int bareudp_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct bareudp_conf conf;
 	int err;
=20
@@ -709,7 +712,7 @@ static int bareudp_newlink(struct net *net, struct ne=
t_device *dev,
 	if (err)
 		return err;
=20
-	err =3D bareudp_configure(net, dev, &conf, extack);
+	err =3D bareudp_configure(link_net, dev, &conf, extack);
 	if (err)
 		return err;
=20
diff --git a/drivers/net/bonding/bond_netlink.c b/drivers/net/bonding/bon=
d_netlink.c
index 2a6a424806aa..db3062c6dbe0 100644
--- a/drivers/net/bonding/bond_netlink.c
+++ b/drivers/net/bonding/bond_netlink.c
@@ -564,10 +564,12 @@ static int bond_changelink(struct net_device *bond_=
dev, struct nlattr *tb[],
 	return 0;
 }
=20
-static int bond_newlink(struct net *src_net, struct net_device *bond_dev=
,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int bond_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *bond_dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
 	int err;
=20
 	err =3D bond_changelink(bond_dev, tb, data, extack);
diff --git a/drivers/net/can/dev/netlink.c b/drivers/net/can/dev/netlink.=
c
index 01aacdcda260..52dae0e94858 100644
--- a/drivers/net/can/dev/netlink.c
+++ b/drivers/net/can/dev/netlink.c
@@ -624,9 +624,7 @@ static int can_fill_xstats(struct sk_buff *skb, const=
 struct net_device *dev)
 	return -EMSGSIZE;
 }
=20
-static int can_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int can_newlink(struct rtnl_newlink_params *params)
 {
 	return -EOPNOTSUPP;
 }
diff --git a/drivers/net/can/vxcan.c b/drivers/net/can/vxcan.c
index ca8811941085..65ae07116c91 100644
--- a/drivers/net/can/vxcan.c
+++ b/drivers/net/can/vxcan.c
@@ -172,10 +172,13 @@ static void vxcan_setup(struct net_device *dev)
 /* forward declaration for rtnl_create_link() */
 static struct rtnl_link_ops vxcan_link_ops;
=20
-static int vxcan_newlink(struct net *peer_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int vxcan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct vxcan_priv *priv;
 	struct net_device *peer;
=20
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drivers=
/net/ethernet/qualcomm/rmnet/rmnet_config.c
index f3bea196a8f9..d45555d784e6 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -117,10 +117,13 @@ static void rmnet_unregister_bridge(struct rmnet_po=
rt *port)
 	rmnet_unregister_real_device(bridge_dev);
 }
=20
-static int rmnet_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int rmnet_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
 	struct net_device *real_dev;
 	int mode =3D RMNET_EPMODE_VND;
@@ -134,7 +137,7 @@ static int rmnet_newlink(struct net *src_net, struct =
net_device *dev,
 		return -EINVAL;
 	}
=20
-	real_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev) {
 		NL_SET_ERR_MSG_MOD(extack, "link does not exist");
 		return -ENODEV;
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index 642155cb8315..77978617f509 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -1614,10 +1614,13 @@ static void geneve_link_config(struct net_device =
*dev,
 	geneve_change_mtu(dev, ldev_mtu - info->options_len);
 }
=20
-static int geneve_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int geneve_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct geneve_config cfg =3D {
 		.df =3D GENEVE_DF_UNSET,
 		.use_udp6_rx_checksums =3D false,
@@ -1631,7 +1634,7 @@ static int geneve_newlink(struct net *net, struct n=
et_device *dev,
 	if (err)
 		return err;
=20
-	err =3D geneve_configure(net, dev, extack, &cfg);
+	err =3D geneve_configure(link_net, dev, extack, &cfg);
 	if (err)
 		return err;
=20
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 89a996ad8cd0..3eb1bc3ac124 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1460,10 +1460,11 @@ static int gtp_create_sockets(struct gtp_dev *gtp=
, const struct nlattr *nla,
 #define GTP_TH_MAXLEN	(sizeof(struct udphdr) + sizeof(struct gtp0_header=
))
 #define GTP_IPV6_MAXLEN	(sizeof(struct ipv6hdr) + GTP_TH_MAXLEN)
=20
-static int gtp_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int gtp_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
@@ -1494,7 +1495,7 @@ static int gtp_newlink(struct net *src_net, struct =
net_device *dev,
 	gtp->restart_count =3D nla_get_u8_default(data[IFLA_GTP_RESTART_COUNT],
 						0);
=20
-	gtp->net =3D src_net;
+	gtp->net =3D link_net;
=20
 	err =3D gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
diff --git a/drivers/net/ipvlan/ipvlan.h b/drivers/net/ipvlan/ipvlan.h
index 025e0c19ec25..beff25a1d6f0 100644
--- a/drivers/net/ipvlan/ipvlan.h
+++ b/drivers/net/ipvlan/ipvlan.h
@@ -166,9 +166,7 @@ struct ipvl_addr *ipvlan_addr_lookup(struct ipvl_port=
 *port, void *lyr3h,
 void *ipvlan_get_L3_hdr(struct ipvl_port *port, struct sk_buff *skb, int=
 *type);
 void ipvlan_count_rx(const struct ipvl_dev *ipvlan,
 		     unsigned int len, bool success, bool mcast);
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
-		    struct netlink_ext_ack *extack);
+int ipvlan_link_new(struct rtnl_newlink_params *params);
 void ipvlan_link_delete(struct net_device *dev, struct list_head *head);
 void ipvlan_link_setup(struct net_device *dev);
 int ipvlan_link_register(struct rtnl_link_ops *ops);
diff --git a/drivers/net/ipvlan/ipvlan_main.c b/drivers/net/ipvlan/ipvlan=
_main.c
index ee2c3cf4df36..53860e9d08b1 100644
--- a/drivers/net/ipvlan/ipvlan_main.c
+++ b/drivers/net/ipvlan/ipvlan_main.c
@@ -532,10 +532,13 @@ static int ipvlan_nl_fillinfo(struct sk_buff *skb,
 	return ret;
 }
=20
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
-		    struct netlink_ext_ack *extack)
+int ipvlan_link_new(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct ipvl_dev *ipvlan =3D netdev_priv(dev);
 	struct ipvl_port *port;
 	struct net_device *phy_dev;
@@ -545,7 +548,7 @@ int ipvlan_link_new(struct net *src_net, struct net_d=
evice *dev,
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	phy_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	phy_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!phy_dev)
 		return -ENODEV;
=20
diff --git a/drivers/net/ipvlan/ipvtap.c b/drivers/net/ipvlan/ipvtap.c
index 1afc4c47be73..69e7456a48ca 100644
--- a/drivers/net/ipvlan/ipvtap.c
+++ b/drivers/net/ipvlan/ipvtap.c
@@ -73,10 +73,9 @@ static void ipvtap_update_features(struct tap_dev *tap=
,
 	netdev_update_features(vlan->dev);
 }
=20
-static int ipvtap_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int ipvtap_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
 	struct ipvtap_dev *vlantap =3D netdev_priv(dev);
 	int err;
=20
@@ -97,7 +96,7 @@ static int ipvtap_newlink(struct net *src_net, struct n=
et_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D  ipvlan_link_new(src_net, dev, tb, data, extack);
+	err =3D  ipvlan_link_new(params);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 1bc1e5993f56..e8b147fe4fce 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -4141,10 +4141,13 @@ static int macsec_add_dev(struct net_device *dev,=
 sci_t sci, u8 icv_len)
=20
 static struct lock_class_key macsec_netdev_addr_lock_key;
=20
-static int macsec_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int macsec_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct macsec_dev *macsec =3D macsec_priv(dev);
 	rx_handler_func_t *rx_handler;
 	u8 icv_len =3D MACSEC_DEFAULT_ICV_LEN;
@@ -4154,7 +4157,7 @@ static int macsec_newlink(struct net *net, struct n=
et_device *dev,
=20
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
-	real_dev =3D __dev_get_by_index(net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev)
 		return -ENODEV;
 	if (real_dev->type !=3D ARPHRD_ETHER)
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index fed4fe2a4748..7050a061b2b9 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1565,11 +1565,11 @@ int macvlan_common_newlink(struct net *src_net, s=
truct net_device *dev,
 }
 EXPORT_SYMBOL_GPL(macvlan_common_newlink);
=20
-static int macvlan_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int macvlan_newlink(struct rtnl_newlink_params *params)
 {
-	return macvlan_common_newlink(src_net, dev, tb, data, extack);
+	return macvlan_common_newlink(rtnl_newlink_link_net(params),
+				      params->dev, params->tb, params->data,
+				      params->extack);
 }
=20
 void macvlan_dellink(struct net_device *dev, struct list_head *head)
diff --git a/drivers/net/macvtap.c b/drivers/net/macvtap.c
index 29a5929d48e5..213a16719c5a 100644
--- a/drivers/net/macvtap.c
+++ b/drivers/net/macvtap.c
@@ -77,10 +77,9 @@ static void macvtap_update_features(struct tap_dev *ta=
p,
 	netdev_update_features(vlan->dev);
 }
=20
-static int macvtap_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int macvtap_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
 	struct macvtap_dev *vlantap =3D netdev_priv(dev);
 	int err;
=20
@@ -105,7 +104,8 @@ static int macvtap_newlink(struct net *src_net, struc=
t net_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D macvlan_common_newlink(src_net, dev, tb, data, extack);
+	err =3D macvlan_common_newlink(rtnl_newlink_link_net(params), dev,
+				     params->tb, params->data, params->extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index c1d881dc6409..607d3b141f8c 100644
--- a/drivers/net/netkit.c
+++ b/drivers/net/netkit.c
@@ -327,10 +327,13 @@ static int netkit_validate(struct nlattr *tb[], str=
uct nlattr *data[],
=20
 static struct rtnl_link_ops netkit_link_ops;
=20
-static int netkit_new_link(struct net *peer_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int netkit_new_link(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;
 	enum netkit_action policy_prim =3D NETKIT_PASS;
 	enum netkit_action policy_peer =3D NETKIT_PASS;
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 69434fd13f96..8576d5117233 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -184,15 +184,15 @@ static int pfcp_add_sock(struct pfcp_dev *pfcp)
 	return PTR_ERR_OR_ZERO(pfcp->sock);
 }
=20
-static int pfcp_newlink(struct net *net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int pfcp_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct pfcp_dev *pfcp =3D netdev_priv(dev);
 	struct pfcp_net *pn;
 	int err;
=20
-	pfcp->net =3D net;
+	pfcp->net =3D link_net;
=20
 	err =3D pfcp_add_sock(pfcp);
 	if (err) {
diff --git a/drivers/net/ppp/ppp_generic.c b/drivers/net/ppp/ppp_generic.=
c
index 4583e15ad03a..a0ace8aa5b5d 100644
--- a/drivers/net/ppp/ppp_generic.c
+++ b/drivers/net/ppp/ppp_generic.c
@@ -1303,10 +1303,12 @@ static int ppp_nl_validate(struct nlattr *tb[], s=
truct nlattr *data[],
 	return 0;
 }
=20
-static int ppp_nl_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int ppp_nl_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct ppp_config conf =3D {
 		.unit =3D -1,
 		.ifname_is_set =3D true,
@@ -1343,7 +1345,7 @@ static int ppp_nl_newlink(struct net *src_net, stru=
ct net_device *dev,
 	if (!tb[IFLA_IFNAME] || !nla_len(tb[IFLA_IFNAME]) || !*(char *)nla_data=
(tb[IFLA_IFNAME]))
 		conf.ifname_is_set =3D false;
=20
-	err =3D ppp_dev_configure(src_net, dev, &conf);
+	err =3D ppp_dev_configure(link_net, dev, &conf);
=20
 out_unlock:
 	mutex_unlock(&ppp_mutex);
diff --git a/drivers/net/team/team_core.c b/drivers/net/team/team_core.c
index a1b27b69f010..c9ee70030517 100644
--- a/drivers/net/team/team_core.c
+++ b/drivers/net/team/team_core.c
@@ -2206,10 +2206,11 @@ static void team_setup(struct net_device *dev)
 	dev->features |=3D NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
 }
=20
-static int team_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int team_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+
 	if (tb[IFLA_ADDRESS] =3D=3D NULL)
 		eth_hw_addr_random(dev);
=20
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 07ebb800edf1..e9818f6b666b 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1765,10 +1765,13 @@ static int veth_init_queues(struct net_device *de=
v, struct nlattr *tb[])
 	return 0;
 }
=20
-static int veth_newlink(struct net *peer_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int veth_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	int err;
 	struct net_device *peer;
 	struct veth_priv *priv;
diff --git a/drivers/net/vrf.c b/drivers/net/vrf.c
index ca81b212a246..ed1d47a473e2 100644
--- a/drivers/net/vrf.c
+++ b/drivers/net/vrf.c
@@ -1677,10 +1677,11 @@ static void vrf_dellink(struct net_device *dev, s=
truct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
=20
-static int vrf_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int vrf_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_vrf *vrf =3D netdev_priv(dev);
 	struct netns_vrf *nn_vrf;
 	bool *add_fib_rules;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_cor=
e.c
index b46a799bd390..2e27b19a557e 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4351,10 +4351,13 @@ static int vxlan_nl2conf(struct nlattr *tb[], str=
uct nlattr *data[],
 	return 0;
 }
=20
-static int vxlan_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int vxlan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct vxlan_config conf;
 	int err;
=20
@@ -4362,7 +4365,7 @@ static int vxlan_newlink(struct net *src_net, struc=
t net_device *dev,
 	if (err)
 		return err;
=20
-	return __vxlan_dev_create(src_net, dev, &conf, extack);
+	return __vxlan_dev_create(link_net, dev, &conf, extack);
 }
=20
 static int vxlan_changelink(struct net_device *dev, struct nlattr *tb[],
diff --git a/drivers/net/wireguard/device.c b/drivers/net/wireguard/devic=
e.c
index 6cf173a008e7..a27f844cfb7f 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -307,14 +307,14 @@ static void wg_setup(struct net_device *dev)
 	wg->dev =3D dev;
 }
=20
-static int wg_newlink(struct net *src_net, struct net_device *dev,
-		      struct nlattr *tb[], struct nlattr *data[],
-		      struct netlink_ext_ack *extack)
+static int wg_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct wg_device *wg =3D netdev_priv(dev);
 	int ret =3D -ENOMEM;
=20
-	rcu_assign_pointer(wg->creating_net, src_net);
+	rcu_assign_pointer(wg->creating_net, link_net);
 	init_rwsem(&wg->static_identity.lock);
 	mutex_init(&wg->socket_update_lock);
 	mutex_init(&wg->device_update_lock);
diff --git a/drivers/net/wireless/virtual/virt_wifi.c b/drivers/net/wirel=
ess/virtual/virt_wifi.c
index 4ee374080466..107dc503b4f2 100644
--- a/drivers/net/wireless/virtual/virt_wifi.c
+++ b/drivers/net/wireless/virtual/virt_wifi.c
@@ -519,10 +519,12 @@ static rx_handler_result_t virt_wifi_rx_handler(str=
uct sk_buff **pskb)
 }
=20
 /* Called with rtnl lock held. */
-static int virt_wifi_newlink(struct net *src_net, struct net_device *dev=
,
-			     struct nlattr *tb[], struct nlattr *data[],
-			     struct netlink_ext_ack *extack)
+static int virt_wifi_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct virt_wifi_netdev_priv *priv =3D netdev_priv(dev);
 	int err;
=20
@@ -532,7 +534,7 @@ static int virt_wifi_newlink(struct net *src_net, str=
uct net_device *dev,
 	netif_carrier_off(dev);
=20
 	priv->upperdev =3D dev;
-	priv->lowerdev =3D __dev_get_by_index(src_net,
+	priv->lowerdev =3D __dev_get_by_index(link_net,
 					    nla_get_u32(tb[IFLA_LINK]));
=20
 	if (!priv->lowerdev)
diff --git a/drivers/net/wwan/wwan_core.c b/drivers/net/wwan/wwan_core.c
index a51e2755991a..450cf2e253e4 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -967,10 +967,11 @@ static struct net_device *wwan_rtnl_alloc(struct nl=
attr *tb[],
 	return dev;
 }
=20
-static int wwan_rtnl_newlink(struct net *src_net, struct net_device *dev=
,
-			     struct nlattr *tb[], struct nlattr *data[],
-			     struct netlink_ext_ack *extack)
+static int wwan_rtnl_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
 	struct wwan_device *wwandev =3D wwan_dev_get_by_parent(dev->dev.parent)=
;
 	u32 link_id =3D nla_get_u32(data[IFLA_WWAN_LINK_ID]);
 	struct wwan_netdev_priv *priv =3D netdev_priv(dev);
@@ -1064,6 +1065,11 @@ static void wwan_create_default_link(struct wwan_d=
evice *wwandev,
 	struct net_device *dev;
 	struct nlmsghdr *nlh;
 	struct sk_buff *msg;
+	struct rtnl_newlink_params params =3D {
+		.src_net =3D &init_net,
+		.tb =3D tb,
+		.data =3D data,
+	};
=20
 	/* Forge attributes required to create a WWAN netdev. We first
 	 * build a netlink message and then parse it. This looks
@@ -1105,7 +1111,8 @@ static void wwan_create_default_link(struct wwan_de=
vice *wwandev,
 	if (WARN_ON(IS_ERR(dev)))
 		goto unlock;
=20
-	if (WARN_ON(wwan_rtnl_newlink(&init_net, dev, tb, data, NULL))) {
+	params.dev =3D dev;
+	if (WARN_ON(wwan_rtnl_newlink(&params))) {
 		free_netdev(dev);
 		goto unlock;
 	}
diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
index 1aa31bdb2b31..ae1f2dda4533 100644
--- a/include/net/ip_tunnels.h
+++ b/include/net/ip_tunnels.h
@@ -406,8 +406,9 @@ int ip_tunnel_rcv(struct ip_tunnel *tunnel, struct sk=
_buff *skb,
 		  bool log_ecn_error);
 int ip_tunnel_changelink(struct net_device *dev, struct nlattr *tb[],
 			 struct ip_tunnel_parm_kern *p, __u32 fwmark);
-int ip_tunnel_newlink(struct net_device *dev, struct nlattr *tb[],
-		      struct ip_tunnel_parm_kern *p, __u32 fwmark);
+int ip_tunnel_newlink(struct net *net, struct net_device *dev,
+		      struct nlattr *tb[], struct ip_tunnel_parm_kern *p,
+		      __u32 fwmark);
 void ip_tunnel_setup(struct net_device *dev, unsigned int net_id);
=20
 bool ip_tunnel_netlink_encap_parms(struct nlattr *data[],
diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index bc0069a8b6ea..04fc0e91af42 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -69,6 +69,44 @@ static inline int rtnl_msg_family(const struct nlmsghd=
r *nlh)
 		return AF_UNSPEC;
 }
=20
+/**
+ *	struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()
+ *
+ *	@src_net: Source netns of rtnetlink socket
+ *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
+ *	@peer_net: Peer netns
+ *	@dev: The net_device being created
+ *	@tb: IFLA_* attributes
+ *	@data: IFLA_INFO_DATA attributes
+ *	@extack: Netlink extended ACK
+ */
+struct rtnl_newlink_params {
+	struct net *src_net;
+	struct net *link_net;
+	struct net *peer_net;
+	struct net_device *dev;
+	struct nlattr **tb;
+	struct nlattr **data;
+	struct netlink_ext_ack *extack;
+};
+
+/* Get effective link netns from newlink params. Generally, this is link=
_net
+ * and falls back to src_net. But for compatibility, a driver may * choo=
se to
+ * use dev_net(dev) instead.
+ */
+static inline struct net *rtnl_newlink_link_net(struct rtnl_newlink_para=
ms *p)
+{
+	return p->link_net ? : p->src_net;
+}
+
+/* Get peer netns from newlink params. Fallback to link netns if peer ne=
tns is
+ * not specified explicitly.
+ */
+static inline struct net *rtnl_newlink_peer_net(struct rtnl_newlink_para=
ms *p)
+{
+	return p->peer_net ? : rtnl_newlink_link_net(p);
+}
+
 /**
  *	struct rtnl_link_ops - rtnetlink link operations
  *
@@ -125,11 +163,7 @@ struct rtnl_link_ops {
 					    struct nlattr *data[],
 					    struct netlink_ext_ack *extack);
=20
-	int			(*newlink)(struct net *src_net,
-					   struct net_device *dev,
-					   struct nlattr *tb[],
-					   struct nlattr *data[],
-					   struct netlink_ext_ack *extack);
+	int			(*newlink)(struct rtnl_newlink_params *params);
 	int			(*changelink)(struct net_device *dev,
 					      struct nlattr *tb[],
 					      struct nlattr *data[],
diff --git a/net/8021q/vlan_netlink.c b/net/8021q/vlan_netlink.c
index 134419667d59..603b2ea1e2b4 100644
--- a/net/8021q/vlan_netlink.c
+++ b/net/8021q/vlan_netlink.c
@@ -135,10 +135,13 @@ static int vlan_changelink(struct net_device *dev, =
struct nlattr *tb[],
 	return 0;
 }
=20
-static int vlan_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int vlan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct vlan_dev_priv *vlan =3D vlan_dev_priv(dev);
 	struct net_device *real_dev;
 	unsigned int max_mtu;
@@ -155,7 +158,7 @@ static int vlan_newlink(struct net *src_net, struct n=
et_device *dev,
 		return -EINVAL;
 	}
=20
-	real_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev) {
 		NL_SET_ERR_MSG_MOD(extack, "link does not exist");
 		return -ENODEV;
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 2758aba47a2f..c411b8857095 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -1063,18 +1063,14 @@ static int batadv_softif_validate(struct nlattr *=
tb[], struct nlattr *data[],
=20
 /**
  * batadv_softif_newlink() - pre-initialize and register new batadv link
- * @src_net: the applicable net namespace
- * @dev: network device to register
- * @tb: IFLA_INFO_DATA netlink attributes
- * @data: enum batadv_ifla_attrs attributes
- * @extack: extended ACK report struct
+ * @params: rtnl newlink parameters
  *
  * Return: 0 if successful or error otherwise.
  */
-static int batadv_softif_newlink(struct net *src_net, struct net_device =
*dev,
-				 struct nlattr *tb[], struct nlattr *data[],
-				 struct netlink_ext_ack *extack)
+static int batadv_softif_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
 	struct batadv_priv *bat_priv =3D netdev_priv(dev);
 	const char *algo_name;
 	int err;
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 3e0f47203f2a..ccce5119b28d 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1553,10 +1553,12 @@ static int br_changelink(struct net_device *brdev=
, struct nlattr *tb[],
 	return 0;
 }
=20
-static int br_dev_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int br_dev_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_bridge *br =3D netdev_priv(dev);
 	int err;
=20
diff --git a/net/caif/chnl_net.c b/net/caif/chnl_net.c
index 94ad09e36df2..748e38908709 100644
--- a/net/caif/chnl_net.c
+++ b/net/caif/chnl_net.c
@@ -438,10 +438,10 @@ static void caif_netlink_parms(struct nlattr *data[=
],
 	}
 }
=20
-static int ipcaif_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int ipcaif_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
 	int ret;
 	struct chnl_net *caifdev;
 	ASSERT_RTNL();
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 7855f81c917b..3ea63722d0fd 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3757,6 +3757,14 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
 	struct net_device *dev;
 	char ifname[IFNAMSIZ];
 	int err;
+	struct rtnl_newlink_params params =3D {
+		.src_net =3D net,
+		.link_net =3D link_net,
+		.peer_net =3D peer_net,
+		.tb =3D tb,
+		.data =3D data,
+		.extack =3D extack,
+	};
=20
 	if (!ops->alloc && !ops->setup)
 		return -EOPNOTSUPP;
@@ -3768,22 +3776,18 @@ static int rtnl_newlink_create(struct sk_buff *sk=
b, struct ifinfomsg *ifm,
 		name_assign_type =3D NET_NAME_ENUM;
 	}
=20
-	dev =3D rtnl_create_link(link_net ? : tgt_net, ifname,
-			       name_assign_type, ops, tb, extack);
+	dev =3D rtnl_create_link(tgt_net, ifname, name_assign_type, ops, tb,
+			       extack);
 	if (IS_ERR(dev)) {
 		err =3D PTR_ERR(dev);
 		goto out;
 	}
=20
 	dev->ifindex =3D ifm->ifi_index;
-
-	if (link_net)
-		net =3D link_net;
-	if (peer_net)
-		net =3D peer_net;
+	params.dev =3D dev;
=20
 	if (ops->newlink)
-		err =3D ops->newlink(net, dev, tb, data, extack);
+		err =3D ops->newlink(&params);
 	else
 		err =3D register_netdevice(dev);
 	if (err < 0) {
@@ -3794,11 +3798,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
 	err =3D rtnl_configure_link(dev, ifm, portid, nlh);
 	if (err < 0)
 		goto out_unregister;
-	if (link_net) {
-		err =3D dev_change_net_namespace(dev, tgt_net, ifname);
-		if (err < 0)
-			goto out_unregister;
-	}
 	if (tb[IFLA_MASTER]) {
 		err =3D do_set_master(dev, nla_get_u32(tb[IFLA_MASTER]), extack);
 		if (err)
diff --git a/net/hsr/hsr_netlink.c b/net/hsr/hsr_netlink.c
index b68f2f71d0e1..694392222637 100644
--- a/net/hsr/hsr_netlink.c
+++ b/net/hsr/hsr_netlink.c
@@ -29,10 +29,12 @@ static const struct nla_policy hsr_policy[IFLA_HSR_MA=
X + 1] =3D {
 /* Here, it seems a netdevice has already been allocated for us, and the
  * hsr_dev_setup routine has been executed. Nice!
  */
-static int hsr_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int hsr_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	enum hsr_version proto_version;
 	unsigned char multicast_spec;
 	u8 proto =3D HSR_PROTOCOL_HSR;
@@ -46,7 +48,7 @@ static int hsr_newlink(struct net *src_net, struct net_=
device *dev,
 		NL_SET_ERR_MSG_MOD(extack, "Slave1 device not specified");
 		return -EINVAL;
 	}
-	link[0] =3D __dev_get_by_index(src_net,
+	link[0] =3D __dev_get_by_index(link_net,
 				     nla_get_u32(data[IFLA_HSR_SLAVE1]));
 	if (!link[0]) {
 		NL_SET_ERR_MSG_MOD(extack, "Slave1 does not exist");
@@ -56,7 +58,7 @@ static int hsr_newlink(struct net *src_net, struct net_=
device *dev,
 		NL_SET_ERR_MSG_MOD(extack, "Slave2 device not specified");
 		return -EINVAL;
 	}
-	link[1] =3D __dev_get_by_index(src_net,
+	link[1] =3D __dev_get_by_index(link_net,
 				     nla_get_u32(data[IFLA_HSR_SLAVE2]));
 	if (!link[1]) {
 		NL_SET_ERR_MSG_MOD(extack, "Slave2 does not exist");
@@ -69,7 +71,7 @@ static int hsr_newlink(struct net *src_net, struct net_=
device *dev,
 	}
=20
 	if (data[IFLA_HSR_INTERLINK])
-		interlink =3D __dev_get_by_index(src_net,
+		interlink =3D __dev_get_by_index(link_net,
 					       nla_get_u32(data[IFLA_HSR_INTERLINK]));
=20
 	if (interlink && interlink =3D=3D link[0]) {
diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.=
c
index 175efd860f7b..65a5c61cf38c 100644
--- a/net/ieee802154/6lowpan/core.c
+++ b/net/ieee802154/6lowpan/core.c
@@ -129,10 +129,10 @@ static int lowpan_validate(struct nlattr *tb[], str=
uct nlattr *data[],
 	return 0;
 }
=20
-static int lowpan_newlink(struct net *src_net, struct net_device *ldev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int lowpan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *ldev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *wdev;
 	int ret;
=20
@@ -143,7 +143,8 @@ static int lowpan_newlink(struct net *src_net, struct=
 net_device *ldev,
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
 	/* find and hold wpan device */
-	wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));
+	wdev =3D dev_get_by_index(params->link_net ? : dev_net(ldev),
+				nla_get_u32(tb[IFLA_LINK]));
 	if (!wdev)
 		return -ENODEV;
 	if (wdev->type !=3D ARPHRD_IEEE802154) {
diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
index f1f31ebfc793..4a3f8e450ef5 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1389,10 +1389,12 @@ ipgre_newlink_encap_setup(struct net_device *dev,=
 struct nlattr *data[])
 	return 0;
 }
=20
-static int ipgre_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int ipgre_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
 	int err;
@@ -1404,13 +1406,15 @@ static int ipgre_newlink(struct net *src_net, str=
uct net_device *dev,
 	err =3D ipgre_netlink_parms(dev, data, tb, &p, &fwmark);
 	if (err < 0)
 		return err;
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(net, dev, tb, &p, fwmark);
 }
=20
-static int erspan_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int erspan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
 	int err;
@@ -1422,7 +1426,7 @@ static int erspan_newlink(struct net *src_net, stru=
ct net_device *dev,
 	err =3D erspan_netlink_parms(dev, data, tb, &p, &fwmark);
 	if (err)
 		return err;
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(net, dev, tb, &p, fwmark);
 }
=20
 static int ipgre_changelink(struct net_device *dev, struct nlattr *tb[],
@@ -1695,6 +1699,10 @@ struct net_device *gretap_fb_dev_create(struct net=
 *net, const char *name,
 	LIST_HEAD(list_kill);
 	struct ip_tunnel *t;
 	int err;
+	struct rtnl_newlink_params params =3D {
+		.src_net =3D net,
+		.tb =3D tb,
+	};
=20
 	memset(&tb, 0, sizeof(tb));
=20
@@ -1707,7 +1715,8 @@ struct net_device *gretap_fb_dev_create(struct net =
*net, const char *name,
 	t =3D netdev_priv(dev);
 	t->collect_md =3D true;
=20
-	err =3D ipgre_newlink(net, dev, tb, NULL, NULL);
+	params.dev =3D dev;
+	err =3D ipgre_newlink(&params);
 	if (err < 0) {
 		free_netdev(dev);
 		return ERR_PTR(err);
diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
index 09b73acf037a..618a50d5c0c2 100644
--- a/net/ipv4/ip_tunnel.c
+++ b/net/ipv4/ip_tunnel.c
@@ -1213,11 +1213,11 @@ void ip_tunnel_delete_nets(struct list_head *net_=
list, unsigned int id,
 }
 EXPORT_SYMBOL_GPL(ip_tunnel_delete_nets);
=20
-int ip_tunnel_newlink(struct net_device *dev, struct nlattr *tb[],
-		      struct ip_tunnel_parm_kern *p, __u32 fwmark)
+int ip_tunnel_newlink(struct net *net, struct net_device *dev,
+		      struct nlattr *tb[], struct ip_tunnel_parm_kern *p,
+		      __u32 fwmark)
 {
 	struct ip_tunnel *nt;
-	struct net *net =3D dev_net(dev);
 	struct ip_tunnel_net *itn;
 	int mtu;
 	int err;
@@ -1326,7 +1326,9 @@ int ip_tunnel_init(struct net_device *dev)
 	}
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
+	if (!tunnel->net)
+		tunnel->net =3D dev_net(dev);
+
 	strscpy(tunnel->parms.name, dev->name);
 	iph->version		=3D 4;
 	iph->ihl		=3D 5;
diff --git a/net/ipv4/ip_vti.c b/net/ipv4/ip_vti.c
index f0b4419cef34..b567e2375302 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -575,15 +575,17 @@ static void vti_netlink_parms(struct nlattr *data[]=
,
 		*fwmark =3D nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
=20
-static int vti_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int vti_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
 	struct ip_tunnel_parm_kern parms;
 	__u32 fwmark =3D 0;
=20
 	vti_netlink_parms(data, &parms, &fwmark);
-	return ip_tunnel_newlink(dev, tb, &parms, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb,
+				 &parms, fwmark);
 }
=20
 static int vti_changelink(struct net_device *dev, struct nlattr *tb[],
diff --git a/net/ipv4/ipip.c b/net/ipv4/ipip.c
index dc0db5895e0e..9dccaa0d6ba7 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -436,10 +436,11 @@ static void ipip_netlink_parms(struct nlattr *data[=
],
 		*fwmark =3D nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
=20
-static int ipip_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int ipip_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
 	struct ip_tunnel *t =3D netdev_priv(dev);
 	struct ip_tunnel_encap ipencap;
 	struct ip_tunnel_parm_kern p;
@@ -453,7 +454,8 @@ static int ipip_newlink(struct net *src_net, struct n=
et_device *dev,
 	}
=20
 	ipip_netlink_parms(data, &p, &t->collect_md, &fwmark);
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb, &p=
,
+				 fwmark);
 }
=20
 static int ipip_changelink(struct net_device *dev, struct nlattr *tb[],
diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 235808cfec70..7d6d3db200a1 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -1971,7 +1971,7 @@ static bool ip6gre_netlink_encap_parms(struct nlatt=
r *data[],
 	return ret;
 }
=20
-static int ip6gre_newlink_common(struct net *src_net, struct net_device =
*dev,
+static int ip6gre_newlink_common(struct net *link_net, struct net_device=
 *dev,
 				 struct nlattr *tb[], struct nlattr *data[],
 				 struct netlink_ext_ack *extack)
 {
@@ -1992,7 +1992,7 @@ static int ip6gre_newlink_common(struct net *src_ne=
t, struct net_device *dev,
 		eth_hw_addr_random(dev);
=20
 	nt->dev =3D dev;
-	nt->net =3D dev_net(dev);
+	nt->net =3D link_net;
=20
 	err =3D register_netdevice(dev);
 	if (err)
@@ -2005,12 +2005,14 @@ static int ip6gre_newlink_common(struct net *src_=
net, struct net_device *dev,
 	return err;
 }
=20
-static int ip6gre_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int ip6gre_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
 	struct ip6_tnl *nt =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
=20
@@ -2025,7 +2027,7 @@ static int ip6gre_newlink(struct net *src_net, stru=
ct net_device *dev,
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6gre_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6gre_tunnel_link_md(ign, nt);
@@ -2241,12 +2243,14 @@ static void ip6erspan_tap_setup(struct net_device=
 *dev)
 	netif_keep_dst(dev);
 }
=20
-static int ip6erspan_newlink(struct net *src_net, struct net_device *dev=
,
-			     struct nlattr *tb[], struct nlattr *data[],
-			     struct netlink_ext_ack *extack)
+static int ip6erspan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
 	struct ip6_tnl *nt =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
=20
@@ -2262,7 +2266,7 @@ static int ip6erspan_newlink(struct net *src_net, s=
truct net_device *dev,
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6erspan_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6erspan_tunnel_link_md(ign, nt);
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 48fd53b98972..33a58c3c9ebe 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -250,10 +250,9 @@ static void ip6_dev_free(struct net_device *dev)
 	dst_cache_destroy(&t->dst_cache);
 }
=20
-static int ip6_tnl_create2(struct net_device *dev)
+static int ip6_tnl_create2(struct net *net, struct net_device *dev)
 {
 	struct ip6_tnl *t =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
 	int err;
=20
@@ -308,7 +307,7 @@ static struct ip6_tnl *ip6_tnl_create(struct net *net=
, struct __ip6_tnl_parm *p)
 	t =3D netdev_priv(dev);
 	t->parms =3D *p;
 	t->net =3D dev_net(dev);
-	err =3D ip6_tnl_create2(dev);
+	err =3D ip6_tnl_create2(net, dev);
 	if (err < 0)
 		goto failed_free;
=20
@@ -2002,11 +2001,12 @@ static void ip6_tnl_netlink_parms(struct nlattr *=
data[],
 		parms->fwmark =3D nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
=20
-static int ip6_tnl_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int ip6_tnl_newlink(struct rtnl_newlink_params *params)
 {
-	struct net *net =3D dev_net(dev);
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
 	struct ip_tunnel_encap ipencap;
 	struct ip6_tnl *nt, *t;
@@ -2031,7 +2031,7 @@ static int ip6_tnl_newlink(struct net *src_net, str=
uct net_device *dev,
 			return -EEXIST;
 	}
=20
-	err =3D ip6_tnl_create2(dev);
+	err =3D ip6_tnl_create2(net, dev);
 	if (!err && tb[IFLA_MTU])
 		ip6_tnl_change_mtu(dev, nla_get_u32(tb[IFLA_MTU]));
=20
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 590737c27537..ff9dc74819c5 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -174,10 +174,9 @@ vti6_tnl_unlink(struct vti6_net *ip6n, struct ip6_tn=
l *t)
 	}
 }
=20
-static int vti6_tnl_create2(struct net_device *dev)
+static int vti6_tnl_create2(struct net *net, struct net_device *dev)
 {
 	struct ip6_tnl *t =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct vti6_net *ip6n =3D net_generic(net, vti6_net_id);
 	int err;
=20
@@ -221,7 +220,7 @@ static struct ip6_tnl *vti6_tnl_create(struct net *ne=
t, struct __ip6_tnl_parm *p
 	t->parms =3D *p;
 	t->net =3D dev_net(dev);
=20
-	err =3D vti6_tnl_create2(dev);
+	err =3D vti6_tnl_create2(net, dev);
 	if (err < 0)
 		goto failed_free;
=20
@@ -997,11 +996,11 @@ static void vti6_netlink_parms(struct nlattr *data[=
],
 		parms->fwmark =3D nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
=20
-static int vti6_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int vti6_newlink(struct rtnl_newlink_params *params)
 {
-	struct net *net =3D dev_net(dev);
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip6_tnl *nt;
=20
 	nt =3D netdev_priv(dev);
@@ -1012,7 +1011,7 @@ static int vti6_newlink(struct net *src_net, struct=
 net_device *dev,
 	if (vti6_locate(net, &nt->parms, 0))
 		return -EEXIST;
=20
-	return vti6_tnl_create2(dev);
+	return vti6_tnl_create2(net, dev);
 }
=20
 static void vti6_dellink(struct net_device *dev, struct list_head *head)
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index 39bd8951bfca..cbcaccbfc3c9 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -198,10 +198,9 @@ static void ipip6_tunnel_clone_6rd(struct net_device=
 *dev, struct sit_net *sitn)
 #endif
 }
=20
-static int ipip6_tunnel_create(struct net_device *dev)
+static int ipip6_tunnel_create(struct net *net, struct net_device *dev)
 {
 	struct ip_tunnel *t =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct sit_net *sitn =3D net_generic(net, sit_net_id);
 	int err;
=20
@@ -270,7 +269,7 @@ static struct ip_tunnel *ipip6_tunnel_locate(struct n=
et *net,
 	nt =3D netdev_priv(dev);
=20
 	nt->parms =3D *parms;
-	if (ipip6_tunnel_create(dev) < 0)
+	if (ipip6_tunnel_create(net, dev) < 0)
 		goto failed_free;
=20
 	if (!parms->name[0])
@@ -1550,11 +1549,12 @@ static bool ipip6_netlink_6rd_parms(struct nlattr=
 *data[],
 }
 #endif
=20
-static int ipip6_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int ipip6_newlink(struct rtnl_newlink_params *params)
 {
-	struct net *net =3D dev_net(dev);
+	struct net_device *dev =3D params->dev;
+	struct nlattr **tb =3D params->tb;
+	struct nlattr **data =3D params->data;
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip_tunnel *nt;
 	struct ip_tunnel_encap ipencap;
 #ifdef CONFIG_IPV6_SIT_6RD
@@ -1575,7 +1575,7 @@ static int ipip6_newlink(struct net *src_net, struc=
t net_device *dev,
 	if (ipip6_tunnel_locate(net, &nt->parms, 0))
 		return -EEXIST;
=20
-	err =3D ipip6_tunnel_create(dev);
+	err =3D ipip6_tunnel_create(net, dev);
 	if (err < 0)
 		return err;
=20
diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_cor=
e.c
index 98f1e2b67c76..d1f2674a98c8 100644
--- a/net/xfrm/xfrm_interface_core.c
+++ b/net/xfrm/xfrm_interface_core.c
@@ -242,10 +242,9 @@ static void xfrmi_dev_free(struct net_device *dev)
 	gro_cells_destroy(&xi->gro_cells);
 }
=20
-static int xfrmi_create(struct net_device *dev)
+static int xfrmi_create(struct net *net, struct net_device *dev)
 {
 	struct xfrm_if *xi =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
 	int err;
=20
@@ -814,11 +813,12 @@ static void xfrmi_netlink_parms(struct nlattr *data=
[],
 		parms->collect_md =3D true;
 }
=20
-static int xfrmi_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int xfrmi_newlink(struct rtnl_newlink_params *params)
 {
-	struct net *net =3D dev_net(dev);
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct xfrm_if_parms p =3D {};
 	struct xfrm_if *xi;
 	int err;
@@ -851,7 +851,7 @@ static int xfrmi_newlink(struct net *src_net, struct =
net_device *dev,
 	xi->net =3D net;
 	xi->dev =3D dev;
=20
-	err =3D xfrmi_create(dev);
+	err =3D xfrmi_create(net, dev);
 	return err;
 }
=20
--=20
2.47.1

