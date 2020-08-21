Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC7224D52D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 21 Aug 2020 14:40:20 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id AA8C114B67C;
	Fri, 21 Aug 2020 12:40:10 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=gnumonks.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=gnumonks.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 41AD614B669
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Aug 2020 12:40:05 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1k96Ky-0000mP-SA; Fri, 21 Aug 2020 14:40:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1k96Fi-00FI41-Hz; Fri, 21 Aug 2020 14:34:38 +0200
Date: Fri, 21 Aug 2020 14:34:38 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Papa Tana <papa.tana101@gmail.com>
Subject: Re: GTP tunnel seems to exist, but No encapsulation when using
 libgtpnl
Message-ID: <20200821123438.GO3544863@nataraja>
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
 <20200820225145.GL3544863@nataraja>
 <CAGoraXR0kEsONu0KD918mud94ibPYkqyeyMs_KAj=9yTiBeEsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGoraXR0kEsONu0KD918mud94ibPYkqyeyMs_KAj=9yTiBeEsw@mail.gmail.com>
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

On Fri, Aug 21, 2020 at 09:53:34AM +0300, Papa Tana wrote:
> But for GTP-U, I was trying to listen in port 2152 several times, and it
> yields an error that I cannot listen on it, port 2152 is already used.

You cannot do that, sorry.

> > You manage all your UDP sockets.
> > your application is responsible for receiving and responding to any GTP-U
> packets there.
> As I said, I am using Erlang as a userspace program.
> And when I create a tunnel, I "just" send a basic command exec to the Linux
> by open_port like this:

This will obviously not work.  You need to manage the socket from your program.

IF it's erlang, you either have to speak netlink directly from within Erlang,
or you need to add some native functions for calling libgtpnl.

> So I don't have any idea on how to listen to 2152 as my Erlang program is
> forbidden to listen on it when libgtpnl is invoked.

You are asking for the impossible.  You need to open the socket from within your
program. You cannot crate a second socket for what you are trying to do.

At least earlier versions of ergw had support for the kernel GTP-U plane,
why not simply use that code?

They created https://github.com/travelping/gen_netlink
to talk netlink from erlang, including gtpnl support.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
