Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BE69FF13B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:03 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 828021B66B1;
	Tue, 31 Dec 2024 18:40:03 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNbkvc8mNKpZ; Tue, 31 Dec 2024 18:40:03 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 30F8D1B6698;
	Tue, 31 Dec 2024 18:40:01 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C803338A77A2
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:03:49 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AE3201A28EE
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:03:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EUt9FevMA_ea for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  9 Dec 2024 14:03:49 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by mail.osmocom.org (Postfix) with ESMTPS id 055971A28E9
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:03:48 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-21649a7bcdcso10477445ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 09 Dec 2024 06:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733753027; x=1734357827; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gu2pXduYtokx49vUkdKLIncKvOPJKtJoZQ/PcO8iW+o=;
        b=PxfuF5vnpC/5ZOOSh8TUaqkz4ru5xdPndaeV08o8zN/+OqQd19gkCOnUe2g5yFyYbA
         MrVo4r4ttebq4SOi5rNkhX56v5pzqXJ4gIj5yEqpnJOU35wKdVIYtOQtbcqOMkQgZt5T
         LF41VDg3nymBCXuIv3d1Z0b2HbFGWBxt1IBVCQlHggRmphm4LheexKpt/OA37R7WFmm3
         PwrD+GYfgXmxDP8BymYB+tIJvKbnwNWp2xG+5R5rM7faRpKfoj2cwTg0JphCwF5fb7Ji
         7EPiA0S015es9smpuhBENRBEXXD58B2yiEiUgrnO1l7ICsDuEKl1ZEcNEIDFnY6GrDcw
         LX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733753027; x=1734357827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gu2pXduYtokx49vUkdKLIncKvOPJKtJoZQ/PcO8iW+o=;
        b=c3gYmjoLORp3qBhpWwjxwxa58wBcHeFWr1xh1hGXHGqPv0fKYoP1YE2ycD1Tx4G8y4
         PkMyoOyk4e8WlbYdNMtuc1C4x5ahmsBBEkJ95yqIpUJkmOgx2QCd1a72rY+3j0MWC4gx
         tP7mV1njdzBoE4UZr8ppj10iUrGPGE+NJqB73QbyNTpIu4OCv3fZXPVoKFFWGUfRiCTV
         3M3NdskfKZ4A1SNaMH9iwPwKOeEEg9csQXOv+X5Xi2BxEHpfub2Bo2Cs6uINrTrXUiFj
         bMv1U/O7+5M9PevZMh787MlECBvOcHSg9jMwR0wBm/m63gYRFmJu3SVJefXkXCy+4EL/
         Fqkg==
X-Forwarded-Encrypted: i=1; AJvYcCWq/eMvOfwNrLl+s2cI1a3aqi2yTSHVJ9/uTYmmJTpxxIVD4L25h0p1mXhVwpt1hliufJJ6fN16NcFRq80/Ymh8@lists.osmocom.org
X-Gm-Message-State: AOJu0YzXzq7Cjfo6O4Gem6jlbFAfbJcGKwDWyG0A6BTB5sREH46faNwq
	AS99KllDhHbPRWNNczOduDL3b9kbdUX4yoEUufCoPMMAiqfXgBU6
X-Gm-Gg: ASbGncs9h7slS947OS9ajE3+o8ilLApFZPyd5Vj+mflSL5psGwItWliA8nN9EhxQfWu
	Cpuhi1PV/6ywrNQkrMpXXV0q0i65E9+PlsV65G/gqFlgxrt8JZ61ZOq0jRyGA9rL8xOWRMxmMKf
	Rsz62g0+y3qdv1p7XmDDURgZzPfd0NurqZZhryzK7Ly/ZS0oozsFf2ihNQYc5EAk/GP8GT/r+2a
	ylsIxvP01GnSyasp9chUj0pc79pfVR7UAmBBRhfuLfbE4w=
X-Google-Smtp-Source: AGHT+IFvuzKQIZf1qkxZ4+Ci/Eeds3C/nB8ZqihF0Bnr/4C7RYL2k3LJsI5chnoI4Z2JG+UfbiRHQQ==
X-Received: by 2002:a17:902:e5c5:b0:216:393b:23d4 with SMTP id d9443c01a7336-21669f993b4mr7567455ad.11.1733753026559;
        Mon, 09 Dec 2024 06:03:46 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216221db645sm49605645ad.46.2024.12.09.06.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 06:03:45 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v5 2/5] rtnetlink: Lookup device in target netns when creating link
Date: Mon,  9 Dec 2024 22:01:48 +0800
Message-ID: <20241209140151.231257-3-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241209140151.231257-1-shaw.leon@gmail.com>
References: <20241209140151.231257-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4TEJEDMORMFIIEGT4FLDSNJBWWS2AZLE
X-Message-ID-Hash: 4TEJEDMORMFIIEGT4FLDSNJBWWS2AZLE
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:39:49 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4TEJEDMORMFIIEGT4FLDSNJBWWS2AZLE/>
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
---
 net/core/rtnetlink.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index ab5f201bf0ab..7855f81c917b 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3851,20 +3851,26 @@ static int __rtnl_newlink(struct sk_buff *skb, st=
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
2.47.1

