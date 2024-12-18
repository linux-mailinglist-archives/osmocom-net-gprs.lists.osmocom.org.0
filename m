Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3779FF143
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:20 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 680F81B6808;
	Tue, 31 Dec 2024 18:40:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjhRyOguie-o; Tue, 31 Dec 2024 18:40:20 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A77D01B6772;
	Tue, 31 Dec 2024 18:40:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0D88838A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:36 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E71BD1ADA2F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qNYFV5RGTPT for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:09:35 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by mail.osmocom.org (Postfix) with ESMTPS id 3D8E21ADA2A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:34 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2ee8aa26415so5818353a91.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527373; x=1735132173; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqBeWHkwlk4K5tQfUbZueoC1cX5zOkU9dpB02VEAE+k=;
        b=arHGLrDFb+1IJB976dtfBINQsX7JVKK1VHKNbtAjZYOPU9H5PAfMBG0LJxLfOFlCS9
         tYYctgfaKNeHtRRmK6TuQZE76e3Q6fWcHPsuPn6go8xfcooVUiDDR7GimCk/gwt7dMej
         C3bw9nTJ8ey5OZCTAGdIRZ/d3CbySC7NojTYjbgt3gbF7XQJBITDkKqmoJsEPBOQEsGb
         8aBt9dKeumwUeLNxwkcj9psuc0Cl8SEw1IfD4jHBT01AhXTjCc5PR9DFROFi4SW2c937
         5OkRtIThLqfuTXzOxl9LYOg/I8KgCITObIZjUal/oNsYPHTD6atHsguakRVGMsFNB6kk
         1frQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527373; x=1735132173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rqBeWHkwlk4K5tQfUbZueoC1cX5zOkU9dpB02VEAE+k=;
        b=tWPVlr3YJa+NaDlMi6bD87YGthFtj8IZS17kXUjGUxvaqvJVXqj9sJ3rls68Nsp7G0
         jVpyooHIGQ444b/nhBJCr5TdX4j2Eq8W/SO7YDl9wKBcqbkkgzZ7AUIpdVpknqYcBgzw
         J04cf2kNN2flAYEQXfL2xE4uew6ZssZuVRTy3v+VKL8WpN/To/EL0jipMw7r6DO08UyA
         yHB/Z9yoew1lt6kKYLh8BExxeD6e+UlSmOzyCMkzuzuezE8Gtbkqec3ZwocC3a4/QAvO
         hTw9uZou3xjk64JHDarFeKd6PqjKKARjs1RCaFB9bvIEGnlaRM1zH5x4UQJqVf57SgL6
         RfGQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1i4uPTuAat2/E1c7sPUAAzmjAY9gJe2GtdyR9H7TaPkr6+nVmwFvyZ1/ZyaN5wvlNeAudCghxk2vnxgUiK8nh@lists.osmocom.org
X-Gm-Message-State: AOJu0YxfXkFuddMfTNwzL4UA5rjwdvszkz7+rWnT2Z30gaFmLDa0f/dd
	oFTL2aSel7IB9Ew7e+Ub7PYaoEsIhT3W1AqgM9+548Bam9ao8qfk
X-Gm-Gg: ASbGncs04Qhbdz69M9pxgeuqaGp1xEaoI8oIp08FfUaRz795CiaX6iU5159Lq6LxZeO
	Glf8B9EoH80+DbT1KT2+bI80jiW1mepQO+EnJcwIjCpGZKmuHgKXSwEz0ZqqYQ7xutWmlUn3khi
	T2BSVx7s/6HRUwb37l3EQZV/GJAyYpYgWx/agOSwQMN9YhEHxVPCNrKf2NT+H+NdmJJD3By7wSR
	0fSfFnSsBs/S0rXkp/4Dri8jXdCM9O8+++jbGFWw5PA1ZE=
X-Google-Smtp-Source: AGHT+IGwupxRC65MgCyutia2fH86BtEscvZ3hC19otgxhx9O+M/gNgTyzVuSwrO7sHgcHk/UbitTJA==
X-Received: by 2002:a17:90b:5490:b0:2ee:48bf:7dc9 with SMTP id 98e67ed59e1d1-2f2e91f1112mr4682540a91.15.1734527372952;
        Wed, 18 Dec 2024 05:09:32 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:09:32 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 01/11] rtnetlink: Lookup device in target netns when creating link
Date: Wed, 18 Dec 2024 21:08:59 +0800
Message-ID: <20241218130909.2173-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5DDC2DTTBWXBSEKMXMH5CXXIMOK4O5JU
X-Message-ID-Hash: 5DDC2DTTBWXBSEKMXMH5CXXIMOK4O5JU
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:12 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/5DDC2DTTBWXBSEKMXMH5CXXIMOK4O5JU/>
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
index d9e363d9fa31..6a2fa030c8e0 100644
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

