Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id A26EAA05DE7
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:21 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8F70C1BD09B;
	Wed,  8 Jan 2025 14:04:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pv3aEe334-YM; Wed,  8 Jan 2025 14:04:21 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id CB74D1BD012;
	Wed,  8 Jan 2025 14:04:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5BA3338A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:46 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 435D61B970C
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cGdhnKTXzj2I for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:58:45 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by mail.osmocom.org (Postfix) with ESMTPS id 94D0C1B9707
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:44 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2164b1f05caso180036615ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995523; x=1736600323; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bXH8tUP/h7NPxTwhkU8DrmHX10k3nPXxIbmClQOEn5A=;
        b=S9784arwhV3Jxgiybz446dtI48wjJ4JzZ3khI9kZlvVqm4F2mtbIrDypa6FJP3cMdz
         hLKl4Woycg9b1CW0a+MfEneMah3Ll/LSa8FQW2uko0p7asUNk9CxaNkCLmK7WvPAx4rF
         CpcHlLTf7afMhuTxtU4nJPBDqBaNlZOAiUgfWH1D7QPzysygnJaI7CUpclWZbm9sgdeX
         ZYjh5vFFSW0eySml+2jJoPJBpNCqshaMM46A/eLL4oTfd2L/RldH8jyT0W72liYx6LHF
         UKhnySCc6iy78efuzKZZcpIX9clJhBb80V524gMQk4DB4LEo69ubWlfnTqi0Xy3DWZZs
         liTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995523; x=1736600323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bXH8tUP/h7NPxTwhkU8DrmHX10k3nPXxIbmClQOEn5A=;
        b=ozO8WgRFY0xM1AcvE/3mHX304HDssT2v2hIxtm3koDfBcgBqs4j+SMn/Wvi7atcaFk
         +nJRhEdDpCEELRIthBIQ5wc7b+g1iDB+uOsCAink/xCOso7cDBmBSTbicSuYiaxxSzZi
         LXpx1y/P1bKyV6qrbicR1EOKtld+SIVSOUw+3m6nAONk0YgTlBTiz6STjmB6szwPptn4
         UaVZJ4CMmNvJeuL1/h46REBaYKGZgtc0kzlOH7Jj7qUAp78FdxBuinoGPuxagiqLgRbu
         /KY5re/iOQWOPx2U7jKLUMq9TjGq5W9efApNfTe5bN/tevCFz4bXLOGI++eh4inOIZ7/
         TPUw==
X-Forwarded-Encrypted: i=1; AJvYcCVkXLgcAQxPoMu6v0VKmZ7jU0k/pSjG+VUTuelKqHT01Pkb1e8Qsm5r1u6z3qwEi/GXwPI+KD7mDbCCxf55xF1Q@lists.osmocom.org
X-Gm-Message-State: AOJu0Yx6FZ4nIPdZ6gF2NdHKF4/4OKv/j3D8ahNkmCkLzeqrvdaua1mq
	MYxZqAl4P/NDiP5LUO4xVQdlIOdOb9anUfUwx1w2YK29RO39YtxJ
X-Gm-Gg: ASbGncs0XZnbXZO8nqR3gsphgpqJ1Fbun5C1lZczdH92FNtDNmUy7rBfhYnc7O/pj/g
	mE/NvzDdSq646jHX5oYIPRYtjOYeX1cDE6zY4zdVM52o8ie5X4B5w3ZZad9Ut080wD7rgYZub6F
	VAXb811rT7R+Ezmu+aXZE+yeL3xb5tEj0lprFzPXvZb46a7IbluFN9d/zet9T9bNKQCnXNNN1Cn
	ssbtRK8AGg+jD1tYGOume4OuuHd/EjM0hLXCQPWOLmyL7k=
X-Google-Smtp-Source: AGHT+IHa35PYbmCu1uOx6CEp/EQWjQpZHigmf2PgIvsgkyK5+Nfa2PQvUpv4CIvsSLNsXb9/anYWIA==
X-Received: by 2002:a05:6a00:cd6:b0:729:a31:892d with SMTP id d2e1a72fcca58-72abdd9603cmr90325957b3a.8.1735995523087;
        Sat, 04 Jan 2025 04:58:43 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:58:42 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 07/11] net: xfrm: Use link netns in newlink() of rtnl_link_ops
Date: Sat,  4 Jan 2025 20:57:28 +0800
Message-ID: <20250104125732.17335-8-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EZVQUYFDFIY4PWAJG22Z3RKVV3NLZXX5
X-Message-ID-Hash: EZVQUYFDFIY4PWAJG22Z3RKVV3NLZXX5
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EZVQUYFDFIY4PWAJG22Z3RKVV3NLZXX5/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When link_net is set, use it as link netns instead of dev_net(). This
prepares for rtnetlink core to create device in target netns directly,
in which case the two namespaces may be different.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/xfrm/xfrm_interface_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_cor=
e.c
index 77d50d4af4a1..d1198c63dd23 100644
--- a/net/xfrm/xfrm_interface_core.c
+++ b/net/xfrm/xfrm_interface_core.c
@@ -242,10 +242,9 @@ static void xfrmi_dev_free(struct net_device *dev)
 	gro_cells_destroy(&xi->gro_cells);
 }
=20
-static int xfrmi_create(struct net_device *dev)
+static int xfrmi_create(struct net *net, struct net_device *dev)
 {
 	struct xfrm_if *xi =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
 	int err;
=20
@@ -819,11 +818,12 @@ static int xfrmi_newlink(struct rtnl_newlink_params=
 *params)
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *net =3D dev_net(dev);
 	struct xfrm_if_parms p =3D {};
 	struct xfrm_if *xi;
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	xfrmi_netlink_parms(data, &p);
 	if (p.collect_md) {
 		struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
@@ -852,7 +852,7 @@ static int xfrmi_newlink(struct rtnl_newlink_params *=
params)
 	xi->net =3D net;
 	xi->dev =3D dev;
=20
-	err =3D xfrmi_create(dev);
+	err =3D xfrmi_create(net, dev);
 	return err;
 }
=20
--=20
2.47.1

