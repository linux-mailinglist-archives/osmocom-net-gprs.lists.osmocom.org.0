Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDA7A370A0
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:27 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6F2661E88FC;
	Sat, 15 Feb 2025 20:34:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLF-7D0tXefg; Sat, 15 Feb 2025 20:34:27 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E0F601E8833;
	Sat, 15 Feb 2025 20:34:17 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ADD8038A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:32 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9311E1E1C07
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IHAusL6FPwYs for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:31 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by mail.osmocom.org (Postfix) with ESMTPS id D91221E1C02
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:31 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-21f6022c2c3so35479525ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194290; x=1739799090; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIWpuyrhnho0qabV5ShFTJH6UcUC2BreOZhovgVT2xw=;
        b=YByyH01DuFrFEdBIWw/MEiQB6BJNc+I+RoMz3Di9I4sJEZPUn/2R0TAA7wmVVUMUzr
         DkQxpIKz7HWWcBu2k3bH37fu5p4Nj2adCS9P0yCvlXDSC67FXzxZVfQULF44J2z4GmZa
         TSb78EhsVxP3880NOlNDEPLufwASaWo/okwoq91WC3z+PTawtntJ1K2RglO8GKJ1zqz4
         VPUmk+pyL9bFcwFCLIeCZnGA/j424e4djoDqxa0fY5XUscod1JYXVsvE1s5YVKrGfmFy
         EQ1PqVqfCTAPrtnxAn8akEzQXsdJbq4ZTx8oBklNUq/wifXCyqQl8s7dcrAW+zW23ghh
         GvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194290; x=1739799090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JIWpuyrhnho0qabV5ShFTJH6UcUC2BreOZhovgVT2xw=;
        b=PXKAW09MNo3JzPZHX5OLxdHDzWB1VRro/x1aUA7SOmV+bq67d1gm4xV723bGpvUMGk
         SHUanPBLBBJdHuzriyTUgmeH4fLLA5CJq1HGyxRD4L5kJMIs+nDf/0hcfVveUa786zRv
         ea1k8KwubW3VgR1S8OMPxCWfBfQHFMnohIERXzIQGsZ1QOCaLS+Qai8rEviQDeEC9nQP
         +scRDMvdnlbdAMDaEofBjuBGifCal4CdSsHkWOGtpDTrP9+NozZ/9b4ZaMPCDgEMuY4B
         1SpvHPOHplR/jdYdT3QsybajZxTsGAN4ISqZqiKmMybSmgAZ5Bd08Uku0y5RprRftTkr
         NPjg==
X-Forwarded-Encrypted: i=1; AJvYcCXgROXAhBAMp7S31vnlEgvzY22yzaRQ8nMaBZsV6iQ9RPM6fuuE/iaKDxXqkxejCYSvvvSVC5Y/9nhkdTct5MJP@lists.osmocom.org
X-Gm-Message-State: AOJu0YxLPJIjOL74Wixj8Z6Q4R9pScFeUqj05eAlmjUZq4xI/zdzsFQD
	09QMw9Jsycc+cvP9dejq1UCru4//ECaVFEuygQn8lYt8q5icIJkk
X-Gm-Gg: ASbGnctDZLt2HzVKR+BaSpWQMJF2MWXYATWhqp7dVI0ak5iGXFATxXbcgSttRyAAKmm
	s3PUMoB2yFxR5NiPtdLhRHT8PGyhcDMlYx0POr16CrCi33XUZPX+B6nVn7kCexbxsAx5vFYecGd
	vVU7DmVz+Rg7jjqIvCQC4rZLe3T+UUoGix81MTiWzc6GXdsDQ+yLmte96NTdxDL60Y2RCzbicgz
	gpJQ6fUiFjkg9gHVw5aw5iSnI7d9tB0DJDUiXpTP37qw75WAWxMZprYPb1MgN1HtYCqe/DDik+y
	sdg53A==
X-Google-Smtp-Source: AGHT+IELdC20KTjI7AEzrj7SsYJqrzU0cpR4bU0xmzWBFbAdZdANoU6evRtqtyIIyxHfa7kTbn7qJg==
X-Received: by 2002:a17:902:f60f:b0:215:6c5f:d142 with SMTP id d9443c01a7336-21f4f7a257fmr230770855ad.20.1739194290046;
        Mon, 10 Feb 2025 05:31:30 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:29 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 08/11] rtnetlink: Remove "net" from newlink params
Date: Mon, 10 Feb 2025 21:29:59 +0800
Message-ID: <20250210133002.883422-9-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N5FO4UNLBCKSOMUBYTIS6QR7UZLO3WM7
X-Message-ID-Hash: N5FO4UNLBCKSOMUBYTIS6QR7UZLO3WM7
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:47 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/N5FO4UNLBCKSOMUBYTIS6QR7UZLO3WM7/>
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
index 7e98f3cd102b..e9af0775fa6b 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3797,12 +3797,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
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

