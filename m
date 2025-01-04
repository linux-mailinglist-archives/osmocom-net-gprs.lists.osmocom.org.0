Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 98899A05DE5
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:17 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7AD5A1BD044;
	Wed,  8 Jan 2025 14:04:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OJMlh2FmjQT6; Wed,  8 Jan 2025 14:04:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C597C1BCFF1;
	Wed,  8 Jan 2025 14:04:12 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 28DC838A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:30 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 10E951B96B8
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:30 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RLE0hFdOsZWc for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:58:29 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by mail.osmocom.org (Postfix) with ESMTPS id 5222B1B96B3
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:28 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-219f8263ae0so138666895ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995507; x=1736600307; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RCmZExhyz7cb3bxHLdfAhcPoFeVCTtasFkXOWH4Z1YU=;
        b=IsYTlQWqsz/ofbNvoGiopaB5wP85dyI6x1IPPOrasbOFgHypFJyS8nQlJ4uWYv9SD6
         pr8spP1qyfkabZijRMYdW9vaTtd8utE52VEbE1JT9N+59TORBV763CORe0m8a5KKO92U
         p/Mq/Sr7X3Jjs+aI1wyDqgdVwhp9oH9CzktS4GD3nu7N1/Jguah3PxKWAzQx3rXVzShB
         sy2saeJh/mdEqJJz9WRkarb8shmCflJI4tamabaInzv394kyHc3ecZSP6oWSx6qVCsIR
         XMQfCb7CbBiySLaa8tAe3vGZh9iilb1/9/ndJiCHo+7jfkjpEGZOnM5tutwvxbARUoyQ
         aVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995507; x=1736600307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RCmZExhyz7cb3bxHLdfAhcPoFeVCTtasFkXOWH4Z1YU=;
        b=D8+93/DLW6teeI/YBji1UQHhu2Dtvcs35uutbt23LOSzqvvd4ayjPLKyysqF47aq/8
         921ZdXA4FqvdBEdr4yQMaUXAD64/6FB+9bY8ONMPaAgC4euav4finQyYAR4ZKEKQuDZ3
         zgdpYc44POjIYwVaKmiO+i7CXxJhC899S/4bwJ+dlJkzB1E3TnNJgrXF6joPZLeOjzMn
         AqcRb/Mq6Z8sfDGUyolx+Iq6oBRtVp7yjVASG7EKlHUPShdG+OWee9NknZtX+633WKxe
         hWVZOq4/RM5kkG14lDCV3aTMTksj1mCPggNv8rnd4xMK3gfp4kKzW0DIdtKXz2cI7Jje
         8i9g==
X-Forwarded-Encrypted: i=1; AJvYcCVtp4vFIZJZIYvYVFcSH2ef58MBLlQ6yBAq5Ro46f4XwHVR4GEW6+qAu2Yn/CG98rE390jzBWB/NFyGnV0BX9Eq@lists.osmocom.org
X-Gm-Message-State: AOJu0Yzrm94ghhvBqBO3gkimShOTM+2RtSI28zP3O0F4crkZANEnl0NP
	qd6l36WDJDbgl1cIEknH/0fT38pywO9A5YuFD5P6LABziKPD9aB7
X-Gm-Gg: ASbGncs19qXVorTmFIyIaeeuze8T4MiKFlrKLq/b9Y587eV0R42mFuFJeYTIrEGEL7p
	rIH6wFIImXPotKYXKGnhucVZAvglpau7DifhydDa2UB3l+Rag+azzv5YWvZHYElfTu66WHMFluC
	0Cpj/g51kBn3Cl8ufuqxLwhYckPYuLKejBydIKAzddraITN5+ZtaVHO8VD7dysWBDku02+t4Agr
	ewyF8HlgtuUuiNRP+3z/h7zF5ZYxVSmcphEG0u2NIkwJgY=
X-Google-Smtp-Source: AGHT+IHhlUZ4hpFQ3a9b6BPvAGinyOtYhhp3nBXZboTqrJ2Is+5BNZ37AA3tsOk4lmwOGToWJ2idfA==
X-Received: by 2002:a05:6a21:3189:b0:1e0:d632:b9e0 with SMTP id adf61e73a8af0-1e5e046fab8mr87168448637.13.1735995506986;
        Sat, 04 Jan 2025 04:58:26 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:58:26 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 05/11] net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
Date: Sat,  4 Jan 2025 20:57:26 +0800
Message-ID: <20250104125732.17335-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JN3WNGGFKOH76GTFLZ22VUGKWNNCGSIZ
X-Message-ID-Hash: JN3WNGGFKOH76GTFLZ22VUGKWNNCGSIZ
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JN3WNGGFKOH76GTFLZ22VUGKWNNCGSIZ/>
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
index 71eb651e2b44..d1b712b775b6 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1408,7 +1408,8 @@ static int ipgre_newlink(struct rtnl_newlink_params=
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
@@ -1427,7 +1428,8 @@ static int erspan_newlink(struct rtnl_newlink_param=
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
@@ -1701,7 +1703,7 @@ struct net_device *gretap_fb_dev_create(struct net =
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

