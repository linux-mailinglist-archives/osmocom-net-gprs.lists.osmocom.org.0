Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C5A1889D
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:14 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1D6491D2F86;
	Tue, 21 Jan 2025 23:58:14 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZbdOXHmD3Vrf; Tue, 21 Jan 2025 23:58:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 645E41D2F4B;
	Tue, 21 Jan 2025 23:58:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id EF19738A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:23 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D73441C35DB
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P3Zug_qPac6W for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:23 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by mail.osmocom.org (Postfix) with ESMTPS id 68A551C35D6
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:23 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2165cb60719so77873195ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779102; x=1737383902; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v2hr3iCsVwpwP1Nzlez7XTECQN7gMZZquvojvDybmoY=;
        b=K3u/SWvHQlUwXsxFxnkFR0OTXVRNMdL0qztosTy/L9D4VUom+CW3mYNcrqx+Sw2icL
         sCBcKM1EgiS7k88aZZkf6CCPLKtfvDa0lsRIhs93eDR7w793A9wUf2vGQhbelsjEz0rM
         PDMMTM1LbL+QRRpVCNbvZKH7vytKDQUWh0ffF4dXAF8DnRhWLnsSwX9UR1gzhI40iF+k
         m5/Z+ZXzM9JC6Zt5qRwmHL0H7UQ8CwGb5X9BqYF6ukxbWCCyQ4URTZY9lhSAXt5b43e6
         BlFnrfASG1yrREoXdFO0x2pWVNkKDxN4gi5lF9HD/UaHITv7BZZ0yax03qjpCiyCfzjb
         sHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779102; x=1737383902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v2hr3iCsVwpwP1Nzlez7XTECQN7gMZZquvojvDybmoY=;
        b=gZ5uQJn2dZZL1EXKD3Wo2y+8yAc767JWBmJcTT6pJvFlo/QLwv80cEgKnSeFP4aGQu
         6SsRbabBNT8glQhmFjNZi5BceQBUo6RX1n/WtpXtwmxaHdWS7pHtOyxJKGzQnTMDkY/m
         NS9nHRS4KZbjX5q1z7+DB6unlGzV6yRIoTBo0ORH0iEBbK9d82UF+ZhKb+o1UOPD1znG
         bQojmFxxkQDbmQDBBsMAH4QlT1zJllHgUAXvuLV2+AoUMV7C7gyiSPJpqk7iucApUusz
         J4njP20H9a6kmZV8yrMApchCpE9cEC9pfu9IYVcQFoRKInUEfV4eB2Mf9VMR9c5w94rO
         lihg==
X-Forwarded-Encrypted: i=1; AJvYcCWbflQpufeeUh+xuefcwCtRJ1QaDvkmmvJ0CBa+UT02Z7T/uZQ9tq0qn6RcL3lMNHqgeHmh1/cAEYBmAlq8W4/f@lists.osmocom.org
X-Gm-Message-State: AOJu0YxzNMhFdbQZbx41opKfJBiXxY24JB3W7MKW0I1M2V8QKgSLJ+Af
	oJ+EBHnta/a1pZDnAfkZEsom8ui7Lw1MGrhSfPHtAsxwXGnEFlXQ5uxYVGMR3LU=
X-Gm-Gg: ASbGncsur47k6t/XVmDTnIeJ+s1YsS+HrxohBbdTpCAa346TBYuRpDyHPPzhkwnOFVt
	DnXMw+WDtNBH2WQic7Gwk4qCTTPN2Q3MgXlKiuAh3COVdu2Kbr15z3Kw3zAwPIXvPigyaL2C/Ea
	w0ok2yPVgwBMkojdZiw26yS+QHRnU7ilzQdfdTi/eYr+1/ytTLxlLCI5hiJMU4iq43mOpttmcTE
	Bp5UFUgzalRU/GsZO/QCaIfHNUyaPVcOlXWUghIINsd0Bk=
X-Google-Smtp-Source: AGHT+IGv14RrhPbpKFC9/J2BufZTu7MOaWM0c1rsX2Y4WR5iS1cGRY2j7eRCHAjKSVADaNJCQQybTw==
X-Received: by 2002:a17:902:f685:b0:215:b473:1dc9 with SMTP id d9443c01a7336-21a83fdf10fmr312977815ad.46.1736779101666;
        Mon, 13 Jan 2025 06:38:21 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:21 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 05/11] net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 13 Jan 2025 22:37:13 +0800
Message-ID: <20250113143719.7948-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 56RY54WT2N4BB5DVZ4V7DDL672MNCVA4
X-Message-ID-Hash: 56RY54WT2N4BB5DVZ4V7DDL672MNCVA4
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/56RY54WT2N4BB5DVZ4V7DDL672MNCVA4/>
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
index 4e8c310769ad..51113e981229 100644
--- a/net/ipv4/ip_gre.c
+++ b/net/ipv4/ip_gre.c
@@ -1409,7 +1409,8 @@ static int ipgre_newlink(struct net_device *dev,
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
@@ -1429,7 +1430,8 @@ static int erspan_newlink(struct net_device *dev,
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
@@ -1703,7 +1705,7 @@ struct net_device *gretap_fb_dev_create(struct net =
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
2.47.1

