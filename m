Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C125A49801
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Feb 2025 12:00:41 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 497051F8E15;
	Fri, 28 Feb 2025 11:00:41 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XkXWz8KEKO2n; Fri, 28 Feb 2025 11:00:40 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 777371F8E04;
	Fri, 28 Feb 2025 11:00:40 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 51EE838A1A01;
	Fri, 28 Feb 2025 11:00:09 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3A0DF1F8DA8;
	Fri, 28 Feb 2025 11:00:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ymnu_gG47K8Y; Fri, 28 Feb 2025 11:00:06 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id DE49E1F8D9E;
	Fri, 28 Feb 2025 11:00:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1tny69-00BKkT-FX; Fri, 28 Feb 2025 12:00:05 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.98)
	(envelope-from <laforge@osmocom.org>)
	id 1tny1X-00000002Or4-2Xnn;
	Fri, 28 Feb 2025 11:55:19 +0100
Date: Fri, 28 Feb 2025 11:55:19 +0100
From: Harald Welte <laforge@osmocom.org>
To: Neels Hofmeyr <nhofmeyr@sysmocom.de>
Subject: Re: Adding doxygen style comments to header files
Message-ID: <Z8GWF2W0CvYwFw_4@nataraja>
References: <20250225145748.28479793@javelin>
 <Z8C3nwdC2h8jfQXt@my.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z8C3nwdC2h8jfQXt@my.box>
Message-ID-Hash: RZYQJGRZUNWEP7AU42NQILTJJRIMXTDB
X-Message-ID-Hash: RZYQJGRZUNWEP7AU42NQILTJJRIMXTDB
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alexander 'lynxis' Couzens <lynxis@fe80.eu>, openbsc@lists.osmocom.org, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RZYQJGRZUNWEP7AU42NQILTJJRIMXTDB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Neels,

On Thu, Feb 27, 2025 at 08:06:07PM +0100, Neels Hofmeyr wrote:
> BTW, for me, the argument isn't so much doxygen. I never use that HTML and if
> anyone does, please raise your hand. For me it's about reading the source tree.
> (I would very much enjoy dropping the weird doxygen syntax and markers)

I actually open the rendered html (as we publish it on https://ftp.osmocom.org/api/latest/)
every so often.

-- 
- Harald Welte <laforge@osmocom.org>           https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
