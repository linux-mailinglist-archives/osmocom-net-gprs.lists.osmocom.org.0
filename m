Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0912F9BA54F
	for <lists+osmocom-net-gprs@lfdr.de>; Sun,  3 Nov 2024 12:47:40 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DA99316AAB3;
	Sun,  3 Nov 2024 11:47:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nLaPCgJLd_uP; Sun,  3 Nov 2024 11:47:39 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3AFC616AAA7;
	Sun,  3 Nov 2024 11:47:38 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id DA80D38A0FEB
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Oct 2024 12:31:00 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B68E9161516
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Oct 2024 12:31:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GUEs21bgGWRZ for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 24 Oct 2024 12:31:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id CC5C0161510
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Oct 2024 12:30:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC6125C5EE9;
	Thu, 24 Oct 2024 12:30:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDE9DC4CEC7;
	Thu, 24 Oct 2024 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729773056;
	bh=efSoxFaQK9nNhTg4YhgK8LbXFhSklRHDegjNv4R6mkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WgWTuAlPN1XWGsuwKEYsuyWWNh0mkhvW53Gl5Hq37WdmSc2TUeiDK/v4MYFCjoR1V
	 7fQTieLxSSH/1Ig6Np7jzeNpXXs+nalJraqUqVrXYTd1zE1Sg06VoshkTJmZ75jUf/
	 VqLZmdz1ixP5NpB6quegS0XN9xhf6V7w0sFxswcDNlkAzCGpXlAzBVeVrQgl6CsoTz
	 8NbsgX5v2Cl0w7UH1z61jc8zU/gDtkfb+0O2IjgsKPogpR/l4c6AkhPNprEmF+gLrL
	 2/jw7lF9kBFWFBbqCrbipdyGRNVWkZyOSwvctNpn3/dkkZ+raPppGCnb2jVNWGxEFb
	 bKyvZ0oZ94ImQ==
Date: Thu, 24 Oct 2024 13:30:51 +0100
From: Simon Horman <horms@kernel.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [PATCH net] gtp: allow -1 to be specified as file description
 from userspace
Message-ID: <20241024123051.GL1202098@kernel.org>
References: <20241022144825.66740-1-pablo@netfilter.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022144825.66740-1-pablo@netfilter.org>
X-MailFrom: horms@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OGYUC4QTTKHDN57PJ3GM4Q2LW5KLTHDX
X-Message-ID-Hash: OGYUC4QTTKHDN57PJ3GM4Q2LW5KLTHDX
X-Mailman-Approved-At: Sun, 03 Nov 2024 11:47:31 +0000
CC: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, fw@strlen.de, pespin@sysmocom.de, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org, Cong Wang <cong.wang@bytedance.com>, Andrew Lunn <andrew+netdev@lunn.ch>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OGYUC4QTTKHDN57PJ3GM4Q2LW5KLTHDX/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

+ Cong and Andrew

On Tue, Oct 22, 2024 at 04:48:25PM +0200, Pablo Neira Ayuso wrote:
> Existing user space applications maintained by the Osmocom project are
> breaking since a recent fix that addresses incorrect error checking.
> 
> Restore operation for user space programs that specify -1 as file
> descriptor to skip GTPv0 or GTPv1 only sockets.
> 
> Fixes: defd8b3c37b0 ("gtp: fix a potential NULL pointer dereference")
> Reported-by: Pau Espin Pedrol <pespin@sysmocom.de>
> Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/gtp.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index a60bfb1abb7f..70f981887518 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -1702,20 +1702,24 @@ static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
>  		return -EINVAL;
>  
>  	if (data[IFLA_GTP_FD0]) {
> -		u32 fd0 = nla_get_u32(data[IFLA_GTP_FD0]);
> +		int fd0 = nla_get_u32(data[IFLA_GTP_FD0]);
>  
> -		sk0 = gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
> -		if (IS_ERR(sk0))
> -			return PTR_ERR(sk0);
> +		if (fd0 >= 0) {
> +			sk0 = gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
> +			if (IS_ERR(sk0))
> +				return PTR_ERR(sk0);
> +		}
>  	}
>  
>  	if (data[IFLA_GTP_FD1]) {
> -		u32 fd1 = nla_get_u32(data[IFLA_GTP_FD1]);
> +		int fd1 = nla_get_u32(data[IFLA_GTP_FD1]);
>  
> -		sk1u = gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
> -		if (IS_ERR(sk1u)) {
> -			gtp_encap_disable_sock(sk0);
> -			return PTR_ERR(sk1u);
> +		if (fd1 >= 0) {
> +			sk1u = gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
> +			if (IS_ERR(sk1u)) {
> +				gtp_encap_disable_sock(sk0);
> +				return PTR_ERR(sk1u);
> +			}
>  		}
>  	}
>  
> -- 
> 2.30.2
> 
> 
