Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 52849A370A8
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:42 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3F1F21E8A2A;
	Sat, 15 Feb 2025 20:34:42 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SLHtB5H_GISM; Sat, 15 Feb 2025 20:34:41 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2AB071E88D0;
	Sat, 15 Feb 2025 20:34:26 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 89AB938A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:55:33 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 702611E5B25
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:55:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lyEpM7F5jYXq for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 06:55:32 +0000 (UTC)
Received: from smtp-fw-52004.amazon.com (smtp-fw-52004.amazon.com [52.119.213.154])
	by mail.osmocom.org (Postfix) with ESMTPS id 46EE91E5B1D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 06:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1739429733; x=1770965733;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Y6vhqwcHgjQ9crHQuKcOHH1ChdkHGoRglO+wy/6/WSQ=;
  b=PfoQ0k9lYP1SaLJnJAom02bIXC7VNnVJDXGIgSrhQEq68KurcU9FWDRu
   NozkiD9cr6iiqpO4E7AUpcyfLGH58kWw3RvkB47kM085ScDcKhKrG0Jy1
   P4h+wv3O4WaUXUDNsNdZhGJaLB2amlRrdBtvoQQj9T3feiVyWnwvlgfEb
   U=;
X-IronPort-AV: E=Sophos;i="6.13,282,1732579200";
   d="scan'208";a="270777830"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
  by smtp-border-fw-52004.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2025 06:55:26 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.21.151:9280]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.23.246:2525] with esmtp (Farcaster)
 id 0c153c97-2bf1-4a6b-942d-4cbd218ce4f6; Thu, 13 Feb 2025 06:55:25 +0000 (UTC)
X-Farcaster-Flow-ID: 0c153c97-2bf1-4a6b-942d-4cbd218ce4f6
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Thu, 13 Feb 2025 06:55:24 +0000
Received: from 6c7e67bfbae3.amazon.com (10.37.244.7) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 13 Feb 2025 06:55:16 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v9 03/11] net: Use link netns in newlink() of rtnl_link_ops
Date: Thu, 13 Feb 2025 15:55:06 +0900
Message-ID: <20250213065506.8720-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250210133002.883422-4-shaw.leon@gmail.com>
References: <20250210133002.883422-4-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D038UWC003.ant.amazon.com (10.13.139.209) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=132b843d4=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OGINX5BGNZXU57LUYYRBUFQFGYQ6ABEN
X-Message-ID-Hash: OGINX5BGNZXU57LUYYRBUFQFGYQ6ABEN
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:04 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, kuniyu@amazon.com, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OGINX5BGNZXU57LUYYRBUFQFGYQ6ABEN/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Mon, 10 Feb 2025 21:29:54 +0800
> These netdevice drivers already uses netns parameter in newlink()
> callback. Convert them to use rtnl_newlink_link_net() or
> rtnl_newlink_peer_net() for clarity and deprecate params->net.
>=20
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>


> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c b/drive=
rs/net/ethernet/qualcomm/rmnet/rmnet_config.c
> index 8151e91395e2..ab7e5b6649b2 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c
> @@ -122,8 +122,8 @@ static int rmnet_newlink(struct net_device *dev,
>  			 struct netlink_ext_ack *extack)
>  {
>  	u32 data_format =3D RMNET_FLAGS_INGRESS_DEAGGREGATION;
> +	struct net *link_net =3D rtnl_newlink_link_net(params);

nit: reverse xmas tree


>  	struct nlattr **data =3D params->data;
> -	struct net *src_net =3D params->net;
>  	struct nlattr **tb =3D params->tb;
>  	struct net_device *real_dev;
>  	int mode =3D RMNET_EPMODE_VND;
