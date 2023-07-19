Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE0C763E29
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 26 Jul 2023 20:09:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1925428155;
	Wed, 26 Jul 2023 18:09:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZUYCMg3K9J1i; Wed, 26 Jul 2023 18:09:10 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D422A2810E;
	Wed, 26 Jul 2023 18:09:07 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id BBA8538A1104
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Jul 2023 11:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 832052817D
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Jul 2023 11:40:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBVpbimiuHXH for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Jul 2023 11:40:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id D3FB128058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Jul 2023 11:40:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0A401615FD;
	Wed, 19 Jul 2023 11:40:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C881C433C8;
	Wed, 19 Jul 2023 11:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689766820;
	bh=O7KE6QURVyG2deYSiL5ojlS/R2PfvC0hv2Gs+IrY7Rs=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=SM9HlMi7I0VLwP3EQW15edoyGCWkpKwaeHJi4bIXhmZkYQcIDjBgHb/7Jak7n5bFS
	 CyCkOqV4zi2haiMnI+3xG1kIKn96Zv5YFgLp4A1N6ikTxWt75ZT2e5MPKiuw0xdGk9
	 fLwyr40vmJKeBNs0L5MRrwKptRLsxuTI0PpgiY5EUocQq5QSbtEn1FWTM9Zx629fYG
	 TONpweJHqoRh9hI4LJeo4Hldz+pOrVKPnSPLk/AA34esMprz2YvgGo3CD4xVkev4e2
	 R5G509oCwCJAkVR6irYLIr4rCqQ2CMQ7qRNyPR1/9Dw7gNZyCeqitfgWTfl3ET7+8d
	 GUNvmoG0K+Q7Q==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2A891E21EFA;
	Wed, 19 Jul 2023 11:40:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next 0/3] net: Remove more RTO_ONLINK users.
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <168976682016.23748.15879521041642434800.git-patchwork-notify@kernel.org>
Date: Wed, 19 Jul 2023 11:40:20 +0000
References: <cover.1689600901.git.gnault@redhat.com>
In-Reply-To: <cover.1689600901.git.gnault@redhat.com>
To: Guillaume Nault <gnault@redhat.com>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: ANBO4TIERA7KEOTAB4ISURVHDXTNV7S5
X-Message-ID-Hash: ANBO4TIERA7KEOTAB4ISURVHDXTNV7S5
X-Mailman-Approved-At: Wed, 26 Jul 2023 18:09:03 +0000
CC: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, netdev@vger.kernel.org, pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, dccp@vger.kernel.org, marcelo.leitner@gmail.com, lucien.xin@gmail.com, linux-sctp@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GKJGABC6I2EQJM2LFQTFWBHJJV7H6MAO/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Mon, 17 Jul 2023 15:53:24 +0200 you wrote:
> Code that initialise a flowi4 structure manually before doing a fib
> lookup can easily avoid overloading ->flowi4_tos with the RTO_ONLINK
> bit. They can just set ->flowi4_scope correctly instead.
>=20
> Properly separating the routing scope from ->flowi4_tos will allow to
> eventually convert this field to dscp_t (to ensure proper separation
> between DSCP and ECN).
>=20
> [...]

Here is the summary with links:
  - [net-next,1/3] gtp: Set TOS and routing scope independently for fib l=
ookups.
    https://git.kernel.org/netdev/net-next/c/b16b50476714
  - [net-next,2/3] dccp: Set TOS and routing scope independently for fib =
lookups.
    https://git.kernel.org/netdev/net-next/c/2d6c85ca3eb8
  - [net-next,3/3] sctp: Set TOS and routing scope independently for fib =
lookups.
    https://git.kernel.org/netdev/net-next/c/ba80e20d7f3f

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


