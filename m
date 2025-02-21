Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8534DA434A7
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:39 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 723631F3F14;
	Tue, 25 Feb 2025 05:36:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DxDh4cFP3KFA; Tue, 25 Feb 2025 05:36:39 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DE42C1F3DFB;
	Tue, 25 Feb 2025 05:36:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 03D4E38A10C6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:12:27 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DF9B71F0EF6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:12:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uv4nEjkihHDh for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 04:12:26 +0000 (UTC)
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
	by mail.osmocom.org (Postfix) with ESMTPS id D8EEF1F0EF1
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740111146; x=1771647146;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YzTaMIXfTQW5u2lkanlpdTtaryhWFAt2zcKLntOoUF0=;
  b=c8vkWCwi2ELlOKOVS0Z5qMctzduFPKd5fXiDmluSBgKNsyj240afYodj
   WKf87Nc1/RnvjhXs+1n/3GOl4Xsw/2VtV8fseN7z+Tzla2o+Mt4rIhgXH
   9k3UQDW0eOeOp1HIOOTSQ9rgCeWLgbk7Dv+/aThfI/8U0teOqiDXm1fDe
   I=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="464524007"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
  by smtp-border-fw-6001.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 04:12:20 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.7.35:45617]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.6.186:2525] with esmtp (Farcaster)
 id f7b7ed86-b5d1-4be4-9e7b-55d4fb0bed97; Fri, 21 Feb 2025 04:12:14 +0000 (UTC)
X-Farcaster-Flow-ID: f7b7ed86-b5d1-4be4-9e7b-55d4fb0bed97
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 04:12:08 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 04:12:03 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 10/13] rtnetlink: Remove "net" from newlink params
Date: Thu, 20 Feb 2025 20:11:54 -0800
Message-ID: <20250221041155.78502-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-11-shaw.leon@gmail.com>
References: <20250219125039.18024-11-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D042UWA003.ant.amazon.com (10.13.139.44) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5N3BJJZUQWM6JR5AO4MV4CQGA4LHLHGL
X-Message-ID-Hash: 5N3BJJZUQWM6JR5AO4MV4CQGA4LHLHGL
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:24 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/5N3BJJZUQWM6JR5AO4MV4CQGA4LHLHGL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:36 +0800
> Now that devices have been converted to use the specific netns instead
> of ambiguous "net", let's remove it from newlink parameters.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
