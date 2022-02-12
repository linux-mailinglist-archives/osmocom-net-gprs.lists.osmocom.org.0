Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D154B33BE
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 12 Feb 2022 09:20:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 96FE8283D5;
	Sat, 12 Feb 2022 08:20:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iK5M9trdm0M8; Sat, 12 Feb 2022 08:20:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 367AB283AA;
	Sat, 12 Feb 2022 08:20:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B119538A003F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 08:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 87B67283D4
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 08:20:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLfjxW7EIu4J for <osmocom-net-gprs@lists.osmocom.org>;
	Sat, 12 Feb 2022 08:20:06 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id B6CC1282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 08:20:05 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIndU-000SLF-OY; Sat, 12 Feb 2022 09:20:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIncS-005Anx-QB;
	Sat, 12 Feb 2022 09:19:00 +0100
Date: Sat, 12 Feb 2022 09:19:00 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [RFC PATCH net-next v5 4/6] gtp: Add support for checking GTP
 device type
Message-ID: <YgdtdIx8TywjZ82a@nataraja>
References: <20220211175405.7651-1-marcin.szycik@linux.intel.com>
 <20220211175508.7952-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220211175508.7952-1-marcin.szycik@linux.intel.com>
Message-ID-Hash: PFMHPQTVFTFTC375Z3YCU4HNFUHRVGAY
X-Message-ID-Hash: PFMHPQTVFTFTC375Z3YCU4HNFUHRVGAY
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PFMHPQTVFTFTC375Z3YCU4HNFUHRVGAY/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Fri, Feb 11, 2022 at 06:55:08PM +0100, Marcin Szycik wrote:
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Harald Welte <laforge@gnumonks.org>

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
