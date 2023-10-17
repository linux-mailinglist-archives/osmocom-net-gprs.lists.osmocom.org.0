Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 653847D1F58
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DDD1F28304;
	Sat, 21 Oct 2023 20:09:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZLuCrEoDEPD; Sat, 21 Oct 2023 20:09:25 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 41E1528306;
	Sat, 21 Oct 2023 20:09:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id AE7F338A004D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 06:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5DB8F27F3C
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 06:45:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IX4Sz2z1DEN for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 17 Oct 2023 06:45:09 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 36B8B27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 06:45:09 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qsdpC-003Ysp-QU; Tue, 17 Oct 2023 08:45:07 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qsdoQ-000000020rj-2TUW;
	Tue, 17 Oct 2023 08:44:18 +0200
Date: Tue, 17 Oct 2023 08:44:18 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <ZS4tQpFq6CnrKGIc@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <ZS4lkKv3xfnkEWRi@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZS4lkKv3xfnkEWRi@nataraja>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: GF5ZHKAP3R7LVRENVQQIUZKFUAKGTQPM
X-Message-ID-Hash: GF5ZHKAP3R7LVRENVQQIUZKFUAKGTQPM
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Takeru Hayasaka <hayatake396@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GF5ZHKAP3R7LVRENVQQIUZKFUAKGTQPM/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi again,

On Tue, Oct 17, 2023 at 08:11:28AM +0200, Harald Welte wrote:
> I cannot really comment on that, as I haven't yet been thinking about how RSS
> might potentially be used in GTPU use cases.  I would also appreciate
> some enlightenment on that.  What kind of network element/function are we talking
> about (my guess is an UPF).  How does its architecture look like to spread GTPU flows
> across CPUs using RSS?

Thinking of this a few more minutes: In my opinion the usual use case
would be to perform RSS distribution based on a (hash of) the TEID,
possibly in combination with the destination IP(v4/v6) address of the
outer IP header, and possibly also including the [outer] destination UDP
port number.

The latter could likely be always included in the hash, as either it is
the standard port (like in all public standard GTPU traffic) and would
hence not contribute to the distribution across the hash function, or it
would be a non-standard port number in some kind of private/custom
deployment, and then you would want to use it to differentiate traffic,
as otherwise you wouldn't use non-standard ports.

> +#define GTPU_V4_FLOW 0x13    /* hash only */
> +#define GTPU_V6_FLOW 0x14    /* hash only */

so if I'm guessing correctly, those would be hashing only on the V4/V6
destination address?  Why would that be GTP specific?  The IPv4/v6
header in front of the GTP header is a normal IP header.

> +#define GTPC_V4_FLOW 0x15    /* hash only */
> +#define GTPC_V6_FLOW 0x16    /* hash only */

Are there really deployments where the *very limited* GTP-C control
traffic needs RSS for scalability?  The control plane GTP-C traffic
during session setup or mobility is extremely little, compared to GTP-U.

Also, same question applies: Why is hasing the v4/v6 destination address
GTP specific and not generic like any other IP packet?

> +#define GTPC_TEID_V4_FLOW 0x17       /* hash only */
> +#define GTPC_TEID_V6_FLOW 0x18       /* hash only */

Why do we have TEID based hashing only in GTP-C?  The User plane in
GTP-U is normally what you'd want to load-share across CPUs/nodes/...
That's where you have thousands to millions more packets than GTP-C.
What am I missing?

> +#define GTPU_EH_V4_FLOW 0x19 /* hash only */
> +#define GTPU_EH_V6_FLOW 0x20 /* hash only */
> +#define GTPU_UL_V4_FLOW 0x21 /* hash only */
> +#define GTPU_UL_V6_FLOW 0x22 /* hash only */
> +#define GTPU_DL_V4_FLOW 0x23 /* hash only */
> +#define GTPU_DL_V6_FLOW 0x24 /* hash only */

Can you explain what those are supposed to do?  what exactly are those
hashing on?

IMHO that kind of explanation should be in the comment next to the
#define (for all of them) rather than "hash only".  That way it's
obvious to the reader what they do, rather than having to guess.

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
