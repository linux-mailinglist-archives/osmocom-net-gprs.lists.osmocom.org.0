Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id A592830BC7B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  2 Feb 2021 12:02:17 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id EEB291A1B4E;
	Tue,  2 Feb 2021 11:02:08 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 768771A1B2C
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  2 Feb 2021 11:02:02 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1l6tRZ-0000vh-Pu; Tue, 02 Feb 2021 12:02:02 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1l6tR6-008ZrF-F8; Tue, 02 Feb 2021 12:01:32 +0100
Date: Tue, 2 Feb 2021 12:01:32 +0100
From: Harald Welte <laforge@osmocom.org>
To: morteza ali Ahmadi <morteza.ali.ahmadi@gmail.com>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: Question about libgtpnl
Message-ID: <YBkxDJmBrUa6L3b2@nataraja>
References: <CANPQb9B3OOMb2MbSg84OZN1aQoC420DzjL_aezpqnR2+=WAo2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANPQb9B3OOMb2MbSg84OZN1aQoC420DzjL_aezpqnR2+=WAo2Q@mail.gmail.com>
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

On Sun, Jan 31, 2021 at 11:25:25PM +0330, morteza ali Ahmadi wrote:
> Hi Osmocom team
> We have a basic question about libgtpnl (Linux Kernel GTP-U).

I would suggest that you start with setting this up using OsmoGGSN.

It has built-in support for kernel GTP (via libgtpnl), see the related user manual.

Once that works, you have a "known working" setup and you can start comparing
the differences between how OsmoGGSN uses libgtpnl and how you are using it manually.

I have to admit that I never considered using the manual gtp-link/gtp-tunnel commands
in a "real" network.  Those were only ever used in artificial functional testing.

Regards,
	Harald
-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
