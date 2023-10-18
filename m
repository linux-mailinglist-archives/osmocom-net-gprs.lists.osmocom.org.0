Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB887D1F66
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6ED9628327;
	Sat, 21 Oct 2023 20:16:54 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ZFUFSI69CFR; Sat, 21 Oct 2023 20:16:50 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E4CB928776;
	Sat, 21 Oct 2023 20:16:46 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 101F538A35CF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 18:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CD91428158
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 18:00:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDl85tllG1uF for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 18:00:09 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id B535627F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 18:00:09 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qtApx-00EjDB-RY; Wed, 18 Oct 2023 20:00:05 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qtAnC-00000002j2L-0xli;
	Wed, 18 Oct 2023 19:57:14 +0200
Date: Wed, 18 Oct 2023 19:57:14 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <ZTAceqxFSmL-jFuw@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
 <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
 <20231018103703.41fd4d9b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018103703.41fd4d9b@kernel.org>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: R25GV4KHHUS34SUL3YX2S2SAO67MOZ73
X-Message-ID-Hash: R25GV4KHHUS34SUL3YX2S2SAO67MOZ73
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: takeru hayasaka <hayatake396@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/R25GV4KHHUS34SUL3YX2S2SAO67MOZ73/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Jakub,

On Wed, Oct 18, 2023 at 10:37:03AM -0700, Jakub Kicinski wrote:
> Harald went further and questioned use of the same IP addresses for 
> -U and -C traffic, but even within one endpoint aren't these running
> on a different port? 

yes.

> Can someone reasonably use the same UDP port for both types of traffic?

I don't think so.  In the entire 3GPP protocol world, the UDP port numbers
for GTP-U and GTP-C are fixed.  The various signaling protocols allow you to
communicate the IPv4/v6 address and TEID of tunnel endpoints, but never allow
you to communicate the port number - which hence must always be the well-known port
(2123 for GTP-C + 2152 for GTP-U).

Of course somebody could do whatever they want in some kind of internal interface
not required to interoperate with any other equipment/implementation/operator, but
I'd consider it not falling in your question of "reasonable use".

Regards,
	Harald

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
