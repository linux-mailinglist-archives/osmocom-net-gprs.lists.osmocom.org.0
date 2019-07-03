Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 52DBC5D88D
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  3 Jul 2019 02:10:38 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 66F83BB53D;
	Wed,  3 Jul 2019 00:10:27 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=gnumonks.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=none header.from=gnumonks.org
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 01CA2BB518
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  3 Jul 2019 00:10:19 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1hiSqn-0001mL-Up; Wed, 03 Jul 2019 02:10:18 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.92)
 (envelope-from <laforge@gnumonks.org>)
 id 1hiTlY-0003XJ-LX; Wed, 03 Jul 2019 09:08:56 +0800
Date: Wed, 3 Jul 2019 09:08:56 +0800
From: Harald Welte <laforge@gnumonks.org>
To: Taehee Yoo <ap420073@gmail.com>
Subject: Re: [PATCH net 0/6] gtp: fix several bugs
Message-ID: <20190703010856.GA11901@nataraja>
References: <20190702152034.22412-1-ap420073@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702152034.22412-1-ap420073@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 Pau Espin <pespin@sysmocom.de>, davem@davemloft.net, pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi Taehee,

On Wed, Jul 03, 2019 at 12:20:34AM +0900, Taehee Yoo wrote:
> This patch series fixes several bugs in the gtp module.

thanks a lot for your patches, they are much appreciated.

They look valid to me after a brief initial review.

However, I'm currently on holidays and don't have the ability to test
any patches until my return on July 17.  Maybe Pablo and/or Pau can have
a look meanwhile?  Thanks in advance.

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
