Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B67FA434A3
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:35 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 475101F3E9F;
	Tue, 25 Feb 2025 05:36:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mYlQxOS2AyuO; Tue, 25 Feb 2025 05:36:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5DC3A1F3DA6;
	Tue, 25 Feb 2025 05:36:27 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 33A3538A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:07:12 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 10B161F0E5C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:07:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nAsqlBxmFq_I for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 04:07:11 +0000 (UTC)
Received: from smtp-fw-52003.amazon.com (smtp-fw-52003.amazon.com [52.119.213.152])
	by mail.osmocom.org (Postfix) with ESMTPS id EB35D1F0E57
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 04:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740110831; x=1771646831;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tKX8JdqFzrTi/1BQO/FO5wDgGYCQeQS6PgW1/5We6so=;
  b=j2ICIJh65csevEzUP2kgHy/e1h803N9wfmp92gk1wGMRDvHbzRgqiujk
   OHsS8iZ/4dIhlwxRQ7bS5H9KZHbnXQLwNv+mwTPqlVz3oYIV/pioZIHWB
   6jgDCy79c/W23Np6Q3w89uaJYWPTwUmmVwfSYBkhmHdStenvEPewrKioA
   8=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="67970952"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-52003.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 04:06:57 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.21.151:51376]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.55.141:2525] with esmtp (Farcaster)
 id fca782d6-17f8-4d01-a8eb-9a81adbd66b0; Fri, 21 Feb 2025 04:06:56 +0000 (UTC)
X-Farcaster-Flow-ID: fca782d6-17f8-4d01-a8eb-9a81adbd66b0
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 04:06:55 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 04:06:50 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 07/13] net: ipv6: Init tunnel link-netns before registering dev
Date: Thu, 20 Feb 2025 20:06:41 -0800
Message-ID: <20250221040641.77646-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-8-shaw.leon@gmail.com>
References: <20250219125039.18024-8-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D043UWC004.ant.amazon.com (10.13.139.206) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MLHTGJJJCUL3EWJ77MV3GFV66RB5RQSB
X-Message-ID-Hash: MLHTGJJJCUL3EWJ77MV3GFV66RB5RQSB
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:24 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/MLHTGJJJCUL3EWJ77MV3GFV66RB5RQSB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:33 +0800
> Currently some IPv6 tunnel drivers set tnl->net to dev_net(dev) in
> ndo_init(), which is called in register_netdevice(). However, it lacks
> the context of link-netns when we enable cross-net tunnels at device
> registration time.
>=20
> Let's move the init of tunnel link-netns before register_netdevice().
>=20
> ip6_gre has already initialized netns, so just remove the redundant
> assignment.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>

left a small comment, but not a blocker.


> @@ -1565,6 +1565,7 @@ static int ipip6_newlink(struct net_device *dev,
>  	int err;
> =20
>  	nt =3D netdev_priv(dev);
> +	nt->net =3D net;

This hunk is not necessary as we'll call ipip6_tunnel_locate(),
but it's harmless and not worth reposting the whole series given
we are alredy in v10.  You can just post a follow-up patch after
the series is applied.

Thanks!
