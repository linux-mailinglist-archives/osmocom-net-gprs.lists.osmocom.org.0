Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 141B2A43498
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:17 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 009881F3C5F;
	Tue, 25 Feb 2025 05:36:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rvZfLOfiZNLE; Tue, 25 Feb 2025 05:36:16 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1CAF01F3BE7;
	Tue, 25 Feb 2025 05:36:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 3683D38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:08 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1E5051ED2DD
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Whu2fceFw4h0 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:52:07 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by mail.osmocom.org (Postfix) with ESMTPS id A164A1ED2D8
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:07 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-22101839807so92272505ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969526; x=1740574326; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsYd7KiB2vQaWNh0ASWhN8pl6PDFq3SaA7EkmHtk6YM=;
        b=KSHFkpZR9EpWW0Co97MGs1KwN9+q/IsWiXP4C0KkLFbKZ0KVkDSjidHvCzNcZeRZ0G
         EdeBgoEEqbbSavq+pmffsywMLGVyyGbyhk3jV3Gin4tMsKn/quF7U8mHhU6WQ32s+XKi
         qM5z63aCCIkLv5ATmLmNzXJSvph3MmnHLpB7o+IfyqpOkhRxHWQ4aIhNvtfEnltiKIdS
         DhdHg5Ub9KDz2O1BWWQ1hUNGRmgyz8V9VU5nL/XBf/98KHDWIVktlihmQLWpM60Syoqb
         BPaI7XGbWbxAT02xf7CShK/KcJdxrFMo8WO+Hfa6yFOgKSuhvjwjviKUJt7McnY33XXP
         /QGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969526; x=1740574326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsYd7KiB2vQaWNh0ASWhN8pl6PDFq3SaA7EkmHtk6YM=;
        b=gjqcDStOy9xPumj4SbivT85WMR6p1UuAjDH2VWS2D7ZS10OQxdmdlfge8Xv9K4p+pa
         qc/93z1ZZDth/2l1CHeTWMyZoLcjmD2YFyiJdSLCJtsX2ileKsEZML7OMLaooGqRJnsr
         UCc99aeXvgaZxn+gI9023O5NGuBi/B9QPXfE8RdxI9B+Tj3pBzOz7APaH+cjLIBvXXn8
         pGpx2Ii5bwbe6q69nKev6oAsLdAtju4At9BkU32NJb0N1zv5Welzzsw6vcgQ5cLN/62p
         mMnU6HdQ8ZeRZykO9hZ4NuAfdWn7LVCzzIjZzk/FKxmgO/X+gNFr0RoDstTlA/ndHc9o
         iWeA==
X-Forwarded-Encrypted: i=1; AJvYcCWmzNC6JBSMTY/wznRjgGpd8yCrchjpuszIb9QnHdCZqjb3dcc1CXor2dINcubbHdyl9w+IjETUVYvzc35yNuLo@lists.osmocom.org
X-Gm-Message-State: AOJu0YxnwjFPvLptf6ocrnBBbnEBdI/K1a+y5vGDaPaxc46sGyFibcWI
	/YLCaad7qlEDvcOVJqaTRJIgeubi8fqaj/zKh2IiTJewvNjWwRrr
X-Gm-Gg: ASbGncvdPc/FQapP9+FZlg+zz0roT5UNinKXhQskI7FjLpZKUbNKg0vGVbFVWZd50QS
	ir5qn+c5v1cqI6mcpBGdJngOhnmyMiyyEKqZSMTuiBd897L3qRypEu6ZflufnF70Zvz5kpM4QhB
	Ol9FIAGw5O/VW/B6N6MXsDcCtf2ZK3QrIhJp8R8ysPU7qt7hs749n/7SOet6eqPiPqH/axxA0BJ
	VA63n4Z2an/KovSEzMuXU3z/iPYKmS1YPKLmhfQ3y0Du5NKoBUKcmzv+ZUFkX67cM3VaSi6R0Bg
	/yG7Hw==
X-Google-Smtp-Source: AGHT+IEmzyu5IbJEeeDhw+tXRaZzlcx6HaVQuXOtrNDJjpviTChMhHRF4glLxd0ys0/eE/gPyp4KqQ==
X-Received: by 2002:a17:902:db0a:b0:21f:8677:5961 with SMTP id d9443c01a7336-2217119d382mr58688885ad.34.1739969526138;
        Wed, 19 Feb 2025 04:52:06 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:52:05 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 08/13] net: ipv6: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 19 Feb 2025 20:50:34 +0800
Message-ID: <20250219125039.18024-9-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7CGDEVYWAPY3ZOZUU4QOMB2UPYFAP3NZ
X-Message-ID-Hash: 7CGDEVYWAPY3ZOZUU4QOMB2UPYFAP3NZ
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7CGDEVYWAPY3ZOZUU4QOMB2UPYFAP3NZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When link_net is set, use it as link netns instead of dev_net(). This
prepares for rtnetlink core to create device in target netns directly,
in which case the two namespaces may be different.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/ipv6/ip6_gre.c    | 14 ++++++--------
 net/ipv6/ip6_tunnel.c |  9 +++++----
 net/ipv6/ip6_vti.c    |  6 +++---
 net/ipv6/sit.c        |  6 +++---
 4 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index d9e6b1fd9917..d31a4ce3b19f 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -1969,7 +1969,7 @@ static bool ip6gre_netlink_encap_parms(struct nlatt=
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
@@ -1990,7 +1990,7 @@ static int ip6gre_newlink_common(struct net *src_ne=
t, struct net_device *dev,
 		eth_hw_addr_random(dev);
=20
 	nt->dev =3D dev;
-	nt->net =3D dev_net(dev);
+	nt->net =3D link_net;
=20
 	err =3D register_netdevice(dev);
 	if (err)
@@ -2007,11 +2007,10 @@ static int ip6gre_newlink(struct net_device *dev,
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
@@ -2026,7 +2025,7 @@ static int ip6gre_newlink(struct net_device *dev,
 			return -EEXIST;
 	}
=20
-	err =3D ip6gre_newlink_common(src_net, dev, tb, data, extack);
+	err =3D ip6gre_newlink_common(net, dev, tb, data, extack);
 	if (!err) {
 		ip6gre_tnl_link_config(nt, !tb[IFLA_MTU]);
 		ip6gre_tunnel_link_md(ign, nt);
@@ -2246,11 +2245,10 @@ static int ip6erspan_newlink(struct net_device *d=
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
@@ -2266,7 +2264,7 @@ static int ip6erspan_newlink(struct net_device *dev=
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
index 111a8777c2f7..89d206731af0 100644
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
@@ -2008,12 +2007,14 @@ static int ip6_tnl_newlink(struct net_device *dev=
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
 	nt->net =3D net;
=20
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 16e0d74f99dd..83c055996fbb 100644
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
@@ -1002,9 +1001,10 @@ static int vti6_newlink(struct net_device *dev,
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
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index 20453671ac50..f7b59bc957d3 100644
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
@@ -1556,14 +1555,15 @@ static int ipip6_newlink(struct net_device *dev,
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
 	nt->net =3D net;
=20
--=20
2.48.1

