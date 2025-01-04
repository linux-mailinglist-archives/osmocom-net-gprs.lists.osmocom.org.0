Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id F32A8A05DE1
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:08 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9D8BD1BCFBB;
	Wed,  8 Jan 2025 14:04:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sZVBuI8-RpRv; Wed,  8 Jan 2025 14:04:08 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D151B1BCFAE;
	Wed,  8 Jan 2025 14:04:07 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6B4A538A0F5B
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:57:57 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 52A571B95F3
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:57:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QVm7-S5sIhoB for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:57:56 +0000 (UTC)
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by mail.osmocom.org (Postfix) with ESMTPS id A536C1B95EE
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:57:56 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2f441904a42so18837353a91.1
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995474; x=1736600274; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0y9nB6XisXA1oDe7UDcZLSsAyAYhl+7T93j9PgZqLs=;
        b=OVfIOFO8QSO5n17rtAPt31lV8+94s/LhAkeh0sNAsV3Qq2+dHhxshwB9hgPXdpYt5q
         Nq5KTm4w3V92fzJSjZ9dPVnL8hlACKwriW2dS6N6TYwxZp1uF6HguwBsB8uzC2mhjIn5
         BULAcjBJOmVCLmv6IWVD1qE1pWE1VGV4FMcs7gKVx7AH5eS74RSI4sjWtzAMujkC6Gj/
         343rGPsXQ9hhoYFcQuq9QLFzOg8Nh2MHb46kKqDP98saLKWwRs2R3IlnP0aNLKpTxsB6
         ZR4qXONhtBpD+h7vgQMD+KUrblaUc5MgM9rU/u3Gf6fqRNRJcK+IMR0E5l4YQDjqzY/w
         2ypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995474; x=1736600274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0y9nB6XisXA1oDe7UDcZLSsAyAYhl+7T93j9PgZqLs=;
        b=Wg4GmfByOO2/1xgM24lXa8wvSZWfS8LJqL11DSxfCFjku9PRoCRmaeVeSW0JRk5o7L
         3wqBn6w8dNtkOpHxTon97hCe7BRYSzVNPE/8d9st199O9r69LzysfdhCaruJaBPj/8+N
         6ljrs6rIjhXGBYTCEwfB0esN1bP2Gqoan0VQegz7mTtAh3UBtcvKaZj00i8zw8c2DsXN
         SYEDCSi3yNr/X/1Raryrlg8W8/KfEZgjlNeJmwERAc6wDu8Aw7R8LQ70kQGUchB/JnEN
         AkTAG28mczFNIdNYpgovBaq28LR3wGvCnQwABL6tB+WXJ/xqcqBO0oYXqYGEcM81qGKH
         vv9w==
X-Forwarded-Encrypted: i=1; AJvYcCXxfH7zOH3bUN9DKzUuH7ih4SYtAsGUnoQ4mK/3d51n1ed7DpkdDFJ3J0fODsyUo3LxCuCRn1p6YMHZtnFQNyDH@lists.osmocom.org
X-Gm-Message-State: AOJu0YzDYINsZUz1J9y4Pmn4KZa4rBLxKLZrwuwqwqf1wwWHTt1Jonlj
	oBFEM2DYmIvpO0xFpz0JlQF1lw1LzkIMKadwuTOQ4pKjQNi6AOzE
X-Gm-Gg: ASbGncvKSH34N/58ux11QCr9blmL83lu2SVHCW0cP+L/lp6539iSLvurHLEfpEn7MTX
	8+1hvL9fL1cNucokYDxJtjJVkDQKLkyh+Y7rjYVnbUa3g3P2PI6k2Bv50B1+stww1dPhAD0RunL
	rVc5OC49ts/ZO2/tYtb1qft91gkpINXpTvqMGtM28ho9Fmscx1r3WJUXjiQBglPRzweZ4xC5B3p
	znpFgHM2CJpxOhmpuKoZ7Sskg1qEYa4XazX58Wzqc0FNtU=
X-Google-Smtp-Source: AGHT+IFUA9yMRsjxfnRxzsse9+CSmxwl7XAkA4eYuGkgQjijZt7M7pM04aasIYGaynTW3Vzrs9d/kg==
X-Received: by 2002:a05:6a00:22c2:b0:725:ef4b:de33 with SMTP id d2e1a72fcca58-72abdbe4de8mr66912486b3a.0.1735995474274;
        Sat, 04 Jan 2025 04:57:54 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:57:53 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 01/11] rtnetlink: Lookup device in target netns when creating link
Date: Sat,  4 Jan 2025 20:57:22 +0800
Message-ID: <20250104125732.17335-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N4I5HBTFXOGC3SILBYM22B4J2JFHGVFM
X-Message-ID-Hash: N4I5HBTFXOGC3SILBYM22B4J2JFHGVFM
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/N4I5HBTFXOGC3SILBYM22B4J2JFHGVFM/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When creating link, lookup for existing device in target net namespace
instead of current one.
For example, two links created by:

  # ip link add dummy1 type dummy
  # ip link add netns ns1 dummy1 type dummy

should have no conflict since they are in different namespaces.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/core/rtnetlink.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 6b745096809d..f65bd49da541 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3852,20 +3852,26 @@ static int __rtnl_newlink(struct sk_buff *skb, st=
ruct nlmsghdr *nlh,
 {
 	struct nlattr ** const tb =3D tbs->tb;
 	struct net *net =3D sock_net(skb->sk);
+	struct net *device_net;
 	struct net_device *dev;
 	struct ifinfomsg *ifm;
 	bool link_specified;
=20
+	/* When creating, lookup for existing device in target net namespace */
+	device_net =3D (nlh->nlmsg_flags & NLM_F_CREATE) &&
+		     (nlh->nlmsg_flags & NLM_F_EXCL) ?
+		     tgt_net : net;
+
 	ifm =3D nlmsg_data(nlh);
 	if (ifm->ifi_index > 0) {
 		link_specified =3D true;
-		dev =3D __dev_get_by_index(net, ifm->ifi_index);
+		dev =3D __dev_get_by_index(device_net, ifm->ifi_index);
 	} else if (ifm->ifi_index < 0) {
 		NL_SET_ERR_MSG(extack, "ifindex can't be negative");
 		return -EINVAL;
 	} else if (tb[IFLA_IFNAME] || tb[IFLA_ALT_IFNAME]) {
 		link_specified =3D true;
-		dev =3D rtnl_dev_get(net, tb);
+		dev =3D rtnl_dev_get(device_net, tb);
 	} else {
 		link_specified =3D false;
 		dev =3D NULL;
--=20
2.47.1

