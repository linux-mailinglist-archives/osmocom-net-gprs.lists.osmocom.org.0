Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id F20527D1F57
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 77BC828158;
	Sat, 21 Oct 2023 20:08:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0g1-s5Gve2xH; Sat, 21 Oct 2023 20:08:34 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DB20D27F3C;
	Sat, 21 Oct 2023 20:08:30 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4C99638A004D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 06:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 08DD127F3C
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 06:15:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyXDQcvV0xV3 for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 17 Oct 2023 06:15:09 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id DE10127F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 06:15:09 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qsdMA-003P2Q-Dk; Tue, 17 Oct 2023 08:15:06 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qsdIe-000000020Oa-1ZtF;
	Tue, 17 Oct 2023 08:11:28 +0200
Date: Tue, 17 Oct 2023 08:11:28 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <ZS4lkKv3xfnkEWRi@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016152343.1fc7c7be@kernel.org>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: SVZ2HWRPMAVLEOD4Y67TW2CUUHLS37EK
X-Message-ID-Hash: SVZ2HWRPMAVLEOD4Y67TW2CUUHLS37EK
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Takeru Hayasaka <hayatake396@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/SVZ2HWRPMAVLEOD4Y67TW2CUUHLS37EK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Jakub and others,

On Mon, Oct 16, 2023 at 03:23:43PM -0700, Jakub Kicinski wrote:
> Adding Willem, Pablo, and Harald to CC (please CC them on future
> versions).

thanks for that Cc, it's much appreciated!

> My understanding of GTP is limited to what I just read on Wikipedia.

If there are any specific questions, I'm very happy to respond to them.

> IIUC the GTPC vs GTPU distinction comes down to the UDP port on
> which the protocol runs? 

that is a convention.  Similar to any other wll-known port

> Are the frames also different?

Yes, the message type is different. There is one specific message type used for GTP-U
and lots of others for GTP-C.

> I'm guessing UL/DL are uplink/downlink but what's EH?

Surprisingly, I also am not familiar with "EH" in the context of GTP.  It's an ancronym
I don't recall reading in any related 3GPP spec.

> Key question is - are there reasonable use cases that you can think of
> for enabling GTP hashing for each one of those bits individually or can
> we combine some of them?

I cannot really comment on that, as I haven't yet been thinking about how RSS
might potentially be used in GTPU use cases.  I would also appreciate
some enlightenment on that.  What kind of network element/function are we talking
about (my guess is an UPF).  How does its architecture look like to spread GTPU flows
across CPUs using RSS?

This is by the way something that I've been also seeing with patches
against the kernel gtp in recent years: People submit patches but are
not explaining the use cases, so it's hard to judge how relevant this
really is to most users.

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
