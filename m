Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 021A99D945D
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 26 Nov 2024 10:26:59 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E18C4191C2A;
	Tue, 26 Nov 2024 09:26:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5xME3pFByoFv; Tue, 26 Nov 2024 09:26:58 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C2E49191BBE;
	Tue, 26 Nov 2024 09:26:53 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 18F1238A1B93
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 19 Nov 2024 03:07:06 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E5C5018421B
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 19 Nov 2024 03:07:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8dgQCiMUq6pn for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 19 Nov 2024 03:07:05 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [IPv6:2604:1380:45d1:ec00::3])
	by mail.osmocom.org (Postfix) with ESMTPS id 13813184216
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 19 Nov 2024 03:07:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 95061A42574;
	Tue, 19 Nov 2024 03:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAD48C4CECF;
	Tue, 19 Nov 2024 03:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731985622;
	bh=PGoG8fEB7llM322/jpcOwn3LGAi0gafsk5SM9vL39KQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oGWzVf9fm47IURqF82sBjxlSLSQaSxQvnftln+sAaadyrOaTpKmG1QB1++Q+XtGq2
	 iqnrNBO0CyTqqEwlU/q+011kC2hwIrbq/6K0SGXImw3qfRg1+XKGoOsssJ5vIMkYcz
	 Z6YQRFxP4izqrZoqEbsdoy+taGRJqRWgfpsrekJKESn6nbT7e6NOHGhh6GN5IbeTmn
	 lzthFeg7CnYNFnEs0XFbrLEZd2ql/Jl9IGwusT5cDv1Qr6Psf8Q5n6XqbkH/peqmPn
	 uwk0TjN/tbOC/IkQ2CmF/L5xISUzVUBpQQlxdujGCk9lYUVk7IvT7QmP1ZZAPQtMkX
	 AVNlOOjcQBmSw==
Date: Mon, 18 Nov 2024 19:07:00 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v4 0/5] net: Improve netns handling in RTNL and
 ip_tunnel
Message-ID: <20241118190700.4c1b8156@kernel.org>
In-Reply-To: <20241118143244.1773-1-shaw.leon@gmail.com>
References: <20241118143244.1773-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: EVT6KMIDJPI6IGM3U626G7BI4CMHATMI
X-Message-ID-Hash: EVT6KMIDJPI6IGM3U626G7BI4CMHATMI
X-Mailman-Approved-At: Tue, 26 Nov 2024 09:26:34 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EVT6KMIDJPI6IGM3U626G7BI4CMHATMI/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Mon, 18 Nov 2024 22:32:39 +0800 Xiao Liang wrote:
> This patch series includes some netns-related improvements and fixes for
> RTNL and ip_tunnel, to make link creation more intuitive:
> 
>  - Creating link in another net namespace doesn't conflict with link names
>    in current one.
>  - Refector rtnetlink link creation. Create link in target namespace
>    directly. Pass both source and link netns to drivers via newlink()
>    callback.
> 
> So that
> 
>   # ip link add netns ns1 link-netns ns2 tun0 type gre ...
> 
> will create tun0 in ns1, rather than create it in ns2 and move to ns1.
> And don't conflict with another interface named "tun0" in current netns.

## Form letter - net-next-closed

The merge window for v6.13 has begun and net-next is closed for new drivers,
features, code refactoring and optimizations. We are currently accepting
bug fixes only.

Please repost when net-next reopens after Dec 2nd.

RFC patches sent for review only are welcome at any time.

See: https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#development-cycle
-- 
pw-bot: defer

