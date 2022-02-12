Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AAF4B33C3
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 12 Feb 2022 09:20:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6CF7B283F0;
	Sat, 12 Feb 2022 08:20:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oK_FdLqMpcbK; Sat, 12 Feb 2022 08:20:27 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BD2DB283D3;
	Sat, 12 Feb 2022 08:20:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 05C4E38A003F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 08:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DCF3E282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 08:20:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oieCRS2CzeVE for <osmocom-net-gprs@lists.osmocom.org>;
	Sat, 12 Feb 2022 08:20:06 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id CBB36283AA
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 12 Feb 2022 08:20:05 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1nIndU-000SLD-KX; Sat, 12 Feb 2022 09:20:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@gnumonks.org>)
	id 1nInZD-005Am5-Av;
	Sat, 12 Feb 2022 09:15:39 +0100
Date: Sat, 12 Feb 2022 09:15:39 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [RFC PATCH net-next v5 1/6] gtp: Allow to create GTP device
 without FDs
Message-ID: <YgdsqzOPZJLLkhAk@nataraja>
References: <20220211175405.7651-1-marcin.szycik@linux.intel.com>
 <20220211175500.7805-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220211175500.7805-1-marcin.szycik@linux.intel.com>
Message-ID-Hash: LRCT53QGVGCHWRHB6JOCBWCOOCDRVQHM
X-Message-ID-Hash: LRCT53QGVGCHWRHB6JOCBWCOOCDRVQHM
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LRCT53QGVGCHWRHB6JOCBWCOOCDRVQHM/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Marcin,

I'm sorry if you think this is too much nit-picking, but moving
around functions and removing forward declarations is making it
unneccessarily hard to read the generated diff:

Now it's not possible to see which bits of the code you really changed,
as entire functions have moved position within the file.

On Fri, Feb 11, 2022 at 06:55:00PM +0100, Marcin Szycik wrote:
> -static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize);
> -static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[]);
> +static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
> +{
> +	int i;
> +
> +	gtp->addr_hash = kmalloc_array(hsize, sizeof(struct hlist_head),
> +				       GFP_KERNEL | __GFP_NOWARN);
> +	if (gtp->addr_hash == NULL)

...

I would appreciate if you could do any re-ordering of functions in a
separate, marked "cosmetic" commit, so we can see the actual changes you
make to the code in one patch, and the re-arranging in another.

Thanks!
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
