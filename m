Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9BA744CF9
	for <lists+osmocom-net-gprs@lfdr.de>; Sun,  2 Jul 2023 11:29:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 163FE2879B;
	Sun,  2 Jul 2023 09:29:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EzMRt8VBgPib; Sun,  2 Jul 2023 09:29:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 97CE427F26;
	Sun,  2 Jul 2023 09:29:04 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6345138A0FDB
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 24 Jun 2023 22:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AE3892816C
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 24 Jun 2023 22:30:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NrWYYATGPIll for <osmocom-net-gprs@lists.osmocom.org>;
 Sat, 24 Jun 2023 22:30:22 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 4387527F26
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 24 Jun 2023 22:30:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8B82760AB3;
	Sat, 24 Jun 2023 22:30:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C8DC433C0;
	Sat, 24 Jun 2023 22:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687645820;
	bh=JozKjvJVVkOwV24oHfc7a0IHdN5lV4lR3XNj2AhWo8M=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=J1mcA+rXUBfgoqXG0kYWs3QwB3lm9aHrvMAr4JHuRN0pN8RREJeUcoZ7rCHUz4/mp
	 2ZkfaVPKIUGl0WagKblXq3gbzBI8BtIKWK5DyYmTjW9X/K6PSWMjx/lizBB32IaHG3
	 G4t6IPKPXKgY/GaipTswJsbgXY4AVO7WpELFGQASU8+xi9Pq0sl4u0/T57dr/l6zFp
	 2zpS9tZPyzdjiKONtP7t2xhQ5qA6iFtM/Khxv5ODdNH/1/WPTdxH0rAD1bh24jwlbz
	 9ClntGuTILrseRhB//L1JdPffy30l2h3ifl9Q+Pypwi1bIgHRn48lKaTTvaFuqGKMZ
	 lQn7CcvfgM6LQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C76CFC43157;
	Sat, 24 Jun 2023 22:30:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH v1 net] gtp: Fix use-after-free in __gtp_encap_destroy().
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <168764581981.27285.13297166277839266868.git-patchwork-notify@kernel.org>
Date: Sat, 24 Jun 2023 22:30:19 +0000
References: <20230622213231.24651-1-kuniyu@amazon.com>
In-Reply-To: <20230622213231.24651-1-kuniyu@amazon.com>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 7VWAF54QBWDSJYJUL2XUVP3DECPMVMLY
X-Message-ID-Hash: 7VWAF54QBWDSJYJUL2XUVP3DECPMVMLY
X-Mailman-Approved-At: Sun, 02 Jul 2023 09:28:54 +0000
CC: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org, laforge@gnumonks.org, ap420073@gmail.com, kuni1840@gmail.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, syzkaller@googlegroups.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JYWZOXXUIVZPFOZYL4P4GMTB2LV6QL36/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 22 Jun 2023 14:32:31 -0700 you wrote:
> syzkaller reported use-after-free in __gtp_encap_destroy(). [0]
>=20
> It shows the same process freed sk and touched it illegally.
>=20
> Commit e198987e7dd7 ("gtp: fix suspicious RCU usage") added lock_sock()
> and release_sock() in __gtp_encap_destroy() to protect sk->sk_user_data=
,
> but release_sock() is called after sock_put() releases the last refcnt.
>=20
> [...]

Here is the summary with links:
  - [v1,net] gtp: Fix use-after-free in __gtp_encap_destroy().
    https://git.kernel.org/netdev/net/c/ce3aee7114c5

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


