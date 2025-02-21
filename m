Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EEEA4349F
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:25 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0121A1F3D42;
	Tue, 25 Feb 2025 05:36:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4WHB0t9QYf4J; Tue, 25 Feb 2025 05:36:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3FEA51F3C86;
	Tue, 25 Feb 2025 05:36:18 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E285E38A10C6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 03:25:18 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C726A1F0D3A
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 03:25:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IeK7b9vpSsdo for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 03:25:18 +0000 (UTC)
Received: from smtp-fw-80008.amazon.com (smtp-fw-80008.amazon.com [99.78.197.219])
	by mail.osmocom.org (Postfix) with ESMTPS id 7AD0B1F0D34
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 03:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740108317; x=1771644317;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=98eKIkOj5zDaaN0aeg/8QMarn/Dvke+2ZuIrd8oeP2I=;
  b=YsWSM3RDrvUGQ9fy9A3crpx889ksS1T0nNCM23MRjgGRhh4d6GcrKbyI
   csToeb7ckoAnCvT/0Ser2R96QBxDeo9T/B2Vot4KmCxCDzfOAUoXbUgaS
   c8R9Y3LirXaakiUQLgh4Etfvro7oJKqHtaFxZsO/zQ0V9vNfuK2YpeZYX
   4=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="171680556"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.214])
  by smtp-border-fw-80008.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 03:25:09 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.7.35:29611]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.34.181:2525] with esmtp (Farcaster)
 id 878d6712-a911-4454-a3d1-f12dc573cc97; Fri, 21 Feb 2025 03:25:09 +0000 (UTC)
X-Farcaster-Flow-ID: 878d6712-a911-4454-a3d1-f12dc573cc97
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 03:25:04 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 03:24:58 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 02/13] rtnetlink: Pack newlink() params into struct
Date: Thu, 20 Feb 2025 19:24:49 -0800
Message-ID: <20250221032449.73597-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-3-shaw.leon@gmail.com>
References: <20250219125039.18024-3-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D033UWC004.ant.amazon.com (10.13.139.225) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BFLSQDBRARTNTK77VG4SLK4FR2VXZBW6
X-Message-ID-Hash: BFLSQDBRARTNTK77VG4SLK4FR2VXZBW6
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:06 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BFLSQDBRARTNTK77VG4SLK4FR2VXZBW6/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:28 +0800
> There are 4 net namespaces involved when creating links:
>=20
>  - source netns - where the netlink socket resides,
>  - target netns - where to put the device being created,
>  - link netns - netns associated with the device (backend),
>  - peer netns - netns of peer device.
>=20
> Currently, two nets are passed to newlink() callback - "src_net"
> parameter and "dev_net" (implicitly in net_device). They are set as
> follows, depending on netlink attributes in the request.
>=20
>  +------------+-------------------+---------+---------+
>  | peer netns | IFLA_LINK_NETNSID | src_net | dev_net |
>  +------------+-------------------+---------+---------+
>  |            | absent            | source  | target  |
>  | absent     +-------------------+---------+---------+
>  |            | present           | link    | link    |
>  +------------+-------------------+---------+---------+
>  |            | absent            | peer    | target  |
>  | present    +-------------------+---------+---------+
>  |            | present           | peer    | link    |
>  +------------+-------------------+---------+---------+
>=20
> When IFLA_LINK_NETNSID is present, the device is created in link netns
> first and then moved to target netns. This has some side effects,
> including extra ifindex allocation, ifname validation and link events.
> These could be avoided if we create it in target netns from
> the beginning.
>=20
> On the other hand, the meaning of src_net parameter is ambiguous. It
> varies depending on how parameters are passed. It is the effective
> link (or peer netns) by design, but some drivers ignore it and use
> dev_net instead.
>=20
> To provide more netns context for drivers, this patch packs existing
> newlink() parameters, along with the source netns, link netns and peer
> netns, into a struct. The old "src_net" is renamed to "net" to avoid
> confusion with real source netns, and will be deprecated later. The use
> of src_net are converted to params->net trivially.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
