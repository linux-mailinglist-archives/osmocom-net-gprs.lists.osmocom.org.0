Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5BFA1889B
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:12 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4AA251D2F58;
	Tue, 21 Jan 2025 23:58:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fV__ltgEdeg6; Tue, 21 Jan 2025 23:58:11 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 30ABC1D2F30;
	Tue, 21 Jan 2025 23:58:09 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8C80638A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:07 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 744261C3587
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mFZqq9S-L0WV for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:06 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by mail.osmocom.org (Postfix) with ESMTPS id AF3941C357E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:06 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2156e078563so64641085ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779084; x=1737383884; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LZBCyw57IE7Zso6/WsMTOb7GBu1vP4ikeykgITmoGTY=;
        b=GEX4aFBG67FSMVgh7R/WslbZOQ9bXHKhWRroYzdw129dEEg4T707e82TlTwUALZ84f
         +G5SgWiIAzvB5deHI8bFj3D/JD1ubEMCUt2ZHzDVjJcLerWhbhgU39HhXF4sJpUqlrv6
         5CCOm7nfxqlYjaUraEhNJgtqfo//73G5Nu+3N89udh28E7MOCc+xf64Ufm/Aoek+JibI
         jbZxlx2lNacOPve3kjTVV2NB5b3MxjOxIvI25z4qSZf5oYiDjE72zD7bW/kpqIoSRxKD
         8JWyM/3LaJRnyhQuiThBOvRmegqJY3k21+zdnKpvy2SzwKIdtaQ6eWQ/eEbPpwZ/TtyY
         fCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779084; x=1737383884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LZBCyw57IE7Zso6/WsMTOb7GBu1vP4ikeykgITmoGTY=;
        b=RMd1aASzFOxwLUSQ+2Qo/myIgzU5iOgZUwh7v3Fp3xNmW9Tmy5hw5Bd3GNm3ELt5Ew
         SX3/FKMouR2hvsAIrZXSSLWixht7WM2T3qFUxgv0LpTvIczAmVs+ipMutEAM9tMRExYT
         iALXY/1JweKRONQIgPfmKVxVzlP7dgsRTtdFrdU5FVihMc/DK5N+LGkedOirrlC5x+ER
         eVoQSQwz3uuUjdnHPXUotvBT5vC6CWM6iM0JjmxmEGXqLYorpqO1loudR6PIzQC41Srt
         cXxhANOKzC7wQ/FKfsdE8Ow7wAD0uMbrrGi01LnAW0DXZD3/O10sGc64e0XawyhMC9Dr
         e4ig==
X-Forwarded-Encrypted: i=1; AJvYcCUd7LLgogAcDPervwb2M57fz7xg7EtKpSrkKLOMY3tZD0ZSpRb+9X7anUBSuw8/9pa80rMVYifipGbO6gMMfJwd@lists.osmocom.org
X-Gm-Message-State: AOJu0YwAUnml2ln/ezAv2QYWr5A3ZPWZVY2iRg/5Mww6x01NsUzllvXG
	eo5s/Iexl2/M+0+vNYFCMqRkMMbK2jvzlo5WSQ9PiNQlumLiw8vv
X-Gm-Gg: ASbGncvDjlm42S1KhcA7bskAr+7A4Ac29m6iOzbVS62a7KCOqm7extkOyxR98x0oPGf
	H0DeAjsWjZzn58r1mcuo3nThTyhbUtoQ020eeuScm2jhO4voZrMId7issE+Qq/ziN4xkR0XM1gh
	KCKwE4/QMxGIw06Jx+cVmk/fogN9uIUAfio97dBIDJ3jw8W3X5DS8ZhQmPuh1Fzy2sO+zcwCKjN
	y2fKtLdQVqW6uRVNzP2a7hrWlAyoYieN1TSZgTzR6DxiyQ=
X-Google-Smtp-Source: AGHT+IE+8qVbma2Qb/CZO5qK/8pf/aA+GET4Kf+ksPfd0XQFxcjbmABnzOsLzbZBSWi1j8h4JBn4Hg==
X-Received: by 2002:a17:903:32ce:b0:215:b8c6:338a with SMTP id d9443c01a7336-21a83f338a5mr322037415ad.4.1736779084410;
        Mon, 13 Jan 2025 06:38:04 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:03 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 03/11] net: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 13 Jan 2025 22:37:11 +0800
Message-ID: <20250113143719.7948-4-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MFYLYPRM2OVIQFP2BFHH3YXRRBZWJQP3
X-Message-ID-Hash: MFYLYPRM2OVIQFP2BFHH3YXRRBZWJQP3
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/MFYLYPRM2OVIQFP2BFHH3YXRRBZWJQP3/>
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
 drivers/net/macvlan.c                              | 4 ++--
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
 21 files changed, 41 insertions(+), 41 deletions(-)

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
index 8151e91395e2..ab7e5b6649b2 100644
--- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
+++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
@@ -122,8 +122,8 @@ static int rmnet_newlink(struct net_device *dev,
 			 struct netlink_ext_ack *extack)
 {
 	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
+	struct net *link_net =3D rtnl_newlink_link_net(params);
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
index 80ad618ba423..646d0fdd42f4 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1464,8 +1464,8 @@ static int gtp_newlink(struct net_device *dev,
 		       struct rtnl_newlink_params *params,
 		       struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	unsigned int role =3D GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
@@ -1496,7 +1496,7 @@ static int gtp_newlink(struct net_device *dev,
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
index 0c496aa1f706..689759bbd159 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1569,8 +1569,8 @@ static int macvlan_newlink(struct net_device *dev,
 			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
-	return macvlan_common_newlink(params->net, dev, params->tb,
-				      params->data, extack);
+	return macvlan_common_newlink(rtnl_newlink_link_net(params), dev,
+				      params->tb, params->data, extack);
 }
=20
 void macvlan_dellink(struct net_device *dev, struct list_head *head)
diff --git a/drivers/net/macvtap.c b/drivers/net/macvtap.c
index 6dbfeeac5c99..ee1bfd4298c2 100644
--- a/drivers/net/macvtap.c
+++ b/drivers/net/macvtap.c
@@ -105,8 +105,8 @@ static int macvtap_newlink(struct net_device *dev,
 	/* Don't put anything that may fail after macvlan_common_newlink
 	 * because we can't undo what it does.
 	 */
-	err =3D macvlan_common_newlink(params->net, dev, params->tb, params->da=
ta,
-				     extack);
+	err =3D macvlan_common_newlink(rtnl_newlink_link_net(params), dev,
+				     params->tb, params->data, extack);
 	if (err) {
 		netdev_rx_handler_unregister(dev);
 		return err;
diff --git a/drivers/net/netkit.c b/drivers/net/netkit.c
index 1e9eadc77da2..d278d7697cee 100644
--- a/drivers/net/netkit.c
+++ b/drivers/net/netkit.c
@@ -331,8 +331,8 @@ static int netkit_new_link(struct net_device *dev,
 			   struct rtnl_newlink_params *params,
 			   struct netlink_ext_ack *extack)
 {
+	struct net *peer_net =3D rtnl_newlink_peer_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *peer_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct nlattr *peer_tb[IFLA_MAX + 1], **tbp =3D tb, *attr;
 	enum netkit_action policy_prim =3D NETKIT_PASS;
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index d9e4b5185c51..33eaded152ce 100644
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
index 86c620b4c26f..cd0964823864 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -4397,8 +4397,8 @@ static int vxlan_newlink(struct net_device *dev,
 			 struct rtnl_newlink_params *params,
 			 struct netlink_ext_ack *extack)
 {
+	struct net *link_net =3D rtnl_newlink_link_net(params);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
 	struct vxlan_config conf;
 	int err;
@@ -4407,7 +4407,7 @@ static int vxlan_newlink(struct net_device *dev,
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
index 53a6c437ff79..34e34bc3ae94 100644
--- a/drivers/net/wwan/wwan_core.c
+++ b/drivers/net/wwan/wwan_core.c
@@ -1068,7 +1068,7 @@ static void wwan_create_default_link(struct wwan_de=
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
2.47.1

