Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E69A434A0
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:32 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 544341F3E3F;
	Tue, 25 Feb 2025 05:36:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8uAugbC24wq2; Tue, 25 Feb 2025 05:36:32 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 9D9D31F3D54;
	Tue, 25 Feb 2025 05:36:25 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E949338A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 03:26:54 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D0BE91F0D68
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 03:26:54 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1X3zeJcJrKjr for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 03:26:54 +0000 (UTC)
Received: from smtp-fw-9106.amazon.com (smtp-fw-9106.amazon.com [207.171.188.206])
	by mail.osmocom.org (Postfix) with ESMTPS id 77CB51F0D63
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740108414; x=1771644414;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=8mNjS6ciQxTju2qMj3xcfBbIY4//EJ+QLkySghPDl14=;
  b=XTcJ7x2wGALNrp1Yv0GhQObt2H+Eud0hX+tDSpK+yfOEe8ewETiy2ojj
   UAFm3CJW3FyFJFgyutX9lQ1HV6Uc6RaBqt8DpWwWX1/giD0w8mDmUEmjy
   vUs9Asp6buArKqEaxi8LqA01LjxVOevf0fKWoxDB2ypjb6o2ycCtGWtBh
   c=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="800651343"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
  by smtp-border-fw-9106.sea19.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 03:26:45 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.7.35:51797]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.18.70:2525] with esmtp (Farcaster)
 id 0699b55d-301b-4263-9bf9-a0cbd11131d6; Fri, 21 Feb 2025 03:26:43 +0000 (UTC)
X-Farcaster-Flow-ID: 0699b55d-301b-4263-9bf9-a0cbd11131d6
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 03:26:43 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 03:26:38 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 05/13] net: ip_tunnel: Don't set tunnel->net in ip_tunnel_init()
Date: Thu, 20 Feb 2025 19:26:29 -0800
Message-ID: <20250221032629.73823-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-6-shaw.leon@gmail.com>
References: <20250219125039.18024-6-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D038UWB002.ant.amazon.com (10.13.139.185) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JZNIH7AEJYZCSLTUJETJTQCNQWOEVLGI
X-Message-ID-Hash: JZNIH7AEJYZCSLTUJETJTQCNQWOEVLGI
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:23 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JZNIH7AEJYZCSLTUJETJTQCNQWOEVLGI/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:31 +0800
> ip_tunnel_init() is called from register_netdevice(). In all code paths
> reaching here, tunnel->net should already have been set (either in
> ip_tunnel_newlink() or __ip_tunnel_create()). So don't set it again.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
