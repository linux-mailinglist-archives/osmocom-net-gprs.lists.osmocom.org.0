Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EEE9FF146
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:29 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 15BEA1B689B;
	Tue, 31 Dec 2024 18:40:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mfz3AzxQJZWh; Tue, 31 Dec 2024 18:40:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 89BEE1B67CA;
	Tue, 31 Dec 2024 18:40:17 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5A9BB38A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:00 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 422931ADAB0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TWY4gXGMkSg5 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:09:59 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by mail.osmocom.org (Postfix) with ESMTPS id 95E881ADAAB
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:59 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-725dbdf380aso5220846b3a.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527398; x=1735132198; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWtx/GpPr8Y7UYus5aPINKHxwSB0EzMFBw6o16b+Q3k=;
        b=lwZmUcZGvQhmneYj0+iXWsVzlNcE300V8Hy35wjQNhdxufgQQMAcsf0sW+1E29DozD
         Xn/+adZzMGOiBQhd7fNvT+n3wKR385QppGWqIZFu+q7subwnQGDrLicXR3KLO8lzb6cc
         9OXYPIEHk13SIsCNDICZGzUhRuININOloHRng9DIgW44uEdsfzpN7WP4u5lWPHYHz/aq
         Nl4TcBlUBaLRG4wqw9zVRfX3ABIRCegLEuLWq4uL3r66KEPfcHTgdwek2THtWSRu+Xk3
         RJOcxT9SgFPJFQqHy9gCyalOvNoiLpyQFIWKJ/JtTGt59WKq3gADeN0UCbG1BR8hHtJA
         Sbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527398; x=1735132198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWtx/GpPr8Y7UYus5aPINKHxwSB0EzMFBw6o16b+Q3k=;
        b=xHnB/+puO5p1uLrg/Lcv23RIf/cC80Q4hHXUDWWLBRi7Ml4gPvd1NizKSrr/cCrrrr
         yIflsVBCoTZuLctiQAkcKVigmOGSNFhilKRmzdrkJspphkQ2T4XbQsk4VD0ZizXcaCTu
         9B7BlDK0I5mRx/j0r4RdP/embbiJu9SD92dbAhW/acCoSE3kLsoQkxEX1M5QDvXn61Pb
         2oUkVbcyF1YXJCI9fGIkgMU2MKI4/EMT+Pwlu3twY/Gt8kD0Xd3fIs29YtmF969rI/na
         3fcevtLoBAVtpMi3TQznMoL2sBR99xhMMLgjwyr0V4dlqKLnUreNf9rvLVX3UvEJQUz0
         IYwA==
X-Forwarded-Encrypted: i=1; AJvYcCXCSpiQ7IaUtIgqpwxhk9akWhTEViDOqwRBoihxI6cgIMEVb0C6TDeNCe4yiaRwCPbNQQ1YtZtWGqzZhuu7sLTM@lists.osmocom.org
X-Gm-Message-State: AOJu0YxLtxUOJGoEjrTI0cKIaApFPJqosPeG46hHVbcAIlIZnVBm+k/3
	2TwFoYcaxHv+wJ9Z/4E52r10QYYurzucRkIKR7npBGDFTynyH874
X-Gm-Gg: ASbGncucWbt1DjB4S5lvFaZwlgygDeoFdGQ5pmV2WQffHy1guxRr6RrauZOI2uhzEnN
	qBvH/zVCzFbwlECEAjg8Un7lS2t7c2kxIQH4mkHSYgl6u4URR3Op77KP6UW5iNqeCCcBLW6pB4Z
	cCSKR7GzQMjKUh54EFO4zu/QHhtyMgA0yuRiko/f/RIZzL3t8hKT/CNRGClyrCoEinAyKtkRwi8
	h53PHPSnbm+LcV1TYHih0PUZN6UtmcKNBU5+Ax7DjNpp3s=
X-Google-Smtp-Source: AGHT+IGmYU6ujKxLBy1JGYsxY/MwVi8oxkRDUmwYNBJP1y7XmPRqmJNLVIgjjMfYAOzzfAymm/3esA==
X-Received: by 2002:a05:6a00:35c3:b0:71e:1722:d019 with SMTP id d2e1a72fcca58-72a8d2f0b92mr4132701b3a.22.1734527397729;
        Wed, 18 Dec 2024 05:09:57 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:09:57 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 04/11] ieee802154: 6lowpan: Use link netns in newlink() of rtnl_link_ops
Date: Wed, 18 Dec 2024 21:09:02 +0800
Message-ID: <20241218130909.2173-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YSKOWHWC5FAJ42JUO6QLY52HSUYKJBGW
X-Message-ID-Hash: YSKOWHWC5FAJ42JUO6QLY52HSUYKJBGW
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:12 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/YSKOWHWC5FAJ42JUO6QLY52HSUYKJBGW/>
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
 net/ieee802154/6lowpan/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/ieee802154/6lowpan/core.c b/net/ieee802154/6lowpan/core.=
c
index c16c14807d87..65a5c61cf38c 100644
--- a/net/ieee802154/6lowpan/core.c
+++ b/net/ieee802154/6lowpan/core.c
@@ -143,7 +143,8 @@ static int lowpan_newlink(struct rtnl_newlink_params =
*params)
 	if (!tb[IFLA_LINK])
 		return -EINVAL;
 	/* find and hold wpan device */
-	wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));
+	wdev =3D dev_get_by_index(params->link_net ? : dev_net(ldev),
+				nla_get_u32(tb[IFLA_LINK]));
 	if (!wdev)
 		return -ENODEV;
 	if (wdev->type !=3D ARPHRD_IEEE802154) {
--=20
2.47.1

