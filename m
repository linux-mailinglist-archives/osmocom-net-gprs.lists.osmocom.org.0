Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5D09D10A9
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:31 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 68E12182046;
	Mon, 18 Nov 2024 12:38:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 008qp3SJZS_H; Mon, 18 Nov 2024 12:38:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1DDC1181FDE;
	Mon, 18 Nov 2024 12:38:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D61CD38A18CC
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 15 Nov 2024 23:35:31 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AF18317FA11
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 15 Nov 2024 23:35:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2EGT6wgqCwra for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 15 Nov 2024 23:35:31 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [IPv6:2604:1380:45d1:ec00::3])
	by mail.osmocom.org (Postfix) with ESMTPS id D897C17FA09
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 15 Nov 2024 23:35:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B8971A42810;
	Fri, 15 Nov 2024 23:33:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 018E7C4CECF;
	Fri, 15 Nov 2024 23:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731713727;
	bh=+0nSqXJMNPJie6Agi0DCflpUksVQqJLNIcznPm67J68=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SWd4Fyxcy6vkPAs/DoAyKv+eu9nnqiy9VDr1E7w6DAOPjGk3sTNyu3CQVJ1ftQ1Vl
	 KQx7V76ZwBrflcMdU07dZ08pvCiVuMniy4GhDYMkJ/3vahjg0pawSvaX+3JhHfGywU
	 5B5tE+7wI6tq8XfAriVL28lj/YBhGHcMmGeFVzCIrjSd9YzsgSS8omaH0MLx3DWaMn
	 /8V/Hup5AfF5QtyTL3sde4ia3ZIuFa+PC0Cl0GrtcqcB8u0C+PbGN/aNnGXfwN1oRZ
	 wKyFrTPI/2pLhWCxOGsAbPXDBSZL+32gxSUIudNzbcxe8lV0SDX6LcluNtG1LiyPmb
	 wMVTTXTFPHQrg==
Date: Fri, 15 Nov 2024 15:35:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v3 4/6] rtnetlink: Decouple net namespaces in
 rtnl_newlink_create()
Message-ID: <20241115153526.3582ebcd@kernel.org>
In-Reply-To: <20241113125715.150201-5-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
	<20241113125715.150201-5-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: CGO6HDOT52HDYBBYWZFPBD54BDAFOOLF
X-Message-ID-Hash: CGO6HDOT52HDYBBYWZFPBD54BDAFOOLF
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CGO6HDOT52HDYBBYWZFPBD54BDAFOOLF/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, 13 Nov 2024 20:57:13 +0800 Xiao Liang wrote:
> +/**
> + *	struct rtnl_link_nets - net namespace context of newlink.
> + *
> + *	@src_net: Source netns of rtnetlink socket
> + *	@link_net: Link netns by IFLA_LINK_NETNSID, NULL if not specified.
> + */
> +struct rtnl_link_nets {
> +	struct net *src_net;
> +	struct net *link_net;
> +};

Let's not limit ourselves to passing just netns via this struct.
Let's call it rtnl_newlink_args or params.

The first patch of the series got merged independently so you'll
need to respin.
-- 
pw-bot: cr
