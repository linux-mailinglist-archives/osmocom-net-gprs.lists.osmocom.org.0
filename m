Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id A96CB59100A
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 12 Aug 2022 13:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6C770282AC;
	Fri, 12 Aug 2022 11:30:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_pQ8SsRLkgA; Fri, 12 Aug 2022 11:30:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E67E528190;
	Fri, 12 Aug 2022 11:30:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4155838A0B0F;
	Fri, 12 Aug 2022 11:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1CAB128196;
	Fri, 12 Aug 2022 11:30:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69E0VaZEBaMN; Fri, 12 Aug 2022 11:30:07 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 3F7FD2812C;
	Fri, 12 Aug 2022 11:30:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1oMSrc-003cu9-Vw; Fri, 12 Aug 2022 13:30:05 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.96)
	(envelope-from <laforge@gnumonks.org>)
	id 1oMSoP-0083R3-1E;
	Fri, 12 Aug 2022 13:26:45 +0200
Date: Fri, 12 Aug 2022 13:26:45 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Vadim Yanitskiy <vyanitskiy@sysmocom.de>
Subject: Re: New repository - libosmo-gprs.git
Message-ID: <YvY49TlVtR2x407r@nataraja>
References: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
 <YvYLgXeSZu5rW12D@nataraja>
 <825c51a2-6d9a-9622-7bca-3e64c770aa3c@sysmocom.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <825c51a2-6d9a-9622-7bca-3e64c770aa3c@sysmocom.de>
Message-ID-Hash: GSMQEMBZCRD435A3GASZW5NG3R3PZHJI
X-Message-ID-Hash: GSMQEMBZCRD435A3GASZW5NG3R3PZHJI
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GSMQEMBZCRD435A3GASZW5NG3R3PZHJI/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Vadim,

On Fri, Aug 12, 2022 at 04:38:42PM +0700, Vadim Yanitskiy wrote:
> Cloning via https:// works, but doesn't via git://

some people would consider that a feature... In fact we've even had
a bug report years ago considering clone possibility via git:// a bug.

I think a good first step would be to not enable it for new projects,
to avoid people from creating clones that would break if we eventually
disable it.

Regards,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
