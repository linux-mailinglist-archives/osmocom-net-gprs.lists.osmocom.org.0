Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8DF9D10A5
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:18 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E33B2181FA8;
	Mon, 18 Nov 2024 12:38:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1l2mxUbOb7hi; Mon, 18 Nov 2024 12:38:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 57E01181F97;
	Mon, 18 Nov 2024 12:38:17 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 85A3138A18D0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:04 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6005317B2F8
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:04 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PHl9aGpWUAnr for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 13 Nov 2024 12:58:03 +0000 (UTC)
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
	by mail.osmocom.org (Postfix) with ESMTPS id A198117B2F3
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:02 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2e91403950dso5270217a91.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 04:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731502681; x=1732107481; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r30qTLZF8ANhBKyxqq0VyimbMaQgwK/VTM3BE1AEUlA=;
        b=SpeocN7Eg4iUh8fgboZ6hsOygHFJdiZsz1YSrhItAf3CCaqUxZhJLeQ4OIDtZluRuD
         P/NTplGnBdRENncPj9nJg5p0JYWF9HDL5ikfZTjE6eOdZucJHLt1Hf6FYZayaOyHF/N1
         hmZofpHIO2+DvDi63dRunhgLaZhIts4VMy4cfOrhwEzV3fXny2tlCNl4fmd8ORIXXPV2
         ZBM53tuFlXL6Y3vjyuCBl/OronQ/bZvXntcsjYyC4v6nQJeSE3V1DB39IoBTugVeNJv3
         R/8ILXD4B4jCoXd1oFQVOdc3/dZ606GGEL5JB3GNdxHUxBdjKWAhvFCQ5OOLipdsFg9M
         hvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731502681; x=1732107481;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r30qTLZF8ANhBKyxqq0VyimbMaQgwK/VTM3BE1AEUlA=;
        b=CqBRyaLgl363n1ftHYVRm2OxZSypn2xf6AXl6ZCyTYWQWXOK2Eu2++wtnuSaVVDiO/
         A3vX9WMLN225zPg0ygoFSAmexR5m9Tv1ZmF6/2q0hR+e40Er8WzsT1tBa1hqQmVS+9A+
         b78oOF3hVP2sObt4hdHdle74UbdmInHW5Ki+6KnqL5x+kJ8DbJqnjS3en2+MmVORJMrp
         u++lT8JO3c0Qp4VfPpqcCPQJcp/NGIpu1SlyGRFxrgpduV3GhkfgdBn/R5I+IdwNcP7H
         R57UXByZtYCXiQFiThQMWj7SsY0vJg+oEhtK1FP8OSOPkOa3pmhh8xvKs++83C3gTUoQ
         nFGA==
X-Forwarded-Encrypted: i=1; AJvYcCXpgtOL0EVW4ynZJ4ZZn7W2LSZNDhjS5SGwG/GP0BfwdcMPtY+CWfA0ene5sF64Ge5ofYlrKD27qnw+KUDUiNU0@lists.osmocom.org
X-Gm-Message-State: AOJu0YxTy6jheMdyh+N79otJ26Ll39R34qbkl15ZC3qvlB7NRcLPlNqk
	d/isG2d3FYAUz4Ik/I052VhyOlFFaI6PDDaGu3x1kh6wxPX1YrL5
X-Google-Smtp-Source: AGHT+IGHbWu6TztKh6tN8Sp6Cv2pF+0T1uVgEKu2tiVbycxbLB+U4mJhCEtmHq5ke3dUIYABcOdsZA==
X-Received: by 2002:a17:90b:3907:b0:2c9:df1c:4a58 with SMTP id 98e67ed59e1d1-2e9b177fdcdmr24476632a91.23.1731502681391;
        Wed, 13 Nov 2024 04:58:01 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f8ed0esm1398632a91.40.2024.11.13.04.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 04:58:00 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v3 3/6] rtnetlink: Lookup device in target netns when creating link
Date: Wed, 13 Nov 2024 20:57:12 +0800
Message-ID: <20241113125715.150201-4-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113125715.150201-1-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2WFKQOVLS4IIX3VWAPDMCZWC4JGA7R6U
X-Message-ID-Hash: 2WFKQOVLS4IIX3VWAPDMCZWC4JGA7R6U
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2WFKQOVLS4IIX3VWAPDMCZWC4JGA7R6U/>
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
index 327fa4957929..f573ace60234 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3846,20 +3846,26 @@ static int __rtnl_newlink(struct sk_buff *skb, st=
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
2.47.0

