Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id C6A4122431E
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 17 Jul 2020 20:28:09 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 8C6B7128317;
	Fri, 17 Jul 2020 18:28:05 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 71510128205;
 Fri, 17 Jul 2020 18:25:59 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1jwV3X-000772-DT; Fri, 17 Jul 2020 20:25:59 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1jwV3O-000iw0-Ku; Fri, 17 Jul 2020 20:25:50 +0200
Date: Fri, 17 Jul 2020 20:25:50 +0200
From: Harald Welte <laforge@osmocom.org>
To: osmocom-announce@lists.osmocom.org
Subject: Osmocom scheduled outage on *2020-07-19 9am CEST*
Message-ID: <20200717182550.GN132470@nataraja>
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
Cc: baseband-devel@lists.osmocom.org, simtrace@lists.osmocom.org,
 osmocom-sdr@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org,
 gmr@lists.osmocom.org, op25-dev@lists.osmocom.org, tetra@lists.osmocom.org,
 openbsc@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

There is an urgent need to migrate our most important public
infrastructure to a new server, and I will be doing that on 
*Sunday, July 19 2020*, starting about 9am CEST.

The migration involves redmine (main osmocom.org website), jenkins, gerrit,
git, and cgit.

In theory, the migration should be quick. I would expect (significantly)
less than one hour of downtime.  However, we all know Murphys law.

Services not affected are mail (including mailman lists), ftp, dns.  So in case
of doubt, we can still use mailing lists to communicate.

In case anyone urgently needs osmocom source code on Sunday morning
during the downtime: There are public mirrors available on github.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
