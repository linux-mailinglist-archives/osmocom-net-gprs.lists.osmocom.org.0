Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1414DD16B
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 00:50:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9E35D28054;
	Thu, 17 Mar 2022 23:50:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwDk3vbYGXaM; Thu, 17 Mar 2022 23:50:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3A7F128048;
	Thu, 17 Mar 2022 23:50:25 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8478738A0C10
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Mar 2022 23:50:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6790528024
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Mar 2022 23:50:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OA_SAeO81-7J for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 17 Mar 2022 23:50:15 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by mail.osmocom.org (Postfix) with ESMTPS id AF08628048
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Mar 2022 23:50:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 59293B820FE;
	Thu, 17 Mar 2022 23:50:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3FCDC340FA;
	Thu, 17 Mar 2022 23:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1647561013;
	bh=GSOTd2RxSS2kcmyFx4FLiHgoTudEzwGqgoH4ZKQYRv0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=SGDYuBs2TF9rGRZ60vJCgfRlPYr2aqy+9e6lWoy5MiU5bDekN1eshO9NX8qtKCdCJ
	 Yxd5EveoNUGIcZkVfUy1K+aMu75g2AUlRntP5XQr0PcvJK6iwTZLs4oJa7BspN5krx
	 pmKcrWMuH3Fa7ds9pQhaXZkjWCNOhPBf5Hsdk7VUraHroid96td1kzMOmbjNVfnsQr
	 lRikQk32sqfI8h5AYLF9kacET9IiWdczwR9UmXSNqSCVmq5wMITpL90EjL18yL9fvf
	 oRe30Mht1yHus+x2NEZ4RDFycLkDUzd5WGbnCNaXnWNzyVWIzoDl8KkclEjiPArcg6
	 OClPeApAfv1tQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id DE2F3F03846;
	Thu, 17 Mar 2022 23:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next] gtp: Remove a bogus tab
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <164756101290.14093.7117497281533622987.git-patchwork-notify@kernel.org>
Date: Thu, 17 Mar 2022 23:50:12 +0000
References: <20220317075642.GD25237@kili>
In-Reply-To: <20220317075642.GD25237@kili>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: Z2FTRM6MYF2JOU2DOGRKHCSS56UESJQH
X-Message-ID-Hash: Z2FTRM6MYF2JOU2DOGRKHCSS56UESJQH
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GC4775ASOK6I4VMVAF34YDGDDSXQUYCT/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by Tony Nguyen <anthony.l.nguyen@intel.com>:

On Thu, 17 Mar 2022 10:56:42 +0300 you wrote:
> The "kfree_skb(skb_to_send);" is not supposed to be indented that far.
>=20
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/gtp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] gtp: Remove a bogus tab
    https://git.kernel.org/netdev/net-next/c/02f393381d14

You are awesome, thank you!
--=20
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


