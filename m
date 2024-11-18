Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id D43CC9D9458
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 26 Nov 2024 10:26:50 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id BD134191B8F;
	Tue, 26 Nov 2024 09:26:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d021OeOar7CH; Tue, 26 Nov 2024 09:26:50 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0D4F6191B72;
	Tue, 26 Nov 2024 09:26:48 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 685E838A1A94
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:33 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4F6DA182446
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xqyLOtg0XlkP for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 18 Nov 2024 14:33:32 +0000 (UTC)
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by mail.osmocom.org (Postfix) with ESMTPS id 8F473182441
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:31 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2ea8b039ddcso522513a91.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 06:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731940410; x=1732545210; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XYvUg1T5qt/avqeB8QMtp6GEfshi9DuIrKXfHc0mOQw=;
        b=eGyC+yihCoD72LUGE9DQTn5lN1RYLgjqLZSd1lk9xiASeTBVvzW9NvJyER0B2G5NhN
         xfgfuzZMzJbkAPSlt1zZlvCJHpQr5h4CPmIvWviQOid8Z3TdjXMWvvmaLHsR8EueATvc
         0zrL6uyD6o1kBe81pruQGLpxfKD4bRTxGLWZq2tJhCEvLei8S7fNHh2kWirt1PwukvlZ
         BT+mPlZqUfGJSwRorf/lFBN4pULDqowaZ2H1suuA42nEYcOz92LjtwS09c4yR6o6TjNx
         DOeStL1heGFGKnMRTgQIbrwYCzierluYsuuk98gXv+TIHg3da2JUq1dEYODtvnCnz5TI
         m5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731940410; x=1732545210;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XYvUg1T5qt/avqeB8QMtp6GEfshi9DuIrKXfHc0mOQw=;
        b=mZpcG76gG01i0/+OyottWCpnqX1M2JrEACpxPUR+/ieDcxiMW8P5pof/pKvTgWMqZC
         PUHZzLlgEx8gMyjwsWItCYLjPQ1em2PsOVSkVCC8k2/XAcrqtQA7u83hxqQqzLUuUpfi
         hP+4tSNOqEge6blYW8gtVSyOpJVa1l2EsRBRNzwgQFRtdHT74X18Q5t636tFzypQmX1r
         dXm1HMxVHIenx50yIfwn0jRRZsHGgD3pw9Q2SGV7FSnLnz1T2AEqpod3sKVLJGLouyTa
         sekitQ0/cYI2RdEsyHRIBBpaXoCNJiyVOS+scY2v8dQ2YjHX9/UfE05WQGqmktHgp3Tp
         mU6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVRl374GmZMTYfyxkFuTTC3PikFmM0SuV6ErdcANlgCNwN2aT1Z66P3/8XMW1j2AjQagZVkjIM9BPWPEM7rgSB7@lists.osmocom.org
X-Gm-Message-State: AOJu0YzetwxC3Z1Ip3F2FPtQj76P2hoyMXF8mWihWU5St5LR+f6kOG6J
	txo/03F3c/kMDrh7tn141KRcTVsIp++ugecn05k09zpoNXIcR0Fc
X-Google-Smtp-Source: AGHT+IHPKnavfiiQCNCjr1NezmwMnBacyheV8zyl63QTPg6m3L868R+a4UJrSv5jLV5RsxhfHcRfpA==
X-Received: by 2002:a17:90b:2687:b0:2ea:3f34:f1a0 with SMTP id 98e67ed59e1d1-2ea3f34f38amr9406817a91.30.1731940410205;
        Mon, 18 Nov 2024 06:33:30 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ea81b0e2fasm1616926a91.52.2024.11.18.06.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:33:29 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v4 2/5] rtnetlink: Lookup device in target netns when creating link
Date: Mon, 18 Nov 2024 22:32:41 +0800
Message-ID: <20241118143244.1773-3-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241118143244.1773-1-shaw.leon@gmail.com>
References: <20241118143244.1773-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GXKQA47427GJURTOJJAVLJJDRWHCPAAI
X-Message-ID-Hash: GXKQA47427GJURTOJJAVLJJDRWHCPAAI
X-Mailman-Approved-At: Tue, 26 Nov 2024 09:26:34 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GXKQA47427GJURTOJJAVLJJDRWHCPAAI/>
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
index dd142f444659..bc9d0ecd3a1e 100644
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

