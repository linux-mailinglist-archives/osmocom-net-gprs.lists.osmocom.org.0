Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFB0A43493
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:09 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D5C9B1F3B8D;
	Tue, 25 Feb 2025 05:36:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fi3L6eNKo1gD; Tue, 25 Feb 2025 05:36:09 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0C80E1F3B5E;
	Tue, 25 Feb 2025 05:36:06 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 28E8A38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:25 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 117B61ED200
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id grw7CO8iBbAH for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:24 +0000 (UTC)
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by mail.osmocom.org (Postfix) with ESMTPS id 4C0F21ED1FB
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:22 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2fc3db58932so6447994a91.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969481; x=1740574281; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/A97M2zaAkPkySBdEofVw8pgt3e2mXhNRi7YscGFBDg=;
        b=BXc2ddv9JGfW4VNIzNfwCNRHKWc3WVaUTWgy2m3N0HqNYYqV6EjVBHOk8SDpnwwRGC
         LORqv+qq5c6gL3dKyCvwUPPigG/l55vChHEALSiuqwtPYqJ8wJpUTd61IA16TLdJBXLm
         qaeoHZ5x3ihwSO1MxgATTRHFP9D98gK1Xfr+dFAPaQH668vsSBrXR0xi8HkZqee6abdW
         Bj5JvY4NZCios2qnUIZ3vHvJ+ECKh3iO7o9JYkE/HX/hwlKGYbJkeHd382s5DCPrs/9U
         3kwEj4WeUEhRMO+r1NQQpFHm4EcLDJTWTuYfQLKAuca6t9Mn3OVQTUJNHOWosMCq9neD
         MNiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969481; x=1740574281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/A97M2zaAkPkySBdEofVw8pgt3e2mXhNRi7YscGFBDg=;
        b=lUzD3U1892+CMsxEnHn4ty4EsW/MQ3OFmiywjW9dyVd3Ii0a442vtFOH346GCX4+Cv
         oRCxbXilEgy7T3AYioYHtK2VZ7EjBfDT/peGrDe71yfF1K14Dy0i+n9KTrOg9nKWxEqk
         A/D0fbcvhInHX12O9YgnVM2AtlQAoqcL/zKQRDVzI8jfKBpiVOTrCd9sDUM7mUtPfzP7
         MWa64elWa2NCAHL2SKqSYKe4kb0VbzKzszVUYxSOkOk/W38NQuWQukRkWXwjK9Fs3phc
         tMaVXisNBid5tskr9kAzkZZfjmGVCFAVRqBLHZOJg5j1n22ThS58hj26CeFryOkay+cY
         E+xg==
X-Forwarded-Encrypted: i=1; AJvYcCU+zNNrDXGBM6f+/AvnycProymmYSpfAjLoEYcm06fFlzV33V7eZ5PCA6ECVPmVXImeZZ1gnen2lqbL67ihWstA@lists.osmocom.org
X-Gm-Message-State: AOJu0Ywd3AJposM5/wro4zC0cC/dec54KpaWR6i9zVlnl+tcQsEWPfwZ
	ZTUyxaaGe3ZaBTFjYXJk37haEjqlsGodtQ2saRC9S9H6UyqjINXr
X-Gm-Gg: ASbGncu9IfpKwxUWVGWogdpi8dQBUQ71gw5mBbqvv73coIT4gaPv1+qJfqSz3vYJMrw
	05na3hIM9eJ/FkHhL8xMJJIcWg8QZ++NE21gxyUKP+QxHs3k4d1+m+kPC0UNn4nLowrwod4zg4B
	LR2H7j+mVNbU4gwkwCwObQhHES0t+Ov4K4jZnjVVun0YkM+vVE84CHiyilJX8XQO0pFdp/yiKye
	7nB9BwkrLIVon7v+tdmZUQuXDG8tEYFKmD66pTdVRkQRPiSBkjJlaPSrOzgR05KIwGwWCWzXdnV
	QCnKFg==
X-Google-Smtp-Source: AGHT+IEUBhWwXPGbJB0c/P5YYbS1mahzsL5jnLOAoTy7sthWzlPO0yNFcwasqXoaMOXW8LwfTV2dYw==
X-Received: by 2002:a17:90b:3dce:b0:2fa:20f4:d27f with SMTP id 98e67ed59e1d1-2fc41154398mr23076583a91.32.1739969481387;
        Wed, 19 Feb 2025 04:51:21 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:20 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 03/13] net: Use link/peer netns in newlink() of rtnl_link_ops
Date: Wed, 19 Feb 2025 20:50:29 +0800
Message-ID: <20250219125039.18024-4-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LQGQ3LXFDF77JJGOIIZNWXG5MTK4U4TQ
X-Message-ID-Hash: LQGQ3LXFDF77JJGOIIZNWXG5MTK4U4TQ
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LQGQ3LXFDF77JJGOIIZNWXG5MTK4U4TQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Add two helper functions - rtnl_newlink_link_net() and
rtnl_newlink_peer_net() for netns fallback logic. Peer netns falls back
to link netns, and link netns falls back to source netns.

Convert the use of params->net in netdevice drivers to one of the helper
functions for clarity.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
---
 drivers/infiniband/ulp/ipoib/ipoib_netlink.c    |  4 ++--
 drivers/net/amt.c                               |  6 +++---
 drivers/net/bareudp.c                           |  4 ++--
 drivers/net/can/vxcan.c                         |  2 +-
 .../net/ethernet/qualcomm/rmnet/rmnet_config.c  |  4 ++--
 drivers/net/geneve.c                            |  4 ++--
 drivers/net/gtp.c                               |  6 +++---
 drivers/net/ipvlan/ipvlan_main.c                |  4 ++--
 drivers/net/macsec.c                            |  4 ++--
 drivers/net/macvlan.c                           |  4 ++--
 drivers/net/netkit.c                            |  2 +-
 drivers/net/pfcp.c                              |  6 +++---
 drivers/net/ppp/ppp_generic.c                   |  4 ++--
 drivers/net/veth.c                              |  2 +-
 drivers/net/vxlan/vxlan_core.c                  |  4 ++--
 drivers/net/wireguard/device.c                  |  4 ++--
 drivers/net/wireless/virtual/virt_wifi.c        |  4 ++--
 drivers/net/wwan/wwan_core.c                    |  2 +-
 include/net/rtnetlink.h                         | 17 +++++++++++++++++
 net/8021q/vlan_netlink.c                        |  4 ++--
 net/hsr/hsr_netlink.c                           |  8 ++++----
 21 files changed, 58 insertions(+), 41 deletions(-)

diff --git a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c b/drivers/infin=
iband/ulp/ipoib/ipoib_netlink.c
index 16cb8ced9f35..53db7c8191e3 100644
--- a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
+++ b/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
@@ -101,8 +101,8 @@ static int ipoib_new_child_link(struct net_device *de=
v,
 				struct rtnl_newlink_params *params,
 				struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *pdev;
 	struct ipoib_dev_priv *ppriv;
@@ -112,7 +112,7 @@ static int ipoib_new_child_link(struct net_device *de=
v,
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	pdev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	pdev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!pdev || pdev->type !=3D ARPHRD_INFINIBAND)
 		return -ENODEV;
=20
diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index 96b7ec9a2c13..53899b70fae1 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -3165,13 +3165,13 @@ static int amt_newlink(struct net_device *dev,
 		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct amt_dev *amt =3D netdev_priv(dev);
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	int err =3D -EINVAL;
=20
-	amt->net =3D net;
+	amt->net =3D link_net;
 	amt->mode =3D nla_get_u32(data[IFLA_AMT_MODE]);
=20
 	if (data[IFLA_AMT_MAX_TUNNELS] &&
@@ -3186,7 +3186,7 @@ static int amt_newlink(struct net_device *dev,
 	amt->hash_buckets =3D AMT_HSIZE;
 	amt->nr_tunnels =3D 0;
 	get_random_bytes(&amt->hash_seed, sizeof(amt->hash_seed));
-	amt->stream_dev =3D dev_get_by_index(net,
+	amt->stream_dev =3D dev_get_by_index(link_net,
 					   nla_get_u32(data[IFLA_AMT_LINK]));
 	if (!amt->stream_dev) {
 		NL_SET_ERR_MSG_ATTR(extack, tb[IFLA_AMT_LINK],
diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index fc21dcfb4848..d1473c5f8eef 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -702,9 +702,9 @@ static int bareudp_newlink(struct net_device *dev,
 			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	struct bareudp_conf conf;
 	int err;
=20
@@ -712,7 +712,7 @@ static int bareudp_newlink(struct net_device *dev,
 	if (err)
 		return err;
=20
-	err =3D bareudp_configure(net, dev, &conf, extack);
+	err =3D bareudp_configure(link_net, dev, &conf, extack);
 	if (err)
 		return err;
=20
diff --git a/drivers/net/can/vxcan.c b/drivers/net/can/vxcan.c
index 6f8ebb1cfd7b..99a78a757167 100644
--- a/drivers/net/can/vxcan.c
+++ b/drivers/net/can/vxcan.c
@@ -176,8 +176,8 @@ static int vxcan_newlink(struct net_device *dev,
 			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct vxcan_priv *priv;
 	struct net_device *peer;
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drivers=
/net/ethernet/qualcomm/rmnet/rmnet_config.c
index 8151e91395e2..ba8763cac9d9 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -121,9 +121,9 @@ static int rmnet_newlink(struct net_device *dev,
 			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	int mode =3D RMNET_EPMODE_VND;
@@ -137,7 +137,7 @@ static int rmnet_newlink(struct net_device *dev,
 		return -EINVAL;
 	}
=20
-	real_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev) {
 		NL_SET_ERR_MSG_MOD(extack, "link does not exist");
 		return -ENODEV;
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index d373a851930c..c7700deefb00 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -1618,9 +1618,9 @@ static int geneve_newlink(struct net_device *dev,
 			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	struct geneve_config cfg =3D {
 		.df =3D GENEVE_DF_UNSET,
 		.use_udp6_rx_checksums =3D false,
@@ -1634,7 +1634,7 @@ static int geneve_newlink(struct net_device *dev,
 	if (err)
 		return err;
=20
-	err =3D geneve_configure(net, dev, extack, &cfg);
+	err =3D geneve_configure(link_net, dev, extack, &cfg);
 	if (err)
 		return err;
=20
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index d6d4326cb908..2cf43e7d0edc 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1466,8 +1466,8 @@ static int gtp_newlink(struct net_device *dev,
 		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
@@ -1498,7 +1498,7 @@ static int gtp_newlink(struct net_device *dev,
 	gtp->restart_count =3D nla_get_u8_default(data[IFLA_GTP_RESTART_COUNT],
 						0);
=20
-	gtp->net =3D src_net;
+	gtp->net =3D link_net;
=20
 	err =3D gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
@@ -1528,7 +1528,7 @@ static int gtp_newlink(struct net_device *dev,
 		goto out_encap;
 	}
=20
-	gn =3D net_generic(src_net, gtp_net_id);
+	gn =3D net_generic(link_net, gtp_net_id);
 	list_add(&gtp->list, &gn->gtp_dev_list);
 	dev->priv_destructor =3D gtp_destructor;
=20
diff --git a/drivers/net/ipvlan/ipvlan_main.c b/drivers/net/ipvlan/ipvlan=
_main.c
index 19ce19ca7e32..b56144ca2fde 100644
--- a/drivers/net/ipvlan/ipvlan_main.c
+++ b/drivers/net/ipvlan/ipvlan_main.c
@@ -535,9 +535,9 @@ static int ipvlan_nl_fillinfo(struct sk_buff *skb,
 int ipvlan_link_new(struct net_device *dev, struct rtnl_newlink_params *=
params,
 		    struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct ipvl_dev *ipvlan =3D netdev_priv(dev);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct ipvl_port *port;
 	struct net_device *phy_dev;
@@ -547,7 +547,7 @@ int ipvlan_link_new(struct net_device *dev, struct rt=
nl_newlink_params *params,
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	phy_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	phy_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!phy_dev)
 		return -ENODEV;
=20
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 1869b0513f57..4de5d63fd577 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -4145,10 +4145,10 @@ static int macsec_newlink(struct net_device *dev,
 			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct macsec_dev *macsec =3D macsec_priv(dev);
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	rx_handler_func_t *rx_handler;
 	u8 icv_len =3D MACSEC_DEFAULT_ICV_LEN;
 	struct net_device *real_dev;
@@ -4157,7 +4157,7 @@ static int macsec_newlink(struct net_device *dev,
=20
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
-	real_dev =3D __dev_get_by_index(net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev)
 		return -ENODEV;
 	if (real_dev->type !=3D ARPHRD_ETHER)
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index f903b414eaeb..4e9d54be887c 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1444,9 +1444,9 @@ int macvlan_common_newlink(struct net_device *dev,
 			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct macvlan_dev *vlan =3D netdev_priv(dev);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *lowerdev;
 	struct macvlan_port *port;
@@ -1457,7 +1457,7 @@ int macvlan_common_newlink(struct net_device *dev,
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	lowerdev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	lowerdev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (lowerdev =3D=3D NULL)
 		return -ENODEV;
=20
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index 640a2dbbbd28..751347392570 100644
--- a/drivers/net/netkit.c
+++ b/drivers/net/netkit.c
@@ -331,13 +331,13 @@ static int netkit_new_link(struct net_device *dev,
 			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	enum netkit_scrub scrub_prim =3D NETKIT_SCRUB_DEFAULT;
 	enum netkit_scrub scrub_peer =3D NETKIT_SCRUB_DEFAULT;
 	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp, *attr;
 	enum netkit_action policy_prim =3D NETKIT_PASS;
 	enum netkit_action policy_peer =3D NETKIT_PASS;
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	enum netkit_mode mode =3D NETKIT_L3;
 	unsigned char ifname_assign_type;
 	struct nlattr **tb =3D params->tb;
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 7b0575940e1d..f873a92d2445 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -188,12 +188,12 @@ static int pfcp_newlink(struct net_device *dev,
 			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct pfcp_dev *pfcp =3D netdev_priv(dev);
-	struct net *net =3D params->net;
 	struct pfcp_net *pn;
 	int err;
=20
-	pfcp->net =3D net;
+	pfcp->net =3D link_net;
=20
 	err =3D pfcp_add_sock(pfcp);
 	if (err) {
@@ -207,7 +207,7 @@ static int pfcp_newlink(struct net_device *dev,
 		goto exit_del_pfcp_sock;
 	}
=20
-	pn =3D net_generic(net, pfcp_net_id);
+	pn =3D net_generic(link_net, pfcp_net_id);
 	list_add(&pfcp->list, &pn->pfcp_dev_list);
=20
 	netdev_dbg(dev, "registered new PFCP interface\n");
diff --git a/drivers/net/ppp/ppp_generic.c b/drivers/net/ppp/ppp_generic.=
c
index b3340f8a6149..6220866258fc 100644
--- a/drivers/net/ppp/ppp_generic.c
+++ b/drivers/net/ppp/ppp_generic.c
@@ -1307,8 +1307,8 @@ static int ppp_nl_newlink(struct net_device *dev,
 			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct ppp_config conf =3D {
 		.unit =3D -1,
@@ -1346,7 +1346,7 @@ static int ppp_nl_newlink(struct net_device *dev,
 	if (!tb[IFLA_IFNAME] || !nla_len(tb[IFLA_IFNAME]) || !*(char *)nla_data=
(tb[IFLA_IFNAME]))
 		conf.ifname_is_set =3D false;
=20
-	err =3D ppp_dev_configure(src_net, dev, &conf);
+	err =3D ppp_dev_configure(link_net, dev, &conf);
=20
 out_unlock:
 	mutex_unlock(&ppp_mutex);
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 7dfda89f072f..ba3ae2d8092f 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1769,8 +1769,8 @@ static int veth_newlink(struct net_device *dev,
 			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	int err;
 	struct net_device *peer;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_cor=
e.c
index 09a4a5bf1038..f1212a9256f6 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4404,8 +4404,8 @@ static int vxlan_newlink(struct net_device *dev,
 			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct vxlan_config conf;
 	int err;
@@ -4414,7 +4414,7 @@ static int vxlan_newlink(struct net_device *dev,
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
index 404cf05bd72b..c496d35b266d 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -311,11 +311,11 @@ static int wg_newlink(struct net_device *dev,
 		      struct rtnl_newlink_params *params,
 		      struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct wg_device *wg =3D netdev_priv(dev);
-	struct net *src_net =3D params->net;
 	int ret =3D -ENOMEM;
=20
-	rcu_assign_pointer(wg->creating_net, src_net);
+	rcu_assign_pointer(wg->creating_net, link_net);
 	init_rwsem(&wg->static_identity.lock);
 	mutex_init(&wg->socket_update_lock);
 	mutex_init(&wg->device_update_lock);
diff --git a/drivers/net/wireless/virtual/virt_wifi.c b/drivers/net/wirel=
ess/virtual/virt_wifi.c
index 26905b2b3ba3..f9d11a023313 100644
--- a/drivers/net/wireless/virtual/virt_wifi.c
+++ b/drivers/net/wireless/virtual/virt_wifi.c
@@ -524,7 +524,7 @@ static int virt_wifi_newlink(struct net_device *dev,
 			     struct netlink_ext_ack *extack)
 {
 	struct virt_wifi_netdev_priv *priv =3D netdev_priv(dev);
-	struct net *src_net =3D params->net;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **tb =3D params->tb;
 	int err;
=20
@@ -534,7 +534,7 @@ static int virt_wifi_newlink(struct net_device *dev,
 	netif_carrier_off(dev);
=20
 	priv->upperdev =3D dev;
-	priv->lowerdev =3D __dev_get_by_index(src_net,
+	priv->lowerdev =3D __dev_get_by_index(link_net,
 					    nla_get_u32(tb[IFLA_LINK]));
=20
 	if (!priv->lowerdev)
diff --git a/drivers/net/wwan/wwan_core.c b/drivers/net/wwan/wwan_core.c
index a05c49b4e7f8..63a47d420bc5 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -1065,7 +1065,7 @@ static void wwan_create_default_link(struct wwan_de=
vice *wwandev,
 	struct nlattr *tb[IFLA_MAX + 1], *linkinfo[IFLA_INFO_MAX + 1];
 	struct nlattr *data[IFLA_WWAN_MAX + 1];
 	struct rtnl_newlink_params params =3D {
-		.net =3D &init_net,
+		.src_net =3D &init_net,
 		.tb =3D tb,
 		.data =3D data,
 	};
diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index 563a6a27436c..b22a106621fb 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -88,6 +88,23 @@ struct rtnl_newlink_params {
 	struct nlattr **data;
 };
=20
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
diff --git a/net/8021q/vlan_netlink.c b/net/8021q/vlan_netlink.c
index 91df0f96e32a..a000b1ef0520 100644
--- a/net/8021q/vlan_netlink.c
+++ b/net/8021q/vlan_netlink.c
@@ -139,9 +139,9 @@ static int vlan_newlink(struct net_device *dev,
 			struct rtnl_newlink_params *params,
 			struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct vlan_dev_priv *vlan =3D vlan_dev_priv(dev);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	unsigned int max_mtu;
@@ -158,7 +158,7 @@ static int vlan_newlink(struct net_device *dev,
 		return -EINVAL;
 	}
=20
-	real_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev) {
 		NL_SET_ERR_MSG_MOD(extack, "link does not exist");
 		return -ENODEV;
diff --git a/net/hsr/hsr_netlink.c b/net/hsr/hsr_netlink.c
index 39add538ba99..b120470246cc 100644
--- a/net/hsr/hsr_netlink.c
+++ b/net/hsr/hsr_netlink.c
@@ -33,8 +33,8 @@ static int hsr_newlink(struct net_device *dev,
 		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	enum hsr_version proto_version;
 	unsigned char multicast_spec;
 	u8 proto =3D HSR_PROTOCOL_HSR;
@@ -48,7 +48,7 @@ static int hsr_newlink(struct net_device *dev,
 		NL_SET_ERR_MSG_MOD(extack, "Slave1 device not specified");
 		return -EINVAL;
 	}
-	link[0] =3D __dev_get_by_index(src_net,
+	link[0] =3D __dev_get_by_index(link_net,
 				     nla_get_u32(data[IFLA_HSR_SLAVE1]));
 	if (!link[0]) {
 		NL_SET_ERR_MSG_MOD(extack, "Slave1 does not exist");
@@ -58,7 +58,7 @@ static int hsr_newlink(struct net_device *dev,
 		NL_SET_ERR_MSG_MOD(extack, "Slave2 device not specified");
 		return -EINVAL;
 	}
-	link[1] =3D __dev_get_by_index(src_net,
+	link[1] =3D __dev_get_by_index(link_net,
 				     nla_get_u32(data[IFLA_HSR_SLAVE2]));
 	if (!link[1]) {
 		NL_SET_ERR_MSG_MOD(extack, "Slave2 does not exist");
@@ -71,7 +71,7 @@ static int hsr_newlink(struct net_device *dev,
 	}
=20
 	if (data[IFLA_HSR_INTERLINK])
-		interlink =3D __dev_get_by_index(src_net,
+		interlink =3D __dev_get_by_index(link_net,
 					       nla_get_u32(data[IFLA_HSR_INTERLINK]));
=20
 	if (interlink && interlink =3D=3D link[0]) {
--=20
2.48.1

