Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAD37D1F68
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 01A1328788;
	Sat, 21 Oct 2023 20:17:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 03lH7DNIAkLq; Sat, 21 Oct 2023 20:17:42 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E7DAC28791;
	Sat, 21 Oct 2023 20:17:35 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A960738A35CF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 08:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7E90827F3C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 08:26:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1V1h7GWagfRU for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 08:26:27 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 735B127F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 08:26:26 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qt1sl-00Bhme-QA; Wed, 18 Oct 2023 10:26:23 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
	(envelope-from <laforge@gnumonks.org>)
	id 1qt1sD-00000002YxM-3yh4;
	Wed, 18 Oct 2023 10:25:49 +0200
Date: Wed, 18 Oct 2023 10:25:49 +0200
From: Harald Welte <laforge@gnumonks.org>
To: takeru hayasaka <hayatake396@gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <ZS-WjVVaoBXqdZgB@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com>
X-MailFrom: laforge@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: DWATTJNSO2FRFTNOPYPSWDATIN5WBUGB
X-Message-ID-Hash: DWATTJNSO2FRFTNOPYPSWDATIN5WBUGB
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:46 +0000
CC: Jakub Kicinski <kuba@kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/DWATTJNSO2FRFTNOPYPSWDATIN5WBUGB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Takeru,

On Wed, Oct 18, 2023 at 01:49:08AM +0900, takeru hayasaka wrote:
> I'm not very proficient in English, so I'm worried whether I can
> explain it well.

Don't worry, you were very clear in this e-mail.

> Therefore, I will try to briefly explain the flow and what kind of
> cases these are in a straightforward manner.

Thanks for taking the time.  As stated, I think it would be best to have
these or some other some brief comments about the different flow types
in the source code (and especially the documentation) of ethtool.

Based on your explanation, I agree that indeed those are all different
flow types that occur in real-life on PGW/UPF and other 3GPP network
elements/functions.  I can also very well imagine that there are use
cases to steer all of those separately, including the EH and UL/DL types
you mentioned.

So I'm supporing your patch with all its many different flow types for RSS.

Thanks,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
