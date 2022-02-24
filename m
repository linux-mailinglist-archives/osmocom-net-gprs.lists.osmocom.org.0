Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8144C88F8
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  1 Mar 2022 11:07:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DBE7C28126;
	Tue,  1 Mar 2022 10:07:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9jLA7YujZyR; Tue,  1 Mar 2022 10:07:23 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B8BC32812F;
	Tue,  1 Mar 2022 10:07:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 08BA938A083E
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 22:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DD2412838F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 22:50:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTJXVs96o-w7 for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Feb 2022 22:50:07 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id EC6EE2838D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 22:50:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nNMw0-000i9o-8z; Thu, 24 Feb 2022 23:50:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nNMqJ-002eeV-KK;
	Thu, 24 Feb 2022 23:44:11 +0100
Date: Thu, 24 Feb 2022 23:44:11 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [PATCH net-next v9 0/7] ice: GTP support in switchdev
Message-ID: <YhgKO8rdxMxclZPm@nataraja>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: GNXZJ6GICE3ESOBOX5MF65RR76Y74KPY
X-Message-ID-Hash: GNXZJ6GICE3ESOBOX5MF65RR76Y74KPY
X-Mailman-Approved-At: Tue, 01 Mar 2022 10:06:58 +0000
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GNXZJ6GICE3ESOBOX5MF65RR76Y74KPY/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Marcin,

On Thu, Feb 24, 2022 at 07:54:53PM +0100, Marcin Szycik wrote:
> Add support for adding GTP-C and GTP-U filters in switchdev mode.

For the changes to the gtp.ko driver this v9 looks fine to me.  I cannot
comment about the switchdevs bits, those are beyond my expertise.

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
