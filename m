Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 2109F2A7940
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:17 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 886DE18C5EA;
	Thu,  5 Nov 2020 08:28:07 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 26BB518C481
 for <osmocom-net-gprs@lists.osmocom.org>; Thu,  5 Nov 2020 08:00:11 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1kaaBh-00065B-1j; Thu, 05 Nov 2020 09:00:05 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1kaaAB-004eo7-DZ; Thu, 05 Nov 2020 08:58:31 +0100
Date: Thu, 5 Nov 2020 08:58:31 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 osmocom-net-gprs@lists.osmocom.org, wireguard@lists.zx2c4.com,
 Steffen Klassert <steffen.klassert@secunet.com>
Subject: Re: [PATCH net-next v2 06/10] gtp: switch to dev_get_tstats64
Message-ID: <20201105075831.GD1078888@nataraja>
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
 <52d228fe-9ed3-7cd0-eebc-051c38b5e45f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <52d228fe-9ed3-7cd0-eebc-051c38b5e45f@gmail.com>
X-Mailman-Approved-At: Thu, 05 Nov 2020 08:27:23 +0000
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

Looks good to me.

On Wed, Nov 04, 2020 at 03:27:47PM +0100, Heiner Kallweit wrote:
> Replace ip_tunnel_get_stats64() with the new identical core fucntion
> dev_get_tstats64().
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Acked-by: Harald Welte <laforge@gnumonks.org>

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
