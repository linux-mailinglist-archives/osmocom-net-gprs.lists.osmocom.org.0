Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 762556288CB
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 14 Nov 2022 20:00:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CC4F52818E;
	Mon, 14 Nov 2022 19:00:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiK_EEInl_W2; Mon, 14 Nov 2022 19:00:20 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6A38128125;
	Mon, 14 Nov 2022 19:00:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B356538A0036;
	Mon, 14 Nov 2022 19:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8D9BD28049;
	Mon, 14 Nov 2022 19:00:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x19CPYmjxs6q; Mon, 14 Nov 2022 19:00:04 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id CDCE927EC9;
	Mon, 14 Nov 2022 19:00:04 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1ouege-00393h-1r; Mon, 14 Nov 2022 20:00:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.96)
	(envelope-from <laforge@osmocom.org>)
	id 1oueZc-00AfN8-14;
	Mon, 14 Nov 2022 19:52:48 +0100
Date: Mon, 14 Nov 2022 19:52:48 +0100
From: Harald Welte <laforge@osmocom.org>
To: openbsc@lists.osmocom.org
Subject: OsmoDevCall on Nov 16, 2022: MS/BS power control in OsmoBSC/OsmoBTS
Message-ID: <Y3KOgC+p4L+PlEKu@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Message-ID-Hash: QKFHOKPRBAUNRLLLMU4GVSNOFLOMKRRA
X-Message-ID-Hash: QKFHOKPRBAUNRLLLMU4GVSNOFLOMKRRA
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-announce@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/QKFHOKPRBAUNRLLLMU4GVSNOFLOMKRRA/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Dear Osmocom community,

we're happy to announce the next incarnation of OsmoDevCall]].

when:
	November 16, 2022 at 20:00 CET
where:
	https://meeting5.franken.de/b/har-xbc-bsx-wvs

This time, @fixeria will be presenting on

	MS/BS power control support in OsmoBSC/OsmoBTS

For those not entirely 3gpp-acronym-savyy: That's how the uplink (phone
-> network) and downlink (network -> phone) transmit RF power level is
adjusted during an active call in GSM.

This meeting will have the following schedule:

20:00 meet + greet
20:10 presentation as outlined above
21:00 unstructured supplementary social event [*]

Attendance is free of charge and open to anyone with an interest
in Osmocom or open source cellular technologies.

More information about OsmoDevCall, including the schedule
for further upcoming events can be found at
https://osmocom.org/projects/osmo-dev-con/wiki/OsmoDevCall

Looking forward to meeting you soon!

Best regards,
	Harald

[*] this is how we started to call the "unstructured" part of osmocom
developer conferences in the past, basically where anyone can talk about
anything, no formal schedule or structure.

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
