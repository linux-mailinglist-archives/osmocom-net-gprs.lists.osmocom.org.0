Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 763AB273159
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 21 Sep 2020 20:00:13 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 063E81490BE;
	Mon, 21 Sep 2020 18:00:08 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id BF55E1490A6
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 21 Sep 2020 18:00:04 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1kKQ6d-0007Kf-VC; Mon, 21 Sep 2020 20:00:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1kKPz9-008e6U-Ty; Mon, 21 Sep 2020 19:52:19 +0200
Date: Mon, 21 Sep 2020 19:52:19 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
Cc: osmocom-net-gprs@lists.osmocom.org
Subject: Re: ns2 thoughts
Message-ID: <20200921175219.GX2023771@nataraja>
References: <20200918211518.GI1611880@nataraja>
 <20200921175017.02906ee8@lazus.yip>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200921175017.02906ee8@lazus.yip>
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
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
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

On Mon, Sep 21, 2020 at 05:50:17PM +0200, Alexander 'lynxis' Couzens wrote:

> > == consider using an osmo_ prefix to all symbols / types
> > 
> > The fact that the old code doesn't have that is a tribute to its age,
> > and not something we need to keep.  The current code has quite a bit
> > of 'gprs_ns2' prefixing for types, but not for the symbols/functions.
> >  At least that inconsistency should be resolved, so all have the same
> > prefix, even if it is without osmo.
> 
> The concept was prefix gprs_ns2 for public symbols and ns2 for
> internal since some functions are used across files within libosmocore.

oh, great.  I somehow missed that.

> The osmo_ prefix sounds a lot cleaner.

I guess we can keep it as-is.  If you want, go for osmo_ns2 as public
prefix, but I'm not sure it's worth the effort at this point.

> Not sure if the effort for the msgb->dst is worth because we're only
> using it internal. I don't have an opinion on this.

yes, let's just keep it as-is.

> Except if we want to use the pointer for the resource distribution
> function [48.016 4.4a].

interesting.  I'm not deep enough into the topic to have an opinion
about it right now, sorry.

> > There are functions like gprs_ns2_find_vc_by_sockaddr() where the
> > result is not returned, but rather a **pointer output argument is
> 
> In general I like the difference between result and return code.
> ACK on gprs_ns2_find_vc_by_sockaddr() where there isn't much in the
> result code.

agreed.  return the result whenever there is nothing to return.

Thanks.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
