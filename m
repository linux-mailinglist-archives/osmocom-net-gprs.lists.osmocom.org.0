Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF2B9FF149
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:37 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 230111B6936;
	Tue, 31 Dec 2024 18:40:37 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FU0AU_tthpKB; Tue, 31 Dec 2024 18:40:36 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 21CF41B681A;
	Tue, 31 Dec 2024 18:40:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B49FE38A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:24 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9BA621ADB4F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m4ju1X1vvNsO for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:10:24 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by mail.osmocom.org (Postfix) with ESMTPS id 4075F1ADB49
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:23 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-7273967f2f0so6970258b3a.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527422; x=1735132222; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bXH8tUP/h7NPxTwhkU8DrmHX10k3nPXxIbmClQOEn5A=;
        b=eqJancrzWZ7GovudYRDWULlSNje3BhTFdn4Ba0Po+jMoT5VUAgr5gKC/yzFNyjgIM+
         DOD7eug50bOeXmeWyjNslvIIOMlKyqNEBI4Sd75wylCkeLRzN5+xOVFgXKv7X7TckL8e
         rpuX4ajRHjAvXXCz80mJa3CXFIX/TaZKZyiT0YNMG+pwBsmpewCFu27JtHYpAiR+YaL1
         q7u18CcYW2xImnlmlmQ7rj+XnUcp6Ti7ZEoP1MyG3eSl0+5KL9kpPpRH0HkgmrINJ45c
         fKUgvETR1hEBTDCmh2xsDkbg1cy5pPYpi3KARyoK5FfAl7i78iT8Bx2EfKSmYm5pazsC
         v4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527422; x=1735132222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bXH8tUP/h7NPxTwhkU8DrmHX10k3nPXxIbmClQOEn5A=;
        b=F841YrI2lx98Wn6U/GYWNnOOjNvECSYq1XPFea6CZ4OcYVoXyZEjTP2wr5B0G+m15D
         IrKvxZUCBDi2fX15YBXnf0lleseviPckdunA2ifY6Vj5Vah8FaCmRGEeDJyP3Dpv5tii
         k4nQOREDKqR+Bk4/DvWzL5UpyeKJBvS1iGryopaUfYvbtq1PiB+25jOtkHbI6t8pfc5K
         MoOzNKVmPkcmO/unQ/ge0cRbtMC6VI9VQNYiKkFdfZwZlEG64VbT8dgETFNMoWB11rwt
         sLUBfF5ub0eZ1wiyBfaHkpO5EdovW9YWbZrWSvT7BLW70fdkde4yeGlom4GLiPXpm52b
         CWFg==
X-Forwarded-Encrypted: i=1; AJvYcCVMux3IZsj7fBb5eUty4qk4LUHHK5pXeqmWfRPnjsok4kPIHh4U7OeAtK26mU8AC4jYpJx9O6wG2UW6fO4U+cbI@lists.osmocom.org
X-Gm-Message-State: AOJu0YxGjM4KpdnglxZV3z9JdYijVqEFKafBkmXDB/DvaeXTgQk2IjaI
	/ykqId6aDg65SdRL9nnLO7STd0CB1uEjwIoLVgtwwEZLFVgcEzSD
X-Gm-Gg: ASbGncupozNo+bXnSXcCLsi8PrSTK7JohmrQjd51B9wZ7KjfKUNe2TCuLjUnroWIipS
	K7cLi9VsU7uHtjFOoF7V4+AzoclVtFcWQfBa1m/7WxL5QVzyu9FcxRvPG2yud3/OHhUcMTNX4L5
	WiZNMJyUG0oiXNn+ModSIU4lrieW8cHsVGnjUVzCH+EKjIUe13Om5JT4UDTwU2d7H5eP5z7j8Ht
	PTcSNnS0R4XiHdcG7rwHwOJggUzGuRdcvdzoj2He+6RY7Y=
X-Google-Smtp-Source: AGHT+IGLrMJpewCg9a6Mvczs3iBMMwjIWUW57/cgClFku2ou3JPxqZ6yK8d+Q9sS8i4XncDR+dfRig==
X-Received: by 2002:a05:6a20:12c6:b0:1e1:bee3:50ea with SMTP id adf61e73a8af0-1e5b47f94bcmr5116348637.11.1734527422239;
        Wed, 18 Dec 2024 05:10:22 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:10:21 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 07/11] net: xfrm: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 18 Dec 2024 21:09:05 +0800
Message-ID: <20241218130909.2173-8-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZGMMU7WB4PMS7WDAOL2OCOYULQKFL4TJ
X-Message-ID-Hash: ZGMMU7WB4PMS7WDAOL2OCOYULQKFL4TJ
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:17 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ZGMMU7WB4PMS7WDAOL2OCOYULQKFL4TJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

When link_net is set, use it as link netns instead of dev_net(). This
prepares for rtnetlink core to create device in target netns directly,
in which case the two namespaces may be different.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 net/xfrm/xfrm_interface_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/xfrm/xfrm_interface_core.c b/net/xfrm/xfrm_interface_cor=
e.c
index 77d50d4af4a1..d1198c63dd23 100644
--- a/net/xfrm/xfrm_interface_core.c
+++ b/net/xfrm/xfrm_interface_core.c
@@ -242,10 +242,9 @@ static void xfrmi_dev_free(struct net_device *dev)
 	gro_cells_destroy(&xi->gro_cells);
 }
=20
-static int xfrmi_create(struct net_device *dev)
+static int xfrmi_create(struct net *net, struct net_device *dev)
 {
 	struct xfrm_if *xi =3D netdev_priv(dev);
-	struct net *net =3D dev_net(dev);
 	struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
 	int err;
=20
@@ -819,11 +818,12 @@ static int xfrmi_newlink(struct rtnl_newlink_params=
 *params)
 	struct netlink_ext_ack *extack =3D params->extack;
 	struct net_device *dev =3D params->dev;
 	struct nlattr **data =3D params->data;
-	struct net *net =3D dev_net(dev);
 	struct xfrm_if_parms p =3D {};
 	struct xfrm_if *xi;
+	struct net *net;
 	int err;
=20
+	net =3D params->link_net ? : dev_net(dev);
 	xfrmi_netlink_parms(data, &p);
 	if (p.collect_md) {
 		struct xfrmi_net *xfrmn =3D net_generic(net, xfrmi_net_id);
@@ -852,7 +852,7 @@ static int xfrmi_newlink(struct rtnl_newlink_params *=
params)
 	xi->net =3D net;
 	xi->dev =3D dev;
=20
-	err =3D xfrmi_create(dev);
+	err =3D xfrmi_create(net, dev);
 	return err;
 }
=20
--=20
2.47.1

