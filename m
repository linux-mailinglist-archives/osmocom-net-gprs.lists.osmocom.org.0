Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B0AA3709D
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:22 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 591D31E8864;
	Sat, 15 Feb 2025 20:34:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8faEDyvh_i_m; Sat, 15 Feb 2025 20:34:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B8B321E8815;
	Sat, 15 Feb 2025 20:34:12 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4F03238A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:57 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 361661E1B40
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gIRPpI6szWN6 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:30:56 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by mail.osmocom.org (Postfix) with ESMTPS id 7B1A01E1B3B
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:55 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-21f4a4fbb35so54705625ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194254; x=1739799054; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tN6LBIpl7aUsxZAQ1nC9Mvrd+HBX5wlThy/HCxYMvw=;
        b=FnYPukqCG0ekXIGJY6fbt8+9bhPHOTia6mHtKWZlFuZ+wIG56XdqpojctJVetumhk7
         H112kcGWQQyDKO0LV/+B7KintyV7d93OHx5/SL8+os70DtNZYJiWImrD7r3v+pNsZcvk
         T0ZK/SsuEzpNHHosrLrOekbcadx30fmvC/yFKnVNEkGyE2v82EueaR+QdSeRdcuxlflu
         mBUTrK1UtbUhP7bJFN/d/vrl8JjlXNTVCpMhOg1QMHyVmt9RlxJ8i4emyfdqDrCpjsbz
         69V9KIFsD7mBiEUfye2/bLduZzXUPAZT+N/ezoMbORN+yUUFuiE9eGky9+LBhS+P+J8Z
         JuCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194254; x=1739799054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0tN6LBIpl7aUsxZAQ1nC9Mvrd+HBX5wlThy/HCxYMvw=;
        b=kdycw87mTLHCenh198Yjpuss0jXXOkGjRmGRbaG4h9Jzwzn/nKFJ4o/Xc/6ken3A0d
         340ahNza/rfu7ykgxm3clj9qorANYO2DAMr4MhkzjCyrxOvkW54ZAlYYtsLQ/j4ZHkR1
         7Z2xZ6IEfeAX+5R3dNpg3Co3aENuptjrbgHomkUjdOr7xjtVY2rdvKyq4iOW4MVeIHNv
         qsTy8xjjRr/aZANk0d0a+2nL+ZLt7wCX7owAyKx2rl6PtxxrLM55iPswunJj2T+Pnsqg
         XtAADkZjNeRrvG/76b9cHzZrK4Zg6afRcpbqrigatMsMwaTcL6xzMkEjJhg5dZ0pid2I
         sdZw==
X-Forwarded-Encrypted: i=1; AJvYcCUxtG+PkB33XMI5NmkQZIAYxvmSGTA6X87trxp5CVp0KSBMQGAQp+fhXsMyyddLqBGkAFZKIIOQmrzwSqldfXK+@lists.osmocom.org
X-Gm-Message-State: AOJu0YzbQEmvqwxrv2ZFEu8i2eC+vodbuQ4b1SCpohGtDjjFa54TGslS
	DzEmyYPreSvkDeVeDg5zmINM8oFGVEZrHrryy3+ZucVfhvF3xQYS
X-Gm-Gg: ASbGncvB6OOKNFceokmpPYd5EqR+yf9e+kZWS7lzPRb3SQaNAdmSLrqzpEbvpW2mIni
	DZnc072iklNtbpIOMXDxd55jqX5EksphaW2nTwggw3CFcWwxBy6xTBWN9ScIHzg2lDmlOCmb401
	o42bXAqtYwn4Eeox26rQpNGUCdn6VDeVs7Y2V2Z+5pyPw2V6MoEonVTYisJZuCvBBlXkXm4BnOF
	3N4ImIwbhUT2QvfUIMoEw9qivxc9nTpPz/V41L22qYDhUAIwnovfAYrLBMen90tfBlITkTl/NGf
	YfL7IA==
X-Google-Smtp-Source: AGHT+IF8gihjdkRbSU1HRP8R4mEppMkEAKGDChElxIvCxKcXV79FUInFhj/RnX7alUKIg2RAq5xNnw==
X-Received: by 2002:a17:903:46cc:b0:21f:6d63:6f4f with SMTP id d9443c01a7336-21f6d636ff1mr134607475ad.2.1739194253851;
        Mon, 10 Feb 2025 05:30:53 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:30:53 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 04/11] ieee802154: 6lowpan: Validate link netns in newlink() of rtnl_link_ops
Date: Mon, 10 Feb 2025 21:29:55 +0800
Message-ID: <20250210133002.883422-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W7ABRS3UVA2GLRAX3IX6WCTU77DD2YTO
X-Message-ID-Hash: W7ABRS3UVA2GLRAX3IX6WCTU77DD2YTO
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:38 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/W7ABRS3UVA2GLRAX3IX6WCTU77DD2YTO/>
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

