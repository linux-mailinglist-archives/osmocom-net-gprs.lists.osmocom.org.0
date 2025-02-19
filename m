Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id DD07BA43494
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:10 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B49401F3BA4;
	Tue, 25 Feb 2025 05:36:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T0wLovt5wYBx; Tue, 25 Feb 2025 05:36:10 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 338521F3B68;
	Tue, 25 Feb 2025 05:36:07 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6382F38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:33 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4B6B81ED235
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0MZdmjGLPgGt for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:32 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by mail.osmocom.org (Postfix) with ESMTPS id 95E531ED230
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:31 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-22113560c57so1572655ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969490; x=1740574290; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=so6ixpN3+kGL2R8Euj1cLc9vRqq6Wkcgz/xNsuJc6Sk=;
        b=nlnjb5tLPz+4V3dng4pSXmiOAwt42WFQNztd1GPkjbNFinTP9EzQueiU8CERn21Gca
         bP5RwrpoTBfe8i8MyOFZspf55+H3ZB28bgX23yTQOBG/fdbe3E30IRjfANNEie547Tcj
         benSyrBTUtfaSY+/STKTEJSCLzZIDN8mYfPUOTVTbIZ1joCL74Z/WbhhlkDeh/JP/fQ+
         +V2dE9WevryPBjaugeSCqAsE2fZwfHjAFfEOeO7Aj9xqIQkI+N6ILa+nFgAeUWDjVCle
         Ofmexk2VowN0yNMjLJ4HFkjSLKTTYYiBzYVVYmUEl8aEEAauedVuM+tKV5AxdndKqfZ/
         dvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969490; x=1740574290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=so6ixpN3+kGL2R8Euj1cLc9vRqq6Wkcgz/xNsuJc6Sk=;
        b=XCHe+JOOv4DZD+7kXcCkPUjuktHJM0vaUyi82Qj+Qet8TpoRwJGE4QWcUv1ftmDKSQ
         ojwExm1adKdnlKJlAIrI6X/kyoieFjPJfdHvggtzKxfGhkSJc76Lzm5ENUr5kKcXxiVf
         pfiqP9w8RzldoVFU30fgx7jSepU8kulDZqIFsKJjE8l4398m4+gnH+ZwL3EFPtFmhQFP
         tBv9gfRnN3JAP/jyfv8rRMy398xYLNEo/yEYIvR+vAz6CtiOgRzyh3QC9OX/giCN8xXY
         5NnGD1lD8cWbLt3xxvcuJ0TCwFwW+AfwyQoXYzRcMHIlhjzvb9ZvsncyJL/OmvoX7c5B
         GfCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCJl1yKyUUfkus2rZmG2ZuvlKbn1p510OUrD+SKGTSEuIenaaFF/qabtNjrP7Rf+4HewulxWcDyfXa/Pz8Mulr@lists.osmocom.org
X-Gm-Message-State: AOJu0YwoAauQFLAZh9fe8tQOhkpBLsMjv/yr/EVuiFCTXzKBPjY5aDRp
	9cvhsrtyvoHLAFAz0BFjFXX5RHIe66qoxzFCoo7Rj55nrj2Fo6bk
X-Gm-Gg: ASbGnctmoBIJ+DpdToKTmHTozj+buhmGfu7TXY35rnkCqnCuhyotO/gcsqLCd9zcHfl
	IRqCdanJ0oTAYmlQJoTaVXBvz6o6VwbR9uE70tb+u1KNimAsesVVFLtL3G44j8arJALNIh7jshP
	rHcEufNmabk/KQrwn+HXLkgGZ2YZ0nshwwTqnvea861CKPquudVedLhVTkzG1s0vOBfTq+t1k80
	aams1BD+aGYr9C6HhNmczChz/RiVEaRTXS4iNox1//2JKn37JlFV2USOH2tgajITngBI9F0Pzd5
	3ZGrsw==
X-Google-Smtp-Source: AGHT+IEqkCyGg/QTxep/fqv5CqcRvswNVHWV96b7TSvHtcfDnyWeYpeOAf5Az1bAxRJk7mW/W72uWQ==
X-Received: by 2002:a17:902:ce0d:b0:215:a179:14ca with SMTP id d9443c01a7336-22103ef5861mr278510175ad.2.1739969490317;
        Wed, 19 Feb 2025 04:51:30 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:29 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 04/13] ieee802154: 6lowpan: Validate link netns in newlink() of rtnl_link_ops
Date: Wed, 19 Feb 2025 20:50:30 +0800
Message-ID: <20250219125039.18024-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JAGWQY4EJ6PRZ2FCMWPQAIHHIK7W4ATN
X-Message-ID-Hash: JAGWQY4EJ6PRZ2FCMWPQAIHHIK7W4ATN
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JAGWQY4EJ6PRZ2FCMWPQAIHHIK7W4ATN/>
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
Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
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
2.48.1

