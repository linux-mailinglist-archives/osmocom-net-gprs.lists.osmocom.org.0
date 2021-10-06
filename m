Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 72CE5439B2F
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 25 Oct 2021 18:06:28 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 30C62218021;
	Mon, 25 Oct 2021 16:06:28 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=FKU2kqr8
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 379 seconds by postgrey-1.37 at lists.osmocom.org;
 Wed, 06 Oct 2021 14:26:35 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id AA25420DBCB
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  6 Oct 2021 14:26:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id F380A61212;
 Wed,  6 Oct 2021 14:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633530008;
 bh=DfS+HcRP041Um9Ci6sK0gVX3hcF+M1et5Y57ysL+ngY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=FKU2kqr8iRFyCKVM+qo4HUkri2RBoS9gJGjKcdHaCHU09TFxVWGqb1myvQnxG2Qnx
 QPkF4ryLw6GUi1abmZ/9KM2QHkOMU2YadqwyTk7hF9ourGYGD69gV3+yPkOn7SpQx0
 DYYBru8khcGzLLqfsTzJl8xHEvEjbC0gPHSASiAipwfa7ikfLLlVQWVt2W44X9nWQU
 a1PH3lV59LNGZjVoJDR5sU7K1pOSfdoNsEly7FVTJi0sI9Wcy1U3I5wBMGBYvuGBAW
 AqQhtgXBusOqE1a/iNssWpLeRtVFNJB7X10tc9xc5tztoUte5D+RbARu4pJyjaB9dp
 5qsy4EIQkwTqg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id EE78E609F4;
 Wed,  6 Oct 2021 14:20:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next] gtp: use skb_dst_update_pmtu_no_confirm()
 instead of direct call
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163353000797.15249.17539810847769225450.git-patchwork-notify@kernel.org>
Date: Wed, 06 Oct 2021 14:20:07 +0000
References: <20211006035739.5377-1-kyeongun15@gmail.com>
In-Reply-To: <20211006035739.5377-1-kyeongun15@gmail.com>
To: Gyeongun Kang <kyeongun15@gmail.com>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 pablo@netfilter.org, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Approved-At: Mon, 25 Oct 2021 16:06:23 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Wed,  6 Oct 2021 03:57:39 +0000 you wrote:
> skb_dst_update_pmtu_no_confirm() is a just wrapper function of
> ->update_pmtu(). So, it doesn't change logic
> 
> Signed-off-by: Gyeongun Kang <kyeongun15@gmail.com>
> ---
>  drivers/net/gtp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] gtp: use skb_dst_update_pmtu_no_confirm() instead of direct call
    https://git.kernel.org/netdev/net-next/c/5b71131b795f

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


