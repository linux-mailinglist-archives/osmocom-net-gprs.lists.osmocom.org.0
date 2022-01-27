Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA8B49E4DD
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Jan 2022 15:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7F87B2839E;
	Thu, 27 Jan 2022 14:42:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i53Ni9hk8VxS; Thu, 27 Jan 2022 14:42:45 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4A9EC2838F;
	Thu, 27 Jan 2022 14:42:39 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 757DF38A000C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 14:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 45D472838F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 14:42:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ejVt43niuh0H for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 27 Jan 2022 14:42:34 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 49F58282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Jan 2022 14:42:33 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nD5yp-00DoD1-O2; Thu, 27 Jan 2022 15:42:31 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nD5xE-001mzf-Ui;
	Thu, 27 Jan 2022 15:40:52 +0100
Date: Thu, 27 Jan 2022 15:40:52 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [RFC PATCH net-next v2 1/5] gtp: Allow to create GTP device
 without FDs
Message-ID: <YfKu9NwF7/RKsMbb@nataraja>
References: <20220127125725.125915-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220127125725.125915-1-marcin.szycik@linux.intel.com>
Message-ID-Hash: AAH4QKKJRDL6EXWDT4T5NQTADKNNGKJD
X-Message-ID-Hash: AAH4QKKJRDL6EXWDT4T5NQTADKNNGKJD
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/AAH4QKKJRDL6EXWDT4T5NQTADKNNGKJD/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Wojciech,

thanks for your contribution, I think in general it is a good idea.

However, I do not think this can be merged, as the resulting system would
not be possible to use in a spec-compliant way.

> Currently, when the user wants to create GTP device, he has to
> provide file handles to the sockets created in userspace (IFLA_GTP_FD0,
> IFLA_GTP_FD1). This behaviour is not ideal, considering the option of
> adding support for GTP device creation through ip link. Ip link
> application is not a good place to create such sockets.

The GTP kernel module in its past and current form only handles G-PDU packets
and not any other packets.  So it relies on always having a user space process
[the one with the socket you want to make optional to handle other frames,
such as GTP ECHO.

So if you apply your patch, you will end up creating a GTP-U instance which
does not respond to echo requests, which is in violation of 3GPP specs and
which will create problems in production.

So if you want to make this optional, you'd also have to implement GTP-U ECHO handling
in the kernel, and require that in-kernel handling to be enabled when creating a GTP
device without the socket file descriptors.

Regards,
	Harald

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
