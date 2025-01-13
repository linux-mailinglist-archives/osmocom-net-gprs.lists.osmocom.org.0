Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id AE193A1889E
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:15 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9A9001D2FAA;
	Tue, 21 Jan 2025 23:58:15 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Iu2hs1OIIie; Tue, 21 Jan 2025 23:58:15 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4021C1D2F57;
	Tue, 21 Jan 2025 23:58:12 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D5BE738A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:32 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id BDDFD1C3605
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmYsHxehF8Q0 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:32 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id 19B371C3600
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:31 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-21670dce0a7so93001365ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779110; x=1737383910; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQWEflIxWDAik4fl9hhH1GQo7B+/kKhdJ5eqx3FBJEo=;
        b=cC8bNu5RYxXFd+AydRg2VptyD0boYbSRxyeeQHibatkRf7Foklr2Dz03LGkD2ZnxQp
         G5TKA9C7XbHo/apvldLkGiEFTdNoMwyeu3QUju98tQt5FVzAx+DT8I4lUz3XwTrafbZ0
         IjE/Aub2lJe15cUywFMCCr6xJv2jloFjwDSyN2Iw7YCN78U8nHy5xfLSjJXBFA3Mg7rj
         NaOTIXHj9EB2i5JP1MkTCCqH2dOGx515xdJNJpEGTkEKopgfKsNyepcPtGm/ZBYl1ev3
         ttnBQeCYmdhMETATC68N+h3BW5Ms+3GqTsSNQrab0hUJZgVwNmLmdVKvR7443QpJA25R
         MKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779110; x=1737383910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQWEflIxWDAik4fl9hhH1GQo7B+/kKhdJ5eqx3FBJEo=;
        b=GLsGnbSidsgfML8E+gffs3dYCyBnRT9QFbtu6E5cQ0+SDZlMEkscGd5Wx5n1OZ9Psv
         /Ha+WCHNWYx0Ww8P4SwbDAYHH7UcfG/lPFXrb2LFJkp4YA0tZZLRlnjqxhRQewN6Zs39
         gkZqvqTUAKzhXmIkpocr+cgI2HIRd2vUCl9jjNW9TTyhfWjNdf2BYQKJ22pxNDoVNMyt
         DcnXP0D+TGOxIZ2eWMcokwdLZ3Jx4sap/t0BNqmyBYhlpDcRRk8YgbStiX10EhdTpJug
         PtYe9ujJVcNgnDD4SePxrvkSRTvMkjT4yf3tY7QCIw89WfQ0rW7phOuZL6ik/pWc7vf4
         W5Mw==
X-Forwarded-Encrypted: i=1; AJvYcCXB558PTZ4HoQozYi6YQGxT5YxiPQcrsRlted/7mlb3QXiL8LP6bElfJgdVARrxMJgVgR8vYU4SeD03FDlqpVGV@lists.osmocom.org
X-Gm-Message-State: AOJu0YzOAweVQPVqBLP8wYrLZKINkj2JBarVnUgnbRWLpJl81kDtHarm
	x+smbk3ZF3YmqYLHXgANW8eYXjmNQzt8EasT5xpovujrbrsYzoX8
X-Gm-Gg: ASbGncsUPERvaJrsT+f4DxMzxUwySTzdNP3ilNx9hEN1RFF7cgLXad+UsOIFKwled+F
	OmxyatSrujgIBX7u7Vdi4spWitinIf+2RcAsbP0ZnsvFf8d/b4VjayVLeRtRgy97N88O1OE8Y+U
	kDsao8ENLTd2qVPPYl5G0pK0DdSypwe7bOWz9OOw7U6Cnx6Unt70pjDAhCJq6uOt4oW3ev1Fi9a
	4Xqcd9mpzVaVU6vtCCHqYHuVKKFDAAURSEG/wp+cWu2hGY=
X-Google-Smtp-Source: AGHT+IH2EwVnyCLc0IdhYURoHcqSq8a7l1rdTlos+W9PilaFrNaXj6haYBmin4OcYsiFKO0gg5hkKA==
X-Received: by 2002:a17:902:dac6:b0:216:4a8a:2665 with SMTP id d9443c01a7336-21a84012a17mr321236845ad.50.1736779110291;
        Mon, 13 Jan 2025 06:38:30 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:29 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 06/11] net: ipv6: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 13 Jan 2025 22:37:14 +0800
Message-ID: <20250113143719.7948-7-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GO3DSRFUUVYU6VWFUFON5FUSN6L6UHD5
X-Message-ID-Hash: GO3DSRFUUVYU6VWFUFON5FUSN6L6UHD5
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GO3DSRFUUVYU6VWFUFON5FUSN6L6UHD5/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When link_net is set, use it as link netns instead of dev_net(). This
prepares for rtnetlink core to create device in target netns directly,
in which case the two namespaces may be different.

Set correct netns in priv before registering device, and avoid
overwriting it in ndo_init() path.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/ipv6/ip6_gre.c    | 20 ++++++++++----------
 net/ipv6/ip6_tunnel.c | 13 ++++++++-----
 net/ipv6/ip6_vti.c    | 10 ++++++----
 net/ipv6/sit.c        | 11 +++++++----
 4 files changed, 31 insertions(+), 23 deletions(-)

diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 863852abe8ea..108600dc716f 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -1498,7 +1498,8 @@ static int ip6gre_tunnel_init_common(struct net_dev=
ice *dev)
 	tunnel =3D netdev_priv(dev);
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
+	if (!tunnel->net)
+		tunnel->net =3D dev_net(dev);
 	strcpy(tunnel->parms.name, dev->name);
=20
 	ret =3D dst_cache_init(&tunnel->dst_cache, GFP_KERNEL);
@@ -1882,7 +1883,8 @@ static int ip6erspan_tap_init(struct net_device *de=
v)
 	tunnel =3D netdev_priv(dev);
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
+	if (!tunnel->net)
+		tunnel->net =3D dev_net(dev);
 	strcpy(tunnel->parms.name, dev->name);
=20
 	ret =3D dst_cache_init(&tunnel->dst_cache, GFP_KERNEL);
@@ -1971,7 +1973,7 @@ static bool ip6gre_netlink_encap_parms(struct nlatt=
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
@@ -1992,7 +1994,7 @@ static int ip6gre_newlink_common(struct net *src_ne=
t, struct net_device *dev,
 		eth_hw_addr_random(dev);
=20
 	nt->dev =3D dev;
-	nt->net =3D dev_net(dev);
+	nt->net =3D link_net;
=20
 	err =3D register_netdevice(dev);
 	if (err)
@@ -2009,11 +2011,10 @@ static int ip6gre_newlink(struct net_device *dev,
 			  struct rtnl_newlink_params *params,
 			  struct netlink_ext_ack *extack)
 {
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip6_tnl *nt =3D netdev_priv(dev);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
=20
@@ -2028,7 +2029,7 @@ static int ip6gre_newlink(struct net_device *dev,
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6gre_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6gre_tunnel_link_md(ign, nt);
@@ -2248,11 +2249,10 @@ static int ip6erspan_newlink(struct net_device *d=
ev,
 			     struct rtnl_newlink_params *params,
 			     struct netlink_ext_ack *extack)
 {
+	struct net *net =3D params->link_net ? : dev_net(dev);
 	struct ip6_tnl *nt =3D netdev_priv(dev);
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
 	int err;
=20
@@ -2268,7 +2268,7 @@ static int ip6erspan_newlink(struct net_device *dev=
,
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6erspan_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6erspan_tunnel_link_md(ign, nt);
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 54b843d20870..2438dc627e02 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -253,8 +253,7 @@ static void ip6_dev_free(struct net_device *dev)
 static int ip6_tnl_create2(struct net_device *dev)
 {
 	struct ip6_tnl *t =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
-	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
+	struct ip6_tnl_net *ip6n =3D net_generic(t->net, ip6_tnl_net_id);
 	int err;
=20
 	dev->rtnl_link_ops =3D &ip6_link_ops;
@@ -1878,7 +1877,8 @@ ip6_tnl_dev_init_gen(struct net_device *dev)
 	int t_hlen;
=20
 	t->dev =3D dev;
-	t->net =3D dev_net(dev);
+	if (!t->net)
+		t->net =3D dev_net(dev);
=20
 	ret =3D dst_cache_init(&t->dst_cache, GFP_KERNEL);
 	if (ret)
@@ -2008,13 +2008,16 @@ static int ip6_tnl_newlink(struct net_device *dev=
,
 {
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D dev_net(dev);
-	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
 	struct ip_tunnel_encap ipencap;
+	struct ip6_tnl_net *ip6n;
 	struct ip6_tnl *nt, *t;
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
+	ip6n =3D net_generic(net, ip6_tnl_net_id);
 	nt =3D netdev_priv(dev);
+	nt->net =3D net;
=20
 	if (ip_tunnel_netlink_encap_parms(data, &ipencap)) {
 		err =3D ip6_tnl_encap_setup(nt, &ipencap);
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 993f85aeb882..4aa1e7821951 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -177,8 +177,7 @@ vti6_tnl_unlink(struct vti6_net *ip6n, struct ip6_tnl=
 *t)
 static int vti6_tnl_create2(struct net_device *dev)
 {
 	struct ip6_tnl *t =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
-	struct vti6_net *ip6n =3D net_generic(net, vti6_net_id);
+	struct vti6_net *ip6n =3D net_generic(t->net, vti6_net_id);
 	int err;
=20
 	dev->rtnl_link_ops =3D &vti6_link_ops;
@@ -925,7 +924,8 @@ static inline int vti6_dev_init_gen(struct net_device=
 *dev)
 	struct ip6_tnl *t =3D netdev_priv(dev);
=20
 	t->dev =3D dev;
-	t->net =3D dev_net(dev);
+	if (!t->net)
+		t->net =3D dev_net(dev);
 	netdev_hold(dev, &t->dev_tracker, GFP_KERNEL);
 	netdev_lockdep_set_classes(dev);
 	return 0;
@@ -1002,13 +1002,15 @@ static int vti6_newlink(struct net_device *dev,
 			struct netlink_ext_ack *extack)
 {
 	struct nlattr **data =3D params->data;
-	struct net *net =3D dev_net(dev);
 	struct ip6_tnl *nt;
+	struct net *net;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	nt =3D netdev_priv(dev);
 	vti6_netlink_parms(data, &nt->parms);
=20
 	nt->parms.proto =3D IPPROTO_IPV6;
+	nt->net =3D net;
=20
 	if (vti6_locate(net, &nt->parms, 0))
 		return -EEXIST;
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index e2bd52cabdee..e870271ed04a 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -201,8 +201,7 @@ static void ipip6_tunnel_clone_6rd(struct net_device =
*dev, struct sit_net *sitn)
 static int ipip6_tunnel_create(struct net_device *dev)
 {
 	struct ip_tunnel *t =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
-	struct sit_net *sitn =3D net_generic(net, sit_net_id);
+	struct sit_net *sitn =3D net_generic(t->net, sit_net_id);
 	int err;
=20
 	__dev_addr_set(dev, &t->parms.iph.saddr, 4);
@@ -270,6 +269,7 @@ static struct ip_tunnel *ipip6_tunnel_locate(struct n=
et *net,
 	nt =3D netdev_priv(dev);
=20
 	nt->parms =3D *parms;
+	nt->net =3D net;
 	if (ipip6_tunnel_create(dev) < 0)
 		goto failed_free;
=20
@@ -1449,7 +1449,8 @@ static int ipip6_tunnel_init(struct net_device *dev=
)
 	int err;
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
+	if (!tunnel->net)
+		tunnel->net =3D dev_net(dev);
 	strcpy(tunnel->parms.name, dev->name);
=20
 	ipip6_tunnel_bind_dev(dev);
@@ -1556,15 +1557,17 @@ static int ipip6_newlink(struct net_device *dev,
 {
 	struct nlattr **data =3D params->data;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D dev_net(dev);
 	struct ip_tunnel *nt;
 	struct ip_tunnel_encap ipencap;
 #ifdef CONFIG_IPV6_SIT_6RD
 	struct ip_tunnel_6rd ip6rd;
 #endif
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	nt =3D netdev_priv(dev);
+	nt->net =3D net;
=20
 	if (ip_tunnel_netlink_encap_parms(data, &ipencap)) {
 		err =3D ip_tunnel_encap_setup(nt, &ipencap);
--=20
2.47.1

