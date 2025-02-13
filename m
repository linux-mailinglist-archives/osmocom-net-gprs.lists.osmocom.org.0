Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B40A370A5
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:35 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8249B1E89A1;
	Sat, 15 Feb 2025 20:34:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9fq3nBvmVV5g; Sat, 15 Feb 2025 20:34:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4DDA31E887F;
	Sat, 15 Feb 2025 20:34:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A220738A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 05:49:20 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7F2391E5A1B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 05:49:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9peJ9J6UdGR for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 05:49:19 +0000 (UTC)
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com [52.95.49.90])
	by mail.osmocom.org (Postfix) with ESMTPS id 64D761E5A16
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 05:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1739425760; x=1770961760;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=2H6L2IVdEyIK/cEvvFHgSWxdXbDY3pM4JrV+qKQ3oRc=;
  b=nwD1LstIkQvD8ffPyPrZevRMPI3+41cyFCrQF0TC6xlj8S0pfaFZgLPO
   3P/XI66tK5WRqgtPMy2aC9JLg11Ma1YuTBr0SYTzuPqhKX8eVenq5pJQP
   bPbhjwlJJGGGO3+Etl4NIF8hsOXVM0ZZc9LMJ5m2ASxZJfr0tXLJaDGLg
   g=;
X-IronPort-AV: E=Sophos;i="6.13,282,1732579200";
   d="scan'208";a="471752672"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-6002.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2025 05:49:13 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:24405]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.23.136:2525] with esmtp (Farcaster)
 id 4661396c-a15f-4263-9318-13d4ea54af5c; Thu, 13 Feb 2025 05:49:12 +0000 (UTC)
X-Farcaster-Flow-ID: 4661396c-a15f-4263-9318-13d4ea54af5c
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Thu, 13 Feb 2025 05:49:12 +0000
Received: from 6c7e67bfbae3.amazon.com (10.37.244.7) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 13 Feb 2025 05:49:03 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v9 04/11] ieee802154: 6lowpan: Validate link netns in newlink() of rtnl_link_ops
Date: Thu, 13 Feb 2025 14:48:53 +0900
Message-ID: <20250213054853.285-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250210133002.883422-5-shaw.leon@gmail.com>
References: <20250210133002.883422-5-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D035UWA004.ant.amazon.com (10.13.139.109) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=132b843d4=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AGEXPPXGGDVLHLAIN4TR2GTIQVTL7YVE
X-Message-ID-Hash: AGEXPPXGGDVLHLAIN4TR2GTIQVTL7YVE
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:55 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/AGEXPPXGGDVLHLAIN4TR2GTIQVTL7YVE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 10 Feb 2025 21:29:55 +0800
> Device denoted by IFLA_LINK is in link_net (IFLA_LINK_NETNSID) or
> source netns by design, but 6lowpan uses dev_net.
>=20
> Note dev->netns_local is set to true and currently link_net is
> implemented via a netns change. These together effectively reject
> IFLA_LINK_NETNSID.
>=20
> This patch adds a validation to ensure link_net is either NULL or
> identical to dev_net. Thus it would be fine to continue using dev_net
> when rtnetlink core begins to create devices directly in target netns.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
