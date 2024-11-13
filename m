Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FFF9D10A4
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:17 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0673B181F91;
	Mon, 18 Nov 2024 12:38:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BwsFO4-W0aWm; Mon, 18 Nov 2024 12:38:16 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 67E64181F82;
	Mon, 18 Nov 2024 12:38:16 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 05CC338A18D0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:56 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E103417B2C8
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLClKKjNwrh9 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 13 Nov 2024 12:57:55 +0000 (UTC)
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by mail.osmocom.org (Postfix) with ESMTPS id 3EFA017B2C3
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:54 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e2bd347124so5410025a91.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 04:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731502673; x=1732107473; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrCaarQptqoPnVIGF6Rw6t9hI+Rf9ZxQVNSlbFD1HYQ=;
        b=cpWK5Tgc19l+GzGqer9rm/4urnz4B6iknNMPBd8QvQQibQ/z1fnVq35htRWGUZxiYr
         qp/zKcw+Q8DfFAYeiyue+ZhbNnYkQWJxXRuL8soMPuTbLHSHJeFAn6Wf4JTlDOMEdLn/
         3zPOFGyp25Dzi0yGflIj1IjDKqlXtYRRQXVlk+DEaelQffaHgfYrmbbm135ioMWDs274
         aRnBkmjTGImMl6WYVFAvdT85FiW4KHmPE143SV+2MoTKfHYtvD/bAPWrAwbfOgZynXIo
         Jly0bF8hR8QbmYYe7PxSMjbtvgVbioIHAI0tDQXRIV2iAdrczH/iRfvZdBoLvuoRcF79
         LwtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731502673; x=1732107473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IrCaarQptqoPnVIGF6Rw6t9hI+Rf9ZxQVNSlbFD1HYQ=;
        b=khl2q7EeaF5Dk5wNFj/BNS4shCWpkD04VluTUBlJMhMI2lCq1MuhI3eIgifypD5kht
         SG8C9371vPYvukW56eS0qUHOeTHa6FgbTkaQEX/mqgxN5cQ2tY6AeKq6Fe4EzlbYM1uu
         uymVIXrBJ2S9w6VIS7uCUcJKg/nyhTOW+cGh5r/YXuTgA9Ub+/l+tV1HolCABYmx8g5Z
         E+9VbOuY932xtJE/eDR2U90w4sPfWqI7EL1grzHf7krM52dxHlUsaJvYqkc7iMK7JB1E
         57yKG5G29xSr2h1kkR4X8iGoC1zupj/WVj2tUunW0QSqNaCOKfDJyznuGRuly5wntrvT
         VwpQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+e6DMsSx+RJBsXmFS3ZXKNz0wE8lOomEm3WXhKn7AwTC2w8u8IniLOJV//YKp9J6DgEd/HJtJo53qx/yZ71zA@lists.osmocom.org
X-Gm-Message-State: AOJu0YzyyRsWiLwScPhj+4YHHqsh4MkhsDmLxL07HTAwsA9kUT7QpBwY
	pFH+zWrhZLwZ3mvr/IgmXrbbNRNYDNjEvzKjziylHJPoGTrgwOfe
X-Google-Smtp-Source: AGHT+IGJi6Tp37K+i8d+pRtqcGbSCXzQQJQiHEkYvBXRMyT+Ytmcy1PnetStqWOPaDWwW+msVvcvjQ==
X-Received: by 2002:a17:90b:38c4:b0:2e2:c6a6:84da with SMTP id 98e67ed59e1d1-2e9b1799123mr24937176a91.34.1731502673070;
        Wed, 13 Nov 2024 04:57:53 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f8ed0esm1398632a91.40.2024.11.13.04.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 04:57:52 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v3 2/6] net: ip_tunnel: Build flow in underlay net namespace
Date: Wed, 13 Nov 2024 20:57:11 +0800
Message-ID: <20241113125715.150201-3-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113125715.150201-1-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 46PNTN253ZNETZ2J4X4L6G6QVPWZNVGB
X-Message-ID-Hash: 46PNTN253ZNETZ2J4X4L6G6QVPWZNVGB
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/46PNTN253ZNETZ2J4X4L6G6QVPWZNVGB/>
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

