Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5EE9BA550
	for <lists+osmocom-net-gprs@lfdr.de>; Sun,  3 Nov 2024 12:47:43 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6796116AAEE;
	Sun,  3 Nov 2024 11:47:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HpN_fGMsqpRT; Sun,  3 Nov 2024 11:47:43 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D6A4E16AAC8;
	Sun,  3 Nov 2024 11:47:40 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 76F1138A0FEB
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 29 Oct 2024 18:30:35 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 506D916698C
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 29 Oct 2024 18:30:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cnpqeXSq0mn for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 29 Oct 2024 18:30:34 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 6EFFB166987
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 29 Oct 2024 18:30:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1AA205C5D87;
	Tue, 29 Oct 2024 18:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E10CAC4CECD;
	Tue, 29 Oct 2024 18:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730226631;
	bh=sBBjvpypSGw/BGqus8Ppq7c2D2ickZx5FX1Hgq8s5Zg=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=iSLdNw2rvT3/PWpwv4/Pi3iuIJ9CWNwGpLrvytdzf14jySpnRvqIyorzMvNDDX/7v
	 I8YrSHFY7fdMPqKf1h+EY33/XZ93chYn4ZZ5/Fy4bqcYnwRMgyWw/Utft6AMudh2NW
	 +Y9iaOhwfvgZ9m0oXQi6X0icYddCcQHpIPE/mRKEokQPoqjF5WCsYAxyW+VDn+SP88
	 mQ085ZT/Pd8Zg9nh27n9STDjWCmaC529MD1aOOUALPBHVAFA6zR/T7ur5T3f3t8hz0
	 jyH9lqlMUSs2juL2i36sck9RqExvJ6fc2dj/m3pYJ79WnwVIeb8TpidqPYY6/IAXrU
	 6oWMtlpEfDTaQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE641380AC08;
	Tue, 29 Oct 2024 18:30:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net] gtp: allow -1 to be specified as file description from
 userspace
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <173022663924.781637.8597993399199418689.git-patchwork-notify@kernel.org>
Date: Tue, 29 Oct 2024 18:30:39 +0000
References: <20241022144825.66740-1-pablo@netfilter.org>
In-Reply-To: <20241022144825.66740-1-pablo@netfilter.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: JDU6TH3CSHKSTFLHYQYNFCWX3IJHITDR
X-Message-ID-Hash: JDU6TH3CSHKSTFLHYQYNFCWX3IJHITDR
X-Mailman-Approved-At: Sun, 03 Nov 2024 11:47:35 +0000
CC: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, fw@strlen.de, pespin@sysmocom.de, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FQLGTD32DSPMUYJRJGLLXAOZHNWIO4DS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 22 Oct 2024 16:48:25 +0200 you wrote:
> Existing user space applications maintained by the Osmocom project are
> breaking since a recent fix that addresses incorrect error checking.
>=20
> Restore operation for user space programs that specify -1 as file
> descriptor to skip GTPv0 or GTPv1 only sockets.
>=20
> Fixes: defd8b3c37b0 ("gtp: fix a potential NULL pointer dereference")
> Reported-by: Pau Espin Pedrol <pespin@sysmocom.de>
> Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
>=20
> [...]

Here is the summary with links:
  - [net] gtp: allow -1 to be specified as file description from userspac=
e
    https://git.kernel.org/netdev/net/c/7515e37bce5c

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


