Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E8FA43491
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:04 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3EE7D1F3B4B;
	Tue, 25 Feb 2025 05:36:04 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Vczvq1JuAZ4; Tue, 25 Feb 2025 05:36:03 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C36141F3B30;
	Tue, 25 Feb 2025 05:36:00 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0DA3338A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:06 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EA43A1ED1AC
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ioxTz8wVW9ff for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:51:05 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by mail.osmocom.org (Postfix) with ESMTPS id 3C9F91ED1A7
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:51:04 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-220d132f16dso96690235ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969463; x=1740574263; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUZVG0cQpX36tsrgh/ArNurrF9hV9SVnXTfgFQUKvso=;
        b=hUMxg+VANqal8D0mQQdJT4mkPnqDs/9yO5YIHUZ7486CoV+RA7sOwpSHW0BRMb4Ss5
         Dfp9KmFHIE8/sV85/FIAQofP+UP3btUdKO3w6d2QBx3eW5AUuX7kZGu86onDAL2VaZN9
         ysxX+XRr0Gy5ADocNi9hpPdRX/CB7DGE9Ad1x3O+6xfNIVUBY2Vj4+QWTbRZlDl0z02d
         hSLyndmk+kyDHw7pka7MLiZbivsR72dUN80mAogsDuHXAv+J9kEUjx+VvOCJmJm1anqQ
         pD+MiCbMXMe14PHQivrjEiss34Obg2UEaQt/X5tIlwXj7S2UDesdJ/DZ3JdX3GRn/40z
         HeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969463; x=1740574263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUZVG0cQpX36tsrgh/ArNurrF9hV9SVnXTfgFQUKvso=;
        b=n0Qm0so7i9hN7GNYvS6ijeoOqWDjrr93tnmh1XKzgkrOu/Ofwrs9/Aea4xImznFijN
         KRu2xRcTVVyvdGj3R/PsHMnK1K0Rc5jhzSXP7kFkQ3bdsY2a/0XZQY4mpWnFckNh8lM5
         tpsm9Z33zaDlkB5AHoOJnnJgGuxTgUcb16WGxrv43tN7C2zXKNM2gGb0kSiv5Ba31AB7
         ONNLO7wmcFO3/A4EO2zQkyu+PnbN/jZYJgmpYUULvVHxO6vtFbMZ6nMz1W6Ac2G9Gac7
         o9YNyjpCe3qma+v26SQpwMtIFmocDzCVTJr8/2PYX5W5cVLUS+fjh0zOe9IQ3q0KOHEP
         ccMg==
X-Forwarded-Encrypted: i=1; AJvYcCVVa4fOEsQho8GuncI2Jond3BnM7+1sLo6QjhZVk8dXObfhMjsdHBnNjakYBSzlW7MShBQUANfsbi9TVjO8rinK@lists.osmocom.org
X-Gm-Message-State: AOJu0YyXwai3QmRv7mBNmpeKYyQO+1ZHWg3NEPAXJGn3s+vkjbc3Nlhb
	p8R0iLAn0sAT9g0Vh0gvFCOAwJYhPmg5AExhv8qITk4f+YHeGJTo
X-Gm-Gg: ASbGncsKcSsOTzgDQLnWrXzwJXK3w/ebmTIr5rRoCjFMTmZqleDHEXsyWLMefPGTMFq
	2y2abkOt5swhi06jrp1AgzeWIuKRySJ5ZxQ+Cifl4YCRNkmZ2jbt2B2aOvcrPIHa+jwD1M/OnRp
	HTu2/f8KQA/7QKYmgXNEyFTs27KrAWLZroxnQS+5tQkXlrqS365PWtL+ReTH+jIYgVAKUNnFFMH
	hn/cDdztmbxX4+CLIeQSaJV0UszjWQx00sK+EMafffB/a+l55b9SmebHU4BmDYMs3Zkgg21FBBs
	b45bRg==
X-Google-Smtp-Source: AGHT+IGj+mvdG9uQ6taCs0F1tgau+Kd1RL6XlmFtErS9OY17fyECZArX3uy2OYbhVupliE/g/xkWBw==
X-Received: by 2002:a17:902:d2c6:b0:220:be86:a42d with SMTP id d9443c01a7336-22170777df8mr53655825ad.21.1739969462888;
        Wed, 19 Feb 2025 04:51:02 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:51:02 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 01/13] rtnetlink: Lookup device in target netns when creating link
Date: Wed, 19 Feb 2025 20:50:27 +0800
Message-ID: <20250219125039.18024-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GLXZ4PMB5TXDMBTYDSRJ2QMQG4UUUDXQ
X-Message-ID-Hash: GLXZ4PMB5TXDMBTYDSRJ2QMQG4UUUDXQ
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GLXZ4PMB5TXDMBTYDSRJ2QMQG4UUUDXQ/>
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
index abe1a461ea67..0f3e2c6021de 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3867,20 +3867,26 @@ static int __rtnl_newlink(struct sk_buff *skb, st=
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

