Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1025A4DADDF
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 16 Mar 2022 10:53:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 960BA28054;
	Wed, 16 Mar 2022 09:53:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4q0wQAgm5M4i; Wed, 16 Mar 2022 09:53:36 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 937E428049;
	Wed, 16 Mar 2022 09:53:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 72C6238A0AD2
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Mar 2022 12:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3F7A72810D
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Mar 2022 12:10:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zGO__k2YIUwD for <osmocom-net-gprs@lists.osmocom.org>;
	Sat, 12 Mar 2022 12:10:15 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 771CB2810B
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Mar 2022 12:10:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0884C60EF3;
	Sat, 12 Mar 2022 12:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E6C7C340EB;
	Sat, 12 Mar 2022 12:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1647087012;
	bh=6gppKD9PTRrOGkXNjRyAMZHyYnM/XlwCqyXzKFB6Ddg=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=It6sCoxByyLG0R/SJROgiodKBKdvKvkr7XZuzZQFpE/jItVbNz5KtwqaXzJSgkdPx
	 pjq20o5FVQyonW5iuwuBrka2AV9Isy4aPbQbCOcvV20E8MT0ywrX216lg0LneKHQLT
	 hxVHZQ46+5f1yvQ9pD+nIjlGxfIX0rCNdl/IaJxTELEntxkYmMeyr7Q7FibvgZyNN9
	 4FhOXo19HTzkQ1GKCFbPBkGR0akhOcIJaAEnatIveFXMGyfbux4gQr9Spr7Y6FcaiK
	 y0daJyTSbSuYrqIon2fjfclJe1veD3F614xNYiA+3CVZcDs4E0tdjh0JubZ5RQEYFL
	 fbiN7bz4q9v1w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 453CDE6D3DD;
	Sat, 12 Mar 2022 12:10:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next v11 0/7][pull request] ice: GTP support in switchdev
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164708701228.11169.15700740251869229843.git-patchwork-notify@kernel.org>
Date: Sat, 12 Mar 2022 12:10:12 +0000
References: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220311171821.3785992-1-anthony.l.nguyen@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: QASIIS6NAEOBX2RGV34RHDXMLXDRMULT
X-Message-ID-Hash: QASIIS6NAEOBX2RGV34RHDXMLXDRMULT
X-Mailman-Approved-At: Wed, 16 Mar 2022 09:53:08 +0000
CC: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, marcin.szycik@linux.intel.com, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, jiri@resnulli.us, pablo@netfilter.org, laforge@gnumonks.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RZPDBM62W5RGZL7F6PKVJS2BJBQWAE5M/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Tony Nguyen <anthony.l.nguyen@intel.com>:

On Fri, 11 Mar 2022 09:18:14 -0800 you wrote:
> Marcin Szycik says:
>=20
> Add support for adding GTP-C and GTP-U filters in switchdev mode.
>=20
> To create a filter for GTP, create a GTP-type netdev with ip tool, enab=
le
> hardware offload, add qdisc and add a filter in tc:
>=20
> [...]

Here is the summary with links:
  - [net-next,v11,1/7] gtp: Allow to create GTP device without FDs
    https://git.kernel.org/netdev/net-next/c/b20dc3c68458
  - [net-next,v11,2/7] gtp: Implement GTP echo response
    https://git.kernel.org/netdev/net-next/c/9af41cc33471
  - [net-next,v11,3/7] gtp: Implement GTP echo request
    https://git.kernel.org/netdev/net-next/c/d33bd757d362
  - [net-next,v11,4/7] net/sched: Allow flower to match on GTP options
    https://git.kernel.org/netdev/net-next/c/e3acda7ade0a
  - [net-next,v11,5/7] gtp: Add support for checking GTP device type
    https://git.kernel.org/netdev/net-next/c/81dd9849fa49
  - [net-next,v11,6/7] ice: Fix FV offset searching
    https://git.kernel.org/netdev/net-next/c/e5dd661b8bb3
  - [net-next,v11,7/7] ice: Support GTP-U and GTP-C offload in switchdev
    https://git.kernel.org/netdev/net-next/c/9a225f81f540

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


