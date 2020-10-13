Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 383CF28D583
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Oct 2020 22:42:46 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id D3374189D31;
	Tue, 13 Oct 2020 20:42:38 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=gnumonks.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=gnumonks.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id E3E7D189D1F
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Oct 2020 20:42:33 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1kSR7w-0000MJ-Ft; Tue, 13 Oct 2020 22:42:32 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1kSR7r-004aJc-Tg; Tue, 13 Oct 2020 22:42:27 +0200
Date: Tue, 13 Oct 2020 22:42:27 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Richard Haines <richard_c_haines@btinternet.com>
Cc: Paul Moore <paul@paul-moore.com>, pablo@netfilter.org,
 selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>
Subject: Re: [PATCH 3/3] selinux: Add SELinux GTP support
Message-ID: <20201013204227.GP947663@nataraja>
References: <20200930094934.32144-1-richard_c_haines@btinternet.com>
 <20200930094934.32144-4-richard_c_haines@btinternet.com>
 <20200930110153.GT3871@nataraja>
 <33cf57c9599842247c45c92aa22468ec89f7ba64.camel@btinternet.com>
 <20200930133847.GD238904@nataraja>
 <CAHC9VhT5HahBhow0RzWHs1yAh5qQw2dZ-3vgJv5GuyFWrXau1A@mail.gmail.com>
 <20201012093851.GF947663@nataraja>
 <CAHC9VhTrSBsm-qVh95J2SzUq5=_pESwTUBRmVSjXOoyG+97jYA@mail.gmail.com>
 <77226ae9dc60113d1953c1f957849d6460c5096f.camel@btinternet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <77226ae9dc60113d1953c1f957849d6460c5096f.camel@btinternet.com>
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi Richard and list[s],

On Tue, Oct 13, 2020 at 05:38:16PM +0100, Richard Haines wrote:
> There is in development a 5G version of GTP at [1]. 

Please note that there is no such thing as "5G version of GTP".  The GTP-U
(user plane) did not change between 2G, 3G, 4G or even 5G:  IT is still the
same protocol version (GTPv1-U), which you can see from looking at
3GPP TS 29.281 even in its latest release (Rel 15), which is what the authors
of the "gtp5g" github repository reference.

What has changed over time is how the protocol is used, and what kind of
QoS/classification features are added in order to use different GTP
tunnels for different traffic (to the same subscriber / IP address) in
order to subject it to different QoS within the 3GPP network.  This
functionality, by the way, can also be used in 4G networks, and even in
3G/2G networks that follow some of the later releases.

The "gtp5g" module hence should in my point not be a separate module,
but it should be broken down in incremental feature enhancements to the
existing in-kernel GTP user plane module.  The netlink interface should
also obviously be extended in a backwards-compatible way.

My most active kernel years are long gone, but I still think we never
have two implementations of the same protocol (GTPv1U in this case) in
the Kernel.

One could of course also consider to switch to a completely new
implementation / rewrite, but only if it is backwards compatible in
terms of use cases as well as the netlink interface (and hence existing
users of the GTPv1U kernel support).

> The other component that seems to be widely used in these systems is
> SCTP that I added hooks to a few years ago, [...]

indeed, SCTP is extremely heavily used in all cellular systems, from 2G
to 4G (with a peak in 4G), but still used on some 5G interfaces.

Unfortunately it is the tradition (until today) that none of the
industry players that need and use those protocols (GTP, SCTP) seem
to be participating in the development and maintenance effort of related
implementation.  So rather than Nokia, Ericsson or others improving the
in-kernel SCTP, their Linux based devices tend to roll their own
[userspace] SCTP implementations.

Even while in 2020 everybody in "marketing land" speaks about "open
source" in the context of cellular/5G, it is not happening.  It is only
open-washing in order to appear attractive.  In reality, anyone in this
industry derives a *massive* revenue from their patent royalty
collection and they would do anything but release or contribute to code
that comes with an explicit or implicit patent license grant.

So here we are, in 2020, where every single cellular equipment maker
uses Linux, but the most relevant real open source projects in the industry
are run by small enthusiast or very small players...

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
