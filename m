Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F785A188A0
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:17 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3C28F1D2FCB;
	Tue, 21 Jan 2025 23:58:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4QJiagLWyO-q; Tue, 21 Jan 2025 23:58:16 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1EB931D2F69;
	Tue, 21 Jan 2025 23:58:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 117E238A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:41 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EB5FB1C3633
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZD70tIoOF7YG for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:40 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by mail.osmocom.org (Postfix) with ESMTPS id 7CB961C362E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:40 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2163b0c09afso78935955ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779119; x=1737383919; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n79rk6b+8xqMmWjuAyko0er+FR6QjAQIxOU32J9enis=;
        b=LA8ziEJ7whfzonpQTqxaaVAg0byWnlCzx32O2xQ8uQBPRMcvknZWikzLTZe/DfTrtp
         q2SBpfomD2RYBQq2X8yZFMR2+FwRuBNof7xhxwmZCNgMIJneanVkWBKv7FEc5xiUBFas
         V5iSYC9IgfAJ2ObvX+ZiaFmPGQEkZ+qimvzUZfiHbNA/mhJEANuTRkVIC+a9S9TZLcub
         7X/6FgUafQYmkwmaQKWb8dI2V9Dq1SE2WePYuvh3LN/cpdVXeTnTDjo5LqtEGPdfFgZf
         RqMZ5Iq+ZtCcQew9aDNO70FzZKgF3M7513M1KCbSFNIa9+G0whAqIALjFRSpgOI0vnaH
         zeOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779119; x=1737383919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n79rk6b+8xqMmWjuAyko0er+FR6QjAQIxOU32J9enis=;
        b=s4JPjvYy8Yn88uDr0l5wkwQJN7ABquSfRXyGEmfZ/ljHOdk/VXCMcz732H31YY/ecQ
         30WOi0tTKuIMJRbEwr1bBK8llDlXOzgq8/d336NM3Rl+iOPC13TWAU/8DnCMDPIcTEE5
         VR5JQGutA/o3uieVeEjjAKKV4odOKmTYZtaP8UqjhUctPguCfH2UYGlxR8lJJ6p9pz+a
         h6B5+7ahcI3bp1FbPV8h4nq5t8HEhQu9mWhoSdcbzV/rGAqIeE+5IJhWLlF1gcLdWEbr
         CgvaNLJ3o4c0xclZWiyLUTdwNmba/6MZzfcHLjLqHZjwNPyjSOrNGyvoeRV1z/sgp5SC
         gSAg==
X-Forwarded-Encrypted: i=1; AJvYcCWa90pQ+6z4uP9lxA1/h8B3uG/jeIV+b7iDJbj5v4EEeU1xPl7qVse5cbRiVY8eSRJNeI6GY60JZf8qF4VOZMzO@lists.osmocom.org
X-Gm-Message-State: AOJu0YwmHp7snTgQongKYvvvnumEIjVTmhdYbn8qu3oKK2uNMiDyMrTY
	tCLvHh0MjnSgW5kCDnox/27ZbBvzmdV37o/EljUgY88UvLBIiEqI
X-Gm-Gg: ASbGncs+ZrlbBoOH/N34eKvHUqH4paWnce5Fja2ooLsSsjgi/H6hPFkHIGGu2mQoLxz
	AYg/foBdzNJgL4ZoZeVQzodTURqTO7mfpEp7xJOZIfj0cIuOpFctGnfV4H+nklSSNGUhPCwZV8J
	W317NJqzp+toC0p14AfaXRFp/dyPN6ST5s9Romv0xzGIX2kqB63nDBWIxVuO0JGzGDWW0Urnbrk
	mGYN+42Nsbc5mmrxlZ/ursjl759FcDzJuoLNzI8J8JXdyo=
X-Google-Smtp-Source: AGHT+IGazeu03SiYco1yjo+DeQUEtizAzSGgMZznFsd/ItXTJBGhLqoPfMkABloEPy5ZTJeLHULJqw==
X-Received: by 2002:a17:902:cecd:b0:215:6995:1ef3 with SMTP id d9443c01a7336-21a83f3469cmr286693405ad.3.1736779118671;
        Mon, 13 Jan 2025 06:38:38 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:38 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 07/11] net: xfrm: Use link netns in newlink() of rtnl_link_ops
Date: Mon, 13 Jan 2025 22:37:15 +0800
Message-ID: <20250113143719.7948-8-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CTSTM7UQZL36OMN6J4P75KCFYJO34NMK
X-Message-ID-Hash: CTSTM7UQZL36OMN6J4P75KCFYJO34NMK
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CTSTM7UQZL36OMN6J4P75KCFYJO34NMK/>
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
index b7ac558025d5..b87a5c950833 100644
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
2.47.1

