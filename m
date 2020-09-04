Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 215BA25E1C2
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  4 Sep 2020 21:10:26 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9F727146B94;
	Fri,  4 Sep 2020 19:10:21 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 1BBE7146A29;
 Fri,  4 Sep 2020 19:08:27 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1kEH4V-0007il-MP; Fri, 04 Sep 2020 21:08:27 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1kEH4O-002qx7-HS; Fri, 04 Sep 2020 21:08:20 +0200
Date: Fri, 4 Sep 2020 21:08:20 +0200
From: Harald Welte <laforge@osmocom.org>
To: openbsc@lists.osmocom.org
Subject: OsmoDevCon  / COVID-19
Message-ID: <20200904190820.GA609235@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
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
Reply-To: openbsc@lists.osmocom.org
Cc: baseband-devel@lists.osmocom.org, simtrace@lists.osmocom.org,
 osmocom-sdr@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org,
 gr-gsm@lists.osmocom.org, gmr@lists.osmocom.org, tetra@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Dear fellow Osmocom developers,

as you all know, we've sadly had to postpone OsmoDevCon 2020 back in
April this year.  At the time, we discussed to re-visit the situation
in October 2020.

While legally it is no problem at all to host an event with ~ 20
participants in Berlin/Germany (specific regulations really only start
from 50+ participants) - I'm not entirely convinced it would be the
smartest move.

Legality and public health regulations are only one part of the equation
- common sense and profound care for the key members of our community
for sure are more relevant considerations to me.

I'm not 100% in favour and not 100% against.  Hence, I would like to get
your input.  Should we

a) try to get an event organized on-site in Berlin?  We'd have to move
   to a larger venue than IN-Berlin with proper ventilation and sufficient
   space so we can keep physical distance, but I think that's
   manageable for sysmocom as organizer.

b) simply postpone to 2021?  I'm convinced the situation will not change
   significantly (in a positive way) until late April 2021, so it's not
   really a "solution" as it will likely mean we have to think of late
   2021 or 2022.

c) plan some kind of online conference?  To be honest, I think this
   model works fine for events where a single speaker wants to give
   lectures to hundreds or thousands of participants.  But OsmoDevCon
   is much more interactive.  We could record or live-stream some talks
   or screencasts from home, sure.  But that only captures one part of
   the event.  We could also try to set a date for a collaborative
   mumble, or the like - for the "hallway track".

What are your thoughts?  Let's avoid cross-posting the discussion to all
of the mailing lists and simply have it on openbsc@lists.osmocom.org.

Regards,
	Harald
-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
