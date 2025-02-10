Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8233DA3709E
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:23 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 63F7B1E8883;
	Sat, 15 Feb 2025 20:34:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lF36a2p7_yes; Sat, 15 Feb 2025 20:34:23 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0269E1E8821;
	Sat, 15 Feb 2025 20:34:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C990438A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:05 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AF43C1E1B82
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ehKzChmzKsx1 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:05 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by mail.osmocom.org (Postfix) with ESMTPS id 093FB1E1B7D
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:04 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-21c2f1b610dso106784705ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194263; x=1739799063; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJKz1g6voDImT0UUTo/s+cF5fKbKW++euQC6BW/L/6A=;
        b=LAgzi43mND2irDJOaC29uIGybZP8IsUl+TVljLHrBbHWpU/QDsRBGKIVVNiOx7QTeK
         yVyZJpSmOJtVJzrRItM6imrel/m/5gpUNF9/yaNDIcckpwSm3F1dh7VnVfAvF7NRcfA6
         1luXz6VHrckHLYKyTWATRrVriPKI9gOkHut0XhK7OdYf4crO8jj5lB8isu7bL7I+5J4a
         wfh2Nou1sp8y1ZSeSD5B2JyH3lUjG4hETpEPDFqJTCQmFwKkmO8Lmxs4SMFTT0EjaQvw
         OotrnZazxk6SzoYvFBoFs8qm8f/PyVsOxobktfB8lLK6rJGcMKUTXn5xRT9755LUxqlB
         5g2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194263; x=1739799063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pJKz1g6voDImT0UUTo/s+cF5fKbKW++euQC6BW/L/6A=;
        b=p676cjbvKM4+pgCLJ8s6mfnQFJY9GOPTM8vBggih7x+ISHhk8ypBLFgga8it6i0LlE
         RL56mOaA8CrjTtf1grclpUroMCeDYJnEcZg1NWXAcOaYhpjYLAtFpFDw+NFx75BBrnhQ
         vDmK4R+GllohFa10xceP2LJ2cZVTaOvoe2enSsjA9sfvlTcor0Pu2h728fuwkmLcIC8v
         8Km4yn/zpZmwZmIBYoFVMqOeBu7ZdubtHn6LmlGMoO/srxsNAdN5eoV5tMzztARTbZ9z
         zGZDuadiTNsh5aECgNaynRHvNFecF1znWxZDuutrUeyw2U/KSHkxMsg+E9lJAbV0Vp2F
         Mg5g==
X-Forwarded-Encrypted: i=1; AJvYcCXIbFroIqpcAe1E7yeEdSaRDVdtKqLeVe12IvD7a+CBsMW/2BZF6qgkpzYA9lm8PG1zBWmRfHFchNZuSJNMqK1w@lists.osmocom.org
X-Gm-Message-State: AOJu0YwI28xZQLjOE8EQJx0myZeRGRiXj8akhettNwGE+clT7Fg/zpJf
	3BYV19StUksSIT+ac7ZuxHPJUbn0GFzPHY2TcdAt92sB/qwUAaDY
X-Gm-Gg: ASbGnctNqbieN2pabJ8W7FDMtXZZY84fV2qaS+VQtamuoMmbyKqeKTCkrd2pKj0IkS4
	e+g7PtH6zkpfLJiLcvDECgFbIHYDb5aabawoHzruUUOGhwDYYrg8vn1/dD5/KPpccIdUu6odrRh
	XP7FpEDuXrSp0ke9B1k3cuugTCSC+be2HHyVR5ogt+qHwSXqx5YWZIQH15P0m1Ce/nrnLOY0NKh
	Tyr47eUketQRyZUiZucoF6pBqJiaPF5g3jOZaVuKw3tidLnN+crkaHMIl/h4g76PsrF86W14UNA
	MO2oSw==
X-Google-Smtp-Source: AGHT+IGNFjsW8yGSZG6C2tbCv5/JZ09OmB3LKkjVhY7agbUhlCe28tcl+Qcya8rlcfYhnDrE2/S9OQ==
X-Received: by 2002:a17:902:e946:b0:216:7cde:51a with SMTP id d9443c01a7336-21f4e72631dmr249984615ad.28.1739194263028;
        Mon, 10 Feb 2025 05:31:03 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:02 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 05/11] net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 10 Feb 2025 21:29:56 +0800
Message-ID: <20250210133002.883422-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HR45NO5XGWW26KFIML2X4KDNS6PDYVXV
X-Message-ID-Hash: HR45NO5XGWW26KFIML2X4KDNS6PDYVXV
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:38 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/HR45NO5XGWW26KFIML2X4KDNS6PDYVXV/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When link_net is set, use it as link netns instead of dev_net(). This
prepares for rtnetlink core to create device in target netns directly,
in which case the two namespaces may be different.

Convert common ip_tunnel_newlink() to accept an extra link netns
argument. Don't overwrite ip_tunnel.net in ip_tunnel_init().

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 include/net/ip_tunnels.h |  5 +++--
 net/ipv4/ip_gre.c        |  8 +++++---
 net/ipv4/ip_tunnel.c     | 10 ++++++----
 net/ipv4/ip_vti.c        |  3 ++-
 net/ipv4/ipip.c          |  3 ++-
 5 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
index 1aa31bdb2b31..ae1f2dda4533 100644
--- a/include/net/ip_tunnels.h
+++ b/include/net/ip_tunnels.h
@@ -406,8 +406,9 @@ int ip_tunnel_rcv(struct ip_tunnel *tunnel, struct sk=
_buff *skb,
 		  bool log_ecn_error);
 int ip_tunnel_changelink(struct net_device *dev, struct nlattr *tb[],
 			 struct ip_tunnel_parm_kern *p, __u32 fwmark);
-int ip_tunnel_newlink(struct net_device *dev, struct nlattr *tb[],
-		      struct ip_tunnel_parm_kern *p, __u32 fwmark);
+int ip_tunnel_newlink(struct net *net, struct net_device *dev,
+		      struct nlattr *tb[], struct ip_tunnel_parm_kern *p,
+		      __u32 fwmark);
 void ip_tunnel_setup(struct net_device *dev, unsigned int net_id);
=20
 bool ip_tunnel_netlink_encap_parms(struct nlattr *data[],
diff --git a/net/ipv4/ip_gre.c b/net/ipv4/ip_gre.c
index 1fe9b13d351c..26d15f907551 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1413,7 +1413,8 @@ static int ipgre_newlink(struct net_device *dev,
 	err =3D ipgre_netlink_parms(dev, data, tb, &p, &fwmark);
 	if (err < 0)
 		return err;
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb, &p=
,
+				 fwmark);
 }
=20
 static int erspan_newlink(struct net_device *dev,
@@ -1433,7 +1434,8 @@ static int erspan_newlink(struct net_device *dev,
 	err =3D erspan_netlink_parms(dev, data, tb, &p, &fwmark);
 	if (err)
 		return err;
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb, &p=
,
+				 fwmark);
 }
=20
 static int ipgre_changelink(struct net_device *dev, struct nlattr *tb[],
@@ -1701,7 +1703,7 @@ static struct rtnl_link_ops erspan_link_ops __read_=
mostly =3D {
 struct net_device *gretap_fb_dev_create(struct net *net, const char *nam=
e,
 					u8 name_assign_type)
 {
-	struct rtnl_newlink_params params =3D { .net =3D net };
+	struct rtnl_newlink_params params =3D { .src_net =3D net };
 	struct nlattr *tb[IFLA_MAX + 1];
 	struct net_device *dev;
 	LIST_HEAD(list_kill);
diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
index 09b73acf037a..618a50d5c0c2 100644
--- a/net/ipv4/ip_tunnel.c
+++ b/net/ipv4/ip_tunnel.c
@@ -1213,11 +1213,11 @@ void ip_tunnel_delete_nets(struct list_head *net_=
list, unsigned int id,
 }
 EXPORT_SYMBOL_GPL(ip_tunnel_delete_nets);
=20
-int ip_tunnel_newlink(struct net_device *dev, struct nlattr *tb[],
-		      struct ip_tunnel_parm_kern *p, __u32 fwmark)
+int ip_tunnel_newlink(struct net *net, struct net_device *dev,
+		      struct nlattr *tb[], struct ip_tunnel_parm_kern *p,
+		      __u32 fwmark)
 {
 	struct ip_tunnel *nt;
-	struct net *net =3D dev_net(dev);
 	struct ip_tunnel_net *itn;
 	int mtu;
 	int err;
@@ -1326,7 +1326,9 @@ int ip_tunnel_init(struct net_device *dev)
 	}
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
+	if (!tunnel->net)
+		tunnel->net =3D dev_net(dev);
+
 	strscpy(tunnel->parms.name, dev->name);
 	iph->version		=3D 4;
 	iph->ihl		=3D 5;
diff --git a/net/ipv4/ip_vti.c b/net/ipv4/ip_vti.c
index b901bee03e6d..159b4473290e 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -585,7 +585,8 @@ static int vti_newlink(struct net_device *dev,
 	__u32 fwmark =3D 0;
=20
 	vti_netlink_parms(data, &parms, &fwmark);
-	return ip_tunnel_newlink(dev, tb, &parms, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb,
+				 &parms, fwmark);
 }
=20
 static int vti_changelink(struct net_device *dev, struct nlattr *tb[],
diff --git a/net/ipv4/ipip.c b/net/ipv4/ipip.c
index a8b844bcfc64..bab0bf90c908 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -455,7 +455,8 @@ static int ipip_newlink(struct net_device *dev,
 	}
=20
 	ipip_netlink_parms(data, &p, &t->collect_md, &fwmark);
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb, &p=
,
+				 fwmark);
 }
=20
 static int ipip_changelink(struct net_device *dev, struct nlattr *tb[],
--=20
2.48.1

