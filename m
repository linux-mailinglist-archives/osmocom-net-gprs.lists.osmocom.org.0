Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A0A43496
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:13 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0EF5A1F3BE5;
	Tue, 25 Feb 2025 05:36:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cTiOTX_u9DLJ; Tue, 25 Feb 2025 05:36:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 319DC1F3B82;
	Tue, 25 Feb 2025 05:36:09 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4B23B38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:50 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 340621ED289
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uy4684uAEZIM for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:49 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by mail.osmocom.org (Postfix) with ESMTPS id BC13E1ED284
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:49 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-220e6028214so116680705ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969508; x=1740574308; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y8g2ZzjSkLAnV2rJAeqcq6uVgaF3+M6uyZFMb8BU5Wo=;
        b=fKkPmC/LOEIA65KyjvTQlYrL9QAn6O4yE1v3mddpvuha2G0+n4zPpnHepOt3IDXgAh
         7pqQ8eahYoPLEU401tSo7GPZJeYDATB77z72FBmZueEH4xEFPVlLJuDxD7mQKclVYa+v
         B+ECUIT8zgZGT4fmmOgKfbmzp7dNyYKiz+6/P/xDq5ciOZICQ2azPlUt9vYDE4IZRc17
         LBqkcei6Yb7SLC6XXat18zJ/jvjU1n23YhvdMOlwHofgNoovTsuRaw9a9c87NvUqUvHg
         sknCvcN/TplVuZAHVgQyU9NrpIj+avnNdMK/x+kqWMXuVbEHqnlA11blCMqlr72Avm4L
         at7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969508; x=1740574308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y8g2ZzjSkLAnV2rJAeqcq6uVgaF3+M6uyZFMb8BU5Wo=;
        b=CUywfi6u6u4JhVuuSTSvmMrEqnHZCChlGaFNQLmNkVPo3yGlMczDy12KTKYgwYAoIu
         GUfcV+dLjfgPsLPDM4ZfSKL7UqFZWbzk/QKAEYRdu/L59wPLEJ6av7aLPw/h8+qCBSNI
         o6vMOu0Jb7nfMFffCPs8jgm8XsmUajZY/SgqOaaGdna7+vwBV7oA5ijHt3lF5kZDwcKg
         aQWnpHH7WxAAmEAeAzTcQ6L4Xx/FEYzeS4zIJ5vGir2OC5bXQujr7dxFBvg69DyScH+k
         bbHU9HfvdfeF3B0H4L07r3sAlzcY1scmlR4uxBoW3c3KWGyyiHE5WJUhbXD+lHsav1eG
         4jWg==
X-Forwarded-Encrypted: i=1; AJvYcCUOdIbzaYIU+7IpQ1tIIN316SftywsRanh2lJrqhWyu2W/06CEefHlIJO3kr8imR2LQZXQ5yL9EIpTYN2d0nf+N@lists.osmocom.org
X-Gm-Message-State: AOJu0YxhlFSu5q1LLBtizI2PG65kFzZYW411TWhLxtkqoJFZTnsbZO3e
	86atic2/Z37TfV3B8ro816ReQPWwnab4UNy/bHZmbyy/ynQTvysU
X-Gm-Gg: ASbGnctAQoYwq2RzpaeLP7I19rjTcNjpDs43bhENyPrJLs0kzTcvbYwYGiAZo5phGHF
	rT6WCLbJTAR3/ouYnCrulbqlOHm2us3BjWsJaHFd0IGA1Av5wHjy2z9vD/1ETTEnFzDUCibXnXO
	B8v7847L++OyT+n14BYSn/vKc/5jYKINtgIqq3FwU/04y5ChrgoVfk59/xe6MHK6XJXrvn2Dqnc
	EOvN9QMU2JSQoXVN/YwtZY/6mI2jMKZB8sstqr0qmu6swMEDkYWK68U0OS7ORiXE3RyYFZbOlrl
	4gwygg==
X-Google-Smtp-Source: AGHT+IFYP0H8aiDg7L5uhsGsJLhgqrRsnWJTkGp9h+ijz9vj+qGa0NYcij3UcKBMYCMaV2Zll9Ie8g==
X-Received: by 2002:a17:902:ec84:b0:220:d532:834e with SMTP id d9443c01a7336-221040255d9mr276303305ad.19.1739969508267;
        Wed, 19 Feb 2025 04:51:48 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:47 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 06/13] net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 19 Feb 2025 20:50:32 +0800
Message-ID: <20250219125039.18024-7-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PPVF36SB2ZCKU67HDHFWVJTVI27XN7Z7
X-Message-ID-Hash: PPVF36SB2ZCKU67HDHFWVJTVI27XN7Z7
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PPVF36SB2ZCKU67HDHFWVJTVI27XN7Z7/>
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
argument.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 include/net/ip_tunnels.h | 5 +++--
 net/ipv4/ip_gre.c        | 8 +++++---
 net/ipv4/ip_tunnel.c     | 6 +++---
 net/ipv4/ip_vti.c        | 3 ++-
 net/ipv4/ipip.c          | 3 ++-
 5 files changed, 15 insertions(+), 10 deletions(-)

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
index dd4b4e5be998..011f2a5aab3b 100644
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

