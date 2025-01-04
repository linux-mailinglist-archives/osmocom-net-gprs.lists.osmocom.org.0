Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5DA05DE4
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:16 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 736561BD030;
	Wed,  8 Jan 2025 14:04:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wftLr8XXALyc; Wed,  8 Jan 2025 14:04:16 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C597C1BCFE5;
	Wed,  8 Jan 2025 14:04:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0C86C38A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:22 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DBAEF1B968B
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ih0BcjyclgNs for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:58:21 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id 34E6C1B9686
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:58:20 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2166022c5caso161621305ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995499; x=1736600299; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWtx/GpPr8Y7UYus5aPINKHxwSB0EzMFBw6o16b+Q3k=;
        b=jZhmOOTVe4v3afsdvH8jjtgQw9xcThSeALtxrzwU3RupOvtvNftJ72x8FPr5w06Gui
         E/vNjkoKBp42TeCNkJ+0ABtQsmp8ZaQE1gSH7l2SzoPXQRD/fQTYyhbsTm4nOovB/cPN
         3ACMiteYXW9y4tiDfvxLkKzYO5CpbwnuwoeqXEdTEIOeTFcq5+anLtuVXmqOZImxPIG7
         5fJ11d7W9c3E6rgnJLHpl10uuWNB/J7evfxukLCIkleW7K8rLGhuX+7S/VeYZmlCHKiP
         Z7NqKsIkSAsk8AocmZupEsKqL/UtSQtLdSZvzrIgkK10gx57g1J8tad5Jq/5Lk3ngy/e
         o43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995499; x=1736600299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWtx/GpPr8Y7UYus5aPINKHxwSB0EzMFBw6o16b+Q3k=;
        b=Y+9R0aFrqb3H62sbNLInlKGU3L2XWJZ4h6b+Guy2N41jf37PHxluR7ay0dYSRsvNT+
         h1ZlKJybHJdt/eHX6jh5TpXNXqonlVBtibsRChapvFqRcWO2BM7WQu0l82iAM/7+gQCx
         8EIKdrzRakU6bSMfWvff0HBAc4+IvnPYEO5vvYrMeWr6JjeudwGJfa96V1rR27p/eNyo
         SeithAeLlsQEoqQQ743ToXpOImmq7X0GIoG5hrB+l+1Fx8KlWWPzBER1r0Vf3mjbFTIx
         tIfb/0LC16dEeAWwDfM695fo37lQXG6e22woSHp4MEWkfoOYXuIQO+HB3jyTJX8/C8lZ
         DOCA==
X-Forwarded-Encrypted: i=1; AJvYcCVoRVobHgLSrySWywS+Oc0+yNP+gKGcuSL9GncaDNE2FX8OfMyuH1GgHlDSBSIE8vh2Nnw8NRUqhkAnEzXDHJ78@lists.osmocom.org
X-Gm-Message-State: AOJu0YzIzbm2tG7A+mYQARAN+JHI5ecjhlW2+/pYUG4nlDg/e6alR9dE
	x0eRgythibnoGMv1LRUwetQ0bcvlU+8z4ALim9yLVUQIyUi7IQHJ
X-Gm-Gg: ASbGncvBkXBP1zSmxXIxMScVbsCMW8p3iCadc0tiX9HLiGwpS10bB2eLg6yHYcvR/00
	XkuU9o5YUpxQJ61nXlTtYBZad5RVmRXBr1tUj5z8RutVfWYhkAkhNAF48rZ97mW1U1/5lv6/QRc
	EBhpIhgk+uHo+Nxr8/RUdUUOkoWuSOd0cjJHGhCHbaxyqPP96jS1eKUI84XbKfq5jPFWC3AXBbU
	yFZg16vOZ+Jpy2YsWTHhX0gUfrg64is8YvTv+izckrIKVQ=
X-Google-Smtp-Source: AGHT+IHIkI4kgOvJJQ9O4vOvA6fRMUVnhOi23ydvn4IOYZv1bvM67hPwcmTlhhKLeOZA8Exp/2drag==
X-Received: by 2002:a05:6a20:4394:b0:1e1:b430:19c6 with SMTP id adf61e73a8af0-1e5e04600e3mr77828034637.10.1735995498951;
        Sat, 04 Jan 2025 04:58:18 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:58:18 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 04/11] ieee802154: 6lowpan: Use link netns in newlink() of rtnl_link_ops
Date: Sat,  4 Jan 2025 20:57:25 +0800
Message-ID: <20250104125732.17335-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6N7DCJNV4STIW5GKKPASS6UMCPUAQZGL
X-Message-ID-Hash: 6N7DCJNV4STIW5GKKPASS6UMCPUAQZGL
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6N7DCJNV4STIW5GKKPASS6UMCPUAQZGL/>
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
 net/ieee802154/6lowpan/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.=
c
index c16c14807d87..65a5c61cf38c 100644
--- a/net/ieee802154/6lowpan/core.c
+++ b/net/ieee802154/6lowpan/core.c
@@ -143,7 +143,8 @@ static int lowpan_newlink(struct rtnl_newlink_params =
*params)
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
 	/* find and hold wpan device */
-	wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));
+	wdev =3D dev_get_by_index(params->link_net ? : dev_net(ldev),
+				nla_get_u32(tb[IFLA_LINK]));
 	if (!wdev)
 		return -ENODEV;
 	if (wdev->type !=3D ARPHRD_IEEE802154) {
--=20
2.47.1

