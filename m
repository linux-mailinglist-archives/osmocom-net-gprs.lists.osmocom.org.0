Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 572ECA434A8
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:40 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3C9351F3F2E;
	Tue, 25 Feb 2025 05:36:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ucg6ySccnNV5; Tue, 25 Feb 2025 05:36:39 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B38F81F3E15;
	Tue, 25 Feb 2025 05:36:30 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2F47F38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:17:04 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0C4AF1F0F24
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:17:04 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j1prGwdMqsvx for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 04:17:03 +0000 (UTC)
Received: from smtp-fw-80008.amazon.com (smtp-fw-80008.amazon.com [99.78.197.219])
	by mail.osmocom.org (Postfix) with ESMTPS id 0CC671F0F1F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740111422; x=1771647422;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=2RBr407lfpNcQNLCj0KAWf8UC6PZVgFWPwamtTvf6ec=;
  b=RytkuUPoa9O0sAUkvYKA5ja1n3MOdjSc+bdFXg1B3pm0F/YGe+xETOo7
   l0Nebdp/3mBugcGNd3VtlWtqdMUcvuOvprrLMqNkUqU6fM/oANvV6Xm18
   BZainl75unDNo7CP0lrEp2/6luIHq4PdnJoi/+dNMh07F45nG5HLntCeS
   4=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="171697267"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.214])
  by smtp-border-fw-80008.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 04:16:58 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.38.20:44806]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.18.70:2525] with esmtp (Farcaster)
 id 3d34885b-f494-4c98-a1a4-c9b8261fc88d; Fri, 21 Feb 2025 04:16:58 +0000 (UTC)
X-Farcaster-Flow-ID: 3d34885b-f494-4c98-a1a4-c9b8261fc88d
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 04:16:55 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 04:16:49 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 11/13] rtnetlink: Create link directly in target net namespace
Date: Thu, 20 Feb 2025 20:16:41 -0800
Message-ID: <20250221041641.79788-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-12-shaw.leon@gmail.com>
References: <20250219125039.18024-12-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D046UWA002.ant.amazon.com (10.13.139.39) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2XCE47DDOIRC5ZPCF3C6XIT7RT756JLN
X-Message-ID-Hash: 2XCE47DDOIRC5ZPCF3C6XIT7RT756JLN
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:24 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2XCE47DDOIRC5ZPCF3C6XIT7RT756JLN/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:37 +0800
> Make rtnl_newlink_create() create device in target namespace directly.
> Avoid extra netns change when link netns is provided.
>=20
> Device drivers has been converted to be aware of link netns, that is no=
t
> assuming device netns is and link netns is the same when ops->newlink()
> is called.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
