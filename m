Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D96164DD16A
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 00:50:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 435D82804E;
	Thu, 17 Mar 2022 23:50:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5vrYanEIfY9; Thu, 17 Mar 2022 23:50:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 61E7128048;
	Thu, 17 Mar 2022 23:50:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2A6E938A0C10
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Mar 2022 23:50:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 05CC92804B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Mar 2022 23:50:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dZUfNsELzZGe for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 17 Mar 2022 23:50:15 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by mail.osmocom.org (Postfix) with ESMTPS id 31BC428024
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Mar 2022 23:50:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 993D9B820F2;
	Thu, 17 Mar 2022 23:50:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA262C340F2;
	Thu, 17 Mar 2022 23:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1647561012;
	bh=H5XQHHGoDpsBed6ycSnty+J5zAIx8GGCszT2CVP5ltE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=AnhIGDJPXQ+3Ja3no2U0ew/EBcTAKRViXXFQ9+8mREsFL1BBWLZ5EpC99SM+RN94g
	 hOoQ/VxMsWQ9sd2JQwXmHhaK7qTmiM6Z8q+DjeTXJ8CZ+L+e/hrdl5B8zrG4SNRjgL
	 uxDdRe7s8wBn/4NLvNWB4n6+jHwLBu4T+X57xaDoY9IIqF7DGtNmybsoCPD01iXhBN
	 0MpPrN7QN4QMi3fetrcKfHZwPKkdSwn9BwbXsiMaWG48wOyKhscMUf1oJPELzuyGnD
	 V2tIwQIQGVNg/8kF83s0QoL3vMFH52pb9FnOdb0hoCeJPxWDJ5bKGLX/8Nz31/CDBn
	 z0BAe/tSqtI1w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BEEE7F0383F;
	Thu, 17 Mar 2022 23:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next 0/4][pull request] 100GbE Intel Wired LAN Driver
 Updates 2022-03-16
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164756101277.14093.3397984917093483333.git-patchwork-notify@kernel.org>
Date: Thu, 17 Mar 2022 23:50:12 +0000
References: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220316204024.3201500-1-anthony.l.nguyen@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 3RIN2ZCW4WTL5AF7AUIWZWSGG7XMS22M
X-Message-ID-Hash: 3RIN2ZCW4WTL5AF7AUIWZWSGG7XMS22M
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, wojciech.drewek@intel.com, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OR7E5WVCUOEAJ4HU5VCVDGXIQLU52V2V/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Tony Nguyen <anthony.l.nguyen@intel.com>:

On Wed, 16 Mar 2022 13:40:20 -0700 you wrote:
> This series contains updates to gtp and ice driver.
>=20
> Wojciech fixes smatch reported inconsistent indenting for gtp and ice.
>=20
> Yang Yingliang fixes a couple of return value checks for GNSS to IS_PTR
> instead of null.
>=20
> [...]

Here is the summary with links:
  - [net-next,1/4] gtp: Fix inconsistent indenting
    https://git.kernel.org/netdev/net-next/c/02f393381d14
  - [net-next,2/4] ice: Fix inconsistent indenting in ice_switch
    https://git.kernel.org/netdev/net-next/c/2bcd5b9f357d
  - [net-next,3/4] ice: fix return value check in ice_gnss.c
    https://git.kernel.org/netdev/net-next/c/2b1d0a242a00
  - [net-next,4/4] ice: add trace events for tx timestamps
    https://git.kernel.org/netdev/net-next/c/4c1202189e35

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


