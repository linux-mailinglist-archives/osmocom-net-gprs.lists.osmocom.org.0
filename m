Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 899594B346C
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 12 Feb 2022 12:10:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 69E92283D8;
	Sat, 12 Feb 2022 11:10:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eVv8kYAFuLvR; Sat, 12 Feb 2022 11:10:21 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 111A7283AA;
	Sat, 12 Feb 2022 11:10:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 510A538A0090
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 11:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 31878282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 11:10:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LqHvCq29ob4J for <osmocom-net-gprs@lists.osmocom.org>;
	Sat, 12 Feb 2022 11:10:07 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 5740B283AA
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 11:10:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIqI0-000bvq-QS; Sat, 12 Feb 2022 12:10:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIqDi-005Btu-4b;
	Sat, 12 Feb 2022 12:05:38 +0100
Date: Sat, 12 Feb 2022 12:05:38 +0100
From: Harald Welte <laforge@gnumonks.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Subject: Re: [RFC PATCH net-next v4 4/6] gtp: Implement GTP echo response
Message-ID: <YgeUgvrjGcDYOvm2@nataraja>
References: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
 <20220204165101.10673-1-marcin.szycik@linux.intel.com>
 <Yf6rKbkyzCnZE/10@nataraja>
 <MW4PR11MB5776D18B1DA527575987CB1DFD2D9@MW4PR11MB5776.namprd11.prod.outlook.com>
 <YgYpZzOo3FQG+SY2@nataraja>
 <MW4PR11MB577686D883EEBDB2C9E0FEB2FD309@MW4PR11MB5776.namprd11.prod.outlook.com>
 <MW4PR11MB5776F58DE5585DEA423716A4FD309@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776F58DE5585DEA423716A4FD309@MW4PR11MB5776.namprd11.prod.outlook.com>
Message-ID-Hash: ORWAIZY2PQ5HIGYSUSOS6AO7WTQDUIUJ
X-Message-ID-Hash: ORWAIZY2PQ5HIGYSUSOS6AO7WTQDUIUJ
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "pablo@netfilter.org" <pablo@netfilter.org>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ORWAIZY2PQ5HIGYSUSOS6AO7WTQDUIUJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Wojciech,

On Fri, Feb 11, 2022 at 12:48:35PM +0000, Drewek, Wojciech wrote:
> I have one question. The new cmd should be allowed to send echo request
> only to the peers stored in the kernel space (PDP contexts) or the userspace
> daemon has its own list of peers and any request should be allowed to be send?

I think we can expect userspace to know the peers (after all, it has created those
sessions and knows about the peer IP addresses), so we don't have to verify
in the kernel if it is a "valid" peer or not.

So a pure "send GTP ECHO req to given IP" and a corresponding "received GTP ECHO resp
from given IP" (with relevant parameters) without tracking any state in the kernel should
be sufficient.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
