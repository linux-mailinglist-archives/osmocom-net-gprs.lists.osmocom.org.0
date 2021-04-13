Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 47E6335DE6D
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Apr 2021 14:15:10 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id CC3701DB34F;
	Tue, 13 Apr 2021 12:15:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=osmocom.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@osmocom.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=osmocom.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 509A51DB33C
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Apr 2021 12:15:01 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1lWHwa-0007Tg-IX; Tue, 13 Apr 2021 14:15:00 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1lWHwO-0066SY-RF; Tue, 13 Apr 2021 14:14:48 +0200
Date: Tue, 13 Apr 2021 14:14:48 +0200
From: Harald Welte <laforge@osmocom.org>
To: "Keith A. Milner" <maillist@superlative.org>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: Osmo-ggsn MTU issue with Kernel GTP
Message-ID: <YHWLOFweeBu6obM4@nataraja>
References: <2061578.irdbgypaU6@kam-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2061578.irdbgypaU6@kam-desktop>
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

Hi Keith,

On Tue, Apr 13, 2021 at 11:10:18AM +0100, Keith A. Milner wrote:
> However, if I change to using Kernel GTP, by changing the gtpu-mode to 
> "kernel-gtp", traffic will not route (and, yes, I have done modprobe gtp). After 
> some exploration, it appears the tun device is being created with an MTU of 
> zero which then, cannot pass traffic:

I think this one is fixed in
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/net?id=e21eb3a065a2d90ee3bb06cc2e77acad403ec7cd
but "of course" Debian 10 is using a too old kernel to contain that fix.

You could ask Debian if they'd back-port it to the stable kernel?

We would certainly also be happy to accept a patch mentioning this in the user
manual, or a patch that makes osmo-ggsn check the MTU at startup time and print
some big error message into the log.

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
