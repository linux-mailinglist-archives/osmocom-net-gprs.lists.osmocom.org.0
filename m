Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 230944B346B
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 12 Feb 2022 12:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id ECABA283D3;
	Sat, 12 Feb 2022 11:10:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tqKhA9JPTth3; Sat, 12 Feb 2022 11:10:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 986F9283AA;
	Sat, 12 Feb 2022 11:10:12 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 275E838A0010
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 11:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id F01E2283AD
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 11:10:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1hStFkIqLg0c for <osmocom-net-gprs@lists.osmocom.org>;
	Sat, 12 Feb 2022 11:10:07 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 3E5E0282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 11:10:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIqI0-000bvs-UW; Sat, 12 Feb 2022 12:10:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIqAx-005Bsx-I4;
	Sat, 12 Feb 2022 12:02:47 +0100
Date: Sat, 12 Feb 2022 12:02:47 +0100
From: Harald Welte <laforge@gnumonks.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Subject: Re: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Message-ID: <YgeT1wXjvWgR3Xkl@nataraja>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
 <20220127163900.374645-1-marcin.szycik@linux.intel.com>
 <Yf6nBDg/v1zuTf8l@nataraja>
 <fd23700b-4269-a615-a73d-10476ffaf82d@linux.intel.com>
 <YgYoT4UWw0Efq33K@nataraja>
 <MW4PR11MB57766A32DF641A69831B610EFD309@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB57766A32DF641A69831B610EFD309@MW4PR11MB5776.namprd11.prod.outlook.com>
Message-ID-Hash: J67DZQI673UWTGHCBNTYVUXEYY26KZ2P
X-Message-ID-Hash: J67DZQI673UWTGHCBNTYVUXEYY26KZ2P
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "pablo@netfilter.org" <pablo@netfilter.org>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/J67DZQI673UWTGHCBNTYVUXEYY26KZ2P/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Fri, Feb 11, 2022 at 10:05:54AM +0000, Drewek, Wojciech wrote:

> Thanks for triggering CI.
> Do I see correctly that results for our changes are the same as for master?

The results are identical to master/net-next, so all good!
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
