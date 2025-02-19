Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F16A43497
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:14 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DE27C1F3BFC;
	Tue, 25 Feb 2025 05:36:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iJU2YcZnHrrj; Tue, 25 Feb 2025 05:36:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 43F4E1F3B95;
	Tue, 25 Feb 2025 05:36:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 935CC38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:59 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7BFCD1ED2B3
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CZ4bDhAkbhDo for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:59 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by mail.osmocom.org (Postfix) with ESMTPS id 115BB1ED2AE
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:58 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-220ca204d04so92010035ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969517; x=1740574317; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B6bozwwxLUJNxVW5ZYXuCA298+o6a+m5Om77EOnyIyg=;
        b=D3yzwgJXku4ZsTKgucYTCnGnATjVAm8swruNQPgo3DxtGHQPtPsJ/y9W3NzHQNRI8o
         C8Bq5Jqc6YXPl8//X1FQMH6NyfNBBEl7VdSbReS2d1TuOlS9FV5gaHfCz49CGEuLIMCb
         UG5ECZ1ILmHwGFC2ZJhWciKQgTVRj941U6kegiffAxYD7Szb5lgNzgJWuVKaIVJzkHkg
         I647vrE3E0SHEHEMmSyFiWYkNrf2rUm3r8ygR/loZXlO8X55DESTTwdRsetW7NdIBRHG
         2S8Tnj2CkdDG8PbuYsVlMJlQYEmAMfSkMAFDbsj8+8C62L+lgn+RdgPjOkekBciZVucY
         x1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969517; x=1740574317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B6bozwwxLUJNxVW5ZYXuCA298+o6a+m5Om77EOnyIyg=;
        b=tUzAvNZuvRP4RWRjG3sgRBLk9Fmw/Mzjd5feprPdPyWZ1so07mVc/E23nFgw+rcI6r
         lGs2nxN/dlGGjGpqXbPOC32VXwqoXe6rvnd51ZNYHp7ZwnKMXQXUKz1Y6siImdjKEmW5
         r4j0gJMNcvKZGgIcAuY9/gQwTwT6OJ0TOdPE+FEgx/kjTH9T5PBKECu/aSv7Qc6MLtik
         TDxcuujtpQjb7KfZtrnf4BbTbG1PG/PFY7GfhZOFZiDgvnqerC00fbqbFACcFwbM8+sh
         J7Y+Eef1wckaJ69rr1jcgHDpsTzv0xqTNdX/FHr8XxQvnchN4iBmP8gQyViXWUZ57W3U
         DsPA==
X-Forwarded-Encrypted: i=1; AJvYcCUGumVT7zWJyx66w5pIVx5qzTjLNKqBVPxQrQN5Wzofeib9b/QeFanHImg5zCoZSGa52kNSzYBY2tR6cHpe17ek@lists.osmocom.org
X-Gm-Message-State: AOJu0YwWN0K7OIj2pFqLLxXhBay7o0+5w8qmA1gOS2UkfT2VApuKGGT6
	dY8l9KPLH3/KgA5YlDzyOZWFNE37QNp35IwpGgKaTo6h+M0MmdT7
X-Gm-Gg: ASbGncu0FpVSdojsrw30Bts7bgWU+oxUpxwRKW9XOHT8R0JEd+vrY5Gr/08qzAjCrIN
	C2yAN/zcEbK5LIl5y6X+IwV1bFHuD/LERF48NsiwkCB7ZUHl/j7VfBcQRWbLMWjKgMLYvufB1Ik
	tDi/zQko6BtfRX0vU2l47M1E0vGT4u934Sz6nPI2YFgEA/EjNkcmKBcle7R/21MVxcR2QlE6Lyz
	5Wx+jdRFUSXBai8oVIznZ3XAtBYin75znRntuuT/JMe8GwiIXaKI6sSsQTtaoEHdkLPkKhwkF0g
	SxSJUg==
X-Google-Smtp-Source: AGHT+IGKxW3/SlkXIFQ/R+7OZM2jJGBrIehyvby3inig7425vAO11UDlInuUnZBsT6heGdokKuXecQ==
X-Received: by 2002:a17:903:2305:b0:220:fce7:d3b8 with SMTP id d9443c01a7336-221709654admr66486875ad.12.1739969517203;
        Wed, 19 Feb 2025 04:51:57 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:56 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 07/13] net: ipv6: Init tunnel link-netns before registering dev
Date: Wed, 19 Feb 2025 20:50:33 +0800
Message-ID: <20250219125039.18024-8-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FU2F2X6GIBDWDKDNUAG2F7S5W6N5SJSV
X-Message-ID-Hash: FU2F2X6GIBDWDKDNUAG2F7S5W6N5SJSV
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FU2F2X6GIBDWDKDNUAG2F7S5W6N5SJSV/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Currently some IPv6 tunnel drivers set tnl->net to dev_net(dev) in
ndo_init(), which is called in register_netdevice(). However, it lacks
the context of link-netns when we enable cross-net tunnels at device
registration time.

Let's move the init of tunnel link-netns before register_netdevice().

ip6_gre has already initialized netns, so just remove the redundant
assignment.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/ipv6/ip6_gre.c    | 2 --
 net/ipv6/ip6_tunnel.c | 3 ++-
 net/ipv6/ip6_vti.c    | 3 ++-
 net/ipv6/sit.c        | 8 +++++---
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/net/ipv6/ip6_gre.c b/net/ipv6/ip6_gre.c
index 863852abe8ea..d9e6b1fd9917 100644
--- a/net/ipv6/ip6_gre.c
+++ b/net/ipv6/ip6_gre.c
@@ -1498,7 +1498,6 @@ static int ip6gre_tunnel_init_common(struct net_dev=
ice *dev)
 	tunnel =3D netdev_priv(dev);
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
 	strcpy(tunnel->parms.name, dev->name);
=20
 	ret =3D dst_cache_init(&tunnel->dst_cache, GFP_KERNEL);
@@ -1882,7 +1881,6 @@ static int ip6erspan_tap_init(struct net_device *de=
v)
 	tunnel =3D netdev_priv(dev);
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
 	strcpy(tunnel->parms.name, dev->name);
=20
 	ret =3D dst_cache_init(&tunnel->dst_cache, GFP_KERNEL);
diff --git a/net/ipv6/ip6_tunnel.c b/net/ipv6/ip6_tunnel.c
index 54b843d20870..111a8777c2f7 100644
--- a/net/ipv6/ip6_tunnel.c
+++ b/net/ipv6/ip6_tunnel.c
@@ -1878,7 +1878,6 @@ ip6_tnl_dev_init_gen(struct net_device *dev)
 	int t_hlen;
=20
 	t->dev =3D dev;
-	t->net =3D dev_net(dev);
=20
 	ret =3D dst_cache_init(&t->dst_cache, GFP_KERNEL);
 	if (ret)
@@ -1940,6 +1939,7 @@ static int __net_init ip6_fb_tnl_dev_init(struct ne=
t_device *dev)
 	struct net *net =3D dev_net(dev);
 	struct ip6_tnl_net *ip6n =3D net_generic(net, ip6_tnl_net_id);
=20
+	t->net =3D net;
 	t->parms.proto =3D IPPROTO_IPV6;
=20
 	rcu_assign_pointer(ip6n->tnls_wc[0], t);
@@ -2015,6 +2015,7 @@ static int ip6_tnl_newlink(struct net_device *dev,
 	int err;
=20
 	nt =3D netdev_priv(dev);
+	nt->net =3D net;
=20
 	if (ip_tunnel_netlink_encap_parms(data, &ipencap)) {
 		err =3D ip6_tnl_encap_setup(nt, &ipencap);
diff --git a/net/ipv6/ip6_vti.c b/net/ipv6/ip6_vti.c
index 993f85aeb882..16e0d74f99dd 100644
--- a/net/ipv6/ip6_vti.c
+++ b/net/ipv6/ip6_vti.c
@@ -925,7 +925,6 @@ static inline int vti6_dev_init_gen(struct net_device=
 *dev)
 	struct ip6_tnl *t =3D netdev_priv(dev);
=20
 	t->dev =3D dev;
-	t->net =3D dev_net(dev);
 	netdev_hold(dev, &t->dev_tracker, GFP_KERNEL);
 	netdev_lockdep_set_classes(dev);
 	return 0;
@@ -958,6 +957,7 @@ static int __net_init vti6_fb_tnl_dev_init(struct net=
_device *dev)
 	struct net *net =3D dev_net(dev);
 	struct vti6_net *ip6n =3D net_generic(net, vti6_net_id);
=20
+	t->net =3D net;
 	t->parms.proto =3D IPPROTO_IPV6;
=20
 	rcu_assign_pointer(ip6n->tnls_wc[0], t);
@@ -1009,6 +1009,7 @@ static int vti6_newlink(struct net_device *dev,
 	vti6_netlink_parms(data, &nt->parms);
=20
 	nt->parms.proto =3D IPPROTO_IPV6;
+	nt->net =3D net;
=20
 	if (vti6_locate(net, &nt->parms, 0))
 		return -EEXIST;
diff --git a/net/ipv6/sit.c b/net/ipv6/sit.c
index e2bd52cabdee..20453671ac50 100644
--- a/net/ipv6/sit.c
+++ b/net/ipv6/sit.c
@@ -269,6 +269,7 @@ static struct ip_tunnel *ipip6_tunnel_locate(struct n=
et *net,
=20
 	nt =3D netdev_priv(dev);
=20
+	nt->net =3D net;
 	nt->parms =3D *parms;
 	if (ipip6_tunnel_create(dev) < 0)
 		goto failed_free;
@@ -1449,7 +1450,6 @@ static int ipip6_tunnel_init(struct net_device *dev=
)
 	int err;
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
 	strcpy(tunnel->parms.name, dev->name);
=20
 	ipip6_tunnel_bind_dev(dev);
@@ -1565,6 +1565,7 @@ static int ipip6_newlink(struct net_device *dev,
 	int err;
=20
 	nt =3D netdev_priv(dev);
+	nt->net =3D net;
=20
 	if (ip_tunnel_netlink_encap_parms(data, &ipencap)) {
 		err =3D ip_tunnel_encap_setup(nt, &ipencap);
@@ -1860,6 +1861,9 @@ static int __net_init sit_init_net(struct net *net)
 	 */
 	sitn->fb_tunnel_dev->netns_local =3D true;
=20
+	t =3D netdev_priv(sitn->fb_tunnel_dev);
+	t->net =3D net;
+
 	err =3D register_netdev(sitn->fb_tunnel_dev);
 	if (err)
 		goto err_reg_dev;
@@ -1867,8 +1871,6 @@ static int __net_init sit_init_net(struct net *net)
 	ipip6_tunnel_clone_6rd(sitn->fb_tunnel_dev, sitn);
 	ipip6_fb_tunnel_init(sitn->fb_tunnel_dev);
=20
-	t =3D netdev_priv(sitn->fb_tunnel_dev);
-
 	strcpy(t->parms.name, sitn->fb_tunnel_dev->name);
 	return 0;
=20
--=20
2.48.1

