Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D0C28390973
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 May 2021 21:10:15 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 75BEC1C5536;
	Tue, 25 May 2021 19:10:11 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id D3E3B1C5522
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 25 May 2021 19:10:05 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1llcRI-0004df-DK; Tue, 25 May 2021 21:10:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94.2)
 (envelope-from <laforge@osmocom.org>)
 id 1llcNy-002uOo-0v; Tue, 25 May 2021 21:06:38 +0200
Date: Tue, 25 May 2021 21:06:38 +0200
From: Harald Welte <laforge@osmocom.org>
To: "Encinar Sanz, Paula (ext)" <paula.encinar.external@atos.net>
Cc: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
Subject: Re: Linux kernel GTP-U
Message-ID: <YK1KvjRdQxjvImcv@nataraja>
References: <PR3PR02MB6346C6E0175EFB8ED5CE476CAA269@PR3PR02MB6346.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3PR02MB6346C6E0175EFB8ED5CE476CAA269@PR3PR02MB6346.eurprd02.prod.outlook.com>
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

Dear Paula,

On Mon, May 24, 2021 at 02:20:14PM +0000, Encinar Sanz, Paula (ext) wrote:
> I am investigating linux kernel GTP-U to build a 5G Core with this kernel but I understand that it does not support 5G and only works with 4G. Could you solve this doubt?

Can you please be specific?  It implements the GGSN/P-GW side of GTP-U.
GTP-U did not change from 2G to 3G to 4G to 5G.  Your statement / claim
is very broad and unspecific.  Please outline which exact
feature/functionality/procedure  you would need and which is currently
not supported?

In any case, like all of Linux, and all of Osmocom, the GTP-U kernel
module is a collaborative open source project.  Anyone can submit
contributions to extend its functionality and add whatever fetaure they
may be missing.

> This e-mail and the documents attached are confidential and intended solely for the addressee; it may also be privileged. If you receive this e-mail in error, please notify the sender immediately and destroy it.

Please don't post to public mailing lists (with public archives!) with such
e-mail disclaimers. 

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
