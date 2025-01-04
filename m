Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BCDA05DE9
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:24 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A63AF1BD0F3;
	Wed,  8 Jan 2025 14:04:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4UJcNG0QkCMt; Wed,  8 Jan 2025 14:04:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 96B621BD063;
	Wed,  8 Jan 2025 14:04:18 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6275338A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 495BD1B9764
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wTv0QTQiJGzb for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:59:00 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by mail.osmocom.org (Postfix) with ESMTPS id 8E3481B975F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:00 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2166022c5caso161626065ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995539; x=1736600339; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7lhW/WxI9EK3nLn5yDY0MQG09nRFtNebbOyrqmZTug=;
        b=dooFo30E3hhCHS3vTqdWzCCYSlQGehuFQimRkiIElQmLBjQBJM0ZjG5jpxQ+SLxzGN
         J5DpfuPSNuVl3OtaNwckYlrrQZHX21y7c0Wadrw04diag5oZJDlppTU9pEUustBsTMIe
         zq16fgH55ZxMj8NeGcXGrwcJ7QtLkC/jpwLs5L96dr6jW9u+mX7MkcIW+x6/itgij49T
         ob5yNDOXmILFCh1AOGNC8nrbXdS7M24LXZLvqtygcqX5nLUliaNzIcNl5PPSpuAqjlgD
         n8wHAvdFPkSp+f8VkB0Hq4tYSDZZhszhN7o00rFQ7GlbPP6hCkAlsyM/bD19+W5en7w4
         RmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995539; x=1736600339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t7lhW/WxI9EK3nLn5yDY0MQG09nRFtNebbOyrqmZTug=;
        b=kh1cWMaF27soMkAyWFG7CEbtVweB3u7WxmryOflG1G5ppziySV2+JP09Jw6t4EyBg+
         +4nLvkdVDeS0mZMBU+lsDD6fVRcYzdlb1SCBlheNNwb+upFF8WR3sYG7+8n4DUR5ivVu
         r1n55zRm+Y/SBIu9LYpWynjbEEkTdRFPDiTL7A2ojMF/JYu8SbvaTq4GqmU+XmOn1g9q
         2Kvh/hv55ZX40TXgK9x3vEwkkPLBxyE6ERwXWRNVnnAFZWZFl8PKc33JzzZIYtZtRudJ
         fRa2JYUwozZpC/080csq61WyLZIwvHyRTQ5d90YVb8RVJHw5IleMs/mDn/d4lKzuAxCn
         lbqw==
X-Forwarded-Encrypted: i=1; AJvYcCXKWtgrEBrLTZX5TEzU3EviysTdr+49Ul3bvag6LQz1ZR244NKtAQzmmH70M871qKPjXbrHlOImNyoH7nG9x/K4@lists.osmocom.org
X-Gm-Message-State: AOJu0YzDZaHKz9Q47yg0HBU2BvNVaVCx//4YbnCz4HwBvt+58907MrIv
	GQ9O7+US1saHQ04GoLFbrvUnSsdtQbuovi2j8Ve6zA9kf1+IT9pA
X-Gm-Gg: ASbGncsSjFeWlUicShB+DvikIsyeW3OrQSuUzj1yDNTwr8649vcSc2GTuuzw17XYIua
	+k7WkKnSXH6yiffU3Klx7hTwB/jAPTOzjcLZ6UZQyYSQ78P0/GmSUHG/md7Q/f0TsPfR1E1hyLd
	uJea44Id8IvqJ6sl1t78tbx48Ks7qWHXCCe9r/qTm1cQXYNZYldcje9uUDBmJ9gBu+ddeURjOUv
	ubiVylTC/1V6bicCyljaGpAChJK/Y9adTMgykGF2Bt0CHU=
X-Google-Smtp-Source: AGHT+IHLCiFk9BrspEkmn14rTTpjbLwBW8SdPWZM+0IkwauKRrd0EY+n9DzEaoNgd6USL3r4X9FuKw==
X-Received: by 2002:a05:6a21:99a4:b0:1e0:e027:2eaf with SMTP id adf61e73a8af0-1e5e048adf7mr83019375637.19.1735995539121;
        Sat, 04 Jan 2025 04:58:59 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:58:58 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 09/11] rtnetlink: Create link directly in target net namespace
Date: Sat,  4 Jan 2025 20:57:30 +0800
Message-ID: <20250104125732.17335-10-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SUILLEOMISOF6XYPWW66TPAJCJMGRNMK
X-Message-ID-Hash: SUILLEOMISOF6XYPWW66TPAJCJMGRNMK
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:01 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/SUILLEOMISOF6XYPWW66TPAJCJMGRNMK/>
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
index a2246bbaf2bc..e8126007eb00 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -3776,8 +3776,8 @@ static int rtnl_newlink_create(struct sk_buff *skb,=
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
@@ -3798,11 +3798,6 @@ static int rtnl_newlink_create(struct sk_buff *skb=
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
2.47.1

