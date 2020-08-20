Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id A1A1224C81F
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 21 Aug 2020 01:00:16 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id F3E7E149457;
	Thu, 20 Aug 2020 23:00:10 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=osmocom.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@osmocom.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=osmocom.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 58A87149436
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 23:00:05 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@osmocom.org>)
 id 1k8tXQ-0003RD-T5; Fri, 21 Aug 2020 01:00:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@osmocom.org>)
 id 1k8tWP-00FBMo-TC; Fri, 21 Aug 2020 00:59:01 +0200
Date: Fri, 21 Aug 2020 00:59:01 +0200
From: Harald Welte <laforge@osmocom.org>
To: Papa Tana <papa.tana101@gmail.com>
Subject: Re: GTP tunnel seems to exist, but No encapsulation when using
 libgtpnl
Message-ID: <20200820225901.GM3544863@nataraja>
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
 <CAGoraXQs44ecPvQPWtdZkkCPPq5GbR4ppMYM7KN6exRwK-scdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGoraXQs44ecPvQPWtdZkkCPPq5GbR4ppMYM7KN6exRwK-scdQ@mail.gmail.com>
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Cc: osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi,

On Thu, Aug 20, 2020 at 07:05:58PM +0300, Papa Tana wrote:
> listen in 2123, but I cannot add any message at all like echo-response in
> 2152 because libgtpnl manage it.

libgtpnl does not manage your UDP socket at all.  It manages a netlink
socket to the kernel, which is used to create + delete objects in kernel space.

You manage all your UDP sockets.  I'm not sure where this misconception is 
coming from.

It would be great if you could share your GGSN code base with the community,
like we share the kernel GTP-U and all of Osmocom with you.

As can be seen in gtp1u_udp_encap_recv(), ther eare multiple situations where
GTP-U packets are passed to the socket and not handled in the kernel:
* any GTP-U version != 1
* any GTP message types != GTP_TPDU
* any GTP messages for which the kernel doesn't know the TID
* any GTP messages whose inner IPv4 destination address doesn't match the TID

All of those messsages must be implemented in your userspace program, using the
very socket your application has created.

Regards,
	Harald

-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
