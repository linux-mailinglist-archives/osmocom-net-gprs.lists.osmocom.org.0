Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B60A590D40
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 12 Aug 2022 10:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3B61E282AF;
	Fri, 12 Aug 2022 08:16:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KZllmWVN-_1j; Fri, 12 Aug 2022 08:16:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6A10028190;
	Fri, 12 Aug 2022 08:16:14 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9E53139622CA;
	Fri, 12 Aug 2022 08:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7C48228190;
	Fri, 12 Aug 2022 08:15:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHgH7unqtJ1m; Fri, 12 Aug 2022 08:15:56 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 313942812C;
	Fri, 12 Aug 2022 08:15:55 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1oMPpj-0039ot-Pp; Fri, 12 Aug 2022 10:15:55 +0200
Received: from laforge by localhost.localdomain with local (Exim 4.96)
	(envelope-from <laforge@gnumonks.org>)
	id 1oMPmj-007yfn-2k;
	Fri, 12 Aug 2022 10:12:49 +0200
Date: Fri, 12 Aug 2022 10:12:49 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Vadim Yanitskiy <vyanitskiy@sysmocom.de>
Subject: Re: New repository - libosmo-gprs.git
Message-ID: <YvYLgXeSZu5rW12D@nataraja>
References: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
Message-ID-Hash: Q7D4HGGD7V7CES6BWEWVQLNYGXAK5IYL
X-Message-ID-Hash: Q7D4HGGD7V7CES6BWEWVQLNYGXAK5IYL
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/Q7D4HGGD7V7CES6BWEWVQLNYGXAK5IYL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Vadim,

On Fri, Aug 12, 2022 at 03:32:48AM +0700, Vadim Yanitskiy wrote:
> * Redmine: https://osmocom.org/projects/libosmo-gprs
> * GitHub: https://github.com/osmocom/libosmo-gprs

now at https://github.com/osmocom/libosmo-gprs

> * cgit: https://cgit.osmocom.org/libosmo-gprs/

now at https://cgit.osmocom.org/libosmo-gprs/

> ** Coverity pulls from this mirror

this should be fixed.  Coverity should use gerrit directly, or gitea.

> ** Jenkins build verification uses this mirror

this should be fixed.  Jenkins jobs should use gerrit directly, or gitea. I think I
did start a patch to address this some time ago.

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
