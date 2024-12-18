Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D433A9FF145
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:27 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B51171B687F;
	Tue, 31 Dec 2024 18:40:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FLyAgMTPTW5v; Tue, 31 Dec 2024 18:40:27 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 95BC31B679F;
	Tue, 31 Dec 2024 18:40:16 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 58E1F38A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:52 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 403AE1ADA86
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aYJ06jfpDJ0O for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:09:51 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by mail.osmocom.org (Postfix) with ESMTPS id 7BD131ADA81
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:51 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-7265c18d79bso6874868b3a.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527390; x=1735132190; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6FxJs9/7QYFH33A+3OHee7AY5o5pyw1d0MAaneftBM=;
        b=Jga/ByEql7UVWyG5H2CtHotPox4xoazSH6LTCfDa/0PjBIQRWS+jWXlOMGu5vkZoTs
         Q+zuMxkqWqoJnE+zyLq76wRE6kWOlTbY4zN8qLKOKTxsGerXmk1pLfcK3KRH5nSKaU9/
         XnlI2PG5mjgWglV2aG99lsMUdxBcgPL1w5k3K2j6S+YUj/lCOReexP7GJDidxuXqYvwc
         pgeXubHSz82Q1sVyfonofhVkoyYJZklUvr4f+Jdqd/qAQMJlsS2SXdxDFz6mud8qQy85
         x3WShUum7cQmdAxxqS0zhcXwmqU1qKeasQvb4Z8qHrT3n1Hub73/3l/VZEHJ7eKsITIx
         mbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527390; x=1735132190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v6FxJs9/7QYFH33A+3OHee7AY5o5pyw1d0MAaneftBM=;
        b=mvuuwB9UMI+eanA50WkIEIfkgT+IZ4h7Y6AR2r96pP4v0uH6JlO0exWISIr6+2/Hw8
         zXEnuixdrmarPnvlTV2De/lX1vUbDctVXLX+6ZIMGLrSFKzMTrxWdTTWtIALOaQcXoEW
         IKElz2eW3yBVFJY6dgp5vGIX7za9lKs0y3MrVQvgUF9nXngr9YJoAjacXZnbJA0HrQCD
         M8czuwYGhEK0lxZ9cNeu4pwFffJeXo7OnUvkexVc0sCCsF6uNBxBr5V/fgrMwJDKmWx+
         1aC+faIx3cEnpi0wk1pMz+5ywPfGeto3B03qU2MOPyXPiSKX4UnHnMu0vovkCvJHAavF
         XNYw==
X-Forwarded-Encrypted: i=1; AJvYcCVxmYLRLNsohEfP6jVgeDAFSpB7g/MlF3mqUqPeA9OczbrxAln8gsGureeTUlFAq+A/ikqpFMEfSA2u/4gJ4jOd@lists.osmocom.org
X-Gm-Message-State: AOJu0YyhpQaKBMRxY1s5rq6fgb7r6EFUvJ5W6fQFh9sSJ/uTLTpaAp+T
	lrGRdxCUdcPLT7v/nyDNirMkG6q0POU759VJLcm40YUHcvWJzDWS
X-Gm-Gg: ASbGnctutwTZgjJbrkz1K57tZvgjPn5dC7nx3u9gtnLGeEtrUPwc962tTMgQrMITskT
	Hgwc0WyK3GICPfk/QcYs0rTSvrlYgudMWGGVSz0ZgWV1yGPSdBfK6fuCDV4uoi88YnXTxt5K4Jf
	bTMH1cgZFbyCWVhSUQi+VBShlovgnE0j4tIc32MpNlBXQbdxW4QZfHaXxAUAtT8On88pgzn3Ckj
	eU05Fp+MilE5f/uFN+hfIHbyMqyAlwyLDRVf+NBY+IQw3g=
X-Google-Smtp-Source: AGHT+IH+tvU5/KiA8X+jx87i+ek803hY16k/2JRAl0mg7VLySak7zxczf+KB71TM0YDQSiaCbWH0pA==
X-Received: by 2002:a05:6a20:9d93:b0:1e1:9fef:e975 with SMTP id adf61e73a8af0-1e5b482e23cmr5391801637.26.1734527389573;
        Wed, 18 Dec 2024 05:09:49 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:09:49 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 03/11] net: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 18 Dec 2024 21:09:01 +0800
Message-ID: <20241218130909.2173-4-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XPSGK6EX422XDCYD3TZR32TQ4J7IGPRT
X-Message-ID-Hash: XPSGK6EX422XDCYD3TZR32TQ4J7IGPRT
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:12 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XPSGK6EX422XDCYD3TZR32TQ4J7IGPRT/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

These netdevice drivers already uses netns parameter in newlink()
callback. Convert them to use rtnl_newlink_link_net() or
rtnl_newlink_peer_net() for clarity and deprecate params->net.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 drivers/infiniband/ulp/ipoib/ipoib_netlink.c       | 4 ++--
 drivers/net/amt.c                                  | 6 +++---
 drivers/net/bareudp.c                              | 4 ++--
 drivers/net/can/vxcan.c                            | 2 +-
 drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c | 4 ++--
 drivers/net/geneve.c                               | 4 ++--
 drivers/net/gtp.c                                  | 4 ++--
 drivers/net/ipvlan/ipvlan_main.c                   | 4 ++--
 drivers/net/macsec.c                               | 4 ++--
 drivers/net/macvlan.c                              | 5 +++--
 drivers/net/macvtap.c                              | 4 ++--
 drivers/net/netkit.c                               | 2 +-
 drivers/net/pfcp.c                                 | 4 ++--
 drivers/net/ppp/ppp_generic.c                      | 4 ++--
 drivers/net/veth.c                                 | 2 +-
 drivers/net/vxlan/vxlan_core.c                     | 4 ++--
 drivers/net/wireguard/device.c                     | 4 ++--
 drivers/net/wireless/virtual/virt_wifi.c           | 4 ++--
 drivers/net/wwan/wwan_core.c                       | 2 +-
 net/8021q/vlan_netlink.c                           | 4 ++--
 net/hsr/hsr_netlink.c                              | 8 ++++----
 21 files changed, 42 insertions(+), 41 deletions(-)

diff --git a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c b/drivers/infin=
iband/ulp/ipoib/ipoib_netlink.c
index 61f2457aab77..ac01650b0ac2 100644
--- a/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
+++ b/drivers/infiniband/ulp/ipoib/ipoib_netlink.c
@@ -99,10 +99,10 @@ static int ipoib_changelink(struct net_device *dev, s=
truct nlattr *tb[],
=20
 static int ipoib_new_child_link(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *pdev;
 	struct ipoib_dev_priv *ppriv;
@@ -112,7 +112,7 @@ static int ipoib_new_child_link(struct rtnl_newlink_p=
arams *params)
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	pdev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	pdev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!pdev || pdev->type !=3D ARPHRD_INFINIBAND)
 		return -ENODEV;
=20
diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index 85878abb51d2..de4ea1a3f3d3 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -3163,16 +3163,16 @@ static int amt_validate(struct nlattr *tb[], stru=
ct nlattr *data[],
=20
 static int amt_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	struct amt_dev *amt;
 	int err =3D -EINVAL;
=20
 	amt =3D netdev_priv(dev);
-	amt->net =3D net;
+	amt->net =3D link_net;
 	amt->mode =3D nla_get_u32(data[IFLA_AMT_MODE]);
=20
 	if (data[IFLA_AMT_MAX_TUNNELS] &&
@@ -3187,7 +3187,7 @@ static int amt_newlink(struct rtnl_newlink_params *=
params)
 	amt->hash_buckets =3D AMT_HSIZE;
 	amt->nr_tunnels =3D 0;
 	get_random_bytes(&amt->hash_seed, sizeof(amt->hash_seed));
-	amt->stream_dev =3D dev_get_by_index(net,
+	amt->stream_dev =3D dev_get_by_index(link_net,
 					   nla_get_u32(data[IFLA_AMT_LINK]));
 	if (!amt->stream_dev) {
 		NL_SET_ERR_MSG_ATTR(extack, tb[IFLA_AMT_LINK],
diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index 4c2a50bbf7c0..1fe5dcae38f5 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -700,11 +700,11 @@ static void bareudp_dellink(struct net_device *dev,=
 struct list_head *head)
=20
 static int bareudp_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	struct bareudp_conf conf;
 	int err;
=20
@@ -712,7 +712,7 @@ static int bareudp_newlink(struct rtnl_newlink_params=
 *params)
 	if (err)
 		return err;
=20
-	err =3D bareudp_configure(net, dev, &conf, extack);
+	err =3D bareudp_configure(link_net, dev, &conf, extack);
 	if (err)
 		return err;
=20
diff --git a/drivers/net/can/vxcan.c b/drivers/net/can/vxcan.c
index 5d7717c22fab..e3c52c191086 100644
--- a/drivers/net/can/vxcan.c
+++ b/drivers/net/can/vxcan.c
@@ -174,10 +174,10 @@ static struct rtnl_link_ops vxcan_link_ops;
=20
 static int vxcan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct vxcan_priv *priv;
 	struct net_device *peer;
diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drivers=
/net/ethernet/qualcomm/rmnet/rmnet_config.c
index b4834651c693..7a6b746a3b15 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -120,10 +120,10 @@ static void rmnet_unregister_bridge(struct rmnet_po=
rt *port)
 static int rmnet_newlink(struct rtnl_newlink_params *params)
 {
 	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	int mode =3D RMNET_EPMODE_VND;
@@ -137,7 +137,7 @@ static int rmnet_newlink(struct rtnl_newlink_params *=
params)
 		return -EINVAL;
 	}
=20
-	real_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev) {
 		NL_SET_ERR_MSG_MOD(extack, "link does not exist");
 		return -ENODEV;
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index ea0a98a513ed..3dec3e5aae79 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -1616,11 +1616,11 @@ static void geneve_link_config(struct net_device =
*dev,
=20
 static int geneve_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	struct geneve_config cfg =3D {
 		.df =3D GENEVE_DF_UNSET,
 		.use_udp6_rx_checksums =3D false,
@@ -1634,7 +1634,7 @@ static int geneve_newlink(struct rtnl_newlink_param=
s *params)
 	if (err)
 		return err;
=20
-	err =3D geneve_configure(net, dev, extack, &cfg);
+	err =3D geneve_configure(link_net, dev, extack, &cfg);
 	if (err)
 		return err;
=20
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 46d5734da7f3..50f8a0cd1d4b 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1462,9 +1462,9 @@ static int gtp_create_sockets(struct gtp_dev *gtp, =
const struct nlattr *nla,
=20
 static int gtp_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
@@ -1495,7 +1495,7 @@ static int gtp_newlink(struct rtnl_newlink_params *=
params)
 	gtp->restart_count =3D nla_get_u8_default(data[IFLA_GTP_RESTART_COUNT],
 						0);
=20
-	gtp->net =3D src_net;
+	gtp->net =3D link_net;
=20
 	err =3D gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
diff --git a/drivers/net/ipvlan/ipvlan_main.c b/drivers/net/ipvlan/ipvlan=
_main.c
index a994fd54ada4..7d19771383c7 100644
--- a/drivers/net/ipvlan/ipvlan_main.c
+++ b/drivers/net/ipvlan/ipvlan_main.c
@@ -534,10 +534,10 @@ static int ipvlan_nl_fillinfo(struct sk_buff *skb,
=20
 int ipvlan_link_new(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct ipvl_dev *ipvlan;
 	struct ipvl_port *port;
@@ -550,7 +550,7 @@ int ipvlan_link_new(struct rtnl_newlink_params *param=
s)
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
=20
-	phy_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	phy_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!phy_dev)
 		return -ENODEV;
=20
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 9da111a6629c..ad53a67410dc 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -4143,11 +4143,11 @@ static struct lock_class_key macsec_netdev_addr_l=
ock_key;
=20
 static int macsec_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D params->net;
 	rx_handler_func_t *rx_handler;
 	u8 icv_len =3D MACSEC_DEFAULT_ICV_LEN;
 	struct net_device *real_dev;
@@ -4159,7 +4159,7 @@ static int macsec_newlink(struct rtnl_newlink_param=
s *params)
=20
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
-	real_dev =3D __dev_get_by_index(net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev)
 		return -ENODEV;
 	if (real_dev->type !=3D ARPHRD_ETHER)
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index 1915f54bd35a..7050a061b2b9 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1567,8 +1567,9 @@ EXPORT_SYMBOL_GPL(macvlan_common_newlink);
=20
 static int macvlan_newlink(struct rtnl_newlink_params *params)
 {
-	return macvlan_common_newlink(params->net, params->dev, params->tb,
-				      params->data, params->extack);
+	return macvlan_common_newlink(rtnl_newlink_link_net(params),
+				      params->dev, params->tb, params->data,
+				      params->extack);
 }
=20
 void macvlan_dellink(struct net_device *dev, struct list_head *head)
diff --git a/drivers/net/macvtap.c b/drivers/net/macvtap.c
index e5fd8a147310..01cf1efbe4c5 100644
--- a/drivers/net/macvtap.c
+++ b/drivers/net/macvtap.c
@@ -105,8 +105,8 @@ static int macvtap_newlink(struct rtnl_newlink_params=
 *params)
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D macvlan_common_newlink(params->net, dev, params->tb, params->da=
ta,
-				     params->extack);
+	err =3D macvlan_common_newlink(rtnl_newlink_link_net(params), dev,
+				     params->tb, params->data, params->extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index f5527bb533ab..79a2c37990fd 100644
--- a/drivers/net/netkit.c
+++ b/drivers/net/netkit.c
@@ -329,10 +329,10 @@ static struct rtnl_link_ops netkit_link_ops;
=20
 static int netkit_new_link(struct rtnl_newlink_params *params)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;
 	enum netkit_action policy_prim =3D NETKIT_PASS;
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index cb936da99674..e98724a71c22 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -186,14 +186,14 @@ static int pfcp_add_sock(struct pfcp_dev *pfcp)
=20
 static int pfcp_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct net_device *dev =3D params->dev;
-	struct net *net =3D params->net;
 	struct pfcp_dev *pfcp;
 	struct pfcp_net *pn;
 	int err;
=20
 	pfcp =3D netdev_priv(dev);
-	pfcp->net =3D net;
+	pfcp->net =3D link_net;
=20
 	err =3D pfcp_add_sock(pfcp);
 	if (err) {
diff --git a/drivers/net/ppp/ppp_generic.c b/drivers/net/ppp/ppp_generic.=
c
index 5b58e7bb4e7b..316b6d01436b 100644
--- a/drivers/net/ppp/ppp_generic.c
+++ b/drivers/net/ppp/ppp_generic.c
@@ -1305,9 +1305,9 @@ static int ppp_nl_validate(struct nlattr *tb[], str=
uct nlattr *data[],
=20
 static int ppp_nl_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct ppp_config conf =3D {
 		.unit =3D -1,
@@ -1345,7 +1345,7 @@ static int ppp_nl_newlink(struct rtnl_newlink_param=
s *params)
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
index 04229c07023d..11ee821edcd6 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1767,10 +1767,10 @@ static int veth_init_queues(struct net_device *de=
v, struct nlattr *tb[])
=20
 static int veth_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	int err;
 	struct net_device *peer;
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_cor=
e.c
index b084adb6d319..751da726cf56 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4395,10 +4395,10 @@ static int vxlan_nl2conf(struct nlattr *tb[], str=
uct nlattr *data[],
=20
 static int vxlan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct vxlan_config conf;
 	int err;
@@ -4407,7 +4407,7 @@ static int vxlan_newlink(struct rtnl_newlink_params=
 *params)
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
index 92aac080d2b5..b2ba9d9c6ad3 100644
--- a/drivers/net/wireguard/device.c
+++ b/drivers/net/wireguard/device.c
@@ -309,13 +309,13 @@ static void wg_setup(struct net_device *dev)
=20
 static int wg_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct net_device *dev =3D params->dev;
-	struct net *src_net =3D params->net;
 	struct wg_device *wg;
 	int ret =3D -ENOMEM;
=20
 	wg =3D netdev_priv(dev);
-	rcu_assign_pointer(wg->creating_net, src_net);
+	rcu_assign_pointer(wg->creating_net, link_net);
 	init_rwsem(&wg->static_identity.lock);
 	mutex_init(&wg->socket_update_lock);
 	mutex_init(&wg->device_update_lock);
diff --git a/drivers/net/wireless/virtual/virt_wifi.c b/drivers/net/wirel=
ess/virtual/virt_wifi.c
index d64eb03e0ac8..5e7c7a1d7d5f 100644
--- a/drivers/net/wireless/virtual/virt_wifi.c
+++ b/drivers/net/wireless/virtual/virt_wifi.c
@@ -521,10 +521,10 @@ static rx_handler_result_t virt_wifi_rx_handler(str=
uct sk_buff **pskb)
 /* Called with rtnl lock held. */
 static int virt_wifi_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct virt_wifi_netdev_priv *priv;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	int err;
=20
@@ -536,7 +536,7 @@ static int virt_wifi_newlink(struct rtnl_newlink_para=
ms *params)
 	netif_carrier_off(dev);
=20
 	priv->upperdev =3D dev;
-	priv->lowerdev =3D __dev_get_by_index(src_net,
+	priv->lowerdev =3D __dev_get_by_index(link_net,
 					    nla_get_u32(tb[IFLA_LINK]));
=20
 	if (!priv->lowerdev)
diff --git a/drivers/net/wwan/wwan_core.c b/drivers/net/wwan/wwan_core.c
index 908a3db61477..06a2172d1856 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -1070,7 +1070,7 @@ static void wwan_create_default_link(struct wwan_de=
vice *wwandev,
 	struct nlmsghdr *nlh;
 	struct sk_buff *msg;
 	struct rtnl_newlink_params params =3D {
-		.net =3D &init_net,
+		.src_net =3D &init_net,
 		.tb =3D tb,
 		.data =3D data,
 	};
diff --git a/net/8021q/vlan_netlink.c b/net/8021q/vlan_netlink.c
index 26a0f0a2ce27..0a9930017bba 100644
--- a/net/8021q/vlan_netlink.c
+++ b/net/8021q/vlan_netlink.c
@@ -137,10 +137,10 @@ static int vlan_changelink(struct net_device *dev, =
struct nlattr *tb[],
=20
 static int vlan_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct net_device *real_dev;
 	struct vlan_dev_priv *vlan;
@@ -160,7 +160,7 @@ static int vlan_newlink(struct rtnl_newlink_params *p=
arams)
 		return -EINVAL;
 	}
=20
-	real_dev =3D __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
+	real_dev =3D __dev_get_by_index(link_net, nla_get_u32(tb[IFLA_LINK]));
 	if (!real_dev) {
 		NL_SET_ERR_MSG_MOD(extack, "link does not exist");
 		return -ENODEV;
diff --git a/net/hsr/hsr_netlink.c b/net/hsr/hsr_netlink.c
index 08d38e2e2962..9bc564e81827 100644
--- a/net/hsr/hsr_netlink.c
+++ b/net/hsr/hsr_netlink.c
@@ -31,10 +31,10 @@ static const struct nla_policy hsr_policy[IFLA_HSR_MA=
X + 1] =3D {
  */
 static int hsr_newlink(struct rtnl_newlink_params *params)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	enum hsr_version proto_version;
 	unsigned char multicast_spec;
 	u8 proto =3D HSR_PROTOCOL_HSR;
@@ -48,7 +48,7 @@ static int hsr_newlink(struct rtnl_newlink_params *para=
ms)
 		NL_SET_ERR_MSG_MOD(extack, "Slave1 device not specified");
 		return -EINVAL;
 	}
-	link[0] =3D __dev_get_by_index(src_net,
+	link[0] =3D __dev_get_by_index(link_net,
 				     nla_get_u32(data[IFLA_HSR_SLAVE1]));
 	if (!link[0]) {
 		NL_SET_ERR_MSG_MOD(extack, "Slave1 does not exist");
@@ -58,7 +58,7 @@ static int hsr_newlink(struct rtnl_newlink_params *para=
ms)
 		NL_SET_ERR_MSG_MOD(extack, "Slave2 device not specified");
 		return -EINVAL;
 	}
-	link[1] =3D __dev_get_by_index(src_net,
+	link[1] =3D __dev_get_by_index(link_net,
 				     nla_get_u32(data[IFLA_HSR_SLAVE2]));
 	if (!link[1]) {
 		NL_SET_ERR_MSG_MOD(extack, "Slave2 does not exist");
@@ -71,7 +71,7 @@ static int hsr_newlink(struct rtnl_newlink_params *para=
ms)
 	}
=20
 	if (data[IFLA_HSR_INTERLINK])
-		interlink =3D __dev_get_by_index(src_net,
+		interlink =3D __dev_get_by_index(link_net,
 					       nla_get_u32(data[IFLA_HSR_INTERLINK]));
=20
 	if (interlink && interlink =3D=3D link[0]) {
--=20
2.47.1

