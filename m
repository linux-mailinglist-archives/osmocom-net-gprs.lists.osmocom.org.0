Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 5DAFE2707F1
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 18 Sep 2020 23:15:41 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id C21D31415E0;
	Fri, 18 Sep 2020 21:15:36 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 312F51415C6
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 18 Sep 2020 21:15:32 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1kJNjA-0007rA-E3; Fri, 18 Sep 2020 23:15:32 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1kJNiw-008Dcz-54; Fri, 18 Sep 2020 23:15:18 +0200
Date: Fri, 18 Sep 2020 23:15:18 +0200
From: Harald Welte <laforge@osmocom.org>
To: osmocom-net-gprs@lists.osmocom.org
Cc: Alexander Couzens <acouzens@sysmocom.de>
Subject: ns2 thoughts
Message-ID: <20200918211518.GI1611880@nataraja>
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

Hi List and Lynxis,

I've been reading through the ns2 code more thoroughly and had some thoughts
for improvement.  As we have no users yet, and the code is unreleased, we
can still make changes now.

== unused argument in ns2_recv_vc

int ns2_recv_vc(struct gprs_ns2_inst *nsi,
                struct gprs_ns2_vc *nsvc,
                struct msgb *msg)

The 'nsi' is not used and should be redundant, as the nsvc has a back-pointer anyway, right?


== consider using an osmo_ prefix to all symbols / types

The fact that the old code doesn't have that is a tribute to its age, and not
something we need to keep.  The current code has quite a bit of 'gprs_ns2' prefixing for
types, but not for the symbols/functions.  At least that inconsistency should be resolved,
so all have the same prefix, even if it is without osmo.


== const-ify input arguments

If arguments pointing to data are used read-only, let's express that by
the const qualifier.  The easy ones are the likes of
"gprs_ns2_is_frgre_bind(struct gprs_ns2_vc_bind *bind)",
but there are definitely many more.


== use of msgb->dst

In several other osmocom implementations we use msgb->dst to point to the
underlying element receiving or transmitting a message.  So I could imagine
ns2_recv_vc() not only without the 'nsi' argument, but also without the
'nsvc' argument, if we introduce the convention that msgb->dst would always
point to the ns-vc.

Not sure here, it has pros and cons.  Just brainstorming.


== output arguments vs. return value

There are functions like gprs_ns2_find_vc_by_sockaddr() where the result
is not returned, but rather a **pointer output argument is used.  What
is the rationale here?   I don't understand what benefit the extra 0/1
return value gives.  The only other return value is -EINVAL if the **ptr
was NULL - an error situation that wouldn't exist if we simply returned
the pointer from the function.

Regards,
	Harald
-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
