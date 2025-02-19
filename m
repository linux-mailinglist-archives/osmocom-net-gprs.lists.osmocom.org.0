Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7493BA43492
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:07 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6119E1F3B6B;
	Tue, 25 Feb 2025 05:36:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNFdx5OrLIIH; Tue, 25 Feb 2025 05:36:06 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 070D61F3B56;
	Tue, 25 Feb 2025 05:36:05 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 3D76738A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:16 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 259401ED1D6
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hmbXfOE-BXCP for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:14 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by mail.osmocom.org (Postfix) with ESMTPS id C3C0D1ED1D1
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:14 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-21c2f1b610dso169825575ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969473; x=1740574273; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=93fOiXLiPOPHhDRJ9eVLB7ZJAOD1HkX3lWv5xa2feOw=;
        b=MNqsjNWOSLXHUEI0MvCsvlWYZ/V4n8jaQQW90Cvo9jP/BaewBzzSqX982hf8+xhAH9
         DmLr0Y1ucEmUi0LM1T0LT8B1viDSbHnMcKRQfgweaywblfQY14IiNIMLFk4GP9a+pk3y
         hD7DQb9JgIKOU1wHFXXF4reUibc25EMzUpKNkA8gl/bXizuSHo0GyvGGI5IPoteEIRoE
         VAIsnK6Vcbg/uhS5BaHbmUaqIjbBKN/tfZexWYEy8k63dJPZjZBzgjKoxsgIstDizciq
         OboOkVCdjqLCEo3m1wjQjRcouG+y0sIj8q4Z5KS91U+ZQukq92KojRupHwUtaTdbX6F1
         3ewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969473; x=1740574273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=93fOiXLiPOPHhDRJ9eVLB7ZJAOD1HkX3lWv5xa2feOw=;
        b=TVXjRUZyvmW4svCJuB8BAmLeLlr8hh1F27/soE9FMU9Naej8oMHvv7RYoh2tRoKB8/
         DzPJVtJGul2J+WhShvJp/LFWAdoE9bAR2jfbGAwcXJEVf/NSP+y8ZjHW6URvbI7JC08J
         VpFu+Kie1nAMliQghff7TydQvBW5GYfYwKhYQ4H4a0HRH1PhGtyXxFFO+GQCHr7mp1dL
         zhhq8+jcKPydZTR0kVoaSQq+pw3GiVjWLa6rq7hK5R9jJsGYalZxyurL0nzXTqN6I0/t
         c62OqNsdFRnaMmCM5ZPQUB0aARC+jf2ro0Tmca7E1a7m0AAHLT0FPR6IJnkFcujHwOVH
         YrLA==
X-Forwarded-Encrypted: i=1; AJvYcCUTEfq8ydmn8WUA0V+meC5OdzfhlueTyUVN/IQD5Wgl1QfVV0xlbcqEWOUgIyMvWcTfiu1vGmUss02qh1Mu8HGc@lists.osmocom.org
X-Gm-Message-State: AOJu0YweRsjksCBj+1QUryFpYAKgzlopfYety/lk73gO/lcDxsY6tegZ
	qPLL9ufaPker5z6fSYCZh1CflONKKrBNHPBsGOE9/A0RRIU1lDzU
X-Gm-Gg: ASbGnctnxoZ/2TQ5XVu8mgnOQC4Z7IZVhm/CGygNPG4Z4HpJ5Nuiyv7EHqhzCi/AJ4K
	cA7UwneY/24tt6mtnCTLcLsbyXb7f5JZhpqR3lxQ90qc2latO1LSS2JekBa/FLCEM1wJ7ZTkRrp
	CH88nmm1YGxWbieaDMM3sYtNpoUApR8kciBaYP2nCff36lKbWUrsR287reT8Om/Bty1LYYSEzGz
	lp0t6Zgy7DTBIe4VfUX48KmYXYE9HgWyNvZzjxtN7fs2blx3J46zbMep3rYNlTNRnYcJPlg3p04
	oxD6GA==
X-Google-Smtp-Source: AGHT+IFwrijUxTicBZSeJZUUaytXHE0DfRRF5DwivmwpPm4+n8c4+GP1YGLfqkZTKfGUAWsG4vSnVg==
X-Received: by 2002:a17:902:ce03:b0:21f:6c81:f63 with SMTP id d9443c01a7336-22104020041mr311521055ad.16.1739969472430;
        Wed, 19 Feb 2025 04:51:12 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:11 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 02/13] rtnetlink: Pack newlink() params into struct
Date: Wed, 19 Feb 2025 20:50:28 +0800
Message-ID: <20250219125039.18024-3-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3UDI3AMTOOBMFKQ34HNQLEYXH5UPUN6X
X-Message-ID-Hash: 3UDI3AMTOOBMFKQ34HNQLEYXH5UPUN6X
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/3UDI3AMTOOBMFKQ34HNQLEYXH5UPUN6X/>
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

To provide more netns context for drivers, this patch packs existing
newlink() parameters, along with the source netns, link netns and peer
netns, into a struct. The old "src_net" is renamed to "net" to avoid
confusion with real source netns, and will be deprecated later. The use
of src_net are converted to params->net trivially.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  |  7 ++++--
 drivers/net/amt.c                             |  7 ++++--
 drivers/net/bareudp.c                         |  7 ++++--
 drivers/net/bonding/bond_netlink.c            |  6 +++--
 drivers/net/can/dev/netlink.c                 |  4 +--
 drivers/net/can/vxcan.c                       |  7 ++++--
 .../ethernet/qualcomm/rmnet/rmnet_config.c    |  7 ++++--
 drivers/net/geneve.c                          |  7 ++++--
 drivers/net/gtp.c                             |  6 +++--
 drivers/net/ipvlan/ipvlan.h                   |  3 +--
 drivers/net/ipvlan/ipvlan_main.c              |  6 +++--
 drivers/net/ipvlan/ipvtap.c                   |  6 ++---
 drivers/net/macsec.c                          |  7 ++++--
 drivers/net/macvlan.c                         | 19 ++++++++------
 drivers/net/macvtap.c                         |  6 ++---
 drivers/net/netkit.c                          | 14 +++++++----
 drivers/net/pfcp.c                            |  5 ++--
 drivers/net/ppp/ppp_generic.c                 |  7 ++++--
 drivers/net/team/team_core.c                  |  6 +++--
 drivers/net/veth.c                            |  7 ++++--
 drivers/net/vrf.c                             |  5 ++--
 drivers/net/vxlan/vxlan_core.c                |  7 ++++--
 drivers/net/wireguard/device.c                |  5 ++--
 drivers/net/wireless/virtual/virt_wifi.c      |  6 +++--
 drivers/net/wwan/wwan_core.c                  | 16 +++++++++---
 include/linux/if_macvlan.h                    |  6 +++--
 include/net/rtnetlink.h                       | 25 ++++++++++++++++---
 net/8021q/vlan_netlink.c                      |  7 ++++--
 net/batman-adv/soft-interface.c               |  9 +++----
 net/bridge/br_netlink.c                       |  6 +++--
 net/caif/chnl_net.c                           |  5 ++--
 net/core/rtnetlink.c                          | 15 ++++++++---
 net/hsr/hsr_netlink.c                         |  6 +++--
 net/ieee802154/6lowpan/core.c                 |  5 ++--
 net/ipv4/ip_gre.c                             | 16 ++++++++----
 net/ipv4/ip_vti.c                             |  6 +++--
 net/ipv4/ipip.c                               |  6 +++--
 net/ipv6/ip6_gre.c                            | 14 ++++++++---
 net/ipv6/ip6_tunnel.c                         |  6 +++--
 net/ipv6/ip6_vti.c                            |  5 ++--
 net/ipv6/sit.c                                |  6 +++--
 net/xfrm/xfrm_interface_core.c                |  7 +++---
 42 files changed, 223 insertions(+), 110 deletions(-)

diff --git a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c b/drivers/infin=
iband/ulp/ipoib/ipoib_netlink.c
index 9ad8d9856275..16cb8ced9f35 100644
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
+static int ipoib_new_child_link(struct net_device *dev,
+				struct rtnl_newlink_params *params,
 				struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *pdev;
 	struct ipoib_dev_priv *ppriv;
 	u16 child_pkey;
diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index 98c6205ed19f..96b7ec9a2c13 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -3161,11 +3161,14 @@ static int amt_validate(struct nlattr *tb[], stru=
ct nlattr *data[],
 	return 0;
 }
=20
-static int amt_newlink(struct net *net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int amt_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
 	struct amt_dev *amt =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	int err =3D -EINVAL;
=20
 	amt->net =3D net;
diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index 70814303aab8..fc21dcfb4848 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -698,10 +698,13 @@ static void bareudp_dellink(struct net_device *dev,=
 struct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
=20
-static int bareudp_newlink(struct net *net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int bareudp_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	struct bareudp_conf conf;
 	int err;
=20
diff --git a/drivers/net/bonding/bond_netlink.c b/drivers/net/bonding/bon=
d_netlink.c
index 2a6a424806aa..ac5e402c34bc 100644
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
+static int bond_newlink(struct net_device *bond_dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	int err;
=20
 	err =3D bond_changelink(bond_dev, tb, data, extack);
diff --git a/drivers/net/can/dev/netlink.c b/drivers/net/can/dev/netlink.=
c
index 01aacdcda260..f1db9b7ffd4d 100644
--- a/drivers/net/can/dev/netlink.c
+++ b/drivers/net/can/dev/netlink.c
@@ -624,8 +624,8 @@ static int can_fill_xstats(struct sk_buff *skb, const=
 struct net_device *dev)
 	return -EMSGSIZE;
 }
=20
-static int can_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int can_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
 	return -EOPNOTSUPP;
diff --git a/drivers/net/can/vxcan.c b/drivers/net/can/vxcan.c
index ca8811941085..6f8ebb1cfd7b 100644
--- a/drivers/net/can/vxcan.c
+++ b/drivers/net/can/vxcan.c
@@ -172,10 +172,13 @@ static void vxcan_setup(struct net_device *dev)
 /* forward declaration for rtnl_create_link() */
 static struct rtnl_link_ops vxcan_link_ops;
=20
-static int vxcan_newlink(struct net *peer_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int vxcan_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *peer_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct vxcan_priv *priv;
 	struct net_device *peer;
=20
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drivers=
/net/ethernet/qualcomm/rmnet/rmnet_config.c
index f3bea196a8f9..8151e91395e2 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -117,11 +117,14 @@ static void rmnet_unregister_bridge(struct rmnet_po=
rt *port)
 	rmnet_unregister_real_device(bridge_dev);
 }
=20
-static int rmnet_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int rmnet_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
 	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	int mode =3D RMNET_EPMODE_VND;
 	struct rmnet_endpoint *ep;
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index 642155cb8315..d373a851930c 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -1614,10 +1614,13 @@ static void geneve_link_config(struct net_device =
*dev,
 	geneve_change_mtu(dev, ldev_mtu - info->options_len);
 }
=20
-static int geneve_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int geneve_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	struct geneve_config cfg =3D {
 		.df =3D GENEVE_DF_UNSET,
 		.use_udp6_rx_checksums =3D false,
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index d64740bf44ed..d6d4326cb908 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1462,10 +1462,12 @@ static int gtp_create_sockets(struct gtp_dev *gtp=
, const struct nlattr *nla,
 #define GTP_TH_MAXLEN	(sizeof(struct udphdr) + sizeof(struct gtp0_header=
))
 #define GTP_IPV6_MAXLEN	(sizeof(struct ipv6hdr) + GTP_TH_MAXLEN)
=20
-static int gtp_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int gtp_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
 	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
diff --git a/drivers/net/ipvlan/ipvlan.h b/drivers/net/ipvlan/ipvlan.h
index 025e0c19ec25..50de3ee204db 100644
--- a/drivers/net/ipvlan/ipvlan.h
+++ b/drivers/net/ipvlan/ipvlan.h
@@ -166,8 +166,7 @@ struct ipvl_addr *ipvlan_addr_lookup(struct ipvl_port=
 *port, void *lyr3h,
 void *ipvlan_get_L3_hdr(struct ipvl_port *port, struct sk_buff *skb, int=
 *type);
 void ipvlan_count_rx(const struct ipvl_dev *ipvlan,
 		     unsigned int len, bool success, bool mcast);
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
+int ipvlan_link_new(struct net_device *dev, struct rtnl_newlink_params *=
params,
 		    struct netlink_ext_ack *extack);
 void ipvlan_link_delete(struct net_device *dev, struct list_head *head);
 void ipvlan_link_setup(struct net_device *dev);
diff --git a/drivers/net/ipvlan/ipvlan_main.c b/drivers/net/ipvlan/ipvlan=
_main.c
index da3a97a65507..19ce19ca7e32 100644
--- a/drivers/net/ipvlan/ipvlan_main.c
+++ b/drivers/net/ipvlan/ipvlan_main.c
@@ -532,11 +532,13 @@ static int ipvlan_nl_fillinfo(struct sk_buff *skb,
 	return ret;
 }
=20
-int ipvlan_link_new(struct net *src_net, struct net_device *dev,
-		    struct nlattr *tb[], struct nlattr *data[],
+int ipvlan_link_new(struct net_device *dev, struct rtnl_newlink_params *=
params,
 		    struct netlink_ext_ack *extack)
 {
 	struct ipvl_dev *ipvlan =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct ipvl_port *port;
 	struct net_device *phy_dev;
 	int err;
diff --git a/drivers/net/ipvlan/ipvtap.c b/drivers/net/ipvlan/ipvtap.c
index 1afc4c47be73..edd13916831a 100644
--- a/drivers/net/ipvlan/ipvtap.c
+++ b/drivers/net/ipvlan/ipvtap.c
@@ -73,8 +73,8 @@ static void ipvtap_update_features(struct tap_dev *tap,
 	netdev_update_features(vlan->dev);
 }
=20
-static int ipvtap_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ipvtap_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct ipvtap_dev *vlantap =3D netdev_priv(dev);
@@ -97,7 +97,7 @@ static int ipvtap_newlink(struct net *src_net, struct n=
et_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D  ipvlan_link_new(src_net, dev, tb, data, extack);
+	err =3D ipvlan_link_new(dev, params, extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 1bc1e5993f56..1869b0513f57 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -4141,11 +4141,14 @@ static int macsec_add_dev(struct net_device *dev,=
 sci_t sci, u8 icv_len)
=20
 static struct lock_class_key macsec_netdev_addr_lock_key;
=20
-static int macsec_newlink(struct net *net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int macsec_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct macsec_dev *macsec =3D macsec_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
+	struct net *net =3D params->net;
 	rx_handler_func_t *rx_handler;
 	u8 icv_len =3D MACSEC_DEFAULT_ICV_LEN;
 	struct net_device *real_dev;
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index fed4fe2a4748..f903b414eaeb 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1440,16 +1440,19 @@ static int macvlan_changelink_sources(struct macv=
lan_dev *vlan, u32 mode,
 	return 0;
 }
=20
-int macvlan_common_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+int macvlan_common_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan =3D netdev_priv(dev);
-	struct macvlan_port *port;
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *lowerdev;
-	int err;
-	int macmode;
+	struct macvlan_port *port;
 	bool create =3D false;
+	int macmode;
+	int err;
=20
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
@@ -1565,11 +1568,11 @@ int macvlan_common_newlink(struct net *src_net, s=
truct net_device *dev,
 }
 EXPORT_SYMBOL_GPL(macvlan_common_newlink);
=20
-static int macvlan_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int macvlan_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
-	return macvlan_common_newlink(src_net, dev, tb, data, extack);
+	return macvlan_common_newlink(dev, params, extack);
 }
=20
 void macvlan_dellink(struct net_device *dev, struct list_head *head)
diff --git a/drivers/net/macvtap.c b/drivers/net/macvtap.c
index 29a5929d48e5..b391a0f740a3 100644
--- a/drivers/net/macvtap.c
+++ b/drivers/net/macvtap.c
@@ -77,8 +77,8 @@ static void macvtap_update_features(struct tap_dev *tap=
,
 	netdev_update_features(vlan->dev);
 }
=20
-static int macvtap_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int macvtap_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
 	struct macvtap_dev *vlantap =3D netdev_priv(dev);
@@ -105,7 +105,7 @@ static int macvtap_newlink(struct net *src_net, struc=
t net_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D macvlan_common_newlink(src_net, dev, tb, data, extack);
+	err =3D macvlan_common_newlink(dev, params, extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index 1e1b00756be7..640a2dbbbd28 100644
--- a/drivers/net/netkit.c
+++ b/drivers/net/netkit.c
@@ -327,17 +327,20 @@ static int netkit_validate(struct nlattr *tb[], str=
uct nlattr *data[],
=20
 static struct rtnl_link_ops netkit_link_ops;
=20
-static int netkit_new_link(struct net *peer_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int netkit_new_link(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
-	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;
-	enum netkit_action policy_prim =3D NETKIT_PASS;
-	enum netkit_action policy_peer =3D NETKIT_PASS;
 	enum netkit_scrub scrub_prim =3D NETKIT_SCRUB_DEFAULT;
 	enum netkit_scrub scrub_peer =3D NETKIT_SCRUB_DEFAULT;
+	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp, *attr;
+	enum netkit_action policy_prim =3D NETKIT_PASS;
+	enum netkit_action policy_peer =3D NETKIT_PASS;
+	struct nlattr **data =3D params->data;
+	struct net *peer_net =3D params->net;
 	enum netkit_mode mode =3D NETKIT_L3;
 	unsigned char ifname_assign_type;
+	struct nlattr **tb =3D params->tb;
 	u16 headroom =3D 0, tailroom =3D 0;
 	struct ifinfomsg *ifmp =3D NULL;
 	struct net_device *peer;
@@ -345,6 +348,7 @@ static int netkit_new_link(struct net *peer_net, stru=
ct net_device *dev,
 	struct netkit *nk;
 	int err;
=20
+	tbp =3D tb;
 	if (data) {
 		if (data[IFLA_NETKIT_MODE])
 			mode =3D nla_get_u32(data[IFLA_NETKIT_MODE]);
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 68d0d9e92a22..7b0575940e1d 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -184,11 +184,12 @@ static int pfcp_add_sock(struct pfcp_dev *pfcp)
 	return PTR_ERR_OR_ZERO(pfcp->sock);
 }
=20
-static int pfcp_newlink(struct net *net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int pfcp_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
 	struct pfcp_dev *pfcp =3D netdev_priv(dev);
+	struct net *net =3D params->net;
 	struct pfcp_net *pn;
 	int err;
=20
diff --git a/drivers/net/ppp/ppp_generic.c b/drivers/net/ppp/ppp_generic.=
c
index 4583e15ad03a..b3340f8a6149 100644
--- a/drivers/net/ppp/ppp_generic.c
+++ b/drivers/net/ppp/ppp_generic.c
@@ -1303,10 +1303,13 @@ static int ppp_nl_validate(struct nlattr *tb[], s=
truct nlattr *data[],
 	return 0;
 }
=20
-static int ppp_nl_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ppp_nl_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct ppp_config conf =3D {
 		.unit =3D -1,
 		.ifname_is_set =3D true,
diff --git a/drivers/net/team/team_core.c b/drivers/net/team/team_core.c
index f4019815f473..78edb8186b6d 100644
--- a/drivers/net/team/team_core.c
+++ b/drivers/net/team/team_core.c
@@ -2218,10 +2218,12 @@ static void team_setup(struct net_device *dev)
 	dev->features |=3D NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
 }
=20
-static int team_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int team_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **tb =3D params->tb;
+
 	if (tb[IFLA_ADDRESS] =3D=3D NULL)
 		eth_hw_addr_random(dev);
=20
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 01251868a9c2..7dfda89f072f 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1765,10 +1765,13 @@ static int veth_init_queues(struct net_device *de=
v, struct nlattr *tb[])
 	return 0;
 }
=20
-static int veth_newlink(struct net *peer_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int veth_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *peer_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	int err;
 	struct net_device *peer;
 	struct veth_priv *priv;
diff --git a/drivers/net/vrf.c b/drivers/net/vrf.c
index 5f21ce1013c4..849c3ced2690 100644
--- a/drivers/net/vrf.c
+++ b/drivers/net/vrf.c
@@ -1675,11 +1675,12 @@ static void vrf_dellink(struct net_device *dev, s=
truct list_head *head)
 	unregister_netdevice_queue(dev, head);
 }
=20
-static int vrf_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int vrf_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
 	struct net_vrf *vrf =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
 	struct netns_vrf *nn_vrf;
 	bool *add_fib_rules;
 	struct net *net;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_cor=
e.c
index ac5bc78edfd7..09a4a5bf1038 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4400,10 +4400,13 @@ static int vxlan_nl2conf(struct nlattr *tb[], str=
uct nlattr *data[],
 	return 0;
 }
=20
-static int vxlan_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int vxlan_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct vxlan_config conf;
 	int err;
=20
diff --git a/drivers/net/wireguard/device.c b/drivers/net/wireguard/devic=
e.c
index 6cf173a008e7..404cf05bd72b 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -307,11 +307,12 @@ static void wg_setup(struct net_device *dev)
 	wg->dev =3D dev;
 }
=20
-static int wg_newlink(struct net *src_net, struct net_device *dev,
-		      struct nlattr *tb[], struct nlattr *data[],
+static int wg_newlink(struct net_device *dev,
+		      struct rtnl_newlink_params *params,
 		      struct netlink_ext_ack *extack)
 {
 	struct wg_device *wg =3D netdev_priv(dev);
+	struct net *src_net =3D params->net;
 	int ret =3D -ENOMEM;
=20
 	rcu_assign_pointer(wg->creating_net, src_net);
diff --git a/drivers/net/wireless/virtual/virt_wifi.c b/drivers/net/wirel=
ess/virtual/virt_wifi.c
index 4ee374080466..26905b2b3ba3 100644
--- a/drivers/net/wireless/virtual/virt_wifi.c
+++ b/drivers/net/wireless/virtual/virt_wifi.c
@@ -519,11 +519,13 @@ static rx_handler_result_t virt_wifi_rx_handler(str=
uct sk_buff **pskb)
 }
=20
 /* Called with rtnl lock held. */
-static int virt_wifi_newlink(struct net *src_net, struct net_device *dev=
,
-			     struct nlattr *tb[], struct nlattr *data[],
+static int virt_wifi_newlink(struct net_device *dev,
+			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
 	struct virt_wifi_netdev_priv *priv =3D netdev_priv(dev);
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	int err;
=20
 	if (!tb[IFLA_LINK])
diff --git a/drivers/net/wwan/wwan_core.c b/drivers/net/wwan/wwan_core.c
index a51e2755991a..a05c49b4e7f8 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -967,15 +967,18 @@ static struct net_device *wwan_rtnl_alloc(struct nl=
attr *tb[],
 	return dev;
 }
=20
-static int wwan_rtnl_newlink(struct net *src_net, struct net_device *dev=
,
-			     struct nlattr *tb[], struct nlattr *data[],
+static int wwan_rtnl_newlink(struct net_device *dev,
+			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
 	struct wwan_device *wwandev =3D wwan_dev_get_by_parent(dev->dev.parent)=
;
-	u32 link_id =3D nla_get_u32(data[IFLA_WWAN_LINK_ID]);
 	struct wwan_netdev_priv *priv =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	u32 link_id;
 	int ret;
=20
+	link_id =3D nla_get_u32(data[IFLA_WWAN_LINK_ID]);
+
 	if (IS_ERR(wwandev))
 		return PTR_ERR(wwandev);
=20
@@ -1061,6 +1064,11 @@ static void wwan_create_default_link(struct wwan_d=
evice *wwandev,
 {
 	struct nlattr *tb[IFLA_MAX + 1], *linkinfo[IFLA_INFO_MAX + 1];
 	struct nlattr *data[IFLA_WWAN_MAX + 1];
+	struct rtnl_newlink_params params =3D {
+		.net =3D &init_net,
+		.tb =3D tb,
+		.data =3D data,
+	};
 	struct net_device *dev;
 	struct nlmsghdr *nlh;
 	struct sk_buff *msg;
@@ -1105,7 +1113,7 @@ static void wwan_create_default_link(struct wwan_de=
vice *wwandev,
 	if (WARN_ON(IS_ERR(dev)))
 		goto unlock;
=20
-	if (WARN_ON(wwan_rtnl_newlink(&init_net, dev, tb, data, NULL))) {
+	if (WARN_ON(wwan_rtnl_newlink(dev, &params, NULL))) {
 		free_netdev(dev);
 		goto unlock;
 	}
diff --git a/include/linux/if_macvlan.h b/include/linux/if_macvlan.h
index 523025106a64..0f7281e3e448 100644
--- a/include/linux/if_macvlan.h
+++ b/include/linux/if_macvlan.h
@@ -59,8 +59,10 @@ static inline void macvlan_count_rx(const struct macvl=
an_dev *vlan,
=20
 extern void macvlan_common_setup(struct net_device *dev);
=20
-extern int macvlan_common_newlink(struct net *src_net, struct net_device=
 *dev,
-				  struct nlattr *tb[], struct nlattr *data[],
+struct rtnl_newlink_params;
+
+extern int macvlan_common_newlink(struct net_device *dev,
+				  struct rtnl_newlink_params *params,
 				  struct netlink_ext_ack *extack);
=20
 extern void macvlan_dellink(struct net_device *dev, struct list_head *he=
ad);
diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index bc0069a8b6ea..563a6a27436c 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -69,6 +69,25 @@ static inline int rtnl_msg_family(const struct nlmsghd=
r *nlh)
 		return AF_UNSPEC;
 }
=20
+/**
+ * struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()
+ *
+ * @net: Netns of interest
+ * @src_net: Source netns of rtnetlink socket
+ * @link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
+ * @peer_net: Peer netns
+ * @tb: IFLA_* attributes
+ * @data: IFLA_INFO_DATA attributes
+ */
+struct rtnl_newlink_params {
+	struct net *net;
+	struct net *src_net;
+	struct net *link_net;
+	struct net *peer_net;
+	struct nlattr **tb;
+	struct nlattr **data;
+};
+
 /**
  *	struct rtnl_link_ops - rtnetlink link operations
  *
@@ -125,10 +144,8 @@ struct rtnl_link_ops {
 					    struct nlattr *data[],
 					    struct netlink_ext_ack *extack);
=20
-	int			(*newlink)(struct net *src_net,
-					   struct net_device *dev,
-					   struct nlattr *tb[],
-					   struct nlattr *data[],
+	int			(*newlink)(struct net_device *dev,
+					   struct rtnl_newlink_params *params,
 					   struct netlink_ext_ack *extack);
 	int			(*changelink)(struct net_device *dev,
 					      struct nlattr *tb[],
diff --git a/net/8021q/vlan_netlink.c b/net/8021q/vlan_netlink.c
index 134419667d59..91df0f96e32a 100644
--- a/net/8021q/vlan_netlink.c
+++ b/net/8021q/vlan_netlink.c
@@ -135,11 +135,14 @@ static int vlan_changelink(struct net_device *dev, =
struct nlattr *tb[],
 	return 0;
 }
=20
-static int vlan_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int vlan_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
 	struct vlan_dev_priv *vlan =3D vlan_dev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	unsigned int max_mtu;
 	__be16 proto;
diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interf=
ace.c
index 822d788a5f86..d893c8013261 100644
--- a/net/batman-adv/soft-interface.c
+++ b/net/batman-adv/soft-interface.c
@@ -1077,19 +1077,18 @@ static int batadv_softif_validate(struct nlattr *=
tb[], struct nlattr *data[],
=20
 /**
  * batadv_softif_newlink() - pre-initialize and register new batadv link
- * @src_net: the applicable net namespace
  * @dev: network device to register
- * @tb: IFLA_INFO_DATA netlink attributes
- * @data: enum batadv_ifla_attrs attributes
+ * @params: rtnl newlink parameters
  * @extack: extended ACK report struct
  *
  * Return: 0 if successful or error otherwise.
  */
-static int batadv_softif_newlink(struct net *src_net, struct net_device =
*dev,
-				 struct nlattr *tb[], struct nlattr *data[],
+static int batadv_softif_newlink(struct net_device *dev,
+				 struct rtnl_newlink_params *params,
 				 struct netlink_ext_ack *extack)
 {
 	struct batadv_priv *bat_priv =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
 	const char *algo_name;
 	int err;
=20
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 3e0f47203f2a..6e337937d0d7 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1553,11 +1553,13 @@ static int br_changelink(struct net_device *brdev=
, struct nlattr *tb[],
 	return 0;
 }
=20
-static int br_dev_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int br_dev_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct net_bridge *br =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	int err;
=20
 	err =3D register_netdevice(dev);
diff --git a/net/caif/chnl_net.c b/net/caif/chnl_net.c
index 94ad09e36df2..fa6a3c2634a8 100644
--- a/net/caif/chnl_net.c
+++ b/net/caif/chnl_net.c
@@ -438,10 +438,11 @@ static void caif_netlink_parms(struct nlattr *data[=
],
 	}
 }
=20
-static int ipcaif_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ipcaif_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
 	int ret;
 	struct chnl_net *caifdev;
 	ASSERT_RTNL();
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 0f3e2c6021de..9ebbde0d131c 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3767,7 +3767,13 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
 			       struct netlink_ext_ack *extack)
 {
 	unsigned char name_assign_type =3D NET_NAME_USER;
-	struct net *net =3D sock_net(skb->sk);
+	struct rtnl_newlink_params params =3D {
+		.src_net =3D sock_net(skb->sk),
+		.link_net =3D link_net,
+		.peer_net =3D peer_net,
+		.tb =3D tb,
+		.data =3D data,
+	};
 	u32 portid =3D NETLINK_CB(skb).portid;
 	struct net_device *dev;
 	char ifname[IFNAMSIZ];
@@ -3792,13 +3798,14 @@ static int rtnl_newlink_create(struct sk_buff *sk=
b, struct ifinfomsg *ifm,
=20
 	dev->ifindex =3D ifm->ifi_index;
=20
+	params.net =3D params.src_net;
 	if (link_net)
-		net =3D link_net;
+		params.net =3D link_net;
 	if (peer_net)
-		net =3D peer_net;
+		params.net =3D peer_net;
=20
 	if (ops->newlink)
-		err =3D ops->newlink(net, dev, tb, data, extack);
+		err =3D ops->newlink(dev, &params, extack);
 	else
 		err =3D register_netdevice(dev);
 	if (err < 0) {
diff --git a/net/hsr/hsr_netlink.c b/net/hsr/hsr_netlink.c
index b68f2f71d0e1..39add538ba99 100644
--- a/net/hsr/hsr_netlink.c
+++ b/net/hsr/hsr_netlink.c
@@ -29,10 +29,12 @@ static const struct nla_policy hsr_policy[IFLA_HSR_MA=
X + 1] =3D {
 /* Here, it seems a netdevice has already been allocated for us, and the
  * hsr_dev_setup routine has been executed. Nice!
  */
-static int hsr_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int hsr_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
 	enum hsr_version proto_version;
 	unsigned char multicast_spec;
 	u8 proto =3D HSR_PROTOCOL_HSR;
diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.=
c
index 175efd860f7b..704bf9e3f097 100644
--- a/net/ieee802154/6lowpan/core.c
+++ b/net/ieee802154/6lowpan/core.c
@@ -129,10 +129,11 @@ static int lowpan_validate(struct nlattr *tb[], str=
uct nlattr *data[],
 	return 0;
 }
=20
-static int lowpan_newlink(struct net *src_net, struct net_device *ldev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int lowpan_newlink(struct net_device *ldev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **tb =3D params->tb;
 	struct net_device *wdev;
 	int ret;
=20
diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
index c9f11a046c26..1fe9b13d351c 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1396,10 +1396,12 @@ ipgre_newlink_encap_setup(struct net_device *dev,=
 struct nlattr *data[])
 	return 0;
 }
=20
-static int ipgre_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int ipgre_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
 	int err;
@@ -1414,10 +1416,12 @@ static int ipgre_newlink(struct net *src_net, str=
uct net_device *dev,
 	return ip_tunnel_newlink(dev, tb, &p, fwmark);
 }
=20
-static int erspan_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int erspan_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
 	int err;
@@ -1697,6 +1701,7 @@ static struct rtnl_link_ops erspan_link_ops __read_=
mostly =3D {
 struct net_device *gretap_fb_dev_create(struct net *net, const char *nam=
e,
 					u8 name_assign_type)
 {
+	struct rtnl_newlink_params params =3D { .net =3D net };
 	struct nlattr *tb[IFLA_MAX + 1];
 	struct net_device *dev;
 	LIST_HEAD(list_kill);
@@ -1704,6 +1709,7 @@ struct net_device *gretap_fb_dev_create(struct net =
*net, const char *name,
 	int err;
=20
 	memset(&tb, 0, sizeof(tb));
+	params.tb =3D tb;
=20
 	dev =3D rtnl_create_link(net, name, name_assign_type,
 			       &ipgre_tap_ops, tb, NULL);
@@ -1714,7 +1720,7 @@ struct net_device *gretap_fb_dev_create(struct net =
*net, const char *name,
 	t =3D netdev_priv(dev);
 	t->collect_md =3D true;
=20
-	err =3D ipgre_newlink(net, dev, tb, NULL, NULL);
+	err =3D ipgre_newlink(dev, &params, NULL);
 	if (err < 0) {
 		free_netdev(dev);
 		return ERR_PTR(err);
diff --git a/net/ipv4/ip_vti.c b/net/ipv4/ip_vti.c
index f0b4419cef34..b901bee03e6d 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -575,11 +575,13 @@ static void vti_netlink_parms(struct nlattr *data[]=
,
 		*fwmark =3D nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
=20
-static int vti_newlink(struct net *src_net, struct net_device *dev,
-		       struct nlattr *tb[], struct nlattr *data[],
+static int vti_newlink(struct net_device *dev,
+		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
 	struct ip_tunnel_parm_kern parms;
+	struct nlattr **tb =3D params->tb;
 	__u32 fwmark =3D 0;
=20
 	vti_netlink_parms(data, &parms, &fwmark);
diff --git a/net/ipv4/ipip.c b/net/ipv4/ipip.c
index dc0db5895e0e..a8b844bcfc64 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -436,11 +436,13 @@ static void ipip_netlink_parms(struct nlattr *data[=
],
 		*fwmark =3D nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
=20
-static int ipip_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int ipip_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
 	struct ip_tunnel *t =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct ip_tunnel_encap ipencap;
 	struct ip_tunnel_parm_kern p;
 	__u32 fwmark =3D 0;
diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 235808cfec70..863852abe8ea 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -2005,11 +2005,14 @@ static int ip6gre_newlink_common(struct net *src_=
net, struct net_device *dev,
 	return err;
 }
=20
-static int ip6gre_newlink(struct net *src_net, struct net_device *dev,
-			  struct nlattr *tb[], struct nlattr *data[],
+static int ip6gre_newlink(struct net_device *dev,
+			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
 	struct ip6_tnl *nt =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
@@ -2241,11 +2244,14 @@ static void ip6erspan_tap_setup(struct net_device=
 *dev)
 	netif_keep_dst(dev);
 }
=20
-static int ip6erspan_newlink(struct net *src_net, struct net_device *dev=
,
-			     struct nlattr *tb[], struct nlattr *data[],
+static int ip6erspan_newlink(struct net_device *dev,
+			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
 	struct ip6_tnl *nt =3D netdev_priv(dev);
+	struct nlattr **data =3D params->data;
+	struct net *src_net =3D params->net;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 48fd53b98972..54b843d20870 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -2002,10 +2002,12 @@ static void ip6_tnl_netlink_parms(struct nlattr *=
data[],
 		parms->fwmark =3D nla_get_u32(data[IFLA_IPTUN_FWMARK]);
 }
=20
-static int ip6_tnl_newlink(struct net *src_net, struct net_device *dev,
-			   struct nlattr *tb[], struct nlattr *data[],
+static int ip6_tnl_newlink(struct net_device *dev,
+			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
 	struct ip_tunnel_encap ipencap;
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 590737c27537..993f85aeb882 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -997,10 +997,11 @@ static void vti6_netlink_parms(struct nlattr *data[=
],
 		parms->fwmark =3D nla_get_u32(data[IFLA_VTI_FWMARK]);
 }
=20
-static int vti6_newlink(struct net *src_net, struct net_device *dev,
-			struct nlattr *tb[], struct nlattr *data[],
+static int vti6_newlink(struct net_device *dev,
+			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
 	struct net *net =3D dev_net(dev);
 	struct ip6_tnl *nt;
=20
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index 39bd8951bfca..e2bd52cabdee 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -1550,10 +1550,12 @@ static bool ipip6_netlink_6rd_parms(struct nlattr=
 *data[],
 }
 #endif
=20
-static int ipip6_newlink(struct net *src_net, struct net_device *dev,
-			 struct nlattr *tb[], struct nlattr *data[],
+static int ipip6_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
+	struct nlattr **tb =3D params->tb;
 	struct net *net =3D dev_net(dev);
 	struct ip_tunnel *nt;
 	struct ip_tunnel_encap ipencap;
diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_cor=
e.c
index c397eb99d867..5659a6cadd51 100644
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
+static int xfrmi_newlink(struct net_device *dev,
+			 struct rtnl_newlink_params *params,
+			 struct netlink_ext_ack *extack)
 {
+	struct nlattr **data =3D params->data;
 	struct net *net =3D dev_net(dev);
 	struct xfrm_if_parms p =3D {};
 	struct xfrm_if *xi;
--=20
2.48.1

