Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 8B73643D0CA
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 27 Oct 2021 20:33:34 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 23F7B20C0FE;
	Wed, 27 Oct 2021 18:33:26 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 0926620C0CA;
 Wed, 27 Oct 2021 18:33:10 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1mfnjY-0000ka-GX; Wed, 27 Oct 2021 20:33:08 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.95)
 (envelope-from <laforge@osmocom.org>) id 1mfnjT-00Eg1e-3s;
 Wed, 27 Oct 2021 20:33:03 +0200
Date: Wed, 27 Oct 2021 20:33:03 +0200
From: Harald Welte <laforge@osmocom.org>
To: openbsc@lists.osmocom.org
Cc: simtrace@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org
Subject: Osmocom redmine upgrade / Let me know if something broke
Message-ID: <YXmbX3UH0UXTFxHL@nataraja>
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

today we finally upgraded our redmine installation from the unmaintained
3.4.x to the latest 4.2.3.  The upgrade had been overdue for years,
but today we (actually, Kevin) finally managed to find out how to make
the openid_provider plugin to work with modern rails 5.x.

In any case, I'm just informing you in case there is some unexpected fallout.

I've verified that at least the following appears working:
* logging into redmine
* openid authentication from gerrit.osmocom.org (also after logout/relogin)
* graphviz rendering
* mscgen rendering

There could however still be unexpected problems, particularly in features
such as
* e-mail notifications from redmine
* updating redmine issues via e-mail
* git integration ("Closes: OS#xxxx")

If you run into any troubles, pleas report to https://osmocom.org/projects/osmocom-servers
or if that also fails, feel free to send e-mails.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
