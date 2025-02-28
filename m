Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1A5A49800
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Feb 2025 12:00:31 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2CE551F8DDA;
	Fri, 28 Feb 2025 11:00:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2fgPRC3czTIU; Fri, 28 Feb 2025 11:00:30 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5C4B21F8DCA;
	Fri, 28 Feb 2025 11:00:26 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 17D9538A1A01;
	Fri, 28 Feb 2025 11:00:09 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EF00F1F8DA6;
	Fri, 28 Feb 2025 11:00:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kIw3LvWj_auf; Fri, 28 Feb 2025 11:00:06 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id DC4191F8D9D;
	Fri, 28 Feb 2025 11:00:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1tny69-00BKkP-8a; Fri, 28 Feb 2025 12:00:05 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.98)
	(envelope-from <laforge@osmocom.org>)
	id 1tny4T-00000002Ot1-0Lu7;
	Fri, 28 Feb 2025 11:58:21 +0100
Date: Fri, 28 Feb 2025 11:58:21 +0100
From: Harald Welte <laforge@osmocom.org>
To: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: Re: Adding doxygen style comments to header files
Message-ID: <Z8GWzfg3tMZrQWNU@nataraja>
References: <20250225145748.28479793@javelin>
 <fa7007b6-336e-4f88-bcc1-709274987fe7@sysmocom.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa7007b6-336e-4f88-bcc1-709274987fe7@sysmocom.de>
Message-ID-Hash: OVM2K522MGU3TLYENNQOHC3VVPY74MUP
X-Message-ID-Hash: OVM2K522MGU3TLYENNQOHC3VVPY74MUP
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alexander 'lynxis' Couzens <lynxis@fe80.eu>, openbsc@lists.osmocom.org, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OVM2K522MGU3TLYENNQOHC3VVPY74MUP/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi all,

I'm pretty much with Pau here:

On Wed, Feb 26, 2025 at 01:36:18PM +0100, Pau Espin Pedrol wrote:
> Moreover, I don't really see a good reason for moving documentation to
> header files other than:
> * "My foobar editor decides it only parses header files"
> * A user may want to inspect documentation through installed -dev packages
> in /usr/include/osmocom/.
>
> [...]
>
> There's also some benefits of having it in .c files:
> * Documentation is next to the implementation, so one can quickly validate
> the implementation and formal behavior of the function
> * Way shorter header files wich allow seing the full set of APIs available
> with a quick glance at the screen.
> * Functions can be declared in several headers/places (we hopefully don't do
> this).
> 
> So not like I have a strong opinion on this, but I don't think it really
> makes sense to change the current approach right now?

I also don't have a super strong opinion if we were about to create a policy for
software that hasn't been written yet.  But given we have a massive codebase with
comments in the .c files, I do not think it is a wise investment to convert the entire
codebase.

Regards,
	Harald
-- 
- Harald Welte <laforge@osmocom.org>           https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
