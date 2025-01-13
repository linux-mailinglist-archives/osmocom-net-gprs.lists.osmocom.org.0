Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 562A5A188A2
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:19 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 05D8F1D2FFE;
	Tue, 21 Jan 2025 23:58:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NJQSR0--Z1EO; Tue, 21 Jan 2025 23:58:18 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D3D2C1D2F9E;
	Tue, 21 Jan 2025 23:58:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0E85738A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:59 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EACCB1C368E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RFP1X5Sde6fa for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:38:58 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by mail.osmocom.org (Postfix) with ESMTPS id 44D221C3689
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:38:57 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2164b662090so72494645ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779136; x=1737383936; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3RwrUezkHV4Bxso8Lan3H8PNeHkallTCdG4JVNGo1S0=;
        b=gex5keUIp8Va+3zrZ6u0yWQzt4H8XPFiUbluMVD3BVYkxQp+TeFrtH+ULu2VpdUp0C
         zDyVRP6TNv1lY222On7z1HyRRrPx9RfK9uUSLuJS5tf23df8SMdXWKA98zVkqBf/TTD0
         RHXJHNOlUh9WrpUrX2EDT6BIcG/tXf+kFJpoEllS1NV8+hynv9bjq4b3VgI2Yfqt3zVc
         cm3oL6gQ4VgJYplTqCIg69FOXAZDNUdZ2W5Ic0qXGjFHvZLvDg3y9nLNZhaiQPH0Dwf+
         0DSUhmm+L99mG7R0XC8Au0jo06N/Z+smTr56/Kr4wmJyiKkfilR8Xm9rO3OPec+9QaN8
         Uvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779136; x=1737383936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3RwrUezkHV4Bxso8Lan3H8PNeHkallTCdG4JVNGo1S0=;
        b=JOdNUNjyJmpUFJMTaFCzWl+mTGxMbscefY94efLQmhCSa1RN5a6/F+KiwBV6adv5wI
         gYb/2JBuoPgFnBZDbuGUQLnXKREM3CzVlD6FkQ0JU/vwsrhwv3CN3jmAqDUotcnFF3JR
         T1qh2oVCgbJ1o/RCNASmNg2MQehZGTPwEiiIR3z72F8H/TC2708D2IFXowJB26fxrTP+
         OrFZdWBzO5D4FfvWEGFcoT/jBMEdiyF6pKkI7F027P8wbBpgsts/E/cAoZ9OWHUZe2ZW
         0wTQLcUCsarrvOQbyV5lph3p82q/AR9Xb7UzHyKwieB3lAjgusXCG+LSgLUILdMPYE6u
         vZBg==
X-Forwarded-Encrypted: i=1; AJvYcCW0s5iofGRgl0mg5TLJLxTEosKIvtGdfJj7xqoFK+2bDGtuD/0XvH6CJt1VizIqmWT7OYGdGpMVUk/dnsGotD9r@lists.osmocom.org
X-Gm-Message-State: AOJu0YwOEF1dYoQjd3Vetke6faoESWuyPKvl844JQvuY0xtEgOTQ1ylt
	uQjMLPsbDjy1amcqwZwRSUE8OGH0sy9QRJUC9FpwaA5etHYHrFDBRdQuf4w7RKg=
X-Gm-Gg: ASbGnctCpCRDxyUFoYJhOlSlnQMXnJFa5b/bPBvnuTKo3UV22ZrQxVGqzhCtv/IIhCg
	ycG83lObw4b54nvr02t4dCvtLxJ/ZncICfB7niLUePPS6Gguw6WAaYvrD0Rgpz5FdeZn4EiKUno
	qjxGvRRSerTRYEl8KhcSueeGVZV14s9n0D3XEBtUWRseyuBqNpFbjnp4JJlTgEo1/zfKnJWyOHd
	pNR11GjPLRoP9UbBLQBsrkxSZp9Mi1BckiI8mEbs3DrKeQ=
X-Google-Smtp-Source: AGHT+IHt1nCTDh10fBQS9NHgK/oOky2VtiRHLWbePcQNxSAsFYQfmLDkyg61R0c+C95BGg+IP2F6xw==
X-Received: by 2002:a17:903:18a:b0:216:4a06:e87a with SMTP id d9443c01a7336-21a83fc7640mr358427785ad.40.1736779135888;
        Mon, 13 Jan 2025 06:38:55 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:38:55 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 09/11] rtnetlink: Create link directly in target net namespace
Date: Mon, 13 Jan 2025 22:37:17 +0800
Message-ID: <20250113143719.7948-10-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CPHO2PNLBOOTFNQDVFLAMCTNMNBQEPDK
X-Message-ID-Hash: CPHO2PNLBOOTFNQDVFLAMCTNMNBQEPDK
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CPHO2PNLBOOTFNQDVFLAMCTNMNBQEPDK/>
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
index cce5bcd1f257..65f09ab616b5 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3784,8 +3784,8 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
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
@@ -3805,11 +3805,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
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

