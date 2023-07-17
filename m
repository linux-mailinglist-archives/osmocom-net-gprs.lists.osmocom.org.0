Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7C1755C11
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 17 Jul 2023 08:49:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 55E9A2878B;
	Mon, 17 Jul 2023 06:49:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id by4GvEttO77B; Mon, 17 Jul 2023 06:49:27 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 99224280E9;
	Mon, 17 Jul 2023 06:49:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1A46438A1079;
	Mon, 17 Jul 2023 06:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DFB81280E9;
	Mon, 17 Jul 2023 06:49:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdCjWNgaApel; Mon, 17 Jul 2023 06:49:11 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 5628F27F26;
	Mon, 17 Jul 2023 06:49:11 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qLI2g-00FgXU-KY; Mon, 17 Jul 2023 08:49:10 +0200
Received: from laforge by nataraja with local (Exim 4.96)
	(envelope-from <laforge@gnumonks.org>)
	id 1qLI2Y-00BwM7-0V;
	Mon, 17 Jul 2023 08:49:02 +0200
Date: Mon, 17 Jul 2023 08:49:02 +0200
From: Harald Welte <laforge@gnumonks.org>
To: openbsc@lists.osmocom.org
Subject: Deprecating support for big endian in Osmocom
Message-ID: <ZLTkXpP7ugmztRjI@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Message-ID-Hash: ORBO2FWVVPCHTAXSPZTQLSSM4YB76ITB
X-Message-ID-Hash: ORBO2FWVVPCHTAXSPZTQLSSM4YB76ITB
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ORBO2FWVVPCHTAXSPZTQLSSM4YB76ITB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi all,

during recent patch review
(https://gerrit.osmocom.org/c/osmo-trx/+/33737) the topic of continuing
to maintain support for big endian machines has come up.

While traditionally I've always been a strong proponent of writing
portable code that can run also on big endian systems, it is not the
year 2003 or 2008 anymore, and PowerPC (the main big endian platform) is
dead by now, as is SPARC.  Not just in newly-built processors, but also
in existing and still operating machines, at least of the class that
would run our code.

So unless somebody objects with strong arguments, I'd propose to
officially and explicitly drop supporting big endian systems from
osmocom CNI projects.  

From what I can tell, this would primarily mean
* drop the struct_endianness check from the commit verification
* removing all our struct_endianness-generated or other code that
  explicitly adds big endian support
* adding some kind of #warning or even #error to a common libosmocore
  header file if anyone tries to build on big endian

This obviously doesn't mean we can abandon using [osmo_]{htonl,ntohl},
as network byte order is still network byte order.

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
