Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B553B4DD203
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Mar 2022 01:46:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7A74028051;
	Fri, 18 Mar 2022 00:46:03 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SQ2sHxuzfsMa; Fri, 18 Mar 2022 00:46:03 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DF62D28048;
	Fri, 18 Mar 2022 00:45:59 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8715D38A0C28
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Mar 2022 00:45:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5FA8528048
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Mar 2022 00:45:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riQobbbuhFWt for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 18 Mar 2022 00:45:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id 9B4F628024
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Mar 2022 00:45:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EE9026158A;
	Fri, 18 Mar 2022 00:45:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ECEBC340E9;
	Fri, 18 Mar 2022 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1647564353;
	bh=869vS8CNRy7w/fO0Z3K24Zwe/P2FIlJv9kmWIGddaJ0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cmr9ZqXCFS93xvfnp/inh6Nz+h9u2D+XvrlcMZOnuSc1PIQ7o0RPB2vZg+8NSTgmM
	 ZLYY1svNwPNBZCrXgNDVuQqVmFGP8oIfhtXXN45S8scBQTlfcTISSHPcRq76nLhb/x
	 AzvREflIpFQD2J2NcnScnyn0XWGkpmRZd/XQ7YKdNOK7ixyjzFU2Ca3rwrhYjvdM95
	 +MMjuj/2dStN4sYluSsNL2ye+ZAxP6gQKnmj4nKkVMQoqrf5soe46X7l5wiuIccrcA
	 IL0n31Gko0MEIUGPE15nG3mYp9F4kh7CigmkDwHAa7M3gR6b2+T0QL/A6FPdPS1Vwt
	 ksAwLY65cyT+Q==
Date: Thu, 17 Mar 2022 17:45:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: patchwork-bot+netdevbpf@kernel.org
Subject: Re: [PATCH net-next] gtp: Remove a bogus tab
Message-ID: <20220317174547.6193437e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <164756101290.14093.7117497281533622987.git-patchwork-notify@kernel.org>
References: <20220317075642.GD25237@kili>
	<164756101290.14093.7117497281533622987.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: OKXXQOS5MQCBACK5SNYQLX4ASQKAGZ57
X-Message-ID-Hash: OKXXQOS5MQCBACK5SNYQLX4ASQKAGZ57
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dan Carpenter <dan.carpenter@oracle.com>, pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OKXXQOS5MQCBACK5SNYQLX4ASQKAGZ57/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, 17 Mar 2022 23:50:12 +0000 patchwork-bot+netdevbpf@kernel.org
wrote:
> Hello:
> 
> This patch was applied to netdev/net-next.git (master)
> by Tony Nguyen <anthony.l.nguyen@intel.com>:
> 
> On Thu, 17 Mar 2022 10:56:42 +0300 you wrote:
> > The "kfree_skb(skb_to_send);" is not supposed to be indented that far.
> > 
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/net/gtp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)  
> 
> Here is the summary with links:
>   - [net-next] gtp: Remove a bogus tab
>     https://git.kernel.org/netdev/net-next/c/02f393381d14

Not really, the patch that got applied was the version from Wojciech.
