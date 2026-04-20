Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIkfNGl48GmiTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:45 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 82529480E3F
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:45 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6046750DAFA;
	Tue, 28 Apr 2026 09:05:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KAdrGu8UWmuP; Tue, 28 Apr 2026 09:05:38 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 637A650DA6D;
	Tue, 28 Apr 2026 09:05:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2D15338A0125
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 22:00:27 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 757D64F6FE5
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 22:00:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rkYhx_rSONrU for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 22:00:25 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by mail.osmocom.org (Postfix) with ESMTPS id 95F884F6FE0
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 22:00:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 368D440E4D;
	Mon, 20 Apr 2026 22:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14C69C2BCB0;
	Mon, 20 Apr 2026 22:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776722423;
	bh=06k+L69MGxQpyUnpeTop53TZeyKH6tZudEvym3TXPfM=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=loyV55JY+upSRkNglfQQ/PStacCmDmuCY//ffr0qQiq03WwS+2pft9XwIvMbP+fEf
	 X6JbocgAPod78PFI3yuHm+hIqinzZHvRaCR7tcErthJhpcoF9nTi2sYeqUpJ5DOxe7
	 6XU0YVjv9TEQdpIrtqtKTjfRCUWTGgoRTyzU/9FKBDNDYvAt27cn25Q/IZLZSmjXl4
	 eh27z2Eeye6wQ3s0x6CIPtZyHH4TxM/omyf6wrTPHJLMl7S6dBj0MXlfIbO0OZgNKA
	 dwKy/BS8HSERCceVi+UGOdh3WiEsS+R5/Q3gPn0Ry6xLTLNvm9QcXi3IkjOk+z9eFS
	 QfY6fBkquommg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 9541C3930022;
	Mon, 20 Apr 2026 21:59:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <177672238729.1802062.5676745432497911101.git-patchwork-notify@kernel.org>
Date: Mon, 20 Apr 2026 21:59:47 +0000
References: <20260417055408.4667-1-devnexen@gmail.com>
In-Reply-To: <20260417055408.4667-1-devnexen@gmail.com>
To: David CARLIER <devnexen@gmail.com>
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation; nonmember-moderation; administrivia;
 implicit-dest; max-size; news-moderation; no-subject; digests;
 suspicious-header
Message-ID-Hash: JLYKD55VSEYJZCU6FHEHQVTJZZCKASCT
X-Message-ID-Hash: JLYKD55VSEYJZCU6FHEHQVTJZZCKASCT
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:13 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bestswngs@gmail.com,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2DCRO5S5ZVLT7FMRWFIZDJIJXNQUXHQP/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: 82529480E3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[179];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[netdevbpf];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[netfilter.org,gnumonks.org,lunn.ch,google.com,kernel.org,redhat.com,gmail.com,lists.osmocom.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,osmocom-net-gprs-bounces@lists.osmocom.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	RCVD_COUNT_SEVEN(0.00)[10]

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 17 Apr 2026 06:54:08 +0100 you wrote:
> gtp_genl_send_echo_req() runs as a generic netlink doit handler in
> process context with BH not disabled. It calls udp_tunnel_xmit_skb(),
> which eventually invokes iptunnel_xmit() — that uses __this_cpu_inc/dec
> on softnet_data.xmit.recursion to track the tunnel xmit recursion level.
> 
> Without local_bh_disable(), the task may migrate between
> dev_xmit_recursion_inc() and dev_xmit_recursion_dec(), breaking the
> per-CPU counter pairing. The result is stale or negative recursion
> levels that can later produce false-positive
> SKB_DROP_REASON_RECURSION_LIMIT drops on either CPU.
> 
> [...]

Here is the summary with links:
  - gtp: disable BH before calling udp_tunnel_xmit_skb()
    https://git.kernel.org/netdev/net/c/5638504a2aa9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


