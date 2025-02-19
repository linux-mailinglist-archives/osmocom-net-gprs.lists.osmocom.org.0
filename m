Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ABCA4349B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:21 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 04D7B1F3CD9;
	Tue, 25 Feb 2025 05:36:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sa8K0yK8iWGX; Tue, 25 Feb 2025 05:36:20 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A4B821F3C3C;
	Tue, 25 Feb 2025 05:36:15 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A8E0838A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:35 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 902BE1ED366
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9OToHFSMSqe for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:52:34 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by mail.osmocom.org (Postfix) with ESMTPS id D74D41ED361
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:34 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-220d398bea9so93019915ad.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969553; x=1740574353; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=14Wr2OB3TipJqOg2i3ltQmzAxlBlaCt+7msGZ+i4teQ=;
        b=YVvTwgdeG7+zM2t5aU7p2OIaaaYqcTsV+e0kwSYO88uavmAHvItontRah+uJrbt3to
         miwVp4IqugJyox7KhYGYtFugt/HEa0bjh5dfBIiP0QNwhxCSdFUmtvDeSx4aBX+sPWsh
         PuEmLxCRWNS2IF07bCtpM6W48lIIj7XBV8LQbefxDuvp17uwXjDh4sSfCMeR7NfVanqb
         H9VwfnuIqiVg35KoVkO/y9p3I1qTPtUDPHq4TONW3u9EvCJzu6d3ysQ7ygiWwMA4q9As
         R11C62DaNNbSARVFJCysmtkr+PuMBErQMK93/3WkyG6mb1beyEuXbTdsAu+hNzUF2mdg
         IquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969553; x=1740574353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14Wr2OB3TipJqOg2i3ltQmzAxlBlaCt+7msGZ+i4teQ=;
        b=wKQAa+WVjmifVXVfW+BDY89Z2VoQ+DiSaQe3ZmnVkbSxkKO71jlsOpSYVkRc6HcQR9
         +0rfTzocgVP3CL2DCrnglnN9kJuMQcvGdNyqXRN4OQIfi4CoqQ6gUJd+KRT1kMTTA167
         3Iz8PFAP7H1LwDCF0oOQoN9k5Qm6nu9ESnwAW9DfnE3kDvDXgoQErBWt/dwGbRB+pIRH
         Yd3E1RS0Jcel/UlJwkncewzwgvJHatRBiW3vCjQEl2ubkunJwiVFxPQh3NakptR8fdTY
         mzKab3V7tPMcSBFRs2iy3phoWOozQgXqgPg96bcN8VRiuMtgBHTGSk6WDmzMfebUYyG8
         ogIg==
X-Forwarded-Encrypted: i=1; AJvYcCX6NvyeoXPNv4KoWl9dNGaV7fmvc71hBUj04Cyyv/dThDyomj15kD1ZsFKXUQykKcQk/AMMJpfPAl4NXg6TP1Si@lists.osmocom.org
X-Gm-Message-State: AOJu0Yz1xNZLw2VX0yBnn421Iy8y8KAiJ/Pdmbj+P4YqKf2YWtkAz/vn
	aaidzA4q9XxRHxpRzQtwBHgkaV0YwmtHi1hf0ARoAKmSNXodXAUK
X-Gm-Gg: ASbGncvCUpWoF4IT4q+TsMqWJmKAgU0PGjeqrjO05Mguo7UqSVDzH2AWOBQTRBLy3oM
	r8B7jGEh5VQN/zsg9Zl3U6GBpuS23DMmALV7juFavE9QtlSgFkWx8Xgmt+btQnBG9Ai6mPulTXz
	mmnMi06ZYauI8H88gg4Ow4VWGHfbOq6WQam5BWd/bBDDvX4cEhfp28ntQti+7qfey9AaaagFE5k
	6QU78ElDeQF8NmFXIXYEoKxBjBGoqBejUoJmJ/ueutyLL3wO5mG+UcOxwnFSBvRxaZFA+NVQSkx
	fkMF9w==
X-Google-Smtp-Source: AGHT+IE1TMZXqzhrHhhVSaIMtrPumBVmrpPdtKnId51KbxVQ9NXXxJP9rSJ1kBfk/uhAUxck4sNSxA==
X-Received: by 2002:a17:903:1a2d:b0:220:c813:dfd1 with SMTP id d9443c01a7336-221040bd77bmr298031085ad.36.1739969552787;
        Wed, 19 Feb 2025 04:52:32 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:52:32 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 11/13] rtnetlink: Create link directly in target net namespace
Date: Wed, 19 Feb 2025 20:50:37 +0800
Message-ID: <20250219125039.18024-12-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DEHYD6UYAICHC2IDSFZWD3ACY2OEVGZO
X-Message-ID-Hash: DEHYD6UYAICHC2IDSFZWD3ACY2OEVGZO
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/DEHYD6UYAICHC2IDSFZWD3ACY2OEVGZO/>
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
index e980481bdd28..b52e610e157e 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3789,8 +3789,8 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
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
@@ -3810,11 +3810,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
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

