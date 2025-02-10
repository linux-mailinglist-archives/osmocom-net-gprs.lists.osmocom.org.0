Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 056F5A3709F
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:25 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E69C81E88AF;
	Sat, 15 Feb 2025 20:34:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YCbHoYOgUr1r; Sat, 15 Feb 2025 20:34:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EBC411E8827;
	Sat, 15 Feb 2025 20:34:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B96E638A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:14 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A0DA11E1BB0
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:14 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vAr6l3zfjuUW for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:13 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by mail.osmocom.org (Postfix) with ESMTPS id E1F591E1BAB
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:13 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-21f62cc4088so40116865ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194272; x=1739799072; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qor1B34U3phrXDWeQbB/j8tAelAUjHbXmA4D1BB6HEE=;
        b=OOV8smHB9R4RFqkh3pAwHDvlxiZydvxvQ7G9nweR2o/R5+w/8APgR2VqENJulvkyho
         7UZ98ndT9CQ6JnCnKDOJZNEYKm0ixbnSRE/uNt1Q/c6X8VbfiRhUbFo0I2sOp2upooZh
         ywBE2XPPx13O3WFPgNxVFSAcLUVACppfaoWzgu15W7RhBOqfdkWdElDGyJzOMoKUhb6q
         k4J/gk9PIrbtvnmUsNBtN+MHbB5M6GtSHlEisEtrcdOrxxkFHVxgwqjcLsPcypDg0gnJ
         dcE2q1hEJ052OPhFv+/i//4nKv8bfXUOM/2DDI3mUGhZpSsRTZ+ICdFPOKQF2wHoyiY9
         yy+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194272; x=1739799072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qor1B34U3phrXDWeQbB/j8tAelAUjHbXmA4D1BB6HEE=;
        b=UeFkmNXhr+vaLjxUiLJqTfzH7DQL+0bZe6MYEUzu7aphzysUrFx/2aqMGrK+khiPC9
         AH9BFlQJMziLnjNBBhwPxa5IfVaSrENhSrnJr8AL7tAZFJvHQtgOSHS5XCsJp/RJs1mN
         GC7NDlEH4e6GQHbCeGG8i3PCdGSDAPRlEpV+EuaadkoB4jL62vjwlTI74fWn1bgmZt7h
         v3QGmbdvZi01s9zS0ajUl9HJCEKPBtvNtU9685gPS8oVTR3qvwnMZdrzOLmjV9ow1mMF
         LKstv8PhmdD8W4CEvLa2ZGmtGsa0BbLwtTupIAy9gVaCEZWZB0Zhk+BHdDzKsMqzoB1s
         kDrA==
X-Forwarded-Encrypted: i=1; AJvYcCXEIKs2BbiNql+fVkNRCZgGPn5G1npITpscwkH6yokYPi1j7m8p3QBSBxZgqjN8+fP8GPXGowcqRtVGX+d5yCSg@lists.osmocom.org
X-Gm-Message-State: AOJu0YxVXkMevdGamFk26OnqY0OlKRHaqarMo2f6741Zu04sSNN99mtO
	squzadg8vLP8rnpFn/46kjdkURjZ5RnBJDkZZyIh3bRLpGR8mbVB
X-Gm-Gg: ASbGncuTMS2UrvF75LsVqG64mwKpzIzAWgsfbnTLRBeg1AvSI/6CBuurHNenbIxUAu1
	cnkOVbWKB6Ai6l/ICCxAwq7wDff/P3KTl85AUzYYzCy6SWdqsMRZ6pNJ9vvywoK6re1QVowvDWs
	h6hrBD6UuU6fkxkp/SXInQ/nCJoU8pBN8QaA1vRunrG3t4gwgzbcZDM0j+GzRSQj7muGfegmetM
	R9jrUlZ8tntYYV8Obl+MPqXEe7kztUtHbemcHAUQW4AOsADL0o9qAQZ/ZGzey99uqP+m3+5I7B0
	2SKbJw==
X-Google-Smtp-Source: AGHT+IFCFfI6vwnuduAlE62ZWjGMFvRKTwncJUJKPQ14C3FGCNohEq5KLKAyTOyXoZyqMzbv5RHKHA==
X-Received: by 2002:a17:903:1a06:b0:216:6769:9eca with SMTP id d9443c01a7336-21f4e73acf5mr177842015ad.37.1739194272042;
        Mon, 10 Feb 2025 05:31:12 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:11 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 06/11] net: ipv6: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 10 Feb 2025 21:29:57 +0800
Message-ID: <20250210133002.883422-7-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NI6GNVS225M4TUZDZ2PCEHOZJ7VPVHA4
X-Message-ID-Hash: NI6GNVS225M4TUZDZ2PCEHOZJ7VPVHA4
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:38 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NI6GNVS225M4TUZDZ2PCEHOZJ7VPVHA4/>
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
2.48.1

