Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 9584E2D864D
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 12 Dec 2020 12:52:03 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 85C0618C0FF;
	Sat, 12 Dec 2020 11:51:59 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=gnumonks.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=gnumonks.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id C0FFC18C0DB
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Dec 2020 11:51:53 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>) id 1ko3RJ-0000mK-J3
 for osmocom-net-gprs@lists.osmocom.org; Sat, 12 Dec 2020 12:51:53 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>) id 1ko3RC-003t57-0e
 for osmocom-net-gprs@lists.osmocom.org; Sat, 12 Dec 2020 12:51:46 +0100
Date: Sat, 12 Dec 2020 12:51:45 +0100
From: Harald Welte <laforge@gnumonks.org>
To: osmocom-net-gprs@lists.osmocom.org
Subject: GTP kernel module patchset discussion on netdev
Message-ID: <X9Su0XEuNnomR9WA@nataraja>
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

In case anyone is interested, there's two larger patches/patchsets
for the Linux kernel GTP module currently submitted and under discussion
on the netdev mailing list.

I'm not sure why this list was not copied, despite it being listed in
the MAINTAINERS file.

See https://lore.kernel.org/netdev/20201211122612.869225-1-jonas@norrbonn.se/T/#t
and https://lore.kernel.org/netdev/20201212044017.55865-1-pbshelar@fb.com/T/#u

Any feedback / comments / review or even testing is appreciated.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
