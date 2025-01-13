Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id B8071A18899
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:05 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A08291D2EEF;
	Tue, 21 Jan 2025 23:58:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bOBhClHNcK2w; Tue, 21 Jan 2025 23:58:05 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E96591D2EE0;
	Tue, 21 Jan 2025 23:58:02 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 60A7A38A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:37:49 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 480BE1C352B
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:37:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id og_oT4hu5XB8 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:37:48 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by mail.osmocom.org (Postfix) with ESMTPS id 9A4101C3526
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:37:48 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2165cb60719so77851525ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779066; x=1737383866; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aStnhmnU+u9WzYJvS9wSRsKutCltWxiDBFKzpdLaN7A=;
        b=XmL0Ieg05NJa78XYNwvJKFgh5XSEiMnTF71oltRM6MEOoq8nhxLTDl9e6P4cU7wdET
         gatm6zSW60PlVt5vQi0TaUN1tXyvlDxCPLZQz8oJrdZBMr+UQuICUX80w3HIC+S+z+E7
         3dIdVvKO0WtlkDisRe5JAz7pH6uHw60Tt+mIGJD6y5J68Oj8lKfFr+OcPG2ml9o65aT+
         npQmruWaLz3ci9qg/GQkl8+Po6iAq7BmbKy6FaFcGRgDjXTpHN6Cp/HivGd4uCafpYsA
         xBXXf009iJXm8f5qBUPl1GlXkjcquBUwhgUpGikXzcURgAXq38GkYtKsOoKKNWaENcnc
         c4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779066; x=1737383866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aStnhmnU+u9WzYJvS9wSRsKutCltWxiDBFKzpdLaN7A=;
        b=XFCGmTJawujUb/08tTm3rxH+g5MnUTk8mFZe/WXwtjB0O9ukKut8fX0CwlPCWi30Pd
         Ik+dA+f1GZ4NDc6M1eieBOtHhqATdOaQtQWp9ygyOb6hE4Y/HjegZuHjI5gL5A6Oj6ZI
         MrzoE4dAVS/fLfRdn8OsCOtT9EmUAMhYFSQxJVMD6YunK7kAouFk8mZsg+c+ArCpn/rh
         N2Phg7s8B7LjkHKgbVse7GNjJqpU3zetA5iT50SyuIF83/+j+AJQ34p38YNSkqPHGOoV
         0DVqZ7xcC4ktao8yD2mBs+66iYQyiD3cZd9rvhxAYbj+TBIMM0GbrkgPOmOSxDlJZipa
         zxGA==
X-Forwarded-Encrypted: i=1; AJvYcCVAgTzkVl9ri7vxsPjW36xMBExrmecMjjdNAXX5FiOIfmBbnOzcKUaRY7f+2nVo4Fk5q5ejbwWSd34rU0qXbATD@lists.osmocom.org
X-Gm-Message-State: AOJu0YxU3nrH+DfDuZXmr2YAiSpis7zfOp6K9U0uqYO4OdeG5mmsfjud
	adWZ0o4YEPtV4Ljk/JsRsOZLEoXsSJrySQwO30P7o1slRp0rqixZ
X-Gm-Gg: ASbGncvuw8IIrzdQNoXR3mkJtPJ7PzgM50Ckdq9Apl56zKyD/hbpogm6DOSNfIftDQb
	FKC4Gfqlvp4hF/F3EzUpp2308FnWWBG7efYqbDWArWrENJM4z32ssXDib405j1NmstYl5/Pmdfb
	/9cqqb6ZI1siQM+fPJu+X9XGAqr9HMpUD0z+H2RZWgaoa5mW7FkktjUnlrcDxfAmW/L3mxz5Vf2
	22P/3xtm36KRAXKubKtDY74xNsytaQRW0ugaYNd1P8mKfA=
X-Google-Smtp-Source: AGHT+IEEIzRcAyOPsqmoPyg3LqUO10MpSinA1zy4f8+lVawQb15WuSETw63Trl8RPwnuvmvDM8k1Dw==
X-Received: by 2002:a17:902:e74e:b0:215:aee1:7e3e with SMTP id d9443c01a7336-21a83f36d48mr318259495ad.5.1736779066532;
        Mon, 13 Jan 2025 06:37:46 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:37:46 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 01/11] rtnetlink: Lookup device in target netns when creating link
Date: Mon, 13 Jan 2025 22:37:09 +0800
Message-ID: <20250113143719.7948-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TF66LSP6VZP4GNSNWXMHY32LB4464RWD
X-Message-ID-Hash: TF66LSP6VZP4GNSNWXMHY32LB4464RWD
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:57:53 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/TF66LSP6VZP4GNSNWXMHY32LB4464RWD/>
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
index 1f4d4b5570ab..ec98349b9620 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3861,20 +3861,26 @@ static int __rtnl_newlink(struct sk_buff *skb, st=
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

