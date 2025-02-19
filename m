Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABD3A43495
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:12 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 577FA1F3BCD;
	Tue, 25 Feb 2025 05:36:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bYuXt49LW_Fv; Tue, 25 Feb 2025 05:36:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 329521F3B77;
	Tue, 25 Feb 2025 05:36:08 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2BCCC38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:42 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 12B0D1ED25F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:42 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mwqPLpmqp5x1 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:41 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by mail.osmocom.org (Postfix) with ESMTPS id 5ED1C1ED25A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:40 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2211cd4463cso68153245ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969499; x=1740574299; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RiGtI+5ToMID9TUSdNCghgiM3EXs9/d4cQAhclrcdwo=;
        b=elG+8PFnJf/zSHcTV/5UCnJJYts3aeGywXfOGHE9wKF+1Y4hugztDBDVsc3b86s+eO
         pZur8y2hh5oMR1dDcdL4hnGMVcsS5WoGxA1Pkojh9SCoXrawpEE+IEPPiSErZduN8JTd
         hlHfMyglyNo1qXLa1fMvpahNppDQzriK87OXyQW4zdow3tYWb6V931xjgI7yyw/qp99d
         vjJJl4zqThkhHbAcXGwjGu0f+odjaUurfecOvlCL7+0Nqt0d0dL06ApBOk6FIACiskgA
         m29erfBWXstjcMNb6YcU4BxPbT1gJn5lf52k1dKUECMAlDngT0iO/vjGOMEu4Q5V7SZZ
         kKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969499; x=1740574299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RiGtI+5ToMID9TUSdNCghgiM3EXs9/d4cQAhclrcdwo=;
        b=a0oy2GF9+sPtty4hqgzbGuqJk7IM3sL04jvsHN1KWEkAxWTZLeOmeSFQy9ebZLR8I1
         lFeW8+jNBeUXyS/fz3dOwiK5YENUm3m5xcf0ou6S7Tt3D//6tu5PVnzXo/WbNE5iHbNa
         fOAcUa3s7WAscZMSuMJShd923UwttAmVUnEXpFrSIHChHU6vCyrP8CAKOCEZPAcwI3MU
         1SEP4re+0TH9TfhInERBw6QDVe0LuZaBpGjPGNWb2FoRIbevY5hPB2P8YAxMDu6yLvl/
         xFB9t3Qh6JT6PVHRS+cm5aiIJobQrXncRkwBOMoiqAnK9TqBYBMsGuo4quDFgm3R3Ai4
         HfkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsvu194GEK807NKEVF2vwBCAYrGTersksgQu49RjPwQf5/IQRfFlsUBfUc5OwBP4vMMl/+kkOWVLV0VTb+xcFe@lists.osmocom.org
X-Gm-Message-State: AOJu0YyhRAm8T0xwgGxLkZxa3qv9dIFnXnkIU+Tz4jyRhJZjpQ8yPgSV
	A7TNSNeHQZ3qwA8PdAtXpk28jWJhQndKZ+4KfFosW/JlFjuGUtKL
X-Gm-Gg: ASbGncuxmvT5dNir98wmQTF4izHndQKA2gaNjBpNU+b2pR3Zdm2JCBsVjpgjIGnd4ja
	De5K+HT6t2MKPOlOrwkGbpK5GOyeIU8kvBF4OysSTWB+Ba3D8i88o29/1KfiNOBvhxw6dam1NlH
	SMtZbOeP+Eggg8rOp/0g3vrJfqANxE5pHax+vSO8yVSJYUZRaANFRz5yu5TqsRCH31s6hrnlGw9
	tIuI8LyxOEVrzALPO0heVvIxvLB0600a0VK2Z/Nbkm3KYU97FBCib0HIsGTIibUfvuBh9zj0HL/
	wcOBww==
X-Google-Smtp-Source: AGHT+IFttmTeAFp7rRNlCvGNA6c3f8HloQtXmzYtg/s+sWnJsGTKFqc7jLE1fU4ek1ihZeJfgcA+rA==
X-Received: by 2002:a17:902:ec83:b0:21f:5933:b3eb with SMTP id d9443c01a7336-22104087bc1mr237554135ad.31.1739969499276;
        Wed, 19 Feb 2025 04:51:39 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:38 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 05/13] net: ip_tunnel: Don't set tunnel->net in ip_tunnel_init()
Date: Wed, 19 Feb 2025 20:50:31 +0800
Message-ID: <20250219125039.18024-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 44PTBSWWPYN5XJLPI5FXOM7UVF6YSRJK
X-Message-ID-Hash: 44PTBSWWPYN5XJLPI5FXOM7UVF6YSRJK
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/44PTBSWWPYN5XJLPI5FXOM7UVF6YSRJK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

ip_tunnel_init() is called from register_netdevice(). In all code paths
reaching here, tunnel->net should already have been set (either in
ip_tunnel_newlink() or __ip_tunnel_create()). So don't set it again.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/ipv4/ip_tunnel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
index 09b73acf037a..dd4b4e5be998 100644
--- a/net/ipv4/ip_tunnel.c
+++ b/net/ipv4/ip_tunnel.c
@@ -1326,7 +1326,6 @@ int ip_tunnel_init(struct net_device *dev)
 	}
=20
 	tunnel->dev =3D dev;
-	tunnel->net =3D dev_net(dev);
 	strscpy(tunnel->parms.name, dev->name);
 	iph->version		=3D 4;
 	iph->ihl		=3D 5;
--=20
2.48.1

