Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7969FA370A4
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:32 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0AAEE1E896B;
	Sat, 15 Feb 2025 20:34:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8m0AjWr5116H; Sat, 15 Feb 2025 20:34:30 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6D9E91E886D;
	Sat, 15 Feb 2025 20:34:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id F32E438A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:25 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DA4E01E1BDD
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMWfWs5QyurJ for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:22 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by mail.osmocom.org (Postfix) with ESMTPS id CA4AD1E1BD8
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:22 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-21f6d264221so21888955ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194281; x=1739799081; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PyZ7Oa5HQm/CyDGlUAOCpKikT+Z0UZAcxIZ482ECX9g=;
        b=kKBPvJL+ci6Ych/9ubQhDOHbpiR3URTvYV8YHwtlFqYwSj5uzTkue/BN/cJxHREYow
         dDZd3RkTp18UY1t0RqoW1vRiblgbPIt8NVZ1THCBynIUNZG96oYto4Fo1tNcxESh0Zea
         abg8RkMQ+88R4QjOraKvb4UBwTes1huu2AykqtNa5C0VFuTU4JfuuzWbhcAoGcPSLK5D
         aYowFITiZ4KHOhtYf4OZ5dohnWB0NHPEKXf1mgSbR71Mtbf1BN/PcaHGXZTS87MuOF33
         1Zq0rCm9I7jD1LK50TXp5EO6GZo4sS+NFe2Fcv4fD8X92z0S9oqomikxCGBLoRiSZkAX
         TZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194281; x=1739799081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PyZ7Oa5HQm/CyDGlUAOCpKikT+Z0UZAcxIZ482ECX9g=;
        b=JSVBTCAf4YMor3esYghyUFcj3gn6FG/PsC7QlBvdlO+pAmGAyzkXpCpiUCvpwMzxmD
         W6x5OkL7nnFWBdzNZQBeHDLInvrTdCfe/CptrbVsO2F0CfPBgWtcthPZgYW2MetEokR5
         jmGVFJj0mfH6oQ4+g5W2h34+PHWGmRHIfCcx7c4KQIVjL6SwZxBIoHYaarjNo2cBWw8R
         rCu6UPizWXTjPHfOVV1rdbSC7sYvPfIKB25+s1p1hy+h3e9F5plUNqw8X9ey736giwRn
         XDSB1uKbyaE8RtTKJYny/jVY+SKrcnDAPeFs7pDwQaoWAspku99EhdYfa1umuI/Ybn4y
         Wz4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYju/jg8T54/wBS+JKFpjFA3euIOvr3RE7cF1ro85zgS7lpoIsQJChcXzyB2uT+XhOcKonXfrf3wzYcCtqNSnp@lists.osmocom.org
X-Gm-Message-State: AOJu0Yz4JSP9WTy363xfD1GvVOVs9YSOp3Dsr3QnYRb3BwQLbEN0aVHT
	YQkoFU4UeG+jchronXUxYbPHzoP2wMqMHjhPTdJptn0YpTJsf5oy
X-Gm-Gg: ASbGnctA8dB1nhMWa9UUmmWBIkeMkWHnWKbInQ1c6V9O6n1xEm7fRZ34waLu3RV7qsU
	eKug7scP4uHOsLHFF38D3kGKY2M4cdcTIY/adzz2CnsFQqkFMgzuUXFGfu5eCAlufZ8CWmVFSQU
	1dCJub96IjvhaAriCSP7wFDC3Pi3k/Nj1qHaxhA40832jnQQS7aLtb2ydPNDvHu7C3sj9H+s9ls
	4uMPVuuLt6ZZgkxZaFYdY4ZcywGiy1lpTu+oseJOHGlGHJwXV85kUit8e0as4oJ58nQ7M1IjIUC
	kyG45Q==
X-Google-Smtp-Source: AGHT+IHeusvrHP8M+FV2U5mrdVgA+KXf+BNwroimzhQyBeA1391Nd6kFx/ISaagEKEOW3Rex1VbPJw==
X-Received: by 2002:a17:902:c94a:b0:21f:8099:72e4 with SMTP id d9443c01a7336-21f809974bdmr103657145ad.28.1739194280801;
        Mon, 10 Feb 2025 05:31:20 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:20 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 07/11] net: xfrm: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 10 Feb 2025 21:29:58 +0800
Message-ID: <20250210133002.883422-8-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NHGVFLE7YLF2YMX6YDKUJK5OTLKZHM53
X-Message-ID-Hash: NHGVFLE7YLF2YMX6YDKUJK5OTLKZHM53
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:55 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NHGVFLE7YLF2YMX6YDKUJK5OTLKZHM53/>
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
index 5659a6cadd51..622445f041d3 100644
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
@@ -819,11 +818,12 @@ static int xfrmi_newlink(struct net_device *dev,
 			 struct netlink_ext_ack *extack)
 {
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
@@ -852,7 +852,7 @@ static int xfrmi_newlink(struct net_device *dev,
 	xi->net =3D net;
 	xi->dev =3D dev;
=20
-	err =3D xfrmi_create(dev);
+	err =3D xfrmi_create(net, dev);
 	return err;
 }
=20
--=20
2.48.1

