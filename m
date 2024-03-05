Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FAB876FAA
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  9 Mar 2024 09:05:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AEF265D3B2;
	Sat,  9 Mar 2024 08:05:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rU9cqepAgT5h; Sat,  9 Mar 2024 08:05:57 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0E2A75D3A5;
	Sat,  9 Mar 2024 08:05:57 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 82E3238A10F2
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6890157E25
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GI3kLRLK3YB6 for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  5 Mar 2024 12:15:37 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mail.osmocom.org (Postfix) with ESMTPS id C1EB757E1E
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:33 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a441d7c6125so65161666b.2
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 05 Mar 2024 04:15:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709640933; x=1710245733;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JG3VSpSBId+LffdzAqb7pqYBWbcN1uLse2eKNRmus5E=;
        b=sBkwEeTo03KIqbgCVO4XjeG+9VLaH3b5IP8HcBmCQukrhGDu8XEv6yTE3icMHieveo
         u4pZPtva1KOaaxRlBpIkreOlFuzOzC4UimsAQf8QEy3twOSXtFzhk2wZxYE/Zk+BZZYe
         sUZ/FVqfXAFnX6dGyLzxtuvQMapDDAq905kzPHGTN1zaxWDQVtIvl4QIllENv6rPZrX4
         kwJLKnZz9Bl3N00G1Pn9MjlPupcPDp5sfyFJU7HQLXp+MPIQttu35kZXLYL0NPt5AMvs
         gUjRkM0e7mkdN3Cjl/fl4Y7mjOO95VXLoby9lDUK//0io+YjFqNS6AdWUS1kFrL01fF3
         wFMA==
X-Forwarded-Encrypted: i=1; AJvYcCWwAN0gakENqXLX3FVamw4VzT0du7bfDSoVTF/O2SrqsajKf6uuaI0tK4i13e/nuALCmsVo8VMiIWhs8eNjJogRCoqFYQm32uoolFzHgJ6GFmmA
X-Gm-Message-State: AOJu0Yxc8pAKjKNv39h/dKWbT7W6Fr2giX85xPmc8eGyig+5Ltae9GdL
	2MPdkSr1rUMAkKHFpSfFmi6yspw+mLR5c1AkIuxfqz1GIO9/c+wv
X-Google-Smtp-Source: AGHT+IFR3WGZuebyFFvq/51EnY9cTbsjkK/kx7Ilk++87zUVxhXQMBrOMecLr6eR2TSNRBaf4SPz1Q==
X-Received: by 2002:a17:906:6954:b0:a45:8f10:50c6 with SMTP id c20-20020a170906695400b00a458f1050c6mr2209901ejs.57.1709640933320;
        Tue, 05 Mar 2024 04:15:33 -0800 (PST)
Received: from localhost (fwdproxy-lla-120.fbsv.net. [2a03:2880:30ff:78::face:b00c])
        by smtp.gmail.com with ESMTPSA id am19-20020a170906569300b00a44cb0bf11bsm4027184ejc.79.2024.03.05.04.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 04:15:32 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Harald Welte <laforge@gnumonks.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next 1/3] net: gtp: Leverage core stats allocator
Date: Tue,  5 Mar 2024 04:15:21 -0800
Message-ID: <20240305121524.2254533-1-leitao@debian.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: breno.debian@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B3HMDYAAUGVF6OIK2S3VDUB5B3FMKUOU
X-Message-ID-Hash: B3HMDYAAUGVF6OIK2S3VDUB5B3FMKUOU
X-Mailman-Approved-At: Sat, 09 Mar 2024 08:05:48 +0000
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org, dsahern@kernel.org, "open list:GTP GPRS Tunneling Protocol" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/B3HMDYAAUGVF6OIK2S3VDUB5B3FMKUOU/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

With commit 34d21de99cea9 ("net: Move {l,t,d}stats allocation to core and
convert veth & vrf"), stats allocation could be done on net core
instead of in this driver.

With this new approach, the driver doesn't have to bother with error
handling (allocation failure checking, making sure free happens in the
right spot, etc). This is core responsibility now.

Remove the allocation in the gtp driver and leverage the network
core allocation instead.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/gtp.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 2b46b7398ade..facbfba5d77f 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -717,10 +717,6 @@ static int gtp_dev_init(struct net_device *dev)
=20
 	gtp->dev =3D dev;
=20
-	dev->tstats =3D netdev_alloc_pcpu_stats(struct pcpu_sw_netstats);
-	if (!dev->tstats)
-		return -ENOMEM;
-
 	return 0;
 }
=20
@@ -729,7 +725,6 @@ static void gtp_dev_uninit(struct net_device *dev)
 	struct gtp_dev *gtp =3D netdev_priv(dev);
=20
 	gtp_encap_disable(gtp);
-	free_percpu(dev->tstats);
 }
=20
 static inline void gtp0_push_header(struct sk_buff *skb, struct pdp_ctx =
*pctx)
@@ -970,6 +965,7 @@ static void gtp_link_setup(struct net_device *dev)
 	dev->type =3D ARPHRD_NONE;
 	dev->flags =3D IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
=20
+	dev->pcpu_stat_type =3D NETDEV_PCPU_STAT_TSTATS;
 	dev->priv_flags	|=3D IFF_NO_QUEUE;
 	dev->features	|=3D NETIF_F_LLTX;
 	netif_keep_dst(dev);
--=20
2.43.0

