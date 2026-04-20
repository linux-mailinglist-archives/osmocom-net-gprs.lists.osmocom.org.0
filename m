Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJXCEVZ48GmiTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:26 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 16843480E0F
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:25 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7905C50DA7F;
	Tue, 28 Apr 2026 09:05:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ysvE2kwZavdU; Tue, 28 Apr 2026 09:05:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D3D0350DA39;
	Tue, 28 Apr 2026 09:05:12 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7271D38A0169
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:58:19 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 507884F6C91
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:58:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5PRL73FWrTpU for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:58:18 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by mail.osmocom.org (Postfix) with ESMTPS id 7C67D4F6C8C
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:58:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BBF3E60018;
	Mon, 20 Apr 2026 19:58:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF1B5C2BCB0;
	Mon, 20 Apr 2026 19:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776715096;
	bh=7imKsxasw8FzboIX7GWKa18kk7I+PnoGpwZk19NkCp8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=deGlpvDLgGw/fVfLhNYws/HG3Qqprh041CzfycNK8hQIxVBq80dBF+kIT1mYyv85/
	 QwblwfMsIoigJhhD8/AewBZ1NOg8M93JMv9AUWHGZFV+7bZyn+fn6tsps+YLzFqjsJ
	 vFArN4WpbeGygMHyxqN8m3FE9VFElXDYrrPDWL7AkJFtXkm+Fzf1V+d/XVOS56zj1p
	 o4xza5lTrE4GAjIRpirKCOycWKcBiuOWkLf1LS5zGJlRAcuvZAVtZdKqlgPV2yQOgj
	 fOK2WDjkpK1EI8fjD31dHdZw8vlojFu/c5NDgZuB9DGmikuDv6ERyWFIqkawe8OLyl
	 ko3hJZHPeZ3jA==
Date: Mon, 20 Apr 2026 12:58:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Justin Iurman <justin.iurman@gmail.com>
Subject: Re: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
Message-ID: <20260420125815.3a920d9a@kernel.org>
In-Reply-To: <b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
References: <20260417055408.4667-1-devnexen@gmail.com>
	<b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation; nonmember-moderation; administrivia;
 implicit-dest; max-size; news-moderation; no-subject; digests;
 suspicious-header
Message-ID-Hash: I4VE7UGOYVV4XRETTB2GC4GSVSUF4UGW
X-Message-ID-Hash: I4VE7UGOYVV4XRETTB2GC4GSVSUF4UGW
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:02 +0000
CC: David Carlier <devnexen@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Weiming Shi <bestswngs@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/I4VE7UGOYVV4XRETTB2GC4GSVSUF4UGW/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: 16843480E0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[181];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:justin.iurman@gmail.com,m:devnexen@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:justiniurman@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,netfilter.org,gnumonks.org,lunn.ch,google.com,redhat.com,lists.osmocom.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[kuba@kernel.org,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,osmocom-net-gprs-bounces@lists.osmocom.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Mon, 20 Apr 2026 21:02:55 +0200 Justin Iurman wrote:
> On 4/17/26 07:54, David Carlier wrote:
> > gtp_genl_send_echo_req() runs as a generic netlink doit handler in
> > process context with BH not disabled. It calls udp_tunnel_xmit_skb(),
> > which eventually invokes iptunnel_xmit() =E2=80=94 that uses __this_cpu=
_inc/dec
> > on softnet_data.xmit.recursion to track the tunnel xmit recursion level.
> >=20
> > Without local_bh_disable(), the task may migrate between
> > dev_xmit_recursion_inc() and dev_xmit_recursion_dec(), breaking the
> > per-CPU counter pairing. The result is stale or negative recursion
> > levels that can later produce false-positive
> > SKB_DROP_REASON_RECURSION_LIMIT drops on either CPU.
> >=20
> > The other udp_tunnel_xmit_skb() call sites in gtp.c are unaffected:
> > the data path runs under ndo_start_xmit and the echo response handlers
> > run from the UDP encap rx softirq, both with BH already disabled.
> >=20
> > Fix it by disabling BH around the udp_tunnel_xmit_skb() call, mirroring
> > commit 2cd7e6971fc2 ("sctp: disable BH before calling
> > udp_tunnel_xmit_skb()"). =20
>=20
> Why not fix iptunnel_xmit() directly, rather than fixing all possible=20
> callers? Basically, jut like we did for lwtunnel_{output|xmit}(). The=20
> advantage would be that we no longer have to worry about BHs in the=20
> callers, and BHs would only be disabled when necessary.

Oops, I pushed this already. The bot hasn't caught up yet.
Let's revisit this if we find another caller in process context?
