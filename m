Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 8C65A216E95
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  7 Jul 2020 16:20:20 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id E56DF13B5EA;
	Tue,  7 Jul 2020 14:20:11 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 1BE8D13B5D8
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jul 2020 14:20:05 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1jsoS4-0001JL-O1; Tue, 07 Jul 2020 16:20:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1jsoRp-000B6I-Dc; Tue, 07 Jul 2020 16:19:49 +0200
Date: Tue, 7 Jul 2020 16:19:49 +0200
From: Harald Welte <laforge@osmocom.org>
To: avatli@itu.edu.tr
Subject: Re: Network is unreachable error for GTP interface
Message-ID: <20200707141949.GD4411@nataraja>
References: <20200706190024.Horde.A9x9JusmIIuO_9QOsdjLPRD@webmail.itu.edu.tr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200706190024.Horde.A9x9JusmIIuO_9QOsdjLPRD@webmail.itu.edu.tr>
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
Cc: osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi Avatli,

can you please explain what exactly you are trying to do?

What is your overall goal? Which software do you want to use as GGSN/P-GW?

In case you assume that GTP is symmetric and that you can simply establish GTP
tunnels with some command line tunnels between two linux machines: That's not the case.

GTP exists to dynamically manage [lots of] per-subscriber tunnels, all of which
are represented within one GTP "link" by the kernel GTP module.

You always need a userspace application implementing the control plane instance
(GTP-C v1 for GGSN, v2 for P-GW).  And even with that, it always only implements the
GGSN / P-GW side and not the SGSN / S-GW side.

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
