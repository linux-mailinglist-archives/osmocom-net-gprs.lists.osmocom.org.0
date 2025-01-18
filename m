Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDC6A188AE
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:41 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7816B1D32AF;
	Tue, 21 Jan 2025 23:58:41 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Y4756tVjiae; Tue, 21 Jan 2025 23:58:41 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 296A71D3156;
	Tue, 21 Jan 2025 23:58:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 889EB38AD636
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 18 Jan 2025 03:50:31 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 54E9C1CDB9F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 18 Jan 2025 03:50:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCXU49JmveFM for <osmocom-net-gprs@lists.osmocom.org>;
 Sat, 18 Jan 2025 03:50:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 6C1671CDB9A
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 18 Jan 2025 03:50:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DCD385C652F;
	Sat, 18 Jan 2025 03:49:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 486FCC4CEE7;
	Sat, 18 Jan 2025 03:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737172227;
	bh=bE2z+xcvhL06HGPVRIP1ZXbLvXQiiLud1zQnvIN8UKk=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=fFgHe2IYMiQn1iuEXczQkX0WGDhc5b68RdvFdHI6+cPcN/7oKbRUE68Z35NJSsHt3
	 64/l8lwbDlr8WHtRo7qqJ1EHjEI7e49XTMnHaWtBOobQM8+F33PvswhtqlLm8MauTD
	 GXoEWa0tkUEDJroOjXhM7UkO85KO2TkC8UMMOXGC4gndiCskanmOt5T9JLLkgaM7Aw
	 3FNrOiIzydz++Gv0SWLGDl6ABT9c8BxXHB7GxV8P4ZIHakDXuT0ntH4WmmG/OLKtI7
	 UVORkFRx4MUTx+Vh/lemluel4oppfJ91cXOdzBOjWa/EUnXR8T9vTdjYszBXKb+yN4
	 MxqeeRpL/EP7g==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAD8F380AA62;
	Sat, 18 Jan 2025 03:50:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next v2] gtp: Prepare ip4_route_output_gtp() to
 .flowi4_tos conversion.
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <173717225074.2330660.3713240080176094788.git-patchwork-notify@kernel.org>
Date: Sat, 18 Jan 2025 03:50:50 +0000
References: <06bdb310a075355ff059cd32da2efc29a63981c9.1737034675.git.gnault@redhat.com>
In-Reply-To: <06bdb310a075355ff059cd32da2efc29a63981c9.1737034675.git.gnault@redhat.com>
To: Guillaume Nault <gnault@redhat.com>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: IVJPERK4P75PRCCBO4CAZCGKL3RT6Y3U
X-Message-ID-Hash: IVJPERK4P75PRCCBO4CAZCGKL3RT6Y3U
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:12 +0000
CC: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, netdev@vger.kernel.org, horms@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, andrew+netdev@lunn.ch, osmocom-net-gprs@lists.osmocom.org, idosch@nvidia.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/TBOLRID6X4XB5MH2LSBX3MYZNNX7PQNE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 16 Jan 2025 14:39:38 +0100 you wrote:
> Use inet_sk_dscp() to get the socket DSCP value as dscp_t, instead of
> ip_sock_rt_tos() which returns a __u8. This will ease the conversion
> of fl4->flowi4_tos to dscp_t, which now just becomes a matter of
> dropping the inet_dscp_to_dsfield() call.
>=20
> Signed-off-by: Guillaume Nault <gnault@redhat.com>
>=20
> [...]

Here is the summary with links:
  - [net-next,v2] gtp: Prepare ip4_route_output_gtp() to .flowi4_tos conv=
ersion.
    https://git.kernel.org/netdev/net-next/c/2ce7289f180d

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


