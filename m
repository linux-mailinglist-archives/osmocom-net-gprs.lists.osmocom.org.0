Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDDF4E8734
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 27 Mar 2022 12:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8E37428114;
	Sun, 27 Mar 2022 10:15:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ih7Ejr0UA64q; Sun, 27 Mar 2022 10:15:39 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 542A028048;
	Sun, 27 Mar 2022 10:15:36 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5BE9238A0A7C
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 27 Mar 2022 10:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0508B28048
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 27 Mar 2022 10:15:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NukFYejxVUD3 for <osmocom-net-gprs@lists.osmocom.org>;
	Sun, 27 Mar 2022 10:15:31 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 8352D28024
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 27 Mar 2022 10:15:30 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nYPvl-00AZOP-WF; Sun, 27 Mar 2022 12:15:30 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nYPvQ-002Duj-71;
	Sun, 27 Mar 2022 12:15:08 +0200
Date: Sun, 27 Mar 2022 12:15:08 +0200
From: Harald Welte <laforge@osmocom.org>
To: Neels Hofmeyr <nhofmeyr@sysmocom.de>
Subject: Re: GTP echo implementation
Message-ID: <YkA5LGYcvLa6IM+d@nataraja>
References: <20220324222920.GA18369@my.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220324222920.GA18369@my.box>
Message-ID-Hash: EALLOP4TDCXEMRYOC7EBQDOD335UBE3S
X-Message-ID-Hash: EALLOP4TDCXEMRYOC7EBQDOD335UBE3S
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EALLOP4TDCXEMRYOC7EBQDOD335UBE3S/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Neels,

On Thu, Mar 24, 2022 at 11:29:20PM +0100, Neels Hofmeyr wrote:

> Looking at gtp_echo_responder.c, I see that the code uses none of the Osmocom
> structures (osmo_fd, logging, osmo_select, osmocom/core/endian.h), and it
> implements GTPv1-C and GTPv2-C, but I need GTPv1-U.

yes, look at the license.  It was specifically created to be used under permissive
license (MIT) and hence cannot use the existing libosmo* infrastructure.
This is also outlined in the commit message:
https://gerrit.osmocom.org/c/osmo-ggsn/+/25652

> osmo-hnodeb/gtp.c does use Osmocom structures. It has its own struct gtp1u_hdr.
> But apparently osmo-hnodeb doesn't do any GTP ECHO handling at all.

The latter part is likely a bug, and should be addressed.

Though, to be honest, I'm not 100% sure if the use of GTP-U on any other interface
than that between GSNs (SGSN/SGW and GGSN/PGW) mandates GTP ECHO support...

> I am now only concerned with GTPv1-U, so TS 29.281 should be all I need. Still
> interesting to know, do the echos differ between the protocol versions and
> planes? Can I use the GTPv1-C code from gtp_echo_responder.c for GTPv1-U?

GTPv0 is not really relevant anymore in 99.9% of all situations.
GTPv1C and GTPv2C are completely differnt protocols.
GTP-U v1 is used by GTPv1C and GTPv2C as well as on many other interfaces that don't
use GTP-C for the control plane.

> The fact that the GTPv1-U header contains a TEID confused me at first, then I
> found in 29.281 that the TEID shall be all zeros in the ECHO req + resp
> messages. So, yes, ECHO is done between GSNs as a whole, not on each tunnel.

ACK.

> Will we spawn all-new GTP implementations in every osmocom repository that
> touches GTP, or should I rather implement a re-usable GTP echo response now?

to be fair, responding to a GTP-U echo request is hardly a very complex task.

> One proper (TM) way seems to be to rearrange libgtp in such a way that a caller
> can just use the msg coding part for specific messages, and can use UDP sockets
> without having to set up a complete struct gsn_t. That's some work.

I think libgtp is fundamentlaly un-osmocom-like due to its history and it doesn't
make sense to spend time on it.

> Another way that comes to mind is opening a libosmo-gtp section in libosmocore,
> absorb protocol definitions across the various GTP versions there, and use them
> in the places where we do GTP coding now. Seems a lot of work.

I would say for the struct definitions it would make sense to put it in
include/osmocom/gsm/protocol/ or even better include/osmocom/gprs/protocol/

osmo-hnodeb and osmo-upf could then use that code.  But that's about it. 

> ...or I go the apparently quickest, easiest way, do a copy/paste/reimplement
> from scratch of GTP echo coding, so that we have yet another partial GTP
> implementation in osmo-upf.git. That's what I'm doing now, but it feels wrong.

In general, I hear you, but in this case "partial" means 0.01% of what GTP is...

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
