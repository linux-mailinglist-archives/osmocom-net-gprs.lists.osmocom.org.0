Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AA77D1F5E
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:14:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DCE612831F;
	Sat, 21 Oct 2023 20:14:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9BcZXKrNb6Om; Sat, 21 Oct 2023 20:13:58 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5CE482831A;
	Sat, 21 Oct 2023 20:13:54 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8AFC538A3D35
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 08:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4C3C127F3C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 08:15:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NdLgXlksnCJT for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 08:15:10 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id E6D6927F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 08:15:09 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qt1hq-00BbbJ-Ah; Wed, 18 Oct 2023 10:15:06 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qt1fY-00000002Ylo-3fKj;
	Wed, 18 Oct 2023 10:12:44 +0200
Date: Wed, 18 Oct 2023 10:12:44 +0200
From: Harald Welte <laforge@gnumonks.org>
To: takeru hayasaka <hayatake396@gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <ZS-TfMKAxHLEiXBl@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
 <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: GHGHDU6PBBOYMMWYMHWDZDACKVBIYN7R
X-Message-ID-Hash: GHGHDU6PBBOYMMWYMHWDZDACKVBIYN7R
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jakub Kicinski <kuba@kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GHGHDU6PBBOYMMWYMHWDZDACKVBIYN7R/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Dear Takeru, Jakub and list,

On Wed, Oct 18, 2023 at 10:53:02AM +0900, takeru hayasaka wrote:
> > Let's forget about capabilities of Intel NICs for now - can you as a
> > user think of practical use cases where we'd want to turn on hashing
> > based on TEID for, e.g. gtpu6 and not gtpc6?
> 
> of course!
> There are clearly cases where we would want to use gtpu4|6 instead of gtpc4|6.
> 
> For instance, there are PGWs that have the capability to separate the
> termination of communication of 4G LTE users into Control and User
> planes (C/U).

I would argue it is the standard case in any PGW (or SMF+UPF) to process
GTP-C differently than GTP-U.  That's what the entire CUPS (control/user plane
split) architecture is meant for.

Now the question is how does one implement that? As the related signaling protocols
all allow to specify different IP addresses for GTPv1/v2-C (v1 for 2G/3G
and v2 for 4G) and GTPv1-U (v1 used everywhere) it is always possible to
use separate IP addresses for control and user plane.  It's even normal
that a single GTP-C instance (on one IP) manages multiple GTP-U
instances on other IP-addresses.  Those IPs are then handled by
completely different physical servers/systems/VMs/...

So only in case the user intentionally configures their network to use
the same IP address for GTP-C and GTP-U traffic one will need to start
distinguishing GTP-C and GTP-U on one host/NIC with the RSS mechanism:
Steer the GTP-C traffic to the control plane instance on one CPU and
spread the GTP-U traffic via hash function to multiple other
queues/CPUs.  I personally think it's short-sighted to use identical IPs
for control and user plane, as it means you can never scale out to
multiple machines without introducing some kind of dedicated load
balancer in front.  But assuming some people still want to do it that
way: Yes, then you need the feature to split GTP-C form GTP-U via RSS to
scale well.

What I'm somehwat more wondering about is the usability to load-balance
GTP-C traffic over multiple queues/cores.  As stated earlier, that's
just signaling.

> If we were to propose again, setting aside considerations specific to
> Intel, I believe, considering the users of ethtool, the smallest units
> should be gtpu4|6 and gtpc4|6.

agreed.  Though I'm not entirely sure one would usually want to treat v4
different from v6.  I'd assume they would usually both follow the same
RSS scheme?

> Regarding Extension Headers and such, I think it would be more
> straightforward to handle them implicitly.

I would also agree to that.
-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
