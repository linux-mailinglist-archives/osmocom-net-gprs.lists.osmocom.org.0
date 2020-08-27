Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 0850A25415F
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Aug 2020 11:00:56 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 965AD156C59;
	Thu, 27 Aug 2020 09:00:47 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 84E9F156C47
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 09:00:40 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1kBDlv-0000bj-MH; Thu, 27 Aug 2020 11:00:39 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1kBDli-000eOm-GJ; Thu, 27 Aug 2020 11:00:26 +0200
Date: Thu, 27 Aug 2020 11:00:26 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Subject: Re: [PATCH net-next v2] gtp: add notification mechanism
Message-ID: <20200827090026.GK130874@nataraja>
References: <20200825143556.23766-1-nicolas.dichtel@6wind.com>
 <20200825155715.24006-1-nicolas.dichtel@6wind.com>
 <20200825170109.GH3822842@nataraja>
 <bd834ad7-b06e-69f0-40a6-5f4a21a1eba2@6wind.com>
 <20200826185202.GZ3739@nataraja>
 <0e2c4c04-a6dc-d081-2bdd-09f8d78607c4@6wind.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0e2c4c04-a6dc-d081-2bdd-09f8d78607c4@6wind.com>
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
Cc: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org,
 Gabriel Ganne <gabriel.ganne@6wind.com>, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi Nicolas,

On Thu, Aug 27, 2020 at 12:36:24AM +0200, Nicolas Dichtel wrote:
> Le 26/08/2020 à 20:52, Harald Welte a écrit :

> > Wouldn't it make sense to only allocate + fill those messages if we
> > actually knew a subscriber existed?
>
> In fact, this is actually how the netlink framework works.

Well, as you can tell from my responses, I've not been doing kernel work
for a decade now, so I'm looking at things from a more distant and
ignorant perspective.  To me it seems odd to allocate memory and copy
data to it (cache misses, ...) if nobody every requested that data, and
nobody will ever use it.  But if this is how it is supposed to work,
then I will of course defer to that.  All netlink would have to expose
is a function that returns whether or not there are any subscribers
to the given multicast group.  Then all of the allocation +
initialization would disappear in a branch that is not executed most of
the time, at least for current, existing gtpnl systems.  Yes, that means
one more branch, of course.  But that branch will happen later on
anyway, event today: Only after the allocation + initialization.

So having said the above, if this is how it is supposed to work with
netlink:

Acked-by: Harald Welte <laforge@gnumonks.org>

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
