Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 33236251DD7
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Aug 2020 19:10:22 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 806D41543E7;
	Tue, 25 Aug 2020 17:10:15 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 521D31543D5
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 25 Aug 2020 17:10:08 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1kAcSS-0003kQ-8a; Tue, 25 Aug 2020 19:10:04 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1kAcJp-00Gb9n-CY; Tue, 25 Aug 2020 19:01:09 +0200
Date: Tue, 25 Aug 2020 19:01:09 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Subject: Re: [PATCH net-next v2] gtp: add notification mechanism
Message-ID: <20200825170109.GH3822842@nataraja>
References: <20200825143556.23766-1-nicolas.dichtel@6wind.com>
 <20200825155715.24006-1-nicolas.dichtel@6wind.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200825155715.24006-1-nicolas.dichtel@6wind.com>
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

thanks a lot for your patch.

On Tue, Aug 25, 2020 at 05:57:15PM +0200, Nicolas Dichtel wrote:
> Like all other network functions, let's notify gtp context on creation and
> deletion.

While this may be in-line with typical kernel tunnel device practises, I am not
convinced it is the right way to go for GTP.

Contrary to other tunneling mechansims, GTP doesn't have a 1:1 rlationship between
tunnels and netdev's.  You can easily have tens of thousands - or even many more -
PDP contexts (at least one per subscriber) within one "gtp0" netdev.  Also, the state
is highly volatile.  Every time a subscriber registers/deregisters, goes in or out of
coverage, in or out of airplane mode, etc. those PDP contexts go up and down.

Sending (unsolicited) notifications about all of those seems quite heavyweight to me.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
