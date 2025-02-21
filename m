Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABE8A434A6
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:38 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 07F091F3EE8;
	Tue, 25 Feb 2025 05:36:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StGZ6ge_xZ46; Tue, 25 Feb 2025 05:36:37 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 11E8C1F3DD9;
	Tue, 25 Feb 2025 05:36:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 905C838A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:10:50 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 786321F0EBB
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:10:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JwqdqDwnDj5O for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 04:10:49 +0000 (UTC)
Received: from smtp-fw-80009.amazon.com (smtp-fw-80009.amazon.com [99.78.197.220])
	by mail.osmocom.org (Postfix) with ESMTPS id 2094C1F0EB6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740111049; x=1771647049;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hwbCjops9YNPWmDfophlYDE2t1KmR8e+5lnc5x6kKzA=;
  b=IR2FuNQ8O6JvDc396ZA9LHiKztg+X0ITxjhTTchW/5eVgYdqdigP3c4r
   hsHnTUSI53eTouCiA0e3apN+lynrP5Kmi1UW+Pa7vWVmGuZXx2fMkl0Iq
   TmxDLnOHNIHvDDXEWM2gBaObjcP2CLk19Q39+kvkbIG3RFZ5b2QCe7YoB
   s=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="174489550"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
  by smtp-border-fw-80009.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 04:10:44 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:50069]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.35.58:2525] with esmtp (Farcaster)
 id fbfaca7d-a389-4e71-a4ee-c9c9b4945549; Fri, 21 Feb 2025 04:10:44 +0000 (UTC)
X-Farcaster-Flow-ID: fbfaca7d-a389-4e71-a4ee-c9c9b4945549
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 04:10:44 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 04:10:39 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 09/13] net: xfrm: Use link netns in newlink() of rtnl_link_ops
Date: Thu, 20 Feb 2025 20:10:30 -0800
Message-ID: <20250221041030.78359-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-10-shaw.leon@gmail.com>
References: <20250219125039.18024-10-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D035UWB003.ant.amazon.com (10.13.138.85) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BG3Z7QWW6PJIPKFFCO3MCI4SHWKS275Y
X-Message-ID-Hash: BG3Z7QWW6PJIPKFFCO3MCI4SHWKS275Y
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:24 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BG3Z7QWW6PJIPKFFCO3MCI4SHWKS275Y/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:35 +0800
> When link_net is set, use it as link netns instead of dev_net(). This
> prepares for rtnetlink core to create device in target netns directly,
> in which case the two namespaces may be different.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
