Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id F3575876FAF
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  9 Mar 2024 09:06:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E0BB05D44B;
	Sat,  9 Mar 2024 08:06:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C2Tu0wYuLVXx; Sat,  9 Mar 2024 08:06:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 031ED5D41F;
	Sat,  9 Mar 2024 08:06:03 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D16A138A108D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu,  7 Mar 2024 04:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B4C675A211
	for <osmocom-net-gprs@lists.osmocom.org>; Thu,  7 Mar 2024 04:40:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9bdj0-AaGJoX for <osmocom-net-gprs@lists.osmocom.org>;
 Thu,  7 Mar 2024 04:40:34 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id C0F885A20C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu,  7 Mar 2024 04:40:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0C19261C11;
	Thu,  7 Mar 2024 04:40:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE46DC43330;
	Thu,  7 Mar 2024 04:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709786431;
	bh=RP4hy+R35jLPZPDVIpeZNpzZRzY9gWkWN21185TXQ9M=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=MUclku5inUZbx0b9kXs3PcEGBifb3QEaZfvxz16YmxjaW694i9VzBCBEzBdZmlj+j
	 dcSD0urZHFXm3ekmv762VD6YFPlX8wt/FiYuvpYtbIac8+LBWuGwELMekPKjZLRd9S
	 QkBlVgsWwS98NAw8T7YAQCEP/DSkmmX0k4xJc116xmPghWli/cZ2WtkR9qmwlCdwhF
	 qOQ25KU8oKvA1KP5mly8an3ALQ8fyY1FCVN+zTnQRFt4l2VK8TLfSA2Vdlu9FX4A4t
	 3icGb934mKJiwrFQEdaV45oWh9zoO56DPjU1VJZcdR6Q1xYSD5s0s0FHWFAjfrDfnN
	 1EeWeGCvW9DSg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D7B0DD88F80;
	Thu,  7 Mar 2024 04:40:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next 1/3] net: gtp: Leverage core stats allocator
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <170978643088.7855.4668701544499499077.git-patchwork-notify@kernel.org>
Date: Thu, 07 Mar 2024 04:40:30 +0000
References: <20240305121524.2254533-1-leitao@debian.org>
In-Reply-To: <20240305121524.2254533-1-leitao@debian.org>
To: Breno Leitao <leitao@debian.org>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: Y2HJS7PEFYBA5KSR5KA5BNEVYZVM4LTR
X-Message-ID-Hash: Y2HJS7PEFYBA5KSR5KA5BNEVYZVM4LTR
X-Mailman-Approved-At: Sat, 09 Mar 2024 08:05:48 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org, dsahern@kernel.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/SFBKSZXXCOC3ILASDAEKYEJTH5KIN6YY/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue,  5 Mar 2024 04:15:21 -0800 you wrote:
> With commit 34d21de99cea9 ("net: Move {l,t,d}stats allocation to core a=
nd
> convert veth & vrf"), stats allocation could be done on net core
> instead of in this driver.
>=20
> With this new approach, the driver doesn't have to bother with error
> handling (allocation failure checking, making sure free happens in the
> right spot, etc). This is core responsibility now.
>=20
> [...]

Here is the summary with links:
  - [net-next,1/3] net: gtp: Leverage core stats allocator
    https://git.kernel.org/netdev/net-next/c/660e5aaea11d
  - [net-next,2/3] net: gtp: Remove generic .ndo_get_stats64
    https://git.kernel.org/netdev/net-next/c/13957a0b0708
  - [net-next,3/3] net: gtp: Move net_device assigned in setup
    https://git.kernel.org/netdev/net-next/c/81154bb83c44

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


