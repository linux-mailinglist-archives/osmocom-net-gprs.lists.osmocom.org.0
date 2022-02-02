Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id E51AE4A6C54
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  2 Feb 2022 08:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 47A1C283BC;
	Wed,  2 Feb 2022 07:30:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0iP4MSXfnxh; Wed,  2 Feb 2022 07:30:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D17B2282E5;
	Wed,  2 Feb 2022 07:30:03 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id AB2B738A000B;
	Wed,  2 Feb 2022 07:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5283628388;
	Wed,  2 Feb 2022 07:29:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oW-scSHf18gf; Wed,  2 Feb 2022 07:29:00 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 41AA9282E5;
	Wed,  2 Feb 2022 07:28:59 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nFA4Y-003paH-Im; Wed, 02 Feb 2022 08:28:58 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nFA4I-000jK5-1E;
	Wed, 02 Feb 2022 08:28:42 +0100
Date: Wed, 2 Feb 2022 08:28:41 +0100
From: Harald Welte <laforge@osmocom.org>
To: openbsc@lists.osmocom.org
Subject: Re: OsmoDevCon 2022 ?
Message-ID: <YfoyqQZt69RVDXXy@nataraja>
References: <YYEEG5iH/7FxvHLc@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YYEEG5iH/7FxvHLc@nataraja>
Message-ID-Hash: 6V2L4DMYIZEQTJIL2LGEFAA2WTAQDLLN
X-Message-ID-Hash: 6V2L4DMYIZEQTJIL2LGEFAA2WTAQDLLN
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: baseband-devel@lists.osmocom.org, simtrace@lists.osmocom.org, osmocom-sdr@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org, gmr@lists.osmocom.org, tetra@lists.osmocom.org, gr-gsm@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6V2L4DMYIZEQTJIL2LGEFAA2WTAQDLLN/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Dear fellow developers,

given the rather unfortunate development of the pandemic both globally
with Omicron, as well as particularly locally in Berlin, I decided to
further postpone an on-site OsmoDevCon.  At least the late April / early May
time frame seemed unrealistic.

Shifting the event further towards or into summer seems more realistic from
a pandemic point of view, as experience over the past years has shown much
lower infection rates then.  However, there are of course holiday plans, etc.
that might more likely conflict with OsmoDevCon at such a time.

I have started a poll at https://dudle.inf.tu-dresden.de/TrmQAhYOWA/
in order to understand whether there's a preference for a specific month,
and I'd like to invite everyone to state their preference in this poll
(can also be done anonymously).

The venue and format can of course also still be discussed.  I would think
that having everyone in the same hotel would reduce the amount of contacts,
as not every participant meets different hotel staff, has to commute through
a city spending time with hundreds of other different people every day in
public transport or the like.  This might of course increase cost, but I'm sure
we can find a solution for that.

One of the random thoughts I had was to use https://www.linuxhotel.de/ -
a hotel + conference venue specifically dedicated to FOSS with plenty of
outdoor space.  However, it's at least a 35min cab ride from the closest
airports (DUS, DTM) and about an hour from CGN.  For people arriving
long distance by car or train there's probably little difference
compared to Berlin.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
