Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B075A4F7A
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 29 Aug 2022 16:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 97F11282CA;
	Mon, 29 Aug 2022 14:41:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ugl9-3yI6-fC; Mon, 29 Aug 2022 14:41:36 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 34A77282C4;
	Mon, 29 Aug 2022 14:41:35 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ED60438A0AE4
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Aug 2022 12:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D2E6D28192
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Aug 2022 12:10:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O6CSFBqLv53y for <osmocom-net-gprs@lists.osmocom.org>;
	Mon, 29 Aug 2022 12:10:20 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 1670D2818F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Aug 2022 12:10:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9903CB80EF7;
	Mon, 29 Aug 2022 12:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5EA1FC433D6;
	Mon, 29 Aug 2022 12:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661775017;
	bh=fK7S2U9FH3Mh1H4KPhuYrCAu21172KjX+5QYn8bZxhw=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=TBIvehqlXAnaUEIBMGrGtucuAxZHCjYUbH9gZTzp39B5ATUAioe8WO3EhAjb3uXxe
	 dMkxYY6hb+WC6eHZyS/cPa8r2CKTI01EB9MGyg1IsF1/oZT7KJghqNmyKNC9XH8ves
	 Cj3pIf4EmX/G+vS/jKdpHZhOleUGsARHnbS9xEcHQZhYvclYHJsMAatPyh4hKIzTRv
	 ajwmDjfIKqrpsF4i7DFIPFPAdyZsb0nMzw3IdNk/hNCLbimS7UVtlTLrinQs2UaKDw
	 YTwmujROS5OWbAtqbFtveKef90uGKF6IuQSib+pIDDHdy0cvO/DcGODQekO/LzgUrc
	 qkbrfSs4DNb4A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4809AE924D7;
	Mon, 29 Aug 2022 12:10:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next] genetlink: start to validate reserved header bytes
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <166177501728.22813.10790787483082655487.git-patchwork-notify@kernel.org>
Date: Mon, 29 Aug 2022 12:10:17 +0000
References: <20220825001830.1911524-1-kuba@kernel.org>
In-Reply-To: <20220825001830.1911524-1-kuba@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Content-Transfer-Encoding: quoted-printable
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: GNTHEQ7JSHT7MVUFSA6OHSXP7WIU2L46
X-Message-ID-Hash: GNTHEQ7JSHT7MVUFSA6OHSXP7WIU2L46
X-Mailman-Approved-At: Mon, 29 Aug 2022 14:41:23 +0000
CC: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com, jiri@resnulli.us, johannes@sipsolutions.net, linux-block@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, linux-wpan@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, target-devel@vger.kernel.org, linux-pm@vger.kernel.org, virtualization@lists.linux-foundation.org, linux-cifs@vger.kernel.org, cluster-devel@redhat.com, mptcp@lists.linux.dev, lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, linux-security-module@vger.kernel.org, dev@openvswitch.org, linux-s390@vger.kernel.org, tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OSYCNZDKBU5JYYFFWWSOZCGBP3DLHQSS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Wed, 24 Aug 2022 17:18:30 -0700 you wrote:
> We had historically not checked that genlmsghdr.reserved
> is 0 on input which prevents us from using those precious
> bytes in the future.
>=20
> One use case would be to extend the cmd field, which is
> currently just 8 bits wide and 256 is not a lot of commands
> for some core families.
>=20
> [...]

Here is the summary with links:
  - [net-next] genetlink: start to validate reserved header bytes
    https://git.kernel.org/netdev/net-next/c/9c5d03d36251

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


