Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1A14C88F7
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  1 Mar 2022 11:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E8D7828131;
	Tue,  1 Mar 2022 10:07:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pptn9CenZ-cT; Tue,  1 Mar 2022 10:07:20 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4B16228126;
	Tue,  1 Mar 2022 10:07:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C994338A083E
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 22:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E7ADB28398
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 22:50:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tH5b6qqltqJ1 for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 24 Feb 2022 22:50:07 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id EDF2F2838F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Feb 2022 22:50:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nNMw0-000i9m-5Q; Thu, 24 Feb 2022 23:50:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nNMom-002eeF-7J;
	Thu, 24 Feb 2022 23:42:36 +0100
Date: Thu, 24 Feb 2022 23:42:36 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [PATCH net-next v9 3/7] gtp: Implement GTP echo request
Message-ID: <YhgJ3JYKWtxMSPkQ@nataraja>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
 <20220224185500.18384-4-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220224185500.18384-4-marcin.szycik@linux.intel.com>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: NRLPRAMWGHREPZAWEQXFR5JGWU3FRNH3
X-Message-ID-Hash: NRLPRAMWGHREPZAWEQXFR5JGWU3FRNH3
X-Mailman-Approved-At: Tue, 01 Mar 2022 10:06:58 +0000
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NRLPRAMWGHREPZAWEQXFR5JGWU3FRNH3/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Wojciech,

thanks again for your revision of the patches.

On Thu, Feb 24, 2022 at 07:54:56PM +0100, Marcin Szycik wrote:
> When GTP echo response is detected, multicast message is
> send to everyone in the gtp_genl_family. Message contains
> GTP version, ms address and peer address.

I think many will perceive this as rather odd, but I think it is the
least bad thing we can do in this situation.

> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Suggested-by: Harald Welte <laforge@gnumonks.org>

Reviewed-by: Harald Welte <laforge@gnumonks.org>

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
