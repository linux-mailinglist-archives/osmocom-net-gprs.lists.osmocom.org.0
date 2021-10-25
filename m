Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 19CE8439AD2
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 25 Oct 2021 17:50:18 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id C207A217DEF;
	Mon, 25 Oct 2021 15:50:17 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 936B8217DC0
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 25 Oct 2021 15:50:04 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1mf2Ee-00052o-Gc; Mon, 25 Oct 2021 17:50:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.95)
 (envelope-from <laforge@osmocom.org>) id 1mf27G-00DP8w-Ew;
 Mon, 25 Oct 2021 17:42:26 +0200
Date: Mon, 25 Oct 2021 17:42:26 +0200
From: Harald Welte <laforge@osmocom.org>
To: Mirko Kovacevic <northmirko@gmail.com>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: TTCN-3 tests for MME
Message-ID: <YXbQYjnWWhiDZudo@nataraja>
References: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
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

Hi Mirko,

sorry for the late response..

On Tue, Oct 19, 2021 at 03:59:07PM +0200, Mirko Kovacevic wrote:
> I don't know where to write for MME TTCN-3, so I chose to write to it
> closet relative - SGSN.

That's ok, we don't really have any mailing lists specific for the test suites.

> Code compiles, but PDU is not encoded well.
> I attached Wireshark preview.
> 
> Can you help me with this issue ?

I don't have the time to dive into this at the moment, sorry.  It's been
years since I last touched that code, and There are tons of other projects
and issues requiring urgent attention :/

I did have some problems when first implementing it, see
https://bugs.eclipse.org/bugs/show_bug.cgi?id=549252

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
