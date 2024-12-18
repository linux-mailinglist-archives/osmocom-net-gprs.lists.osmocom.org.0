Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D60719FF14A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:39 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AD79E1B6972;
	Tue, 31 Dec 2024 18:40:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EQPpFr1cOZ_i; Tue, 31 Dec 2024 18:40:39 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 19B7F1B6826;
	Tue, 31 Dec 2024 18:40:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 37B0A38A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:33 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1EEAC1ADB7A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1ljCyGNJjzQ for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:10:32 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id 72A761ADB75
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:31 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2164b662090so51964715ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527430; x=1735132230; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vKRdbuSYL7hnJpCbxB6/aqEJFoCo8iX729XZZAsUkqw=;
        b=bVzEInOKWBybB97P7lF8pwniCRGI9eNeQk89AL/wSdJVB58hcBEk9d8vNV84QbHRkB
         5J2GX959QUMlv+gDKbqo3Im1cB5K6NZZNm6U6s3yl4R0UviaVj69oeVK/HL/oVnoa5jr
         tC4jjsmcfo/53a8hEQyv3vXsdMUWoqvgldiDnXVdR6T+FvQOswEGOjGBzUTQwudiG6Nv
         g2TYemLYEEE9o03irdng+nQJOVYByvNT1JoB9MoU+YVosO+ZmBASDMFCyngAdxhiLMk0
         iXzGAh9xPUpCKKdhmiTDeqgGZ7TcZLUzltenVz2jME+WZyjLHGwOfE6hIRwDmllDtkFk
         wj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527430; x=1735132230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vKRdbuSYL7hnJpCbxB6/aqEJFoCo8iX729XZZAsUkqw=;
        b=ZhPOu3yecr83gBw1LDGnjooKJQatBrsm/4Ze+RV5PzwJtdsvI2Hx6MgWui1H6Wfctv
         eYYxq9HNjF/9ypXBcTjC056duDWICAReR9q44WSUcVBB5rTH68Ks2099/IUbxRPtLFY7
         WLytjip4+LdfaVYGy8KGlLBQWcsLaQxwNQZNWN+xl5vx79zdPMTJhTXD0hx0vttnOGfi
         LP6M0qbu8/eqNfJ7weddzxUgkyAyP8sVskfBBWRgIir/0a6S0Hsv4javRW/5/OAWCeCL
         7617+R1GU9n1tyPrazefvvgXcJpJ1W++pC/emtn87svtGumT9M6MOoLKx7P9GEMoQpEo
         PatQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzJD4bxV5EDbYBvse0aLQvyZXcjpIqJVfaJYKX4k4RacKGCU2UgoU5x99auXpNTcsJYjAlbokDIaryDZWaRnG/@lists.osmocom.org
X-Gm-Message-State: AOJu0YzYuRw9e8GU7PeHUa608297YnJ409Qc9+lh9VCLlZKcU56XT2Iu
	UOP2xVtA02iVpwrFKoBz7nNoh48e3/eDxKPFNnx0oj5Y3nJIvd3V
X-Gm-Gg: ASbGncttR6wpBElGmUFkyMQSlrfzoHFXjhhQWr36UOjpzXJBhBoJdpTunHbOIZS5ktj
	B67wFwHmvcw6WolKF0TWo9cYni0IZZRsoQUHdI8OEFWEJC6aQDCOsoHpJrS/9WoCXs6lRTvYiih
	XI+2BxXIfspSOtzaJjI8JBe1rIx36jXD3ZAykEdrbKYJHF8MwezLy3s0KEmCuHW48w6vQLpkJ9K
	V/cF2MqXQ34xMGUY4CqzRasp7dBXHM1algXr3/hkVDi9gA=
X-Google-Smtp-Source: AGHT+IG5uNon7/+5tavnAU1+6ODsDyulZAAiwNo5sldF4FHk8kNssZ4/V0oQpI2qOsRTRp3qJQ4m2Q==
X-Received: by 2002:a17:902:db01:b0:216:5867:976a with SMTP id d9443c01a7336-218d725b7aamr38087595ad.45.1734527430302;
        Wed, 18 Dec 2024 05:10:30 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:10:29 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 08/11] rtnetlink: Remove "net" from newlink params
Date: Wed, 18 Dec 2024 21:09:06 +0800
Message-ID: <20241218130909.2173-9-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4LD4L2TWQ24BC4IWKH3YPM25Q4I7FY5T
X-Message-ID-Hash: 4LD4L2TWQ24BC4IWKH3YPM25Q4I7FY5T
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:17 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4LD4L2TWQ24BC4IWKH3YPM25Q4I7FY5T/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Now that devices have been converted to use the specific netns instead
of ambiguous "net", let's remove it from newlink parameters.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 include/net/rtnetlink.h | 2 --
 net/core/rtnetlink.c    | 6 ------
 2 files changed, 8 deletions(-)

diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index ed970b4568d1..04fc0e91af42 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -72,7 +72,6 @@ static inline int rtnl_msg_family(const struct nlmsghdr=
 *nlh)
 /**
  *	struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()
  *
- *	@net: Netns of interest
  *	@src_net: Source netns of rtnetlink socket
  *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
  *	@peer_net: Peer netns
@@ -82,7 +81,6 @@ static inline int rtnl_msg_family(const struct nlmsghdr=
 *nlh)
  *	@extack: Netlink extended ACK
  */
 struct rtnl_newlink_params {
-	struct net *net;
 	struct net *src_net;
 	struct net *link_net;
 	struct net *peer_net;
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index f7c176a2f1a0..e33ef8a0a6d6 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3758,7 +3758,6 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
 struct ifinfomsg *ifm,
 	char ifname[IFNAMSIZ];
 	int err;
 	struct rtnl_newlink_params params =3D {
-		.net =3D net,
 		.src_net =3D net,
 		.link_net =3D link_net,
 		.peer_net =3D peer_net,
@@ -3787,11 +3786,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
 	dev->ifindex =3D ifm->ifi_index;
 	params.dev =3D dev;
=20
-	if (link_net)
-		params.net =3D link_net;
-	if (peer_net)
-		params.net =3D peer_net;
-
 	if (ops->newlink)
 		err =3D ops->newlink(&params);
 	else
--=20
2.47.1

