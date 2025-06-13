Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D99EAE471C
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 23 Jun 2025 16:41:58 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DF04B26F996;
	Mon, 23 Jun 2025 14:41:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LFkhEn7TQ4t8; Mon, 23 Jun 2025 14:41:57 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A121626F98A;
	Mon, 23 Jun 2025 14:41:54 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2B63038A003B
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 13 Jun 2025 16:49:03 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0EFFD2694EB
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 13 Jun 2025 16:49:03 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UmR7on6rkKNb for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 13 Jun 2025 16:49:02 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by mail.osmocom.org (Postfix) with ESMTPS id 21F922694E6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 13 Jun 2025 16:49:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DE80A45236;
	Fri, 13 Jun 2025 16:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17550C4CEE3;
	Fri, 13 Jun 2025 16:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749833339;
	bh=9qE4Kk3orcnozxb2Pvy7xMPE0E6IASPUn9yb17+Z9nE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lQHeqPmL2hTxWlqwT4eWnqQcuKXz+AR0+zVBfe8DXk8c00+4jSSVjQzIIwS9kjYlI
	 JKraQuA7ftKBR5I+YmToYLO01DxFv9JZmns7SX/5HRebOkuJfvltKaeuV3Dj6x3ukp
	 y1cGjPpeBO9OtzOqcZkMuZhlmrRDcRvQN18Vtj3CtR0TAKiD1O9fsqX6ri0i6fzasW
	 JZ+y7u0H3lT+O7t5LnZlyeJheC6nfLnLn9Zra7SCmFNe5KQwayaDiNh0vMdDmbfdKe
	 4JwVkE23AGm+toTtjamskt9qZbWsqjwwwUdExchuinb8olFWy1A6cIwBpkBgMM1W/6
	 2kDPMbRGrVPwg==
Date: Fri, 13 Jun 2025 09:48:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Petr Machata <petrm@nvidia.com>
Subject: Re: [PATCH net-next v2 01/14] net: ipv4: Add a flags argument to
 iptunnel_xmit(), udp_tunnel_xmit_skb()
Message-ID: <20250613094858.5dfa435e@kernel.org>
In-Reply-To: <93258d0156bab6c2d8c7c6e1a43d23e13e9830ec.1749757582.git.petrm@nvidia.com>
References: <cover.1749757582.git.petrm@nvidia.com>
	<93258d0156bab6c2d8c7c6e1a43d23e13e9830ec.1749757582.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 2ZVAT5NDYOPQFTBKJRK4JZZCQ3KPHMBB
X-Message-ID-Hash: 2ZVAT5NDYOPQFTBKJRK4JZZCQ3KPHMBB
X-Mailman-Approved-At: Mon, 23 Jun 2025 14:41:52 +0000
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, David Ahern <dsahern@gmail.com>, netdev@vger.kernel.org, Simon Horman <horms@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, mlxsw@nvidia.com, Antonio Quartulli <antonio@openvpn.net>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org, Andrew Lunn <andrew+netdev@lunn.ch>, Taehee Yoo <ap420073@gmail.com>, "Jason A. Donenfeld" <Jason@zx2c4.com>, wireguard@lists.zx2c4.com, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, linux-sctp@vger.kernel.org, Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2ZVAT5NDYOPQFTBKJRK4JZZCQ3KPHMBB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, 12 Jun 2025 22:10:35 +0200 Petr Machata wrote:
>  void udp_tunnel_xmit_skb(struct rtable *rt, struct sock *sk, struct sk_buff *skb,
>  			 __be32 src, __be32 dst, __u8 tos, __u8 ttl,
>  			 __be16 df, __be16 src_port, __be16 dst_port,
> -			 bool xnet, bool nocheck)
> +			 bool xnet, bool nocheck, u16 ipcb_flags)

This is a lot of arguments for a function.
I don't have a great suggestion off the top of my head, but maybe
think more about it?
