Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 0CEFE19C3D4
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  2 Apr 2020 16:20:25 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 89FE5108B0D;
	Thu,  2 Apr 2020 14:20:16 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 2C91F108AF9
 for <osmocom-net-gprs@lists.osmocom.org>; Thu,  2 Apr 2020 14:20:11 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1jK0hX-0001wn-5v; Thu, 02 Apr 2020 16:20:11 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.93)
 (envelope-from <laforge@osmocom.org>)
 id 1jK0a1-00DqOC-Uw; Thu, 02 Apr 2020 16:12:25 +0200
Date: Thu, 2 Apr 2020 16:12:25 +0200
From: Harald Welte <laforge@osmocom.org>
To: Mirko Kovacevic <northmirko@gmail.com>
Subject: Re: TTCN3 3G/2G Authentication using SIM card/SIM card reader
Message-ID: <20200402141225.GF3286233@nataraja>
References: <CAMYWRL8ObijbKULOVspvvUSqwwhzgOAymN7S1qsfGTDZ0qUyxA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMYWRL8ObijbKULOVspvvUSqwwhzgOAymN7S1qsfGTDZ0qUyxA@mail.gmail.com>
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

Hi Mirko,

thanks for reaching out and for your kind words.

On Wed, Apr 01, 2020 at 11:20:38PM +0200, Mirko Kovacevic wrote:
> I ran your TTCN3 tests for OsmoSGSN and get loved on a first sight.
> You did amazing job and made countless possibilities. Thank for that.

Happy to see at least somebody out there recognizes the work we do :)

> I know you have C code support in libosmocore library for 3g/2g auth.
> *Can we use SIM card reader in TTCN3 as an option to evaluate
> authentication ?!*

This is not implemented, as in general the target of our TTCN-3 test suites for
core network interfaces is to run fully virtualized, i.e. not to have a dependency
on any given hardware.

Having said this, TTCN-3 is a programming language, and there are multiple
methods by which a physical card reader could be integrated into a test suite.

a) by means of a "Native Function" (i.e. exposing PC/SC API functions to the
   test).  IMHO a bad choice

b) by means of a test port implemented in C++ which one can send APDUs to,
   and receives APDUs back.  So the message interface between the actual test case
   and the card reader would be a TTCH3 test port sending/receiving ISO7816 APDUs.
   The C++ implementation of that test port would the nin turn use pcsc-lite to
   talk to a card reader.

c) by means of the USB test port I wrote (exposing libusb to TITAN), and the
   TTCN-3 implementation of the USB-CCID protocol on top.  This was originally
   developed to test the CCID compliance of card reader firmware, but it could
   of course also used in this context.  This means more code in TTCN-3 and less
   in C++ compared to method 'b' above.

> *Did you ever tried?!*

No, as stated above, it's quite different from what we are using the code for.

Kind regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
