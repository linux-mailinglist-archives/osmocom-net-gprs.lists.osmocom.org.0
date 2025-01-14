Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD7CA188A5
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:26 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CCF601D3109;
	Tue, 21 Jan 2025 23:58:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sbHEsIqyd1TZ; Tue, 21 Jan 2025 23:58:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id F261F1D3046;
	Tue, 21 Jan 2025 23:58:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 54F2538A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 01:39:35 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 31E3F1C500E
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 01:39:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_SNZ3RHOMv6 for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 14 Jan 2025 01:39:34 +0000 (UTC)
Received: from smtp-fw-2101.amazon.com (smtp-fw-2101.amazon.com [72.21.196.25])
	by mail.osmocom.org (Postfix) with ESMTPS id 261121C5009
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 14 Jan 2025 01:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1736818774; x=1768354774;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0cedPuJPQkStIGe+OXyB1F52+EDOiClOdRu6CBFc8ew=;
  b=WUFS1kKx08w53QWvUM8u1Z75DHg3d3VMxWl/1Bq6I+AF1lwc7CnBvm5G
   9TpPIwJsz8P/bRTdyQy54QvIPIXVgxSebFL1BEaenLLz8x/uUPvVxpf+D
   S143HXX4DgXw+fUA57hCf4RciOAfESxcqwESW5XhRCK6j7slfnnB3NOtp
   I=;
X-IronPort-AV: E=Sophos;i="6.12,312,1728950400";
   d="scan'208";a="458589578"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-2101.iad2.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2025 01:39:28 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.7.35:58030]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.14.236:2525] with esmtp (Farcaster)
 id 86aea7c8-dd91-44b2-aaf7-7a7eff52786e; Tue, 14 Jan 2025 01:39:28 +0000 (UTC)
X-Farcaster-Flow-ID: 86aea7c8-dd91-44b2-aaf7-7a7eff52786e
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.217) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Tue, 14 Jan 2025 01:39:27 +0000
Received: from 6c7e67c6786f.amazon.com (10.119.11.99) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Tue, 14 Jan 2025 01:39:19 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v8 01/11] rtnetlink: Lookup device in target netns when creating link
Date: Tue, 14 Jan 2025 10:39:09 +0900
Message-ID: <20250114013909.7102-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250113143719.7948-2-shaw.leon@gmail.com>
References: <20250113143719.7948-2-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.119.11.99]
X-ClientProxiedBy: EX19D045UWA004.ant.amazon.com (10.13.139.91) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=102578ec8=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VZKBJJUA3TJ5H4Z4IDIVUII7H4T7SKZL
X-Message-ID-Hash: VZKBJJUA3TJ5H4Z4IDIVUII7H4T7SKZL
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:00 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VZKBJJUA3TJ5H4Z4IDIVUII7H4T7SKZL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 13 Jan 2025 22:37:09 +0800
> When creating link, lookup for existing device in target net namespace
> instead of current one.
> For example, two links created by:
>=20
>   # ip link add dummy1 type dummy
>   # ip link add netns ns1 dummy1 type dummy
>=20
> should have no conflict since they are in different namespaces.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
