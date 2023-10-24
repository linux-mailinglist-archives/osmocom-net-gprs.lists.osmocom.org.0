Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 931267D4DEC
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 24 Oct 2023 12:33:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8468528307;
	Tue, 24 Oct 2023 10:33:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kMKtQ92fMzRl; Tue, 24 Oct 2023 10:33:58 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8C4D028108;
	Tue, 24 Oct 2023 10:33:54 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E14B238A35E2
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 24 Oct 2023 10:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B37BE27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 24 Oct 2023 10:30:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cyg6VXxx2BOK for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 24 Oct 2023 10:30:26 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 98CD227F3D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 24 Oct 2023 10:30:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2512E60F2A;
	Tue, 24 Oct 2023 10:30:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A83C433C9;
	Tue, 24 Oct 2023 10:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698143423;
	bh=AqU64/CD01QTzaTEgkHsvpgU2LfFNf/GKnwiGfPwf+c=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=q1U/BXKzLT8KtXpLEhIoOZCIur3ACd8SEUMk7oG1TCILF///e7djuBIiiKPNUpMO5
	 9ga2vTv0jd1BbvBk6wvWATedGy9KndqPo41LqAMCi4Twk0AUlFw+/fx5jltzDhszL+
	 rqCevrg6Vl76XcUoQGkfNz5qaiMkBQQrlF89UyEGNHtAnowpNEgTUiug+J8r3QK4q7
	 vv8ZCpB3FcnTraWUfjLAqcp9z2M0vAp0f2L7UAjUae2zm4Fg4xDpdRcvXifsEuLR1d
	 Ru+UM7EFcRda4Z8F/LmwyXvyCs0nZkARAawQ6LoMWm7a55FLwnjnjb1tCDRYmIqIq9
	 D+fmHPY/efPNw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A871FC00446;
	Tue, 24 Oct 2023 10:30:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net 0/2] GTP tunnel driver fixes
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <169814342368.26648.13083436369390100934.git-patchwork-notify@kernel.org>
Date: Tue, 24 Oct 2023 10:30:23 +0000
References: <20231022202519.659526-1-pablo@netfilter.org>
In-Reply-To: <20231022202519.659526-1-pablo@netfilter.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: HQHYGLUBD5VGPXCXI3O3E7QDH2GLOX3C
X-Message-ID-Hash: HQHYGLUBD5VGPXCXI3O3E7QDH2GLOX3C
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, laforge@osmocom.org, laforge@gnumonks.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RBUZAGSXI75J2M7RCTZMEXI37MZEEDGQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This series was applied to netdev/net.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Sun, 22 Oct 2023 22:25:16 +0200 you wrote:
> Hi,
>=20
> The following patchset contains two fixes for the GTP tunnel driver:
>=20
> 1) Incorrect GTPA_MAX definition in UAPI headers. This is updating an
>    existing UAPI definition but for a good reason, this is certainly
>    broken. Similar fixes for incorrect _MAX definition in netlink
>    headers were applied in the past too.
>=20
> [...]

Here is the summary with links:
  - [net,1/2] gtp: uapi: fix GTPA_MAX
    https://git.kernel.org/netdev/net/c/adc8df12d91a
  - [net,2/2] gtp: fix fragmentation needed check with gso
    https://git.kernel.org/netdev/net/c/4530e5b8e2da

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


