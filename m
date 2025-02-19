Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 85406A4349A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:19 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1B8581F3CA8;
	Tue, 25 Feb 2025 05:36:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UhVKWjhHYaPC; Tue, 25 Feb 2025 05:36:18 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id CCAEA1F3C1A;
	Tue, 25 Feb 2025 05:36:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 55CBF38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:26 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3DFB21ED335
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NN1ZYCncOhki for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:52:25 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by mail.osmocom.org (Postfix) with ESMTPS id 89B5D1ED330
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:25 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-220bff984a0so120191825ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969544; x=1740574344; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRequyiks98F4TvQO/vmtwESixnPXuO1TfB2/aKs1TA=;
        b=nCy2jSCgF46U1Sf3NWTKHS5vdDafXFL3F+c5yL8i6w9RXjiZ3aFlADEAk0pC/D2QAt
         528E5nIQvPudPfyX36IC24e4tOXClQpGhxcBbvy9tXP5/TjlseOQyRMW0GQkz36x2uGZ
         EwtF2J0mYpgACbzXtQ9cf3fRS5eLy1vOw4Ymx7P2KRyrm2xCVcASoWJiQkRU2Zze1/Cy
         eIn1wi4JRDerCfSe1AgnGuHZRnsJnebWKyCXFrVbK/Wn4TtTSL2pPVFGNY3+PAU0dtpk
         PRS4KARo2D+B5RP74McUN8WXisNEcWNbPAivwFDYVRiopiZiudbZJzrjwpvVeczMYyFa
         fsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969544; x=1740574344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRequyiks98F4TvQO/vmtwESixnPXuO1TfB2/aKs1TA=;
        b=JA4AePfKP9GZBbJTuUlg3PIufSCMaQWE8WAXyuzYOKAEuo53X3z4ZNI0lkPDY6abiV
         zhjGSXBZLLOn/6J80y/XnckRmibDvL5si1i2Ac7WdJkrf0a8ljlvUfoZcQMEgL9gRa2h
         r5bKHHoV90gueVlaAL9jXoSYGu3p2gsSCEXtB15+Z4E4niEDDLR9vG1SOL95kycIeW87
         BSkBf2rSWOszT4e6eZD/1M6W4Vh7pI7YBaw/1eeq7rTEhjuC3tFXvlaEVnLynIk+9ydh
         eUDu7/IZXn6N7Ha8c4rcG2OmQQeL38gnPKGzna/iX+6kUSihyej6RkEfw3UEz/P/h41U
         XOng==
X-Forwarded-Encrypted: i=1; AJvYcCXZHZ2+79KVUigP1vEDmFTgCga+adPAfhIViT7/ngNxB+9I8atDQvh9Qj+2z+Z79OBUHKS1C2kuEjEAwGXz+4w+@lists.osmocom.org
X-Gm-Message-State: AOJu0YznvYyVO5EScPMuwznZLcevItjeY1bO+/PbuGR+mcKu4DEQQ0uU
	kTatwb/zFGYjbFlpqg6YvDu4RAr+WkHcacEUjOvFodC3JlkQtcjn
X-Gm-Gg: ASbGncsAQZ82M430IVcKrkCgDdJwzctcbpKz5IqcZXw/AuVXQdqL3gLEKpo7BFOTZmk
	V/ih39BvemYPUu95sU2O4jlvDeS9rja+ata0bCo8uM6ezkDrEU/WuSPFFVCsZa55rAGhBvpPD07
	mxqUeq+XSWlhEVp0VAYDpT9SokpBtv2YjJ5YPt8BvJrGcploWwcxkCgFv/diZjwg6duehwgIWbK
	AHB+57coDld5CtNhegD/c9myo/q+QE5NpZOaedOfOszYzn7ZtMrrQpX2yrWojsDJZauWGVooJ/G
	1UTrwQ==
X-Google-Smtp-Source: AGHT+IHnb5v62m0BvDxfIowP9iMNtE/Y7pYhM/eIGIlagffbyppVP0uCqTnvfVFz3C1LICvyxAmpug==
X-Received: by 2002:a17:902:e841:b0:21f:564:80a4 with SMTP id d9443c01a7336-221040a9a0emr294098225ad.33.1739969543796;
        Wed, 19 Feb 2025 04:52:23 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:52:23 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 10/13] rtnetlink: Remove "net" from newlink params
Date: Wed, 19 Feb 2025 20:50:36 +0800
Message-ID: <20250219125039.18024-11-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HQZVCXQWSWT5W7H6AMUI3DPI3M2A42G3
X-Message-ID-Hash: HQZVCXQWSWT5W7H6AMUI3DPI3M2A42G3
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/HQZVCXQWSWT5W7H6AMUI3DPI3M2A42G3/>
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
index b22a106621fb..ec65a8cebb99 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -72,7 +72,6 @@ static inline int rtnl_msg_family(const struct nlmsghdr=
 *nlh)
 /**
  * struct rtnl_newlink_params - parameters of rtnl_link_ops::newlink()
  *
- * @net: Netns of interest
  * @src_net: Source netns of rtnetlink socket
  * @link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified
  * @peer_net: Peer netns
@@ -80,7 +79,6 @@ static inline int rtnl_msg_family(const struct nlmsghdr=
 *nlh)
  * @data: IFLA_INFO_DATA attributes
  */
 struct rtnl_newlink_params {
-	struct net *net;
 	struct net *src_net;
 	struct net *link_net;
 	struct net *peer_net;
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 9ebbde0d131c..e980481bdd28 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3798,12 +3798,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
=20
 	dev->ifindex =3D ifm->ifi_index;
=20
-	params.net =3D params.src_net;
-	if (link_net)
-		params.net =3D link_net;
-	if (peer_net)
-		params.net =3D peer_net;
-
 	if (ops->newlink)
 		err =3D ops->newlink(dev, &params, extack);
 	else
--=20
2.48.1

