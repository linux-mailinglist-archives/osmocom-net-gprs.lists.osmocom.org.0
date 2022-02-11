Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 865C04B218A
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 11 Feb 2022 10:20:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7006A283D9;
	Fri, 11 Feb 2022 09:20:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t8HMwJIZGHCl; Fri, 11 Feb 2022 09:20:21 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C918D282E5;
	Fri, 11 Feb 2022 09:20:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4622438A29EA
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1FCEF282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:20:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HvQ-EYTD591H for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Feb 2022 09:20:11 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 6920A28389
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:20:11 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nIS60-00Gkod-Px; Fri, 11 Feb 2022 10:20:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nIS2R-004xhQ-IJ;
	Fri, 11 Feb 2022 10:16:23 +0100
Date: Fri, 11 Feb 2022 10:16:23 +0100
From: Harald Welte <laforge@osmocom.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Subject: Re: [RFC PATCH net-next v4 4/6] gtp: Implement GTP echo response
Message-ID: <YgYpZzOo3FQG+SY2@nataraja>
References: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
 <20220204165101.10673-1-marcin.szycik@linux.intel.com>
 <Yf6rKbkyzCnZE/10@nataraja>
 <MW4PR11MB5776D18B1DA527575987CB1DFD2D9@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776D18B1DA527575987CB1DFD2D9@MW4PR11MB5776.namprd11.prod.outlook.com>
Message-ID-Hash: ID34ABQF5WRHE5PERBLOMSSISKYFKSWV
X-Message-ID-Hash: ID34ABQF5WRHE5PERBLOMSSISKYFKSWV
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "pablo@netfilter.org" <pablo@netfilter.org>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ID34ABQF5WRHE5PERBLOMSSISKYFKSWV/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Wojciech,

On Tue, Feb 08, 2022 at 02:12:33PM +0000, Drewek, Wojciech wrote:
> > Remember, GTP-U uses different IP addresses and also typically completely
> > different hosts/systems, so having GTP-C connectivity between two GSN
> > doesn't say anything about the GTP-U path.
>
> Two  approaches come to mind.
> The first one assumes that peers are stored in kernel as PDP contexts in
> gtp_dev (tid_hash and addr_hash). Then we could enable a watchdog
> that could in regular intervals (defined by the user) send echo requests
> to all peers.

Interesting proposal.  However, it raises the next question of what to do if
the path is deemed to be lost (N out of M recent echo requests unanswered)? It
would have to notify the userspace daemon (control plane) via a netlink event
or the like.  So at that point you need to implement some special processing in
that userspace daemon...

> In the second one user could trigger echo request from userspace
> (using new genl cmd) at any time. However this approach would require that
> some userspace daemon would implement triggering this command.

I think this is the better approach.  It keeps a lot of logic like timeouts,
frequency of transmission, determining when a path is considered dead, ... out
of the kernel, where it doesn't need to be.

> What do you think?

As both approaches require some support from the userspace control plane instance,
I would argue that the second proposal is superior.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
