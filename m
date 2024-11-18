Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B15FA9D9457
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 26 Nov 2024 10:26:47 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 488DB191B60;
	Tue, 26 Nov 2024 09:26:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T7xYKRw3ipxg; Tue, 26 Nov 2024 09:26:46 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AEF2C191B50;
	Tue, 26 Nov 2024 09:26:45 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0B92E38A1A94
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:25 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E6AC3182415
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SW_C6p27XU86 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 18 Nov 2024 14:33:24 +0000 (UTC)
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
	by mail.osmocom.org (Postfix) with ESMTPS id 48CF818240F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:23 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-7e6d04f74faso2786923a12.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 06:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731940402; x=1732545202; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrCaarQptqoPnVIGF6Rw6t9hI+Rf9ZxQVNSlbFD1HYQ=;
        b=fLUPBvCl5H04153LXPAW7vRBP8PCRWCx2edEyTNSxf8kSSve5T9XdxND/+3q9MkyPV
         3xtVWPQFLI8cU9OLGCnHSeSdmcMTjfWOKvtcc5cMMuSnZoQlx6ewfV083FIatrg8xN5N
         QyJcGtJC9R5nKA5YRDswUroD+kChcXK4ZnIHtFmtBDqoRQauYP7X9EsuhBBCL7Qemnhp
         N0UcksI7JnU3qpePtlrUvsV802q36iLfUnpOQDWo50Pco1jycXFIp0B4S6YkxUJo4F6Z
         Qc4OxQvO3+IMMt1X+RfzEzRcCXKv/5sMfDorG/tFKDEDRb0QHwtfiis59GWhzoIDFK4V
         bFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731940402; x=1732545202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IrCaarQptqoPnVIGF6Rw6t9hI+Rf9ZxQVNSlbFD1HYQ=;
        b=xPprbT1gHwH3HE7q/4k+7dRwMiMCIY41n3KJKCM7JkiO49UUlG8RUjUFL7v2i9kYUU
         CBqYa8a4a1C7JAOpPu4H/etvv6gVtXf56I33R7syDyAKORFiP0rzWKyiYffINMglSC3Z
         00bnGRvOYSTyBxltJXeXQOMUH0eHa4gmh+Lo6qYKOGQDp8VwCqUFfFBS5q24Ug1I1xH2
         9HWLG2KHzXlPfD7pha5TW+DC/H1utqVsbZ9F9j3wA2lB7LyHdNlSVN1wWnTj9PpF9/GL
         aMnJGI+Q1KQ05cgo64v4LEtGzACq24Gvdtuas34Z5P49hCp3Ha40Gs61s+pAqCIbsvjX
         g6vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXe4KHi9nVH/ENlAs+8y0SbcdHo0qWBJeN/08nTRTWoonnlh8i5nzKGwQBzJ7pSgQsh49D1RuFYq5QOwtLKL/uB@lists.osmocom.org
X-Gm-Message-State: AOJu0Yw47x7aOMKo4sqBVAml8BkxCHUHn+Ahu1VQ/35lBo4VhphZK2cM
	p2MZAyHbsTiZdEQWVawIDUhAmU5eX9UxpEkmJMN7s1gyWtqgS/OD
X-Google-Smtp-Source: AGHT+IGzbRz7s9CT801paPWPDasO606/jlaO2UpnfJMF7tMlUetZpF6RTCqXaMFrG8I7wghYj9+EFA==
X-Received: by 2002:a17:90b:3c4e:b0:2ea:9ccb:d206 with SMTP id 98e67ed59e1d1-2ea9ccbd33amr1559048a91.8.1731940401993;
        Mon, 18 Nov 2024 06:33:21 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ea81b0e2fasm1616926a91.52.2024.11.18.06.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:33:21 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v4 1/5] net: ip_tunnel: Build flow in underlay net namespace
Date: Mon, 18 Nov 2024 22:32:40 +0800
Message-ID: <20241118143244.1773-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241118143244.1773-1-shaw.leon@gmail.com>
References: <20241118143244.1773-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XHCCGLE75WPPYPUALZCOMJSVFQYTWRQC
X-Message-ID-Hash: XHCCGLE75WPPYPUALZCOMJSVFQYTWRQC
X-Mailman-Approved-At: Tue, 26 Nov 2024 09:26:34 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XHCCGLE75WPPYPUALZCOMJSVFQYTWRQC/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Build IPv4 flow in underlay net namespace, where encapsulated packets
are routed.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/ipv4/ip_tunnel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
index 25505f9b724c..09b73acf037a 100644
--- a/net/ipv4/ip_tunnel.c
+++ b/net/ipv4/ip_tunnel.c
@@ -294,7 +294,7 @@ static int ip_tunnel_bind_dev(struct net_device *dev)
=20
 		ip_tunnel_init_flow(&fl4, iph->protocol, iph->daddr,
 				    iph->saddr, tunnel->parms.o_key,
-				    iph->tos & INET_DSCP_MASK, dev_net(dev),
+				    iph->tos & INET_DSCP_MASK, tunnel->net,
 				    tunnel->parms.link, tunnel->fwmark, 0, 0);
 		rt =3D ip_route_output_key(tunnel->net, &fl4);
=20
@@ -611,7 +611,7 @@ void ip_md_tunnel_xmit(struct sk_buff *skb, struct ne=
t_device *dev,
 	}
 	ip_tunnel_init_flow(&fl4, proto, key->u.ipv4.dst, key->u.ipv4.src,
 			    tunnel_id_to_key32(key->tun_id),
-			    tos & INET_DSCP_MASK, dev_net(dev), 0, skb->mark,
+			    tos & INET_DSCP_MASK, tunnel->net, 0, skb->mark,
 			    skb_get_hash(skb), key->flow_flags);
=20
 	if (!tunnel_hlen)
@@ -774,7 +774,7 @@ void ip_tunnel_xmit(struct sk_buff *skb, struct net_d=
evice *dev,
=20
 	ip_tunnel_init_flow(&fl4, protocol, dst, tnl_params->saddr,
 			    tunnel->parms.o_key, tos & INET_DSCP_MASK,
-			    dev_net(dev), READ_ONCE(tunnel->parms.link),
+			    tunnel->net, READ_ONCE(tunnel->parms.link),
 			    tunnel->fwmark, skb_get_hash(skb), 0);
=20
 	if (ip_tunnel_encap(skb, &tunnel->encap, &protocol, &fl4) < 0)
--=20
2.47.0

