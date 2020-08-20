Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 0615024C820
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 21 Aug 2020 01:00:24 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id A433A14945E;
	Thu, 20 Aug 2020 23:00:17 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 59D3C149437
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 23:00:04 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1k8tXQ-0003RA-K5; Fri, 21 Aug 2020 01:00:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1k8tPN-00FBKx-Cw; Fri, 21 Aug 2020 00:51:45 +0200
Date: Fri, 21 Aug 2020 00:51:45 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Papa Tana <papa.tana101@gmail.com>
Subject: Re: GTP tunnel seems to exist, but No encapsulation when using
 libgtpnl
Message-ID: <20200820225145.GL3544863@nataraja>
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
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

On Thu, Aug 20, 2020 at 12:49:20PM +0300, Papa Tana wrote:
>  - upon receipt of my creade_pdp_context_response accepted, the SGSN now
> try to establish a Tunnel with the given TEID towards my GGSN
>  - but I cannot see anything on my GTPU-side in ggsn, apart of several
> echo-request message from SGSN
>  - Sure, SGSN try to test connectivity to my ggsn GTPU by using
> echo-request, but no response
>  - I don't know maybe because of no response, or because of SGSN alert me
> with an error gtpu-sm-cause-update-ggsn-path-failure, the SGSN decide to
> send a delete request

it is very likely your lack of sending any GTP echo responses.

>  - 1) At GTP-C, I can implement all messages(echo-response,
> create-response, delete-response) but at GTPU-side, as the port is used by
> libgtpnl, I cannot implement an echo-response at all 

Why would you make such an assumption?  The UDP socket for GTPU is opened
by your application in userspace.  You own it.  The fact that you passed into
libgtpnl as an argument to gtp_dev_create() doesn't mean you shouldn't use that
socket.  To the contrary, your application is responsible for receiving and
responding to any GTP-U packets there.

> ==> So, do libgtpnl is
> supposed to answer or not to an echo-response received from a SGSN at
> GTPU-level?

libgtpnl is (as the 'nl' in the name applies) a library to help you use the netlink
interface to configure the GTP-U infrastructure in the kernel.  It doesn't ever
implement or touch any GTP-U itself.

>  - 2) When I tried a Linux-to-Linux setup, it worked because I specified
> the ms_addr and sgsn_addr in the 02 Linux Host.
>  But as I cannot configure anything about the tunnel at SGSN-side(done
> automatically by SGSN), I can only create the tunnel at ggsn-side thanks to
> my user space program, by passing the TEID and ms_addr input to libgtpnl.
> Does it mean that libgtpnl only complies with OpenGGSN, ergw, and
> OpenAirInterface but not intended to ber used with a real SGSN?

I don't really understand what you are trying to say here.  OsmoSGSN is
a "real" SGSN and it speaks excatly the same 3GPP protocols like other SGSNs.
The kernel GTP-U plane doesn't care about what your SGSN is, or what your GGSN is.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
