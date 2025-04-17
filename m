Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id A92F0A91EBD
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 17 Apr 2025 15:53:11 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 323DA2396E8;
	Thu, 17 Apr 2025 13:53:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b25XII2Y3uOF; Thu, 17 Apr 2025 13:53:10 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0F4542396DA;
	Thu, 17 Apr 2025 13:53:08 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A1FBB38ADA24
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Apr 2025 13:53:04 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 852C72396D8
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Apr 2025 13:53:04 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RQOYCueFABro for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 17 Apr 2025 13:53:03 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id C7FDB2396D3
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 17 Apr 2025 13:53:02 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1u5Pfq-003aq2-B7; Thu, 17 Apr 2025 15:53:02 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.98.2)
	(envelope-from <laforge@osmocom.org>)
	id 1u5Pfk-00000002x7h-31tN;
	Thu, 17 Apr 2025 15:52:56 +0200
Date: Thu, 17 Apr 2025 15:52:56 +0200
From: Harald Welte <laforge@osmocom.org>
To: boufaresimen1994@gmail.com
Subject: Re: PGW stress test using OSMO-UECUPS and TTCN-3/PGW test suite
Message-ID: <aAEHuNAiNU20Ibyf@nataraja>
References: <174480047976.526.5339824699417082982@lists>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174480047976.526.5339824699417082982@lists>
Message-ID-Hash: V2GQPCKWWA74WWENAA32XWAZL3YOKY3A
X-Message-ID-Hash: V2GQPCKWWA74WWENAA32XWAZL3YOKY3A
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/V2GQPCKWWA74WWENAA32XWAZL3YOKY3A/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Imen,

osmo-uecups is a very niche tool, which sysmocom developed internally as
a tool for testing. It is doing what we needed it to do, and it gets
used continuously for what we wrote it.

sysmocom does not earn any money with that tool, nor the test suite, yet
both are developed as open source and available to the wider community
"as-is".

I doubt it is used widely (or at all) by anyone else so far, and it's
sadly highly unlikely that you would find someone here who would be
willing to investigate any issues you encounter in their spare time,
sorry.

In case this is a commercial requirement, feel free to reach out to
sales@sysmocom.de to acquire paid support services.

Having said that, we're of course happy to review and merge any patches
you might want to submit to help us improve the tool.

Kind regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>           https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
