Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D657A188A1
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:18 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 445791D2FE8;
	Tue, 21 Jan 2025 23:58:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AOQmQuC1wOLm; Tue, 21 Jan 2025 23:58:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id F29AF1D2F83;
	Tue, 21 Jan 2025 23:58:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A3EED38A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:49 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8B4AD1C3661
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H0G0fQApv-kh for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:49 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id EF46A1C3659
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:48 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-21628b3fe7dso73483595ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779127; x=1737383927; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O0itpuEZRuaRQ33kirP60JpiMAPNyz5teegcwQ5xuJQ=;
        b=cGCIuGgKsgJFgatWcj3YCRjUrI6RkFiZMhXV3V4qZLA4BsAwHBLXDkXPQ3R8lqLr1x
         WuHiQDJ/KFj8/RepSFRPRmdChu5crrOJv9tRJ9cbYFGmwIYIbRPd7MIRxv0Sken+b5CN
         egLMbMcC+gWlLVQAHp7L52sCqiY1Diksed9IPjx+TMyDtWVS8BZKMokuFBV9YnlDsENx
         +yMznC8fvApU/fVlDlyyBf6Dxy+8iNSvbTIweOwv/2r6bD0zIulzxkvy3bgm+VnFpIvp
         E3A18KflZL2s+4AjV1q7ufrAriWVVsR2ByXKExa6HBrCh7vkhkbdLnDj/EXRPLDCqvdt
         b6WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779127; x=1737383927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O0itpuEZRuaRQ33kirP60JpiMAPNyz5teegcwQ5xuJQ=;
        b=qUfYwPmnPigMOqmNYtw9RMBB3OOYZHDvp/KE6dQdWlNDjS/n9dk7oWdznY2nPXoNKF
         74WUGYaPsclHyZnmrIuqirNRa6ULDZlAuwJc+o7EdhISWGgWYtcu8EwMXsySkQDBFjHr
         yYoFbtGeVN541nZrzTLrsGEJKQhnbDztfw9eNoU/YrKGenWcDd5xI1XOTVP+jo/eQ/R0
         mFXXOhpNjRKWM5ccsj0nx+HqhPxiTt8hU7LOYaUHyPlUVpY0wihIZJZ+zdoViE0d0ume
         5m8LIiU/nwHb/RQZZrdnJENPU/6/d0zND6WPtxa8X7zceuFrREn75RndYNKQU9yAIjff
         MGDg==
X-Forwarded-Encrypted: i=1; AJvYcCWZO/33K3Q/J4hebC0HOKX7nK5P5VDXIP4cARc9jR1ZQo8zoDG9iFwnIRTK7jCcZBvu0I0QrGbK5p3VjsNXBqfq@lists.osmocom.org
X-Gm-Message-State: AOJu0YxhmIOp9x/uWuk0Y2h/cks0H5gC48WyQjxD3XSpsnJ/aOwHAyY0
	Y6dM9Ch9tewxU7pMQNXxOq4LXziqjU2ND9O6R3iwXta5QewJeSyj
X-Gm-Gg: ASbGnct3XBQxK1aWD+EvIMlsjSlnDEG6Qoht3OKEp6/ABrk4owf7mGVmuEurw/tlkSO
	Uka8k5+rd7eidJPhGx0H+8w8PQhze5AmW163XtjkCt25g1N/gAdP2OhmXEpOUYu4O9RMrWo7uAv
	+wQCbwxRn1iubrIRU4fSciHjMKymAx76cvZYCKaiQRK9DkWEj8ONkQI/QTx1ca8KYWeMJ5YsMtj
	eMx6qb/lcx8KQRDAeAtTSS1TLlsw2eqPQVV7ssqbLKePUo=
X-Google-Smtp-Source: AGHT+IF46BIJsHmY25FQQjjhe3rRKluIF8yEXaDZgFjxpJ6wghwfrMVhniqYlndXdS242mt6yFdpoQ==
X-Received: by 2002:a17:903:230d:b0:215:cbbf:8926 with SMTP id d9443c01a7336-21a83fb0da4mr356224215ad.35.1736779127243;
        Mon, 13 Jan 2025 06:38:47 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:46 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 08/11] rtnetlink: Remove "net" from newlink params
Date: Mon, 13 Jan 2025 22:37:16 +0800
Message-ID: <20250113143719.7948-9-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GTX2XXEGEFMRLJOMS3ZSPBCFIDKZPTNS
X-Message-ID-Hash: GTX2XXEGEFMRLJOMS3ZSPBCFIDKZPTNS
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GTX2XXEGEFMRLJOMS3ZSPBCFIDKZPTNS/>
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
index 00c086ca0c11..dd51240431b8 100644
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
@@ -80,7 +79,6 @@ static inline int rtnl_msg_family(const struct nlmsghdr=
 *nlh)
  *	@data: IFLA_INFO_DATA attributes
  */
 struct rtnl_newlink_params {
-	struct net *net;
 	struct net *src_net;
 	struct net *link_net;
 	struct net *peer_net;
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 7ff5e96f6ba7..cce5bcd1f257 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3767,7 +3767,6 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
 struct ifinfomsg *ifm,
 	char ifname[IFNAMSIZ];
 	int err;
 	struct rtnl_newlink_params params =3D {
-		.net =3D net,
 		.src_net =3D net,
 		.link_net =3D link_net,
 		.peer_net =3D peer_net,
@@ -3794,11 +3793,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
=20
 	dev->ifindex =3D ifm->ifi_index;
=20
-	if (link_net)
-		params.net =3D link_net;
-	if (peer_net)
-		params.net =3D peer_net;
-
 	if (ops->newlink)
 		err =3D ops->newlink(dev, &params, extack);
 	else
--=20
2.47.1

