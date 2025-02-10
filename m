Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 578CBA3709A
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:10 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 39C631E87F6;
	Sat, 15 Feb 2025 20:34:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AJFai8bX3BEr; Sat, 15 Feb 2025 20:34:09 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 35B3C1E87D5;
	Sat, 15 Feb 2025 20:34:06 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C704C38A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:28 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AE3411E1AD3
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rYEdiZplI4iN for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:30:28 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by mail.osmocom.org (Postfix) with ESMTPS id 0A25C1E1ACE
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:27 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-21f7f03d7c0so28828325ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194226; x=1739799026; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1pf9SNTQbR6dSoBCEAV6dPuN8Gz1/YecnHQoz2AJqpo=;
        b=SObivxbdB9+0a8rKA7gxhU2/IRTEBmOGWuZgexdqOBNFExMKYXe75PdYBxMb/4G+BF
         s0HkROhaF2olInvf5mSBsAuxvh5iirugvKovZqUXTQ/SpSNNdde3LlHNYedq9tkBx+td
         2PUziwSve87kZnpuZSOiEKmJu+xVRO/aYxzA+DGaALboRC2xnbeWeiuK6yBHqDfsyp2J
         0cIDsu/ynwJOnTvNEEbN+0GXPIkVrnA1lynzQkR8H78dn9fwm41ldDWz4mh9+1ShxW0b
         7mPUOxMm/jg1SXI2UwG28utoCd8GJy5pE6kbsrAdSjRGSzjvvRTE7++LaDBOqCjOi2Xy
         XhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194226; x=1739799026;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1pf9SNTQbR6dSoBCEAV6dPuN8Gz1/YecnHQoz2AJqpo=;
        b=CZBDzIlKzpMo1QctGUNDbMbvsIUOVAXcntsPaG6W4iyS37fp6H7B6hRxbhycC3161C
         rKpWF6IJe6LlWf52kWbzdulxh5jHV9cwab+yCEL8xSc2pb6hRXMTTQLIwAmrN7JhQjkl
         H7gEdRFarlV0MNvCnBvk/EAB6XJT2sabKwYBlWcTgocHQoSKWDP2Sw0WMGDboYrfOKIf
         wibrzygz6nCnDU2kO4eLITI9tdOTv5xCF1+tBgHA00PbHRhxTNu+AVOp1f8KEm/VquQR
         aWFSrFfCwq3/xecg5PetPmiN/l1uwVU2RckOluAUh7u49qvRmy47HCi/A3vmbOQsGkip
         Azdg==
X-Forwarded-Encrypted: i=1; AJvYcCWkP/Le7cyMokkYjW2Vk1+67lBHGhTIGqOVPE72wDk+xxzlBvzyGfeyUFpGzzlCUSyU4sQzsZqNpePkAWqleypH@lists.osmocom.org
X-Gm-Message-State: AOJu0YxxaCx4Vig2uvBxceMPKtfqst9N30u0Nb7fpJotwvirr9J4WYq5
	aCVXOmHtWhPcI2xFnvl4wYWx+be/FM/LH6pqkuqgNeRPPYmIgf3O
X-Gm-Gg: ASbGncu7hwWc4R1McNf8wH/B3rtF4jCvJJeE0YyHvFy5xdCIxnEH5Zm/3Qz2GqpnIC3
	BqFYkbMezUnHrWlY+AY3UdhqI1HtKtoH5ajkapVUCUP0kZUgmAF+1q5NbJVhaPWJ7dAAuPx9RQq
	3wc07+SiJkMDiw/alu0UWMo2Du+XCQ0VCu4QIh5ayuaG8T/Ih3iga35P3+Ha5O+Nhyyf6ZvIsnr
	NXCyPHtTB1YEs/qZO9xGe5dcCZeo1Nxf8YJFZRG2NUjniCUmdDWaSZ8v9+nOXalg3MTZ0sy5gfG
	KQEXmA==
X-Google-Smtp-Source: AGHT+IHnIbIec9duqjv7lrtmGReNVQPeBtoczKplB0CDd7UUW+fM90Yj1MwAFqvvYB9Zquhv6onO5g==
X-Received: by 2002:a17:903:240f:b0:216:7cde:523 with SMTP id d9443c01a7336-21f4e739f99mr242405235ad.32.1739194225944;
        Mon, 10 Feb 2025 05:30:25 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:30:25 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 01/11] rtnetlink: Lookup device in target netns when creating link
Date: Mon, 10 Feb 2025 21:29:52 +0800
Message-ID: <20250210133002.883422-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MVG4VRJNQXEPHU2F5ABZ5CTZAM5W65UZ
X-Message-ID-Hash: MVG4VRJNQXEPHU2F5ABZ5CTZAM5W65UZ
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:38 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/MVG4VRJNQXEPHU2F5ABZ5CTZAM5W65UZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When creating link, lookup for existing device in target net namespace
instead of current one.
For example, two links created by:

  # ip link add dummy1 type dummy
  # ip link add netns ns1 dummy1 type dummy

should have no conflict since they are in different namespaces.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
---
 net/core/rtnetlink.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index cb7fad8d1f95..3b3398283a8f 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3866,20 +3866,26 @@ static int __rtnl_newlink(struct sk_buff *skb, st=
ruct nlmsghdr *nlh,
 {
 	struct nlattr ** const tb =3D tbs->tb;
 	struct net *net =3D sock_net(skb->sk);
+	struct net *device_net;
 	struct net_device *dev;
 	struct ifinfomsg *ifm;
 	bool link_specified;
=20
+	/* When creating, lookup for existing device in target net namespace */
+	device_net =3D (nlh->nlmsg_flags & NLM_F_CREATE) &&
+		     (nlh->nlmsg_flags & NLM_F_EXCL) ?
+		     tgt_net : net;
+
 	ifm =3D nlmsg_data(nlh);
 	if (ifm->ifi_index > 0) {
 		link_specified =3D true;
-		dev =3D __dev_get_by_index(net, ifm->ifi_index);
+		dev =3D __dev_get_by_index(device_net, ifm->ifi_index);
 	} else if (ifm->ifi_index < 0) {
 		NL_SET_ERR_MSG(extack, "ifindex can't be negative");
 		return -EINVAL;
 	} else if (tb[IFLA_IFNAME] || tb[IFLA_ALT_IFNAME]) {
 		link_specified =3D true;
-		dev =3D rtnl_dev_get(net, tb);
+		dev =3D rtnl_dev_get(device_net, tb);
 	} else {
 		link_specified =3D false;
 		dev =3D NULL;
--=20
2.48.1

