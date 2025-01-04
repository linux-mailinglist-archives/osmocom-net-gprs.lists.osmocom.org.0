Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BD4A05DE8
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:22 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 870861BD0B5;
	Wed,  8 Jan 2025 14:04:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FyaCBMIxLX1d; Wed,  8 Jan 2025 14:04:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EF96D1BD026;
	Wed,  8 Jan 2025 14:04:15 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D1D0538A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:53 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AD9411B973A
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:53 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5ReJ98Vx78r for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:58:53 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by mail.osmocom.org (Postfix) with ESMTPS id EDEFB1B9735
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:52 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2166022c5caso161625215ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995531; x=1736600331; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ce6VaPIVkPoT/BnqzSEc4rQsuMP37QI18aEevx41SAs=;
        b=P1qKi4Zk5mTv7Kj/Us8eH0GCQqH5uZN721DCSZE6WBKQotOqDUjaJeXEe0McW+SM+f
         KFMonaeL7upWBgbhGKebWsTTEo8fNg4yrqQdcJOTQ687cM274vvUwVwvP8iZdBIykNUe
         lPVzJzUjPclUwpFDGhXHA6q/Bpt6+8ZN1v4bQGNcWZ5k3JNsNjtNOSJUh1elgqaiWrRh
         UhARMYPEekWyZOemb9H2Ba3MdSfI6c98lkJHhX6p6g1fX3P/vlmIa9PQpjIZMN0CpoM3
         VnzLIl0Jc1NAg1Ca0VGq189agATIe9DlD5tFAVjANG13wLt/QIGNH9t18sy6FLLDKnms
         SF7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995531; x=1736600331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ce6VaPIVkPoT/BnqzSEc4rQsuMP37QI18aEevx41SAs=;
        b=Fpd2uA/7jOnq0daUGmcJ6Mt8kSFf/Oi1Yr+e8izlRZ/SuEZ0dsnsnVNn9NaO4HiTZo
         e4PAXJwNj37jX7QBD7UaluLrwYxSdib+E5c6O1NjhcIZEQa2d81ABrH+2vboCSmqOSlY
         LlSJ6UgZhiao2kkUrbz79u8mTP7agtaf4W+DAfnii3wa68UmiSPqa+thmXxCxIWG12KJ
         z3hhxGbdovZskRzaA78nPA0BKfOj8mOx/FyOiPeLidSjlTFW+ez97OWNdslj7p8omK+B
         rOz0ysVBnyZErv3sExFszvc89OYIHoeGxk+pcSuDdQh24kZTKiSnj/NiIrjPRiROFrVF
         NOuw==
X-Forwarded-Encrypted: i=1; AJvYcCXn18HEfWpMcXNicZwf34OolUeTqqJY84qxxhp7Ze8EkhlXzQRabNT/EWNjwZBXQIyXrzUuiiY/iYCPBW5nLfv/@lists.osmocom.org
X-Gm-Message-State: AOJu0YzHblY3t2TMs8emevlPjgF7zliGtvzJ8+FUIfQZHkhJybaZ6na+
	83yRCAY+801aEpVMLTbt7UahMS5Gid4S7GrmkcNXQ/5AL6x6IYBD
X-Gm-Gg: ASbGncvKMEteEUclt8PXMRixKiYX4glY+7ef1jVQbjHc+e5uA5AgJhQVuFAtscY1nND
	UDDeGieu979XSWo+toNhJsQfgDG6osMZkZNZKZ4my94qhl/8hWMyXnn4Ui3TXLjNRvmHu6ckhXR
	aju8C3qKM5ssscR4NykuGETE/80F3k3zSAANaFQIsErLYwF/dkvMbnyivVe0u0RIQBlr2AZtnJ+
	rEYUqcfB8yv2kuWPsSIZ0Mx9Q8MdUsc+C2j7G8QIb5aRXk=
X-Google-Smtp-Source: AGHT+IFpOYXqaI1R+HGOEzzxslPytJ/PM+OYSeZsg4xs6ImgmD2P2d6ce4kFlhBJ9qWXqvAf2AhpWw==
X-Received: by 2002:a05:6a20:1596:b0:1e1:9f57:eab4 with SMTP id adf61e73a8af0-1e5e04609b4mr80108339637.16.1735995531119;
        Sat, 04 Jan 2025 04:58:51 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:58:50 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 08/11] rtnetlink: Remove "net" from newlink params
Date: Sat,  4 Jan 2025 20:57:29 +0800
Message-ID: <20250104125732.17335-9-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P4PDPSHDDTJ2MKLEHZDNWJQ4MHSSNCA7
X-Message-ID-Hash: P4PDPSHDDTJ2MKLEHZDNWJQ4MHSSNCA7
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/P4PDPSHDDTJ2MKLEHZDNWJQ4MHSSNCA7/>
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
index f902b8a5189f..a2246bbaf2bc 100644
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

