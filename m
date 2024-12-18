Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBB09FF150
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:53 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1A9931B6A94;
	Tue, 31 Dec 2024 18:40:53 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StWGu1zc78av; Tue, 31 Dec 2024 18:40:51 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 94C4C1B6908;
	Tue, 31 Dec 2024 18:40:34 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4DC1938A7A10
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 23:38:04 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E809B1AE33B
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 23:38:03 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UZUKnN-vuO4M for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 23:38:03 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 17FB01AE336
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 23:38:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 01A465C59B3;
	Wed, 18 Dec 2024 23:37:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9872C4CECD;
	Wed, 18 Dec 2024 23:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734565080;
	bh=TE9MeQggFrUNHk7GnpsPc1qOO621qZHYt6YKXQvYGUs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SMB95StF87lMswBTmoy5w+GFfz3iCmebU4gbeFCJK7sk9+I16C9cplpIYLf0W9Qul
	 QxmbLpIR7/E6R0kf5eKkyEYZx8mBxxIidhrnHdr7M4IeFwaA3J5y2wWv4oQmfmxORv
	 D1j6lmCsAMuKx+jWknHgUh8GEb58788JfHfg1N+UuccR+d6b8ALbB6vzMOTnfrbNpk
	 nrbFqHQ3vUtoVAGtl14Lhqr/MD+oEcAwxAPHEo6k2fp/JS6ZLbq87qH4FknN0j6i1c
	 yDKA9jZ2UNpUbRlqHX4gnIrK03GFSOZ91dNOO2mqCDLBVJi/w2/4kNnX7grOmVIZvb
	 15jS4zu2mRPLw==
Date: Wed, 18 Dec 2024 15:37:59 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v6 11/11] selftests: net: Add test cases for
 link and peer netns
Message-ID: <20241218153759.672b7014@kernel.org>
In-Reply-To: <20241218130909.2173-12-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
	<20241218130909.2173-12-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: L3AKGUYTMCACLH3B3XWLNWISOKFRX7UE
X-Message-ID-Hash: L3AKGUYTMCACLH3B3XWLNWISOKFRX7UE
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:30 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/L3AKGUYTMCACLH3B3XWLNWISOKFRX7UE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, 18 Dec 2024 21:09:09 +0800 Xiao Liang wrote:
>  - Add test for creating link in another netns when a link of the same
>    name and ifindex exists in current netns.
>  - Add test to verify that link is created in target netns directly -
>    no link new/del events should be generated in link netns or current
>    netns.
>  - Add test cases to verify that link-netns is set as expected for
>    various drivers and combination of namespace-related parameters.

Nice work!

You need to make sure all the drivers the test is using are enabled by
the selftest kernel config: tools/testing/selftests/net/config

This may be helpful:
https://github.com/linux-netdev/nipa/wiki/How-to-run-netdev-selftests-CI-style#how-to-build
-- 
pw-bot: cr
