Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 195F9876FAD
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  9 Mar 2024 09:06:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E7D365D402;
	Sat,  9 Mar 2024 08:06:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DbXwgfPP17CL; Sat,  9 Mar 2024 08:06:01 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2AC4C5D3EB;
	Sat,  9 Mar 2024 08:06:01 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4C33638A108D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 15:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 31A9558422
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 15:39:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qpoko16IAY4c for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  5 Mar 2024 15:39:06 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id CE5F25841F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 15:39:06 +0000 (UTC)
Received: from [78.30.33.11] (port=47632 helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <pablo@gnumonks.org>)
	id 1rhWsg-00E3ER-VP; Tue, 05 Mar 2024 16:39:04 +0100
Date: Tue, 5 Mar 2024 16:39:02 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Breno Leitao <leitao@debian.org>
Subject: Re: [PATCH net-next 2/3] net: gtp: Remove generic .ndo_get_stats64
Message-ID: <Zec8ln0UnRO9UNrm@calendula>
References: <20240305121524.2254533-1-leitao@debian.org>
 <20240305121524.2254533-2-leitao@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240305121524.2254533-2-leitao@debian.org>
X-MailFrom: pablo@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: QWP2QK6WLFCY2VTWA5YFLUK2YCXTLYDI
X-Message-ID-Hash: QWP2QK6WLFCY2VTWA5YFLUK2YCXTLYDI
X-Mailman-Approved-At: Sat, 09 Mar 2024 08:05:48 +0000
CC: Harald Welte <laforge@gnumonks.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org, dsahern@kernel.org, "open list:GTP (GPRS Tunneling Protocol)" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/QWP2QK6WLFCY2VTWA5YFLUK2YCXTLYDI/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, Mar 05, 2024 at 04:15:22AM -0800, Breno Leitao wrote:
> Commit 3e2f544dd8a33 ("net: get stats64 if device if driver is
> configured") moved the callback to dev_get_tstats64() to net core, so,
> unless the driver is doing some custom stats collection, it does not
> need to set .ndo_get_stats64.
> 
> Since this driver is now relying in NETDEV_PCPU_STAT_TSTATS, then, it
> doesn't need to set the dev_get_tstats64() generic .ndo_get_stats64
> function pointer.
> 
> Signed-off-by: Breno Leitao <leitao@debian.org>

Acked-by: Pablo Neira Ayuso <pablo@netfilter.org>
