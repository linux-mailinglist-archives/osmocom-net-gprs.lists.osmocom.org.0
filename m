Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5A5A370A1
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:28 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4C6091E891A;
	Sat, 15 Feb 2025 20:34:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VkZJJMsnPJ7K; Sat, 15 Feb 2025 20:34:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7B8D81E883E;
	Sat, 15 Feb 2025 20:34:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 135EA38A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:41 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EF6F91E1C31
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FHW8E3DBzLDh for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:40 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by mail.osmocom.org (Postfix) with ESMTPS id 880541E1C2C
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:40 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-21f4500a5c3so82771105ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194299; x=1739799099; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBYzKh666wM3wi72dCVNRA5e881/bj/k98p0ZebqkRo=;
        b=YDog53mLGVV8MMWsxOvQH1MQ82rkB4Eo5p5UjGd7KfyEA7mtVmr3R+0xRZ1cn+dEBQ
         8yM2Q3UILa40tNyZMJ4j4pStosmWB26L31i1p2q/+ikqJvZRfzR950Xr9LjMVooa38dC
         2cv79Wc9OTxcel2NzF0MzZFIFFF2p3+lKOqKS2FqivIBXBqV4qfL0qcdqvoKWLxVhz+I
         5JjzXDPdh1g76k/lvinXXmULCwy2fBa4XHGTx7/AT4Kw4WxtDQiOz8rAR6oHJzhQGoDP
         8VLBPwZFQJxO7vOAX7Ax0mPHNHzgzY/9Zez7MemRM+OKbGG6yXfuMTKpCdCUAAiMAbDt
         6OyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194299; x=1739799099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CBYzKh666wM3wi72dCVNRA5e881/bj/k98p0ZebqkRo=;
        b=rJp5tKX5DZMMvs5N0oz84MscEOCLrhRUqwTneAifae82H7/Epzo4HeEyY6UocOU/90
         TMWIWKFevlr2K5ItOlNQdgJH26r+ugYJOrOdrbOvT0usYdmDmVYDY+KZxBE4zA93E8vm
         P1YjGnAMtAKF4d1buUWd7fhPUpO6Y9ExS31V4for/CZJUhAhQgRLFYNwYZ8+XlTH3DsL
         UnZYSov8uL5h5APO3nOy1EDIYkW4YIDewS6fWvcNI3zohaIZfZXBGPppY4YqeKg/LbGk
         TFp8F7WUVB37/4t9bxuW96cHY2SDV2ePleg43VpycnX9+sK2Q4WOLLDMlanHk8NR2zgB
         VX7A==
X-Forwarded-Encrypted: i=1; AJvYcCUi007+rWCSw89FrbPNVCeBqWbuDfJUoaBZ10HBVYVo+HyRNvg+rycO5kkCrqgf8b2AlaSIf/41OxNmOqVE9Tdw@lists.osmocom.org
X-Gm-Message-State: AOJu0YxIJvg+qLnEwc3SCBZ+hjTnYksFV7X8dJtOVJG3TL91PGvFMgeR
	b9L6HNrEJaxcE2M4ETZF91nX4/XmY34j+m3YOUzncWnK6Svs4R0n
X-Gm-Gg: ASbGnctpyU+VEEJZdk5WteUGU54rGnW8elXqngAkdhmUjDj2lX8fYSUXDWZd9kp0O/F
	lp8Y9xsMsLkPPraDCFsjHH3a+WiXtkhPKdvcdQ01fmwXdFA09TWzRW6FGk4uQBhVYg/0ZS3Uvlv
	f2anCQ3aCk/JalMG3D+6dKQPpr6OH1C2+UVi1il1InJVMi81kTe7bpvwK0rEsb8kVxse0nXrGGZ
	9COZKQ5eJtBZzoQDH/ebZzvLNWAIRzlBStwnUlA2ziskqJMCP/9ihEnxEPg3qzaulhxDiBTmvig
	FIKMeg==
X-Google-Smtp-Source: AGHT+IEvqpw8e2KYvbqgEmvCDFUuCXdsu3E3xccl+ty2yNtqbZtpph7stG1AFKdWtDXwqVY0rqWqig==
X-Received: by 2002:a17:902:ce06:b0:20c:6399:d637 with SMTP id d9443c01a7336-21f4e78de85mr276877915ad.40.1739194299072;
        Mon, 10 Feb 2025 05:31:39 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:38 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 09/11] rtnetlink: Create link directly in target net namespace
Date: Mon, 10 Feb 2025 21:30:00 +0800
Message-ID: <20250210133002.883422-10-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7IG75WLY4UZS23MWPQUXLF4V5KJS53UT
X-Message-ID-Hash: 7IG75WLY4UZS23MWPQUXLF4V5KJS53UT
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:47 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7IG75WLY4UZS23MWPQUXLF4V5KJS53UT/>
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
index e9af0775fa6b..a11b2c1f0985 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3788,8 +3788,8 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
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
@@ -3809,11 +3809,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
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
2.48.1

