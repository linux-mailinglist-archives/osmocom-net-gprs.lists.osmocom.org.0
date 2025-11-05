Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGtbCIsLzGnGNgYAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:39 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A4136F95F
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:38 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B040C4C02D1;
	Tue, 31 Mar 2026 17:59:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2MwVlWJE0zV5; Tue, 31 Mar 2026 17:59:38 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 656724C02C0;
	Tue, 31 Mar 2026 17:59:36 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 99E2038A0057
	for <osmocom-net-gprs@lists.osmocom.org>;
 Wed,  5 Nov 2025 01:10:47 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6EECE30B1B1
	for <osmocom-net-gprs@lists.osmocom.org>;
 Wed,  5 Nov 2025 01:10:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eGScCnQP-e5C for <osmocom-net-gprs@lists.osmocom.org>;
 Wed,  5 Nov 2025 01:10:46 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by mail.osmocom.org (Postfix) with ESMTPS id 8E18930B1AC
	for <osmocom-net-gprs@lists.osmocom.org>;
 Wed,  5 Nov 2025 01:10:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1CDCC44891;
	Wed,  5 Nov 2025 01:10:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBBDAC116D0;
	Wed,  5 Nov 2025 01:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762305044;
	bh=FB5DHE6oGXpWCDWyeXdH9dCZxHQsOE6KUu/K0AdPtH4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=M0fmUh5rPge7O8CCstWCL0yUjnPtQxBrNrRcHAI+vBitPBwqLiyM+gkKx8FzAEiyW
	 +MpWn+ZcoN39QjijfQ4QTg1W2j5OGsT6bAD1VEvfRMSxED6y5UcLfkWw9ST6Pzsezv
	 5BmIqM6vgagjcTSsb2wvW9My+urTyeTj2twoyv5U6OX9p2vu5TDRoHOMm1kJe6JsJ4
	 vA/4w3d5SRsJAH1gvmeTghL3TC59epz9fNUZbz5rfx1lzzxbE8AuCJA1ta/nftkMKZ
	 h4/55vlTiwdi0jYIJNidS5gECI5RC0rIiOZjyHSGm/NonZYXuGRnrlZRLwbiDXL0l1
	 dPYQIej8dN70g==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAC59380AA54;
	Wed,  5 Nov 2025 01:10:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH] gtp: Fix a typo error for size
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <176230501749.3047110.8432950785737055135.git-patchwork-notify@kernel.org>
Date: Wed, 05 Nov 2025 01:10:17 +0000
References: <20251103060504.3524-1-chuguangqing@inspur.com>
In-Reply-To: <20251103060504.3524-1-chuguangqing@inspur.com>
To: Chu Guangqing <chuguangqing@inspur.com>
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation; nonmember-moderation; administrivia;
 implicit-dest; max-size; news-moderation; no-subject; digests;
 suspicious-header
Message-ID-Hash: QVDFT6VLOJTWINGZ4MSHLZFJSXUROJWW
X-Message-ID-Hash: QVDFT6VLOJTWINGZ4MSHLZFJSXUROJWW
X-Mailman-Approved-At: Tue, 31 Mar 2026 17:59:25 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/AKZXAAEGNOTH4PC6E3GHMKPRTBX2WJYO/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3520];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[netdevbpf];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns,inspur.com:email];
	FORGED_RECIPIENTS(0.00)[m:chuguangqing@inspur.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D3A4136F95F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 3 Nov 2025 14:05:04 +0800 you wrote:
> Fix the spelling error of "size".
> 
> Signed-off-by: Chu Guangqing <chuguangqing@inspur.com>
> ---
>  drivers/net/gtp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - gtp: Fix a typo error for size
    https://git.kernel.org/netdev/net-next/c/2428803d5eef

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


