Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2B69FF14B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:42 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0C6EA1B69A5;
	Tue, 31 Dec 2024 18:40:42 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZiss0kRHuyQ; Tue, 31 Dec 2024 18:40:41 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 034171B6831;
	Tue, 31 Dec 2024 18:40:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 57C3038A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:41 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3DCD21ADBA4
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:41 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YHsiOYpXzvsY for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:10:40 +0000 (UTC)
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by mail.osmocom.org (Postfix) with ESMTPS id 8389C1ADB9F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:39 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2efded08c79so4486266a91.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527438; x=1735132238; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VEdGbFyA09FJ7+QqmmCxpz6A7u+HUg5+S5fgAXCQeJc=;
        b=JgTdX2EwlhMsdmD3OZ1/xr7k/9zEWczV3LFHYtIZgk3F+4ksIz28KNe0y3AEAVE6+t
         1xpEO6RPIpWFIppS//EWFwJEXSEY4qchABRqtAnjSRObQoEz+F0moavpg73N5xuSohtR
         kyxXdM1yT+F6z/Sw3hebDovUfUPvUeBSEycJWVuuXQ+eUxvNI26YxPoT1TcSLS6dKqLm
         mLof6cvpJS9ml+NwmMZ+oS0T5I2Cy+iwj7MzPNaFHay2B61L/IsTaYvysyUml24l6tlj
         BRKSXhnoI3XWZVQp2xuzU/v4TA6xR3l8EffiHULPqX1BUB8in7fNz7BrNDiBJqPDNIgZ
         GzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527438; x=1735132238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VEdGbFyA09FJ7+QqmmCxpz6A7u+HUg5+S5fgAXCQeJc=;
        b=E40AVDHQshDGwE0FjAOQskAayIYTUuGFZmoZ5qWmUCEthWz6gtFLV2ZcBb1AzBmhTj
         daQljmAHdc5QmvrR8NqS6FtwTD5Rr8v4TifHyCVpnBYJ0tQYn7TRcW8/O1tBV8KI2oNG
         UTzOSW3DyjhY1Kblv1QJyB2l77hv9F3ZXD9ceA928+jsFfgSivB7YTCGa06pZCx+kur0
         JoZq2w0boXC2UgUKjJ2bbvK6MRBn64BYpIUO1818Y1kKWcsHDOvGnYcJO+DDwuSEmVPY
         hyjyLQXnfTjEeiRRKggjh33ym4NpiZfqVWsCvzA5Ml7w17mHqdVDiM2aQKbkQXjw12kF
         kAXg==
X-Forwarded-Encrypted: i=1; AJvYcCWvIkELNkbhznj6mEHB+w4Pjqk3rQ22fc0Q3ZF95DYlVU4q6sQ7B/RvXGMPTjBcj63ErJaSpf9/V/ZaLiXJHj3k@lists.osmocom.org
X-Gm-Message-State: AOJu0YzQgdVFbFrnEH19l1FLE1buIurfqKl3cUrAEx14I5H8iVTox3My
	wmGAE3vCFLE2COpCdjLfNOifzzKUqRwfSRQMu8fSNTMXMBqB5ggM
X-Gm-Gg: ASbGnculAHYHnze2i9/w2+apLiNTBYzh0biBNJReBwGInEL8G+PSfkU4ePAcqSbJQLs
	n3JLYU4ozrtCfQbNO6ykk1lG0odiiz9Lr6UYhinWlHSmTgKDHVW2ozCiOHjvl1q5xFIWyXh8XY2
	pxb2XG5H9wDIyInNArrbI9mwLKfB0oeeTVM730tdSoUoYXLV7bKp1U3ng5ALy7PSdKfvkz8zMCs
	TmJdcAz2jqKF2NkxvZtqihDnnVIu58DCNCgIClcEtt+IhQ=
X-Google-Smtp-Source: AGHT+IH6m2w3HOgAGhkzn76085OHsWsSUyL1uFaSoqu4LH4xby0CPd4muKbobH9sGAmWFqgh4Hldug==
X-Received: by 2002:a17:90b:53cc:b0:2ee:fd53:2b17 with SMTP id 98e67ed59e1d1-2f2e934616amr4153078a91.29.1734527438446;
        Wed, 18 Dec 2024 05:10:38 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:10:37 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 09/11] rtnetlink: Create link directly in target net namespace
Date: Wed, 18 Dec 2024 21:09:07 +0800
Message-ID: <20241218130909.2173-10-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NEMVSJEQ5Z3RTGSK6JWP46IL4ZMKLW2M
X-Message-ID-Hash: NEMVSJEQ5Z3RTGSK6JWP46IL4ZMKLW2M
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:17 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NEMVSJEQ5Z3RTGSK6JWP46IL4ZMKLW2M/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Make rtnl_newlink_create() create device in target namespace directly.
Avoid extra netns change when link netns is provided.

Device drivers has been converted to be aware of link netns, that is not
assuming device netns is and link netns is the same when ops->newlink()
is called.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/core/rtnetlink.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index e33ef8a0a6d6..ce5bea096bac 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3776,8 +3776,8 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
 struct ifinfomsg *ifm,
 		name_assign_type =3D NET_NAME_ENUM;
 	}
=20
-	dev =3D rtnl_create_link(link_net ? : tgt_net, ifname,
-			       name_assign_type, ops, tb, extack);
+	dev =3D rtnl_create_link(tgt_net, ifname, name_assign_type, ops, tb,
+			       extack);
 	if (IS_ERR(dev)) {
 		err =3D PTR_ERR(dev);
 		goto out;
@@ -3798,11 +3798,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
, struct ifinfomsg *ifm,
 	err =3D rtnl_configure_link(dev, ifm, portid, nlh);
 	if (err < 0)
 		goto out_unregister;
-	if (link_net) {
-		err =3D dev_change_net_namespace(dev, tgt_net, ifname);
-		if (err < 0)
-			goto out_unregister;
-	}
 	if (tb[IFLA_MASTER]) {
 		err =3D do_set_master(dev, nla_get_u32(tb[IFLA_MASTER]), extack);
 		if (err)
--=20
2.47.1

