Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id A60299FF147
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:33 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8D5F41B68EC;
	Tue, 31 Dec 2024 18:40:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6pd26HAKO9Is; Tue, 31 Dec 2024 18:40:33 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 54D631B67F2;
	Tue, 31 Dec 2024 18:40:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 09A5938A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:09 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E1B2D1ADACA
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGzzYybKx8jj for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:10:08 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by mail.osmocom.org (Postfix) with ESMTPS id 2DFD61ADAC5
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:07 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-728ec840a8aso6878520b3a.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527406; x=1735132206; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=duDRQNaydM9MnygAgym8Q8/9ko+la+IiXsEzlSyfpMg=;
        b=J89y64bwtTQ48V/ZCbQ0ixlsAYYOCcCXbu7J+zolY3cyXUjKfffYQ3zDxpx+c3/l3f
         F6N09ksz/QFPAnf395eKxFB82R0bsFKY3wSMFhDTXxn4wodNnXYCy5RpkuViobP79DC0
         YNX6c/WDqonKSXxuhWAtO2Y0PqSfgP4SVW+VlpgEWOM0zCOhWYi6kJy7CFVFAJ+bzDl7
         /EOye6ZGm6F5yf7BfHeFe8aSsGpGSK/WLV//XW96laVcnCdvTByuT0WtLmWTi8LGwwKy
         6n46DogwZOkwr5KBifPiBu8pLZ67J2E2IIhV97i2j1SXiDCOy0ZikZDgKvAfuaWcqApZ
         NH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527406; x=1735132206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=duDRQNaydM9MnygAgym8Q8/9ko+la+IiXsEzlSyfpMg=;
        b=Yf5pbrIdST+gphQiYO8lsaVoSGzrGiQol/XTMHCIGwl2ERZhPu/o5rE1E58HElP4CO
         8QQo1lKxZvLDP4PVub0cwN3ErmgVqAGeNgGxxCkHe8P0kBCm2xxiDRJtLW23S9O/ZiU9
         xwP9tWOIaCXPxENLFCnAnemx5hx2QrOkHpmkHzleHOJR+Q4tehuSX7LV11Q0gOw4B9Cp
         viVCGA/dAyYMPdO4+zg4dKFqdCN8CUT6HSTbvxVozizNpS2SrfhbdJ2gvNQucyI4W6td
         QCjc7HS6hjwnMhGaC3R8ihviOMeCrJQDT9uH3cnI+TaMSX0QWyxo8OGe/xX2poFuB9VV
         2ZOg==
X-Forwarded-Encrypted: i=1; AJvYcCXqwjgU112pO/6glyoPDYm35M7ZGz3RCRlSAOjYrFrhpbEkp44mlUtI13BUuBPNXPrM7aSkK4iH4ImvIdz8bH5J@lists.osmocom.org
X-Gm-Message-State: AOJu0YzgDuQ4MXzjbUWMOeaBIFbcPKGsPbouZ/dcquR8ThsF8mObxcN8
	tfgiBL4RDck4hIwFqXpcq730IjpreUppHtSaBSAfQ1Iq8fjNG6go
X-Gm-Gg: ASbGncukNSsqLboFfl3IBxjzRVw9vavVdCgAYyroETl8UobVyB7gQL7Rc99ieSnclFL
	HIojTectxu2B9RQ0sxsMNLk8Ka1XmT/nltdA5EKGukoKGLcP/v7VDbhUwyst2cbipBZGbr49+7G
	tEyYfGHjwoQ+6+9PM4LCnKu4KAX6Pc1no1oKLP1ASUrXPdwltkKujKJMAHcmbApI1K8R3qkjk7s
	8BZLiv95kEMVT3627sy6N2jt2b21s/0sgGnruOGJQxMFMg=
X-Google-Smtp-Source: AGHT+IHjAWByhkuRCvJpT02c4DgXI4s1gEBDobTpc14t8liBEMaFpl/IXfL3hYD82aWPv+sYgjfNgQ==
X-Received: by 2002:a05:6a21:c94:b0:1e1:a647:8a3f with SMTP id adf61e73a8af0-1e5b4824307mr5763308637.22.1734527405806;
        Wed, 18 Dec 2024 05:10:05 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:10:05 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 05/11] net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 18 Dec 2024 21:09:03 +0800
Message-ID: <20241218130909.2173-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZOA7K4KG4NDQ4DSRTVVB4VMU4LA77V7F
X-Message-ID-Hash: ZOA7K4KG4NDQ4DSRTVVB4VMU4LA77V7F
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:17 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ZOA7K4KG4NDQ4DSRTVVB4VMU4LA77V7F/>
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
index ecad1d88dd26..bae80bb7839a 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1405,7 +1405,8 @@ static int ipgre_newlink(struct rtnl_newlink_params=
 *params)
 	err =3D ipgre_netlink_parms(dev, data, tb, &p, &fwmark);
 	if (err < 0)
 		return err;
-	return ip_tunnel_newlink(dev, tb, &p, fwmark);
+	return ip_tunnel_newlink(params->link_net ? : dev_net(dev), dev, tb, &p=
,
+				 fwmark);
 }
=20
 static int erspan_newlink(struct rtnl_newlink_params *params)
@@ -1424,7 +1425,8 @@ static int erspan_newlink(struct rtnl_newlink_param=
s *params)
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
@@ -1698,7 +1700,7 @@ struct net_device *gretap_fb_dev_create(struct net =
*net, const char *name,
 	struct ip_tunnel *t;
 	int err;
 	struct rtnl_newlink_params params =3D {
-		.net =3D net,
+		.src_net =3D net,
 		.tb =3D tb,
 	};
=20
diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
index 25505f9b724c..952d2241c9b1 100644
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
index 12ccbf34fb6c..98752b4d28ad 100644
--- a/net/ipv4/ip_vti.c
+++ b/net/ipv4/ip_vti.c
@@ -584,7 +584,8 @@ static int vti_newlink(struct rtnl_newlink_params *pa=
rams)
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
index 3a737ea3c2e5..c65c8b0e838f 100644
--- a/net/ipv4/ipip.c
+++ b/net/ipv4/ipip.c
@@ -456,7 +456,8 @@ static int ipip_newlink(struct rtnl_newlink_params *p=
arams)
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
2.47.1

