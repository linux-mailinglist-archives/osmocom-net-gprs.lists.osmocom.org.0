Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3F24E6AAC
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 24 Mar 2022 23:29:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 84A7C2812F;
	Thu, 24 Mar 2022 22:29:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OMb11dwfBBGx; Thu, 24 Mar 2022 22:29:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EE23228048;
	Thu, 24 Mar 2022 22:29:28 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 757A938A0B74
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Mar 2022 22:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4E41E28048
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Mar 2022 22:29:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qGlRGFmXa9a for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Mar 2022 22:29:22 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 9962F28024
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Mar 2022 22:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 708A219812B9
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Mar 2022 22:29:21 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tti-a-RJqwhB; Thu, 24 Mar 2022 22:29:21 +0000 (UTC)
Received: from my.box (i59F7FC30.versanet.de [89.247.252.48])
	by mail.sysmocom.de (Postfix) with ESMTPSA id ECE3F19812B3
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Mar 2022 22:29:20 +0000 (UTC)
Date: Thu, 24 Mar 2022 23:29:20 +0100
From: Neels Hofmeyr <nhofmeyr@sysmocom.de>
To: osmocom-net-gprs@lists.osmocom.org
Subject: GTP echo implementation
Message-ID: <20220324222920.GA18369@my.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: QEZTYCWSSFFZEHBHW3NJMHS24ZJOVDEU
X-Message-ID-Hash: QEZTYCWSSFFZEHBHW3NJMHS24ZJOVDEU
X-MailFrom: nhofmeyr@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/QEZTYCWSSFFZEHBHW3NJMHS24ZJOVDEU/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

I am currently adding GTP echo handling to osmo-upf, which uses the GTP kernel
module to handle GTP G-PDUs. What I need is a GTPv1-U ECHO response when an
GTPv1-U ECHO request comes in on the user land GTP socket.

We already have GTP implementations in

- libgtp (osmo-ggsn.git/gtp/)
- gtp_echo_responder.c (osmo-ggsn.git/utils/)
- osmo-hnodeb/gtp.c

I first used libgtp to do GTP ECHO handling in osmo-upf, but that basically
includes all of the GTP-C GSN code, in a rather inflexible way. It seems to
work, but we don't want to include this clunky dependency.

Looking at gtp_echo_responder.c, I see that the code uses none of the Osmocom
structures (osmo_fd, logging, osmo_select, osmocom/core/endian.h), and it
implements GTPv1-C and GTPv2-C, but I need GTPv1-U.

osmo-hnodeb/gtp.c does use Osmocom structures. It has its own struct gtp1u_hdr.
But apparently osmo-hnodeb doesn't do any GTP ECHO handling at all.

So I need to dig deeper to understand the GTP Echo landscape...

IIUC, there are GTPv0, GTPv1-C, GTPv1-U, GTPv2-C.
3GPP TS 29.281 is GTPv1-U.
Is 29.060 GTPv1-C? Any others?

I am now only concerned with GTPv1-U, so TS 29.281 should be all I need. Still
interesting to know, do the echos differ between the protocol versions and
planes? Can I use the GTPv1-C code from gtp_echo_responder.c for GTPv1-U?

The fact that the GTPv1-U header contains a TEID confused me at first, then I
found in 29.281 that the TEID shall be all zeros in the ECHO req + resp
messages. So, yes, ECHO is done between GSNs as a whole, not on each tunnel.

I think I am ok solving these questions, but am writing this specifically
because it feels like I or at least the next person shouldn't have to re-invent
this wheel yet again.

Will we spawn all-new GTP implementations in every osmocom repository that
touches GTP, or should I rather implement a re-usable GTP echo response now?

One proper (TM) way seems to be to rearrange libgtp in such a way that a caller
can just use the msg coding part for specific messages, and can use UDP sockets
without having to set up a complete struct gsn_t. That's some work.

Another way that comes to mind is opening a libosmo-gtp section in libosmocore,
absorb protocol definitions across the various GTP versions there, and use them
in the places where we do GTP coding now. Seems a lot of work.

...or I go the apparently quickest, easiest way, do a copy/paste/reimplement
from scratch of GTP echo coding, so that we have yet another partial GTP
implementation in osmo-upf.git. That's what I'm doing now, but it feels wrong.

Any thoughts?

~N
