Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id B3333756CA8
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 17 Jul 2023 20:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6989D2879C;
	Mon, 17 Jul 2023 18:59:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MG9QQb7L9dTH; Mon, 17 Jul 2023 18:59:33 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 65E1728176;
	Mon, 17 Jul 2023 18:59:30 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 3154A38A10AF;
	Mon, 17 Jul 2023 18:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0743F2817D;
	Mon, 17 Jul 2023 18:59:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q42E4Ta19yML; Mon, 17 Jul 2023 18:59:17 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 0738627F26;
	Mon, 17 Jul 2023 18:59:16 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qLTRE-00H9vm-H2; Mon, 17 Jul 2023 20:59:16 +0200
Received: from laforge by nataraja with local (Exim 4.96)
	(envelope-from <laforge@gnumonks.org>)
	id 1qLTJF-00CAMS-0f;
	Mon, 17 Jul 2023 20:51:01 +0200
Date: Mon, 17 Jul 2023 20:51:01 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Neels Hofmeyr <nhofmeyr@sysmocom.de>
Subject: Re: Deprecating support for big endian in Osmocom
Message-ID: <ZLWNlbPt2QkXE5L3@nataraja>
References: <ZLTkXpP7ugmztRjI@nataraja>
 <ZLWBR2dTdsUJ7jmk@my.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZLWBR2dTdsUJ7jmk@my.box>
Message-ID-Hash: 6A36VKCKCUZO55QIDXROKMVGNSUFOTPP
X-Message-ID-Hash: 6A36VKCKCUZO55QIDXROKMVGNSUFOTPP
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6A36VKCKCUZO55QIDXROKMVGNSUFOTPP/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Neels and others,

On Mon, Jul 17, 2023 at 07:58:31PM +0200, Neels Hofmeyr wrote:
> From my personal, practical POV, I have no need ever of using a BE platform.

For me its different: I have been using BE in the past and I may still use BE
platforms at some point in time.  But that's my personal retrocomputing intrest,
and I don't need to run osmo* on it.  And if I want, it is my personal choice
to invest time into it, I don't want to burden other developers with it.

> It's true that running the struct_endianness.py is not much effort, but that
> script is not very intelligent and can only handle very specific cases (IIRC
> unions don't work, and the data type needs to be <= 8bit). I remember that
> recently there was a case of that script not working properly. So there is at
> leat *some* quirkiness that remains, even though we have this script.

yes, we have that script, it doesn't handle all cases, and we have zero testing.

So rather than providing the impression we have BE support, let's just drop
it and be clear about it.  If anyone actually shows up and wants to
maintain it, we wouldn't mind related patches, I guess.  Similar to the
statement at the time we dropped FreeBSD support: If somebody wants to
work on that and provide alternatives for the various linux-specific
bits in libosmocore (timerfd, etc.) - fine.

> Another thought is that a good friend of mine likes to operate legacy hardware,
> [...]

I am such a person myself, see above.  But it is not the job of the average
osmocom developer to care for the peculiar fetishes of 0.0001% of a user base
that's already working in a niche industry.

> Every C/C++ code is having this problem.

Well, every C/C++ code dealing with external binary data formats stored
in a non-native endianess.  So pure application code dealing only with
textual protocols (HTTP, SMTP, ...) or data formats (XML, JSON) is
unaffected.

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
