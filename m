Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF3CA05DE6
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:18 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 68DE11BD05E;
	Wed,  8 Jan 2025 14:04:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SGSuRfY3vQIc; Wed,  8 Jan 2025 14:04:18 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C98151BD000;
	Wed,  8 Jan 2025 14:04:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0C8D838A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:38 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DCF231B96E2
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:37 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KdsKBFnuyIDo for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:58:37 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by mail.osmocom.org (Postfix) with ESMTPS id 33C491B96DD
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:36 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-21631789fcdso135895335ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995515; x=1736600315; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pGKuR9iwJLKB00bK/9yuK8uQjR1STrnypDr+9jM2ZjQ=;
        b=iDrQvfHrgj/iuJ495qIMflQ/S/pk5W1iJVEebHCkPy8C+GhYJgCv7UqtPwmliIwhHY
         d3Fmly3XBs9gpbgJT+/MTPa2VJzZu1Z0KlTS7Ew81s+UrIj4lIQWMFuLD4+5jnl7qv0w
         bGLj+ZcSkQYnJDXWRsASg75Tm0EPPvG+/fEiHBJKf7AhPGPKWfGwxIJgd8Bw9WJpCHwS
         B1cHCz69FhYH/IXWv12Ya5eShNbQtDSkxy/yUJivv8aqYr0vRQ7Shv3hmlSEplRu9ulj
         0aBHehYoUVHQvNt3SFxdfDtPdcxbNlnM58xO8JU5TlKZB8WImHfUI75xSAcToHarJ6+e
         s1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995515; x=1736600315;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pGKuR9iwJLKB00bK/9yuK8uQjR1STrnypDr+9jM2ZjQ=;
        b=S+JSqyPv7tu/KPK1uFb9ET0PaSjI/wAI0GD4W2MhoH2DRSoDgs4SCWvl75IqU5J7WR
         3kpjvqFgY/yMLyUVgwxPcwkmWdLtpcREmNEgnxzxPYu8Bu6NCRZfc9UwwZTnKEP4qjzC
         WGl7iMr7Ul4W14AkQTU/X6vor5yF2092ky/mM1eDpCoyye8Uq88y7FK7DO4usPBv2nz5
         eqkZuZr+HgRNnIm8EVNcBaTQSYsDdDxvq1uSDxjOsvbOeA+rXl0SSzKZBf6U0d4FZWni
         H9CT1+QN6BON4bCrmmMvTLPxKGKUQy0Ke3Dgt1vLMZyLOZio4DW5UYv5AcQdl4e4HDql
         OCgw==
X-Forwarded-Encrypted: i=1; AJvYcCW0sL35J5mQsAY5E4fjnDSd/ltXGI1Rn719b47X1/zTkWrq5LudtDvCFle3XG/ul3i+wce8Egw6IQw8hnAbCOq5@lists.osmocom.org
X-Gm-Message-State: AOJu0YxRETKOSZQTh74xWN6/Y+YCz+O3vdn+yQ4NvMB1XdsVm4aJ69+c
	mgx37mO2tC8QUkvI8t3nA5fkb5qPf/31Nk1a/irUZLo/zCPwzmCy
X-Gm-Gg: ASbGncuygA6SdzVJCjoKYOhMW3YI6L4VY4cxOwDQYlzxKv1OSKcchR9QqupF4X1BPBb
	aRTfMB+IYiO3AA6J1y/ccZLYQ7yh6qNvQIlfZJutxaXj65mrUsB5tgHrqMOJTnn3/qJZImq/y2H
	CtTvwgMc6ZRYnktJJ/k2OBJINqlS9xVygdi/cDYuLidlH9W/QD2HH2DEJokfrAvC/tN/Cp+1tLT
	f2GcJaz92G1nrJoqa8NrV7laeZdJQkZW3B95IxVWvPZ+88=
X-Google-Smtp-Source: AGHT+IGjBqn10MmdRu4jxYpKUCQXpYCqN1FLgpb8zvJWMn+lBROruosGrc2xG5POheEXQ3wHAgMJ2g==
X-Received: by 2002:a05:6a21:648c:b0:1e2:2e4:6893 with SMTP id adf61e73a8af0-1e5e1e2979bmr85664871637.9.1735995515041;
        Sat, 04 Jan 2025 04:58:35 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:58:34 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 06/11] net: ipv6: Use link netns in newlink() of rtnl_link_ops
Date: Sat,  4 Jan 2025 20:57:27 +0800
Message-ID: <20250104125732.17335-7-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DQQOUQITCAJ2DMGRULXK7ZTJ2UU5HPGU
X-Message-ID-Hash: DQQOUQITCAJ2DMGRULXK7ZTJ2UU5HPGU
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/DQQOUQITCAJ2DMGRULXK7ZTJ2UU5HPGU/>
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
 net/ipv6/ip6_gre.c    | 22 ++++++++++++----------
 net/ipv6/ip6_tunnel.c | 13 ++++++++-----
 net/ipv6/ip6_vti.c    | 10 ++++++----
 net/ipv6/sit.c        | 11 +++++++----
 4 files changed, 33 insertions(+), 23 deletions(-)

diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 3efd51f0d7d2..1d47c229068d 100644
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
@@ -2010,13 +2012,13 @@ static int ip6gre_newlink(struct rtnl_newlink_par=
ams *params)
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
 	struct ip6_tnl *nt;
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	nt =3D netdev_priv(dev);
 	ip6gre_netlink_parms(data, &nt->parms);
 	ign =3D net_generic(net, ip6gre_net_id);
@@ -2029,7 +2031,7 @@ static int ip6gre_newlink(struct rtnl_newlink_param=
s *params)
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6gre_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6gre_tunnel_link_md(ign, nt);
@@ -2250,13 +2252,13 @@ static int ip6erspan_newlink(struct rtnl_newlink_=
params *params)
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *src_net =3D params->net;
 	struct nlattr **tb =3D params->tb;
-	struct net *net =3D dev_net(dev);
 	struct ip6gre_net *ign;
 	struct ip6_tnl *nt;
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	nt =3D netdev_priv(dev);
 	ip6gre_netlink_parms(data, &nt->parms);
 	ip6erspan_set_version(data, &nt->parms);
@@ -2270,7 +2272,7 @@ static int ip6erspan_newlink(struct rtnl_newlink_pa=
rams *params)
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6erspan_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6erspan_tunnel_link_md(ign, nt);
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index f4bdbabc3246..cb09cc878dee 100644
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
@@ -2007,13 +2007,16 @@ static int ip6_tnl_newlink(struct rtnl_newlink_pa=
rams *params)
 	struct net_device *dev =3D params->dev;
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
index 79e601e629d2..a3108a7464c7 100644
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
@@ -1001,13 +1001,15 @@ static int vti6_newlink(struct rtnl_newlink_param=
s *params)
 {
 	struct net_device *dev =3D params->dev;
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
index 4dd1309d1eb3..8888fc51fa0b 100644
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
@@ -1555,15 +1556,17 @@ static int ipip6_newlink(struct rtnl_newlink_para=
ms *params)
 	struct net_device *dev =3D params->dev;
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

