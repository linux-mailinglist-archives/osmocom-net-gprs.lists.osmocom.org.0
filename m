Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id B092E32B612
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  3 Mar 2021 10:12:29 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 0212D1B82A6;
	Wed,  3 Mar 2021 09:12:25 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id BF30D1B81F2;
 Wed,  3 Mar 2021 09:10:04 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1lHNW8-0008Ix-9W; Wed, 03 Mar 2021 10:10:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1lHNMU-005dRO-Cp; Wed, 03 Mar 2021 10:00:06 +0100
Date: Wed, 3 Mar 2021 10:00:06 +0100
From: Harald Welte <laforge@osmocom.org>
To: openbsc@lists.osmocom.org
Cc: baseband-devel@lists.osmocom.org, simtrace@lists.osmocom.org,
 osmodevcon@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org
Subject: Osmocom Mailing List re-organization
Message-ID: <YD9QFn3y8ZxcTHTH@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Dear Osmocom community,

This topic has been past due for way too many years by now:
A re-organization of our major mailing lists.

I would like to propose the following changes.  Pleas let me know if you
have any comments or feedback.  I'm aware that renaming will mean people
have to update their mail filter rules, but I think we're long past the
point where the names of some of our lists started to confuse users.

== openbsc@lists.osmocom.org ==

* openbsc doesn't exist anymore since OsmoNITB, which is also obsolete
* does already cover anything "Osmocom CNI" related
* Proposed new name: osmocom-cni@lists.osmocom.org


== osmocom-net-gprs@lists.osmocom.org ==

This date back to when GPRS was a highly experimental add-on to our GSM
code base.  This list should simply be merged with openbsc@ as osmocom-cni@lists.osmocom.org


== simtrace@lists.osmocom.org ==

Historically was created to cover only the simtrace project.

We should rename this to osmocom-simcard@lists.osmocom.org or something
along those lines.  

I would like to suggest it covers

* SIMtrace / SIMtrace2  hardware + firmware
* pySim and related tools for working with SIM/USIM/UICC cards
* any other information / discussion related to SIM/USIM/UICC cards,
  like OTA, ARA-M, ...


== osmodevcon@lists.osmocom.org ==

This has been a private list for people attending OsmoDevCon

I would like to open up list membership to the general public, and ensure
it also covers the new OsmoDevCall.  We could then have discussions regarding
feedback, topics, scheduling, etc. on that list.

Maybe rename it to osmocom-events@lists.osmocom.org instead?

To differentiate: osmocom-event-orga@lists.osmocom.org should remain a
private list related to organizational / administrative topics of those
involved with organizing future events.


== nextepc@lists.osmocom.org ==

Should have been renamed to open5gs@lists.osmocom.org quite some time
ago, I simply forgot about it. My apologies.

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
