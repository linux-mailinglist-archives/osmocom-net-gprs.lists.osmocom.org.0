Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 4069631AD5E
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 13 Feb 2021 18:20:13 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 0E09A1C59D4;
	Sat, 13 Feb 2021 17:20:09 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 7C3C01C59C1
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 13 Feb 2021 17:20:03 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>) id 1lAyaR-0002wX-Ov
 for osmocom-net-gprs@lists.osmocom.org; Sat, 13 Feb 2021 18:20:03 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>) id 1lAyXD-00GqUA-NP
 for osmocom-net-gprs@lists.osmocom.org; Sat, 13 Feb 2021 18:16:43 +0100
Date: Sat, 13 Feb 2021 18:16:43 +0100
From: Harald Welte <laforge@osmocom.org>
To: osmocom-net-gprs@lists.osmocom.org
Subject: Very useful wireshark fix for NS / BSSGP decoding
Message-ID: <YCgJexYGwGMwcsPu@nataraja>
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

In case anyone has been annoyed by this before:

wireshark so far always showed _only_ the BSSGP decode in the Information column
of a Gb interface pcap file, even if that BSSGP was contained in the "erroneous
message" IE of a NS-STATUS message.

This made it particularly difficult to spot NS-STATUS, and without custom
coloring rules or search filters, a protocol trace would just look fine - except
that in reality it isn't.

I've now found out what's the proper method to resolve this and submitted
a patch to wireshark, which was merged very quickly:
	https://gitlab.com/wireshark/wireshark/-/merge_requests/2081

After this change, the Information column in the packet list will show
NS-STATUS with the human-redaable cause value for the reject, rather than
displaying BSSGP as if nothing odd happened.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
