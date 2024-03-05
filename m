Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id F40DC876FAB
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  9 Mar 2024 09:05:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A726F5D3CA;
	Sat,  9 Mar 2024 08:05:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jh7HCpSqHyfN; Sat,  9 Mar 2024 08:05:59 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2DBF85D3BD;
	Sat,  9 Mar 2024 08:05:58 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 36B4838A1104
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1CB9B57E26
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iYxmQLT4-3Ua for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  5 Mar 2024 12:15:38 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mail.osmocom.org (Postfix) with ESMTPS id 0B47257E21
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:37 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-512b3b04995so4151516e87.3
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 05 Mar 2024 04:15:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709640937; x=1710245737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PlRgBsvkdB1uk+pnCPMDoR/KGnekNC9DXpehVtGRALc=;
        b=APRA45b+owBAMW/rUy5eIaX63EmejmiR2tmHzFsRj1h/lFiQgzgI8t37Ke2Isk2Re3
         IiN0UKp76kHcu9vNpYhq714tANo8dYi4QA+/ezFX/rcXNVznldczkGALzZbjzm9WYgsV
         T6ksXuNjl2679o6ltOBAg1otF9NtmDAKiuntXMmiSeOyGx9Tnohys/tHKAjQSuUaunQb
         TIFGxsOx6pL5YzeK0s/x+hPfyQkFq6k2blLT3uGu2P5PvzCKESNJzLwptjwhysSgG2bx
         y0KPYFTbF606xvU3nHbM8dRwbqCYzan+ifOf2XwVuyz4o4Dz9YLspcqvAFsix05374C6
         U6Cg==
X-Forwarded-Encrypted: i=1; AJvYcCWYwkjSFp540m8KlcKb3B0LsXc4q6rHtIB91NGawAxVShFT1HmMCY3KV+PEoh6b6WVsJI1MUKpRHLvChlNOYvCBxJGehvWolhDxNLzXFriww2Gn
X-Gm-Message-State: AOJu0Yxf+Zx/WnnfkX/fwMJreG7yCBBXkq1q79iNAoyNxo0gNzy00+Iz
	UOIKKf/3z7pXwgFtnq5rM7U5674/XNbT9RS/kty6/u61WREFqCwq
X-Google-Smtp-Source: AGHT+IEXK9I278PFM2NIiTH6L6oGJxrYG3KEfyvFvNNFUTa2taVG6i2Re3nVRx86yMtHAooJDKZ7FA==
X-Received: by 2002:ac2:4186:0:b0:512:f59d:7612 with SMTP id z6-20020ac24186000000b00512f59d7612mr1122169lfh.57.1709640936735;
        Tue, 05 Mar 2024 04:15:36 -0800 (PST)
Received: from localhost (fwdproxy-lla-009.fbsv.net. [2a03:2880:30ff:9::face:b00c])
        by smtp.gmail.com with ESMTPSA id k3-20020a17090646c300b00a3fbca02e17sm5935394ejs.75.2024.03.05.04.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 04:15:36 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Harald Welte <laforge@gnumonks.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next 3/3] net: gtp: Move net_device assigned in setup
Date: Tue,  5 Mar 2024 04:15:23 -0800
Message-ID: <20240305121524.2254533-3-leitao@debian.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305121524.2254533-1-leitao@debian.org>
References: <20240305121524.2254533-1-leitao@debian.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: breno.debian@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NDZYLZ7SJYOSVJWN2ZA2S3HV2D5WUTDU
X-Message-ID-Hash: NDZYLZ7SJYOSVJWN2ZA2S3HV2D5WUTDU
X-Mailman-Approved-At: Sat, 09 Mar 2024 08:05:48 +0000
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org, dsahern@kernel.org, "open list:GTP GPRS Tunneling Protocol" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NDZYLZ7SJYOSVJWN2ZA2S3HV2D5WUTDU/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Assign netdev to gtp->dev at setup time, so, we can get rid of
gtp_dev_init() completely.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/gtp.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index a279f0cd1b4d..ba4704c2c640 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -711,15 +711,6 @@ static int gtp_encap_recv(struct sock *sk, struct sk=
_buff *skb)
 	return ret;
 }
=20
-static int gtp_dev_init(struct net_device *dev)
-{
-	struct gtp_dev *gtp =3D netdev_priv(dev);
-
-	gtp->dev =3D dev;
-
-	return 0;
-}
-
 static void gtp_dev_uninit(struct net_device *dev)
 {
 	struct gtp_dev *gtp =3D netdev_priv(dev);
@@ -937,7 +928,6 @@ static netdev_tx_t gtp_dev_xmit(struct sk_buff *skb, =
struct net_device *dev)
 }
=20
 static const struct net_device_ops gtp_netdev_ops =3D {
-	.ndo_init		=3D gtp_dev_init,
 	.ndo_uninit		=3D gtp_dev_uninit,
 	.ndo_start_xmit		=3D gtp_dev_xmit,
 };
@@ -951,6 +941,7 @@ static void gtp_link_setup(struct net_device *dev)
 	unsigned int max_gtp_header_len =3D sizeof(struct iphdr) +
 					  sizeof(struct udphdr) +
 					  sizeof(struct gtp0_header);
+	struct gtp_dev *gtp =3D netdev_priv(dev);
=20
 	dev->netdev_ops		=3D &gtp_netdev_ops;
 	dev->needs_free_netdev	=3D true;
@@ -970,6 +961,7 @@ static void gtp_link_setup(struct net_device *dev)
 	netif_keep_dst(dev);
=20
 	dev->needed_headroom	=3D LL_MAX_HEADER + max_gtp_header_len;
+	gtp->dev =3D dev;
 }
=20
 static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize);
--=20
2.43.0

