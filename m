Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1F8876FAE
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  9 Mar 2024 09:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A24CF5D41A;
	Sat,  9 Mar 2024 08:06:02 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sl7Kfnn2VuSj; Sat,  9 Mar 2024 08:06:02 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1B73B5D406;
	Sat,  9 Mar 2024 08:06:02 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4B34D38A108D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 15:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 306605844B
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 15:39:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x5DieTK75hJE for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  5 Mar 2024 15:39:22 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 821A758448
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 15:39:22 +0000 (UTC)
Received: from [78.30.33.11] (port=59622 helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <pablo@gnumonks.org>)
	id 1rhWsx-00E3FT-7j; Tue, 05 Mar 2024 16:39:21 +0100
Date: Tue, 5 Mar 2024 16:39:18 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Breno Leitao <leitao@debian.org>
Subject: Re: [PATCH net-next 3/3] net: gtp: Move net_device assigned in setup
Message-ID: <Zec8pmBvl6r3wQUB@calendula>
References: <20240305121524.2254533-1-leitao@debian.org>
 <20240305121524.2254533-3-leitao@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240305121524.2254533-3-leitao@debian.org>
X-MailFrom: pablo@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 4NQ57WCQR2WO34CNGM26IWLANNKXC7G2
X-Message-ID-Hash: 4NQ57WCQR2WO34CNGM26IWLANNKXC7G2
X-Mailman-Approved-At: Sat, 09 Mar 2024 08:05:48 +0000
CC: Harald Welte <laforge@gnumonks.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org, dsahern@kernel.org, "open list:GTP (GPRS Tunneling Protocol)" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4NQ57WCQR2WO34CNGM26IWLANNKXC7G2/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, Mar 05, 2024 at 04:15:23AM -0800, Breno Leitao wrote:
> Assign netdev to gtp->dev at setup time, so, we can get rid of
> gtp_dev_init() completely.
> 
> Signed-off-by: Breno Leitao <leitao@debian.org>

Acked-by: Pablo Neira Ayuso <pablo@netfilter.org>
