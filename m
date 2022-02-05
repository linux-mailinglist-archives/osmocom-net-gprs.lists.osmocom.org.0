Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FC54AAA51
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  5 Feb 2022 18:00:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AFEB6283A1;
	Sat,  5 Feb 2022 17:00:15 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EXsrplC7JT55; Sat,  5 Feb 2022 17:00:15 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id EC9F72839C;
	Sat,  5 Feb 2022 17:00:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 09C8038A0089
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  5 Feb 2022 17:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D12462839C
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  5 Feb 2022 17:00:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c5KCr3sISGGT for <osmocom-net-gprs@lists.osmocom.org>;
	Sat,  5 Feb 2022 17:00:08 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id C9D13282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  5 Feb 2022 17:00:07 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nGOPs-008Zk9-8F; Sat, 05 Feb 2022 18:00:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nGOHy-003EWm-0B;
	Sat, 05 Feb 2022 17:51:54 +0100
Date: Sat, 5 Feb 2022 17:51:53 +0100
From: Harald Welte <laforge@osmocom.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [RFC PATCH net-next v4 4/6] gtp: Implement GTP echo response
Message-ID: <Yf6rKbkyzCnZE/10@nataraja>
References: <20220204164929.10356-1-marcin.szycik@linux.intel.com>
 <20220204165101.10673-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220204165101.10673-1-marcin.szycik@linux.intel.com>
Message-ID-Hash: BTU32U4OF6GOBVRB4KSQUN3M5GGHA74I
X-Message-ID-Hash: BTU32U4OF6GOBVRB4KSQUN3M5GGHA74I
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/BTU32U4OF6GOBVRB4KSQUN3M5GGHA74I/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Marcin, Wojciech,

I would prefer to move this patch to right after introducing the
kernel-socket mode, as the former makes no sense without this patch.

Now that this patch implements responding to the GTP ECHO procedure,
one interesting question that comes to mind is how you would foresee
outbound GTP echo procedures to be used in this new use pattern.

With the existing (userspace creates the socket) pattern, the userspace
instance can at any point send GTP ECHO request packets to any of the
peers, while I don't really see how this would work if the socket is in
the kernel.

The use of the outbound ECHO procedure is not required for GTP-U by TS
29.060, so spec-wise it is fine to not support it.  It just means
that any higher-layer applications using this 'socketless' use pattern
will be deprived of being able to check for GTP-U path failure.

IMHO, this is non-negligable, as there are no other rqeust-response
message pairs on the GTP-U plane,  so transmitting and receiving ECHO
is the only way a control plane / management instance has to detect
GTP-U path failure.

So without being able to trigger GTP-ECHO, things could look prefectly
fine on the GPT-C side of things, but GTP-U may not be working at all.

Remember, GTP-U uses different IP addresses and also typically completely
different hosts/systems, so having GTP-C connectivity between two GSN
doesn't say anything about the GTP-U path.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
