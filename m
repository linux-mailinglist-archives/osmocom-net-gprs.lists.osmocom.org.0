Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE20A1889C
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:13 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 67EC11D2F72;
	Tue, 21 Jan 2025 23:58:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fxwsXMfUlhiM; Tue, 21 Jan 2025 23:58:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 695841D2F3F;
	Tue, 21 Jan 2025 23:58:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7ED0538A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:16 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 66C8A1C35B1
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JTOMiGIiJb_m for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:15 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by mail.osmocom.org (Postfix) with ESMTPS id B76D61C35AC
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:14 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-21649a7bcdcso74100125ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779093; x=1737383893; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MlOA56xQJRVfhoUOrNRPIk7EOBdTk/e52r4/wRWgOdc=;
        b=EFBZpZl4yBKgvIracWPgGPmhay4qL0eJtc3OJ+F+korIYwk2I+4+LiZbFxQZKCQ/n7
         HizV4I0ltiD61YUIcHUo7mGHNau/dhG7Mat+T23QEackrmO9OYBPW+eqzDcarBaKJBTx
         4BONfPlzIbf6sGCfjmXzEJtdjrvDOOCFsMZ1IrfM2xHKe5TQlOSX/jdtStwwbzDI+d3Z
         BNxJR7c8PWgJbnh0TyAhi+sqiXe+heDu6RAFZTG64bVXRwERgJ1mI7/MTvGOdOR40NVy
         Oa0mxCTfhdGwfpPqZOgJZhza4JuUjiGEcddCkQuADHPBKCzyMh3gyCLBNGl0RYPx2xCb
         b0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779093; x=1737383893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MlOA56xQJRVfhoUOrNRPIk7EOBdTk/e52r4/wRWgOdc=;
        b=OUnsX40Qx+GNMfw3fAqOQgy1f0TTXLnBiRpQHSLvQ+/nz/GV+4uyjprS1Sh2p+eRwt
         7otmTNxMTEMKp/LOOwJ76UV7Gb/3MlEhgybD1gtRTkSDIA4LJFJvEwB7OpJ2uAF7dZWv
         zg+h7dbgFdIMvrBsHm7Y4XR8WqqlPN1DboZz568J49hS1Fr4wDc+fhTZTMA3PaUF71sv
         gTsf3VN1N8lyAualIA+2l/g6Das8XMrKaT4pWAqlMI0oz7sINFR9yQ4hFfliD2ekM9Mf
         h31EWxIIOT80dun/cG74VWEwXb396GKORdIJi3h9iJTDzu00Wmu1fFSfJCNZh7iOI8IQ
         iruQ==
X-Forwarded-Encrypted: i=1; AJvYcCVt0QWZL8nb0J6iV7pIgySi/IaR2n1Fk7IMQv98UTFte1A6Q+pzcop15EXJEPCJ0vbWpIiI3SWEcwPi1Ed3ZHbX@lists.osmocom.org
X-Gm-Message-State: AOJu0YzryEjViAh0URFSakTtcjuzKVYT57iIu38oxrw/BtnfWIo7YKvX
	DMatnp/YRCX1Ygr9m3fe3bzOsNHs3n2jZv/6B4cuBUr4LJbJouB+
X-Gm-Gg: ASbGncvXtBfbjUCLxiXFf217QPRguC9zke1r43MB5P6ZMvrCJCVioTrm23pJcorCnQP
	kmnye4/3xWKsTZ6iufXYloqR73IhxcRR6cloxDEnzzqItP4WyO9pcZ2A/AHXSYgmocynfCUsUSX
	TVsGGS6W2p3USMFShxcuPghKaf3luZgPmnaUFwHSjy9FxD3wI+1+B+s2vKSgxqGCz14q7uxUG5/
	a04iJQ9+0Zy8Fhim3lk2B/G36csCwwzdUNyfUpmaAsDWwQ=
X-Google-Smtp-Source: AGHT+IETQgOg7AunUSIVLfQXCmw6Miexgpzxtq5jBXEGmuKIo/a/YyzF3Hf0c0R30+3xPOc3lWG52w==
X-Received: by 2002:a17:902:bb8f:b0:21a:8d4c:a9b5 with SMTP id d9443c01a7336-21a8d4cab74mr209427215ad.12.1736779093022;
        Mon, 13 Jan 2025 06:38:13 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:12 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 04/11] ieee802154: 6lowpan: Validate link netns in newlink() of rtnl_link_ops
Date: Mon, 13 Jan 2025 22:37:12 +0800
Message-ID: <20250113143719.7948-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CSCYZAL6H7FXW45Q2WCRZXDDCJXUCVCD
X-Message-ID-Hash: CSCYZAL6H7FXW45Q2WCRZXDDCJXUCVCD
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CSCYZAL6H7FXW45Q2WCRZXDDCJXUCVCD/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Device denoted by IFLA_LINK is in link_net (IFLA_LINK_NETNSID) or
source netns by design, but 6lowpan uses dev_net.

Note dev->netns_local is set to true and currently link_net is
implemented via a netns change. These together effectively reject
IFLA_LINK_NETNSID.

This patch adds a validation to ensure link_net is either NULL or
identical to dev_net. Thus it would be fine to continue using dev_net
when rtnetlink core begins to create devices directly in target netns.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/ieee802154/6lowpan/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.=
c
index 704bf9e3f097..ee318d46817d 100644
--- a/net/ieee802154/6lowpan/core.c
+++ b/net/ieee802154/6lowpan/core.c
@@ -143,6 +143,8 @@ static int lowpan_newlink(struct net_device *ldev,
=20
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
+	if (params->link_net && !net_eq(params->link_net, dev_net(ldev)))
+		return -EINVAL;
 	/* find and hold wpan device */
 	wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));
 	if (!wdev)
--=20
2.47.1

