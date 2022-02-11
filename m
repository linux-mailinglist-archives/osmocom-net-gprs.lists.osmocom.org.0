Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B634B2115
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 11 Feb 2022 10:10:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id F3F95283D2;
	Fri, 11 Feb 2022 09:10:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUV5KthWwJL2; Fri, 11 Feb 2022 09:10:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AD69328389;
	Fri, 11 Feb 2022 09:10:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B1DBA38A29EA
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8B97E28389
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:10:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qph8Y6fjMGUp for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Feb 2022 09:10:19 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 9EE3A282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:10:19 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nIRwK-00GkDp-Ov; Fri, 11 Feb 2022 10:10:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nIRqq-004xbL-9i;
	Fri, 11 Feb 2022 10:04:24 +0100
Date: Fri, 11 Feb 2022 10:04:24 +0100
From: Harald Welte <laforge@osmocom.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Subject: Re: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Message-ID: <YgYmmJAuTetYH4LX@nataraja>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
 <20220127163900.374645-1-marcin.szycik@linux.intel.com>
 <Yf6nBDg/v1zuTf8l@nataraja>
 <MW4PR11MB57764998297DC775D71753E8FD2D9@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB57764998297DC775D71753E8FD2D9@MW4PR11MB5776.namprd11.prod.outlook.com>
Message-ID-Hash: CNWWJ24SM5F6HHWYOOZZ57IIZMXUJET2
X-Message-ID-Hash: CNWWJ24SM5F6HHWYOOZZ57IIZMXUJET2
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "pablo@netfilter.org" <pablo@netfilter.org>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CNWWJ24SM5F6HHWYOOZZ57IIZMXUJET2/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Wojciech,

On Tue, Feb 08, 2022 at 01:30:32PM +0000, Drewek, Wojciech wrote:

> For now we don't have such tree. I will see what we can do.

I would appreciate it, so we can get this tested before it hits net-next.

> > I'm wondering if we should make this more explicit, i.e. rather than
> > implicitly creating the kernel socket automagically, make this mode
> > explicit upon request by some netlink attribute.
>
> I agree, it would look cleaner.

Excellent.

> > > Sockets are created with the
> > > commonly known UDP ports used for GTP protocol (GTP0_PORT and
> > > GTP1U_PORT).
> > 
> > I'm wondering if there are use cases that need to operate on
> > non-standard ports.  The current module can be used that way (as the
> > socket is created in user space). If the "kernel socket mode" was
> > requested explicitly via netlink attribute, one could just as well
> > pass along the port number[s] this way.
>
> Yes, it is possible to create socket with any port number using FD approach,
> but gtp module still assumes that ports are 2152 and 3386 at least in tx path
> (see gtp_push_header).  Implementing this shouldn't be hard but is it crucial?

Not crucial.

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
