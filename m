Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 096854AAA34
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  5 Feb 2022 17:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B5FBA2839F;
	Sat,  5 Feb 2022 16:40:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B_Y-0k_KCRxJ; Sat,  5 Feb 2022 16:40:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AF45B28388;
	Sat,  5 Feb 2022 16:40:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id F306938A0028
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  5 Feb 2022 16:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C7BB928388
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  5 Feb 2022 16:40:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ckcms0pOZI4f for <osmocom-net-gprs@lists.osmocom.org>;
	Sat,  5 Feb 2022 16:40:19 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id EB445282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  5 Feb 2022 16:40:18 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nGO6W-008YXJ-4Z; Sat, 05 Feb 2022 17:40:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nGO0q-003EQf-Pp;
	Sat, 05 Feb 2022 17:34:12 +0100
Date: Sat, 5 Feb 2022 17:34:12 +0100
From: Harald Welte <laforge@osmocom.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Message-ID: <Yf6nBDg/v1zuTf8l@nataraja>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
 <20220127163900.374645-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220127163900.374645-1-marcin.szycik@linux.intel.com>
Message-ID-Hash: URVIFRN4XG3LFMX5LLROYL37NBJTFDAQ
X-Message-ID-Hash: URVIFRN4XG3LFMX5LLROYL37NBJTFDAQ
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/URVIFRN4XG3LFMX5LLROYL37NBJTFDAQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Marcin, Wojciech,

thanks for the revised patch. In general it looks fine to me.

Do you have a public git tree with your patchset applied?  I'm asking as
we do have automatic testing in place at https://jenkins.osmocom.org/ where I
just need to specify a remote git repo andit will build this kernel and
run the test suite.

Some minor remarks below, all not critical, just some thoughts.

It might make sense to mention in the commit log that this patch by itself
would create GTP-U without GTP ECHO capabilities, and that a subsequent
patch will address this.

> This patch allows to create GTP device without providing
> IFLA_GTP_FD0 and IFLA_GTP_FD1 arguments. If the user does not
> provide file handles to the sockets, then GTP module takes care
> of creating UDP sockets by itself. 

I'm wondering if we should make this more explicit, i.e. rather than
implicitly creating the kernel socket automagically, make this mode
explicit upon request by some netlink attribute.

> Sockets are created with the
> commonly known UDP ports used for GTP protocol (GTP0_PORT and
> GTP1U_PORT).

I'm wondering if there are use cases that need to operate on
non-standard ports.  The current module can be used that way (as the
socket is created in user space). If the "kernel socket mode" was
requested explicitly via netlink attribute, one could just as well
pass along the port number[s] this way.

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
