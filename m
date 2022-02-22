Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id D42644C88F5
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  1 Mar 2022 11:07:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0320D28113;
	Tue,  1 Mar 2022 10:07:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CxlODC3myZfT; Tue,  1 Mar 2022 10:07:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2697C2810E;
	Tue,  1 Mar 2022 10:07:17 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id BC90338A04A9
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 20:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7DE782838A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 20:50:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L06rhj0rVD6z for <osmocom-net-gprs@lists.osmocom.org>;
	Tue, 22 Feb 2022 20:50:12 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 62E9828389
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Feb 2022 20:50:11 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nMc6m-00FSXz-BE; Tue, 22 Feb 2022 21:50:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nMbxD-0024TY-TA;
	Tue, 22 Feb 2022 21:40:11 +0100
Date: Tue, 22 Feb 2022 21:40:11 +0100
From: Harald Welte <laforge@gnumonks.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Subject: Re: [PATCH net-next v7 3/7] gtp: Implement GTP echo request
Message-ID: <YhVKK16JRo3THp7h@nataraja>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
 <20220221101425.19776-4-marcin.szycik@linux.intel.com>
 <YhSDfvQoNDyoAaV9@nataraja>
 <MW4PR11MB5776AA2256C00293FAC07C16FD3B9@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776AA2256C00293FAC07C16FD3B9@MW4PR11MB5776.namprd11.prod.outlook.com>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: XTR5RQWXETJGRSDVMAZCXESM7HJBVJW5
X-Message-ID-Hash: XTR5RQWXETJGRSDVMAZCXESM7HJBVJW5
X-Mailman-Approved-At: Tue, 01 Mar 2022 10:06:58 +0000
CC: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "pablo@netfilter.org" <pablo@netfilter.org>, "jiri@resnulli.us" <jiri@resnulli.us>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>, "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XTR5RQWXETJGRSDVMAZCXESM7HJBVJW5/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Wojciech,

On Tue, Feb 22, 2022 at 09:38:08AM +0000, Drewek, Wojciech wrote:

> > I think either the Tx and the Rx ard triggered by / notified to userspace,
> > or you would also do periodic triggering of Tx in the kernel autonomously,
> > and process the responses.  But at that point then you also need to think
> > about further consequences, such as counting the number of missed ECHO RESP,
> > and then notify userspace if that condition "N out of M last responses missed".
> > 
> 
> I thought that with the GTP device created from ip link, userspace
> would be unable to receive Echo Response (similar to Echo Request).
> If it's not the case than I will get rid of handling Echo Response in the
> next version.

Well, userspace cannot 'receive' the ECHO response through the UDP socket as
the UDP socket is hidden in the kernel.  I was thinking of the same mechanism
you introduce for transmit:  You can trigger the Tx of GTP ECHO REQ via netlink,
so why shouldn't you receive a notifiation about its completion also via netlink?

Just don't think of it as sending an ECHO REQ via netlink, but triggering the tx
and acknowledging the completion/reception of a related response.

One of the advantages of the existing mechanism via 'socket is held in userspace'
is that we don't have to jump through any such hoops or invent strange interfaces:
The process can just send and receive the messages as usual via UDP socket related
syscalls.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
