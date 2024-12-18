Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1519FF144
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:23 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 59DB61B6837;
	Tue, 31 Dec 2024 18:40:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gs2WEFrw154X; Tue, 31 Dec 2024 18:40:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8C9751B677D;
	Tue, 31 Dec 2024 18:40:15 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 27E4238A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:45 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0F7551ADA5C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hUe73p7lBy7X for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:09:43 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by mail.osmocom.org (Postfix) with ESMTPS id 9D4C41ADA57
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:43 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-728e3826211so5147768b3a.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527382; x=1735132182; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRKMSN48pZYnoonZeIwJ9Ie1J9jfDq82Ru6jTXK+F2U=;
        b=FfB13KS5Trw8asDLyCszPM138HKEuKbYRhKs3YqBqtDSFlM70ej9wwkL9OmvuhO8M0
         zSddV85eZ63hL9b/SKFRWi8bfGBy3KFNw2yTix3LBXFmeflNA2u7C8RVV6gBBoRy7U2k
         MpLhNVgMikyyczM5iE8+EVrQoTd+NRS8FE+r8xJbL0drUATZDlDSxu8FSmumxQgz+oWI
         CZ7c+CJygqlBxtrj7II1xS6UArPD9s0HktP0Y7Gz49rRsOkGeDbo38IToUy+1vev8lTA
         tARWkr2HSYDcssL0U/6eHzkzAAvbi6MxbSgOooe6BYSK9cG/RMIz3qFe0/mp+JaAb52w
         X9DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527382; x=1735132182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WRKMSN48pZYnoonZeIwJ9Ie1J9jfDq82Ru6jTXK+F2U=;
        b=IrBgakhurJbE0iKCL4bT8d0dmMqVRYLYDTqrIhdkt2dZEEMiqWIrc0AvjZqnAtpbpG
         BMwiO0txegrJfxIAWedHxNrvo1SQLTCHvWpTbZzzOqlOrZOKmr28POhsgnDLcmK8hEKV
         t5aGHqaig+4dntOVfbiTbDpg/bcdChkmBZQ/K7MnN8t7TNcRXCAfoqwh9AsTdw899S/V
         AM0WCl1mUYVH10mK+RBnQJ6fcpCrMhFfyXcRm5PrxKJmGtN9/fBaaM8ds20SxHVKIoD5
         7wiBsaUFgiBufS75ySu7VDZHh0DjmeFeo+PwMISGHDVBEfwE2IvrSz5tTI4Nm4koyECW
         px8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPP181EGIS12wbXUOwEY/7CU/N0VtX5S5aGEoHN6951ZhnhZa+1imuB8NZX1C2AtSYlIpSlCVyHaY+2Wkhr1tF@lists.osmocom.org
X-Gm-Message-State: AOJu0YxrXe1pJDvpSDi4DeTplQ9l4ZozGc70HZpzc/Tds8mPmAaGCXZd
	FytxNxm1MSLh2cEQUXAdbHwhoEP/u4BokqMfSxSwF3pPhOnm5/qT
X-Gm-Gg: ASbGncsCEJnQsh7OL0FW1o7zLhx4cMcs00eD8Fp6FN+DaWRkmpvfIvdbevgce3ijkrd
	yaL+RRpVX4nf/r6Abb3ECZfNe0t/qebK3Qn+2Z8Hp/AoErL305Lm9bp4AnoSgSAQlimoyC8MTPr
	3SrMOy5m/BxxIG043ufaisoHVy8CXBIBv6NB1fhVa4/R8dP4xIBZggqqignr0hGC+cIHC8TGjws
	IIHaxPJBOFCy+aoKzwiWtNL8nGuA6chwwpRZAMA82KUZYU=
X-Google-Smtp-Source: AGHT+IEShEZqItVN4bpj9F9tKHrdXoI6KNQu9eO7tvDHhdPVTtVP8ra9TuTDu71N+3DZ7BhLG3eWVw==
X-Received: by 2002:a05:6a00:1787:b0:727:3fd5:b530 with SMTP id d2e1a72fcca58-72a8d24a775mr3594945b3a.15.1734527381531;
        Wed, 18 Dec 2024 05:09:41 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:09:40 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 02/11] rtnetlink: Pack newlink() params into struct
Date: Wed, 18 Dec 2024 21:09:00 +0800
Message-ID: <20241218130909.2173-3-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5BQDCGDE4JVUY5MU7BBDTOYEF2QDLKUD
X-Message-ID-Hash: 5BQDCGDE4JVUY5MU7BBDTOYEF2QDLKUD
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:12 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/5BQDCGDE4JVUY5MU7BBDTOYEF2QDLKUD/>
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
follows, depending on netlink attributes in the request.

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
first and then moved to target netns. This has some side effects,
including extra ifindex allocation, ifname validation and link events.
These could be avoided if we create it in target netns from
the beginning.

On the other hand, the meaning of src_net parameter is ambiguous. It
varies depending on how parameters are passed. It is the effective
link (or peer netns) by design, but some drivers ignore it and use
dev_net instead.

This patch packs existing newlink() parameters, along with the source
netns, link netns and peer netns, into a struct. The old "src_net"
is renamed to "net" to avoid confusion with real source netns, and
will be deprecated later. The use of src_net are converted to
params->net trivially.

To make the semantics more clear, two helper functions -
rtnl_newlink_link_net() and rtnl_newlink_peer_net() - are provided
for netns fallback logic. Peer netns falls back to link netns, and
link netns falls back to source netns.

In following patches, to prepare for creating link in target netns
directly:

  - For device drivers that are aware of the old "src_net", the use of
    it are replace with one of the two helper functions.
  - And for those that takes dev_net() as link netns, we try
    params->link_net and then dev_net(), in order to maintain
    compatibility with the old behavior.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  |  9 ++--
 drivers/net/amt.c                             | 12 +++--
 drivers/net/bareudp.c                         |  9 ++--
 drivers/net/bonding/bond_netlink.c            |  8 ++--
 drivers/net/can/dev/netlink.c                 |  4 +-
 drivers/net/can/vxcan.c                       |  9 ++--
 .../ethernet/qualcomm/rmnet/rmnet_config.c    |  9 ++--
 drivers/net/geneve.c                          |  9 ++--
 drivers/net/gtp.c                             |  7 +--
 drivers/net/ipvlan/ipvlan.h                   |  4 +-
 drivers/net/ipvlan/ipvlan_main.c              | 13 ++++--
 drivers/net/ipvlan/ipvtap.c                   | 10 ++--
 drivers/net/macsec.c                          | 13 ++++--
 drivers/net/macvlan.c                         |  7 ++-
 drivers/net/macvtap.c                         | 11 +++--
 drivers/net/netkit.c                          |  9 ++--
 drivers/net/pfcp.c                            |  9 ++--
 drivers/net/ppp/ppp_generic.c                 |  8 ++--
 drivers/net/team/team_core.c                  |  7 +--
 drivers/net/veth.c                            |  9 ++--
 drivers/net/vrf.c                             | 11 +++--
 drivers/net/vxlan/vxlan_core.c                |  9 ++--
 drivers/net/wireguard/device.c                |  9 ++--
 drivers/net/wireless/virtual/virt_wifi.c      | 12 +++--
 drivers/net/wwan/wwan_core.c                  | 25 +++++++---
 include/net/rtnetlink.h                       | 46 +++++++++++++++++--
 net/8021q/vlan_netlink.c                      | 13 ++++--
 net/batman-adv/soft-interface.c               | 16 +++----
 net/bridge/br_netlink.c                       | 12 +++--
 net/caif/chnl_net.c                           |  6 +--
 net/core/rtnetlink.c                          | 16 +++++--
 net/hsr/hsr_netlink.c                         |  8 ++--
 net/ieee802154/6lowpan/core.c                 |  6 +--
 net/ipv4/ip_gre.c                             | 21 ++++++---
 net/ipv4/ip_vti.c                             |  7 +--
 net/ipv4/ipip.c                               | 11 +++--
 net/ipv6/ip6_gre.c                            | 24 ++++++----
 net/ipv6/ip6_tunnel.c                         |  7 +--
 net/ipv6/ip6_vti.c                            |  6 +--
 net/ipv6/sit.c                                |  7 +--
 net/xfrm/xfrm_interface_core.c                |  7 +--
 41 files changed, 296 insertions(+), 159 deletions(-)

diff --git a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c b/drivers/infin=
iband/ulp/ipoib/ipoib_netlink.c
index 9ad8d9856275..61f2457aab77 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *pdev;
 	struct ipoib_dev_priv *ppriv;
 	u16 child_pkey;
diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index 98c6205ed19f..85878abb51d2 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -3161,13 +3161,17 @@ static int amt_validate(struct nlattr *tb[], stru=
ct nlattr *data[],
 	return 0;
 }
=20
-static int amt_newlink(struct net *net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int amt_newlink(struct rtnl_newlink_params *params)
 {
-	struct amt_dev *amt =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
+	struct amt_dev *amt;
 	int err =3D -EINVAL;
=20
+	amt =3D netdev_priv(dev);
 	amt->net =3D net;
 	amt->mode =3D nla_get_u32(data[IFLA_AMT_MODE]);
=20
diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index 70814303aab8..4c2a50bbf7c0 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	struct bareudp_conf conf;
 	int err;
=20
diff --git a/drivers/net/bonding/bond_netlink.c b/drivers/net/bonding/bon=
d_netlink.c
index 2a6a424806aa..39708a778285 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *bond_dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
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
index ca8811941085..5d7717c22fab 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *peer_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct vxcan_priv *priv;
 	struct net_device *peer;
=20
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drivers=
/net/ethernet/qualcomm/rmnet/rmnet_config.c
index f3bea196a8f9..b4834651c693 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -117,11 +117,14 @@ static void rmnet_unregister_bridge(struct rmnet_po=
rt *port)
 	rmnet_unregister_real_device(bridge_dev);
 }
=20
-static int rmnet_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int rmnet_newlink(struct rtnl_newlink_params *params)
 {
 	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	int mode =3D RMNET_EPMODE_VND;
 	struct rmnet_endpoint *ep;
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index 642155cb8315..ea0a98a513ed 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	struct geneve_config cfg =3D {
 		.df =3D GENEVE_DF_UNSET,
 		.use_udp6_rx_checksums =3D false,
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 89a996ad8cd0..46d5734da7f3 100644
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
+	struct net *src_net =3D params->net;
 	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
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
index ee2c3cf4df36..a994fd54ada4 100644
--- a/drivers/net/ipvlan/ipvlan_main.c
+++ b/drivers/net/ipvlan/ipvlan_main.c
@@ -532,16 +532,21 @@ static int ipvlan_nl_fillinfo(struct sk_buff *skb,
 	return ret;
 }
=20
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
-		    struct netlink_ext_ack *extack)
+int ipvlan_link_new(struct rtnl_newlink_params *params)
 {
-	struct ipvl_dev *ipvlan =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
+	struct ipvl_dev *ipvlan;
 	struct ipvl_port *port;
 	struct net_device *phy_dev;
 	int err;
 	u16 mode =3D IPVLAN_MODE_L3;
=20
+	ipvlan =3D netdev_priv(dev);
+
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
diff --git a/drivers/net/ipvlan/ipvtap.c b/drivers/net/ipvlan/ipvtap.c
index 1afc4c47be73..0b0c65390066 100644
--- a/drivers/net/ipvlan/ipvtap.c
+++ b/drivers/net/ipvlan/ipvtap.c
@@ -73,13 +73,13 @@ static void ipvtap_update_features(struct tap_dev *ta=
p,
 	netdev_update_features(vlan->dev);
 }
=20
-static int ipvtap_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int ipvtap_newlink(struct rtnl_newlink_params *params)
 {
-	struct ipvtap_dev *vlantap =3D netdev_priv(dev);
+	struct net_device *dev =3D params->dev;
+	struct ipvtap_dev *vlantap;
 	int err;
=20
+	vlantap =3D netdev_priv(dev);
 	INIT_LIST_HEAD(&vlantap->tap.queue_list);
=20
 	/* Since macvlan supports all offloads by default, make
@@ -97,7 +97,7 @@ static int ipvtap_newlink(struct net *src_net, struct n=
et_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D  ipvlan_link_new(src_net, dev, tb, data, extack);
+	err =3D ipvlan_link_new(params);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 1bc1e5993f56..9da111a6629c 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -4141,17 +4141,22 @@ static int macsec_add_dev(struct net_device *dev,=
 sci_t sci, u8 icv_len)
=20
 static struct lock_class_key macsec_netdev_addr_lock_key;
=20
-static int macsec_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int macsec_newlink(struct rtnl_newlink_params *params)
 {
-	struct macsec_dev *macsec =3D macsec_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	rx_handler_func_t *rx_handler;
 	u8 icv_len =3D MACSEC_DEFAULT_ICV_LEN;
 	struct net_device *real_dev;
+	struct macsec_dev *macsec;
 	int err, mtu;
 	sci_t sci;
=20
+	macsec =3D macsec_priv(dev);
+
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
 	real_dev =3D __dev_get_by_index(net, nla_get_u32(tb[IFLA_LINK]));
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index fed4fe2a4748..1915f54bd35a 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1565,11 +1565,10 @@ int macvlan_common_newlink(struct net *src_net, s=
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
+	return macvlan_common_newlink(params->net, params->dev, params->tb,
+				      params->data, params->extack);
 }
=20
 void macvlan_dellink(struct net_device *dev, struct list_head *head)
diff --git a/drivers/net/macvtap.c b/drivers/net/macvtap.c
index 29a5929d48e5..e5fd8a147310 100644
--- a/drivers/net/macvtap.c
+++ b/drivers/net/macvtap.c
@@ -77,13 +77,13 @@ static void macvtap_update_features(struct tap_dev *t=
ap,
 	netdev_update_features(vlan->dev);
 }
=20
-static int macvtap_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int macvtap_newlink(struct rtnl_newlink_params *params)
 {
-	struct macvtap_dev *vlantap =3D netdev_priv(dev);
+	struct net_device *dev =3D params->dev;
+	struct macvtap_dev *vlantap;
 	int err;
=20
+	vlantap =3D netdev_priv(dev);
 	INIT_LIST_HEAD(&vlantap->tap.queue_list);
=20
 	/* Since macvlan supports all offloads by default, make
@@ -105,7 +105,8 @@ static int macvtap_newlink(struct net *src_net, struc=
t net_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D macvlan_common_newlink(src_net, dev, tb, data, extack);
+	err =3D macvlan_common_newlink(params->net, dev, params->tb, params->da=
ta,
+				     params->extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index c1d881dc6409..f5527bb533ab 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *peer_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;
 	enum netkit_action policy_prim =3D NETKIT_PASS;
 	enum netkit_action policy_peer =3D NETKIT_PASS;
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 69434fd13f96..cb936da99674 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -184,14 +184,15 @@ static int pfcp_add_sock(struct pfcp_dev *pfcp)
 	return PTR_ERR_OR_ZERO(pfcp->sock);
 }
=20
-static int pfcp_newlink(struct net *net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int pfcp_newlink(struct rtnl_newlink_params *params)
 {
-	struct pfcp_dev *pfcp =3D netdev_priv(dev);
+	struct net_device *dev =3D params->dev;
+	struct net *net =3D params->net;
+	struct pfcp_dev *pfcp;
 	struct pfcp_net *pn;
 	int err;
=20
+	pfcp =3D netdev_priv(dev);
 	pfcp->net =3D net;
=20
 	err =3D pfcp_add_sock(pfcp);
diff --git a/drivers/net/ppp/ppp_generic.c b/drivers/net/ppp/ppp_generic.=
c
index 4583e15ad03a..5b58e7bb4e7b 100644
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
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct ppp_config conf =3D {
 		.unit =3D -1,
 		.ifname_is_set =3D true,
diff --git a/drivers/net/team/team_core.c b/drivers/net/team/team_core.c
index 69ea2c3c76bf..820c655249f5 100644
--- a/drivers/net/team/team_core.c
+++ b/drivers/net/team/team_core.c
@@ -2207,10 +2207,11 @@ static void team_setup(struct net_device *dev)
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
index 01251868a9c2..04229c07023d 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *peer_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	int err;
 	struct net_device *peer;
 	struct veth_priv *priv;
diff --git a/drivers/net/vrf.c b/drivers/net/vrf.c
index ca81b212a246..9a21bfc5bcc7 100644
--- a/drivers/net/vrf.c
+++ b/drivers/net/vrf.c
@@ -1677,16 +1677,19 @@ static void vrf_dellink(struct net_device *dev, s=
truct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
=20
-static int vrf_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
-		       struct netlink_ext_ack *extack)
+static int vrf_newlink(struct rtnl_newlink_params *params)
 {
-	struct net_vrf *vrf =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
 	struct netns_vrf *nn_vrf;
+	struct net_vrf *vrf;
 	bool *add_fib_rules;
 	struct net *net;
 	int err;
=20
+	vrf =3D netdev_priv(dev);
+
 	if (!data || !data[IFLA_VRF_TABLE]) {
 		NL_SET_ERR_MSG(extack, "VRF table id is missing");
 		return -EINVAL;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_cor=
e.c
index 0c356e0a61ef..b084adb6d319 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4393,10 +4393,13 @@ static int vxlan_nl2conf(struct nlattr *tb[], str=
uct nlattr *data[],
 	return 0;
 }
=20
-static int vxlan_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int vxlan_newlink(struct rtnl_newlink_params *params)
 {
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct vxlan_config conf;
 	int err;
=20
diff --git a/drivers/net/wireguard/device.c b/drivers/net/wireguard/devic=
e.c
index 6cf173a008e7..92aac080d2b5 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -307,13 +307,14 @@ static void wg_setup(struct net_device *dev)
 	wg->dev =3D dev;
 }
=20
-static int wg_newlink(struct net *src_net, struct net_device *dev,
-		      struct nlattr *tb[], struct nlattr *data[],
-		      struct netlink_ext_ack *extack)
+static int wg_newlink(struct rtnl_newlink_params *params)
 {
-	struct wg_device *wg =3D netdev_priv(dev);
+	struct net_device *dev =3D params->dev;
+	struct net *src_net =3D params->net;
+	struct wg_device *wg;
 	int ret =3D -ENOMEM;
=20
+	wg =3D netdev_priv(dev);
 	rcu_assign_pointer(wg->creating_net, src_net);
 	init_rwsem(&wg->static_identity.lock);
 	mutex_init(&wg->socket_update_lock);
diff --git a/drivers/net/wireless/virtual/virt_wifi.c b/drivers/net/wirel=
ess/virtual/virt_wifi.c
index 4ee374080466..d64eb03e0ac8 100644
--- a/drivers/net/wireless/virtual/virt_wifi.c
+++ b/drivers/net/wireless/virtual/virt_wifi.c
@@ -519,13 +519,17 @@ static rx_handler_result_t virt_wifi_rx_handler(str=
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
-	struct virt_wifi_netdev_priv *priv =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct virt_wifi_netdev_priv *priv;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	int err;
=20
+	priv =3D netdev_priv(dev);
+
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
diff --git a/drivers/net/wwan/wwan_core.c b/drivers/net/wwan/wwan_core.c
index a51e2755991a..908a3db61477 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -967,15 +967,20 @@ static struct net_device *wwan_rtnl_alloc(struct nl=
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
-	struct wwan_device *wwandev =3D wwan_dev_get_by_parent(dev->dev.parent)=
;
-	u32 link_id =3D nla_get_u32(data[IFLA_WWAN_LINK_ID]);
-	struct wwan_netdev_priv *priv =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct wwan_netdev_priv *priv;
+	struct wwan_device *wwandev;
+	u32 link_id;
 	int ret;
=20
+	wwandev =3D wwan_dev_get_by_parent(dev->dev.parent);
+	link_id =3D nla_get_u32(data[IFLA_WWAN_LINK_ID]);
+	priv =3D netdev_priv(dev);
+
 	if (IS_ERR(wwandev))
 		return PTR_ERR(wwandev);
=20
@@ -1064,6 +1069,11 @@ static void wwan_create_default_link(struct wwan_d=
evice *wwandev,
 	struct net_device *dev;
 	struct nlmsghdr *nlh;
 	struct sk_buff *msg;
+	struct rtnl_newlink_params params =3D {
+		.net =3D &init_net,
+		.tb =3D tb,
+		.data =3D data,
+	};
=20
 	/* Forge attributes required to create a WWAN netdev. We first
 	 * build a netlink message and then parse it. This looks
@@ -1105,7 +1115,8 @@ static void wwan_create_default_link(struct wwan_de=
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
diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index bc0069a8b6ea..ed970b4568d1 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -69,6 +69,46 @@ static inline int rtnl_msg_family(const struct nlmsghd=
r *nlh)
 		return AF_UNSPEC;
 }
=20
+/**
+ *	struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()
+ *
+ *	@net: Netns of interest
+ *	@src_net: Source netns of rtnetlink socket
+ *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
+ *	@peer_net: Peer netns
+ *	@dev: The net_device being created
+ *	@tb: IFLA_* attributes
+ *	@data: IFLA_INFO_DATA attributes
+ *	@extack: Netlink extended ACK
+ */
+struct rtnl_newlink_params {
+	struct net *net;
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
@@ -125,11 +165,7 @@ struct rtnl_link_ops {
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
index 134419667d59..26a0f0a2ce27 100644
--- a/net/8021q/vlan_netlink.c
+++ b/net/8021q/vlan_netlink.c
@@ -135,16 +135,21 @@ static int vlan_changelink(struct net_device *dev, =
struct nlattr *tb[],
 	return 0;
 }
=20
-static int vlan_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int vlan_newlink(struct rtnl_newlink_params *params)
 {
-	struct vlan_dev_priv *vlan =3D vlan_dev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
+	struct vlan_dev_priv *vlan;
 	unsigned int max_mtu;
 	__be16 proto;
 	int err;
=20
+	vlan =3D vlan_dev_priv(dev);
+
 	if (!data[IFLA_VLAN_ID]) {
 		NL_SET_ERR_MSG_MOD(extack, "VLAN id not specified");
 		return -EINVAL;
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 2758aba47a2f..5f92a25d6b26 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -1063,22 +1063,20 @@ static int batadv_softif_validate(struct nlattr *=
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
-	struct batadv_priv *bat_priv =3D netdev_priv(dev);
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct batadv_priv *bat_priv;
 	const char *algo_name;
 	int err;
=20
+	bat_priv =3D netdev_priv(dev);
+
 	if (data && data[IFLA_BATADV_ALGO_NAME]) {
 		algo_name =3D nla_data(data[IFLA_BATADV_ALGO_NAME]);
 		err =3D batadv_algo_select(bat_priv, algo_name);
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 3e0f47203f2a..362ca10607ba 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1553,13 +1553,17 @@ static int br_changelink(struct net_device *brdev=
, struct nlattr *tb[],
 	return 0;
 }
=20
-static int br_dev_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int br_dev_newlink(struct rtnl_newlink_params *params)
 {
-	struct net_bridge *br =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net_bridge *br;
 	int err;
=20
+	br =3D netdev_priv(dev);
+
 	err =3D register_netdevice(dev);
 	if (err)
 		return err;
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
index 6a2fa030c8e0..f7c176a2f1a0 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3757,6 +3757,15 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
 	struct net_device *dev;
 	char ifname[IFNAMSIZ];
 	int err;
+	struct rtnl_newlink_params params =3D {
+		.net =3D net,
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
@@ -3776,14 +3785,15 @@ static int rtnl_newlink_create(struct sk_buff *sk=
b, struct ifinfomsg *ifm,
 	}
=20
 	dev->ifindex =3D ifm->ifi_index;
+	params.dev =3D dev;
=20
 	if (link_net)
-		net =3D link_net;
+		params.net =3D link_net;
 	if (peer_net)
-		net =3D peer_net;
+		params.net =3D peer_net;
=20
 	if (ops->newlink)
-		err =3D ops->newlink(net, dev, tb, data, extack);
+		err =3D ops->newlink(&params);
 	else
 		err =3D register_netdevice(dev);
 	if (err < 0) {
diff --git a/net/hsr/hsr_netlink.c b/net/hsr/hsr_netlink.c
index b68f2f71d0e1..08d38e2e2962 100644
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
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
 	enum hsr_version proto_version;
 	unsigned char multicast_spec;
 	u8 proto =3D HSR_PROTOCOL_HSR;
diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.=
c
index 175efd860f7b..c16c14807d87 100644
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
diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
index f1f31ebfc793..ecad1d88dd26 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1389,10 +1389,11 @@ ipgre_newlink_encap_setup(struct net_device *dev,=
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
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
 	int err;
@@ -1407,10 +1408,11 @@ static int ipgre_newlink(struct net *src_net, str=
uct net_device *dev,
 	return ip_tunnel_newlink(dev, tb, &p, fwmark);
 }
=20
-static int erspan_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int erspan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
 	int err;
@@ -1695,6 +1697,10 @@ struct net_device *gretap_fb_dev_create(struct net=
 *net, const char *name,
 	LIST_HEAD(list_kill);
 	struct ip_tunnel *t;
 	int err;
+	struct rtnl_newlink_params params =3D {
+		.net =3D net,
+		.tb =3D tb,
+	};
=20
 	memset(&tb, 0, sizeof(tb));
=20
@@ -1707,7 +1713,8 @@ struct net_device *gretap_fb_dev_create(struct net =
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
diff --git a/net/ipv4/ip_vti.c b/net/ipv4/ip_vti.c
index f0b4419cef34..12ccbf34fb6c 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -575,11 +575,12 @@ static void vti_netlink_parms(struct nlattr *data[]=
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
+	struct nlattr **data =3D params->data;
 	struct ip_tunnel_parm_kern parms;
+	struct nlattr **tb =3D params->tb;
 	__u32 fwmark =3D 0;
=20
 	vti_netlink_parms(data, &parms, &fwmark);
diff --git a/net/ipv4/ipip.c b/net/ipv4/ipip.c
index dc0db5895e0e..3a737ea3c2e5 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -436,15 +436,18 @@ static void ipip_netlink_parms(struct nlattr *data[=
],
 		*fwmark =3D nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
=20
-static int ipip_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int ipip_newlink(struct rtnl_newlink_params *params)
 {
-	struct ip_tunnel *t =3D netdev_priv(dev);
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct ip_tunnel_encap ipencap;
 	struct ip_tunnel_parm_kern p;
+	struct ip_tunnel *t;
 	__u32 fwmark =3D 0;
=20
+	t =3D netdev_priv(dev);
+
 	if (ip_tunnel_netlink_encap_parms(data, &ipencap)) {
 		int err =3D ip_tunnel_encap_setup(t, &ipencap);
=20
diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 235808cfec70..3efd51f0d7d2 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -2005,15 +2005,19 @@ static int ip6gre_newlink_common(struct net *src_=
net, struct net_device *dev,
 	return err;
 }
=20
-static int ip6gre_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
-			  struct netlink_ext_ack *extack)
+static int ip6gre_newlink(struct rtnl_newlink_params *params)
 {
-	struct ip6_tnl *nt =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
+	struct ip6_tnl *nt;
 	int err;
=20
+	nt =3D netdev_priv(dev);
 	ip6gre_netlink_parms(data, &nt->parms);
 	ign =3D net_generic(net, ip6gre_net_id);
=20
@@ -2241,15 +2245,19 @@ static void ip6erspan_tap_setup(struct net_device=
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
-	struct ip6_tnl *nt =3D netdev_priv(dev);
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
+	struct ip6_tnl *nt;
 	int err;
=20
+	nt =3D netdev_priv(dev);
 	ip6gre_netlink_parms(data, &nt->parms);
 	ip6erspan_set_version(data, &nt->parms);
 	ign =3D net_generic(net, ip6gre_net_id);
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 48fd53b98972..f4bdbabc3246 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -2002,10 +2002,11 @@ static void ip6_tnl_netlink_parms(struct nlattr *=
data[],
 		parms->fwmark =3D nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
=20
-static int ip6_tnl_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
-			   struct netlink_ext_ack *extack)
+static int ip6_tnl_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
 	struct ip_tunnel_encap ipencap;
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 590737c27537..79e601e629d2 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -997,10 +997,10 @@ static void vti6_netlink_parms(struct nlattr *data[=
],
 		parms->fwmark =3D nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
=20
-static int vti6_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int vti6_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
 	struct net *net =3D dev_net(dev);
 	struct ip6_tnl *nt;
=20
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index 39bd8951bfca..4dd1309d1eb3 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -1550,10 +1550,11 @@ static bool ipip6_netlink_6rd_parms(struct nlattr=
 *data[],
 }
 #endif
=20
-static int ipip6_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
-			 struct netlink_ext_ack *extack)
+static int ipip6_newlink(struct rtnl_newlink_params *params)
 {
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip_tunnel *nt;
 	struct ip_tunnel_encap ipencap;
diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_cor=
e.c
index 98f1e2b67c76..77d50d4af4a1 100644
--- a/net/xfrm/xfrm_interface_core.c
+++ b/net/xfrm/xfrm_interface_core.c
@@ -814,10 +814,11 @@ static void xfrmi_netlink_parms(struct nlattr *data=
[],
 		parms->collect_md =3D true;
 }
=20
-static int xfrmi_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
-			struct netlink_ext_ack *extack)
+static int xfrmi_newlink(struct rtnl_newlink_params *params)
 {
+	struct netlink_ext_ack *extack =3D params->extack;
+	struct net_device *dev =3D params->dev;
+	struct nlattr **data =3D params->data;
 	struct net *net =3D dev_net(dev);
 	struct xfrm_if_parms p =3D {};
 	struct xfrm_if *xi;
--=20
2.47.1

