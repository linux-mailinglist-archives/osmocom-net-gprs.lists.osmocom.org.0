Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2919FF13A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:00 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 990B51B6690;
	Tue, 31 Dec 2024 18:40:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wycAmKDu9Q1O; Tue, 31 Dec 2024 18:40:00 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id CED651B6674;
	Tue, 31 Dec 2024 18:39:57 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 55DDF38A77A2
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:02:40 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3CA961A28C0
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:02:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5TWCb4I5R7_F for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  9 Dec 2024 14:02:39 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by mail.osmocom.org (Postfix) with ESMTPS id 8E8021A28BB
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:02:38 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2163bd70069so13581825ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 09 Dec 2024 06:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733752957; x=1734357757; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=93uG6ogDA0suRI92nCq7Qt11rTzcUQ+bpSh6BVGj6ZI=;
        b=W4OsEyVt6BmgBfpLbN1LOBPOoTXBvx03eYk8aE6LmJBd3Sf0VdWzXTBaiQh1tSlOWD
         k5hUFK5TYPGp7obEs0xVhg+VK/d9YJ6KAuUcRBC+M1/EnPi1WiRIS9Dyi/TQMu8iXjZ/
         e9cFpYnhojPd2T/zFExDjqEQOgvmAsC50uMoz/oLR1AUbbxTOgvNm2wtT6gkUEL3Y6kk
         eNaHgRthitubSAbRAAD9UJCe0LrZiHJ+9spX/Dn3buJmn5GNFETvaMpTCxYR/ZzHthql
         8t8vhjSc0LREMY6HPW98c4ejIm+brM9YDGbvNKtGa0pKCXh3YE7v/ZqDZJ6PUxAwQ9N9
         ZUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733752957; x=1734357757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=93uG6ogDA0suRI92nCq7Qt11rTzcUQ+bpSh6BVGj6ZI=;
        b=eqUjLIjXSocq1RYdAgG1dtMQ/wqYn0HmGxMi4jflFJHYRccOuMDFNnGul9Kj4KDJx4
         G9uytljZBXY5hQ23lZ7rS3/KNGG1ya9DJ+1+L07G+zR0jWkxh0kiQc8rVaZEs/v6h3LW
         5LCoyaCvcF6W1pXeVwMi2oCiKmH3d9x5epZ1Psnj74z/l0uixo1Z6Rj+KrCxi4aw/arC
         n5yyCbHLvsmZlFsRQOOVOvPVrp2W2MEtoRLmzwfT2N+Y0wHvGbVd/tZ2Fo6y1AWaunM5
         taSzy5eToRmN3tB7tG+6/bgNmPeiMiULibMGG6KjqpLQdjxQQN620tnKzy/U72by2hUc
         EQqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdY2J1R3hFAYOECKl/puDSDZmdaCF82eA0bxYCTdd6nphFuxzIa+BQUvPyvd0YSo6wUJIZecu4MMvsnoBM+tIl@lists.osmocom.org
X-Gm-Message-State: AOJu0Yxjsc0qpkPL+87M3ACrPnTOGVH7FovhkXlgtavUASB1sh8wIKCt
	ldXFszyPPuQI+ux0imz73HRbnhidhIXD+bGX088vBU/bed2sF2CA
X-Gm-Gg: ASbGnctM3WtbaXS1AM3/Hrz/wx8jOIkoF0kqqHivCMTq5181Ekrgx9KJBybS3W1JUoY
	7XT65roqzPRy8A+KT+U79om8kDdwAVs3vMeVkaktR0r5XoCDtGl76905hk+cyVqcMuvd857bsEO
	sCgkwsjzvkTRAsltvIVU+PGAtLYIP7VuhvfpwL2iFkKOklT8DDkJ0N0YMfi/8sNbdKZSTN9oAAK
	lyrWdujtgsmgV4bkv6Vpql8XJATaH9Yt+LsBJmb6wHn7Ek=
X-Google-Smtp-Source: AGHT+IEJ2QVBGY2MGcE4mBFIU/c+dzWKa28cbDvoqfUFybFT/JmX0nfLyJJqRhwpUbbXsTp1UoSovg==
X-Received: by 2002:a17:902:cf08:b0:205:6a9b:7e3e with SMTP id d9443c01a7336-2166a0b59acmr8694095ad.56.1733752957447;
        Mon, 09 Dec 2024 06:02:37 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216221db645sm49605645ad.46.2024.12.09.06.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 06:02:36 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v5 1/5] net: ip_tunnel: Build flow in underlay net namespace
Date: Mon,  9 Dec 2024 22:01:47 +0800
Message-ID: <20241209140151.231257-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241209140151.231257-1-shaw.leon@gmail.com>
References: <20241209140151.231257-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 77L5J4PDMXETNFWNOPIVSO35I3TPDNAH
X-Message-ID-Hash: 77L5J4PDMXETNFWNOPIVSO35I3TPDNAH
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:39:49 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/77L5J4PDMXETNFWNOPIVSO35I3TPDNAH/>
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
2.47.1

