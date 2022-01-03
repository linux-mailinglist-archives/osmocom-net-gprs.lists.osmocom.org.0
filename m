Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDCB4838D5
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  3 Jan 2022 23:46:40 +0100 (CET)
Received: from [127.0.1.1] (lists.osmocom.org [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BF2B92846A;
	Mon,  3 Jan 2022 22:46:38 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1757A38A1818
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  3 Jan 2022 22:46:34 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id DE38A28465
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  3 Jan 2022 22:46:33 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1n4W65-000Sp6-Jo
	for osmocom-net-gprs@lists.osmocom.org; Mon, 03 Jan 2022 23:46:33 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1n4W61-00560w-4A
	for osmocom-net-gprs@lists.osmocom.org;
	Mon, 03 Jan 2022 23:46:29 +0100
Date: Mon, 3 Jan 2022 23:46:29 +0100
From: Harald Welte <laforge@osmocom.org>
To: osmocom-net-gprs@lists.osmocom.org
Subject: lists.osmocom.org migrated to mailman3
Message-ID: <YdN8xeRc2ARN29OF@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Message-ID-Hash: WALOLEBPEJFGHAVSPISZ6W7CMSJIFVSZ
X-Message-ID-Hash: WALOLEBPEJFGHAVSPISZ6W7CMSJIFVSZ
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/WALOLEBPEJFGHAVSPISZ6W7CMSJIFVSZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Dear Osmocom community,

today our mailing list server lists.osmocom.org has finally been migrated
from mailman2-on-freebsd to mailman3-on-linux.  This also included a variety
of changes to DNS.  I'll spare you the details, but everything _should_ be up
and running now.

* The List-Id headers should not have changed.

* all list subscriptions + user accounts have been converted.

* old 'static html' archives are still available (read only) at URLs like
  https://lists.osmocom.org/pipermail/baseband-devel/

* old List URLs like https://lists.osmocom.org/mailman/listinfo/baseband-devel
  are redirected to their respective modern counterparts

In case you notice any mailing list related problem, please don't hesitate to
contact me.

Happy hacking,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
