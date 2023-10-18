Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 416227D1F63
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 789E328326;
	Sat, 21 Oct 2023 20:15:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qPBpsLZpZhiM; Sat, 21 Oct 2023 20:15:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 9BB1228328;
	Sat, 21 Oct 2023 20:15:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1C66938A3D35
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 17:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 79FB828134
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 17:37:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0G8A3bknaJ0t for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 17:37:08 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by mail.osmocom.org (Postfix) with ESMTPS id 6003E27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 17:37:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 0D40FB823F3;
	Wed, 18 Oct 2023 17:37:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24585C433CA;
	Wed, 18 Oct 2023 17:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697650625;
	bh=geOBo95O/K4ooFlTQc6NiW8YW2+mC1AuPcK2r9RbM60=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SXJfEeKWIEFL037wd9Kx1uRUp4vBF0hK+5pVBFk/LlLMQnkZgzbXWX/0iVZCFJSyP
	 W7sTaRni2aOXaaP1bp9sZ/yR4HHmCvBAxxsNVcBx4OEsquhbG91/IikvmM+WTyW5l8
	 /+g/dDC6FOZ7erRdJLiMMIocyKhi2BnvQWip987zLwn9qZMEQhwPy4MCdbtuyr4/La
	 dtzuMIcwKRLG628usEnptkqlz5W1Y7Va6KsX563a6krV4cKmg5Gymp2yD/TUv6hywL
	 G2cEeyg745JJ5zm3X34im7j7hiII8pxpWtcf+A1YRvyaKEdwWh05DBow2Ke0mrWGT+
	 P3dyAc8SrFrFg==
Date: Wed, 18 Oct 2023 10:37:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: takeru hayasaka <hayatake396@gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <20231018103703.41fd4d9b@kernel.org>
In-Reply-To: <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
References: <20231012060115.107183-1-hayatake396@gmail.com>
	<20231016152343.1fc7c7be@kernel.org>
	<CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
	<CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
	<20231017164915.23757eed@kernel.org>
	<CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: PPZSRIMJQGOP4WN44AGHACYCWKI267VS
X-Message-ID-Hash: PPZSRIMJQGOP4WN44AGHACYCWKI267VS
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Harald Welte <laforge@gnumonks.org>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PPZSRIMJQGOP4WN44AGHACYCWKI267VS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, 18 Oct 2023 10:53:02 +0900 takeru hayasaka wrote:
> For instance, there are PGWs that have the capability to separate the
> termination of communication of 4G LTE users into Control and User
> planes (C/U).
> This is quite convenient from a scalability perspective. In fact, in
> 5G UPF, the communication is explicitly only on the User plane
> (Uplane).
> 
> Therefore, services are expected to receive only GTPU traffic (e.g.,
> PGW-U, UPF) or only GTPC traffic (e.g., PGW-C). Hence, there arises a
> necessity to use only GTPU.
> 
> If we do not distinguish packets into Control/User (C/U) with options
> like gtp4|6, I can conceive scenarios where performance tuning becomes
> challenging.
> For example, in cases where we want to process only the control
> communication (GTPC) using Flow Director on specific CPUs, while
> processing GTPU on the remaining cores.
> In scenarios like IoT, where user communication is minimal but the
> volume of devices is vast, the control traffic could substantially
> increase. Thus, this might also be possible in reverse.
> In short, this pertains to being mindful of CPU core affinity.
> 
> If we were to propose again, setting aside considerations specific to
> Intel, I believe, considering the users of ethtool, the smallest units
> should be gtpu4|6 and gtpc4|6.
> Regarding Extension Headers and such, I think it would be more
> straightforward to handle them implicitly.
> 
> What does everyone else think?

Harald went further and questioned use of the same IP addresses for 
-U and -C traffic, but even within one endpoint aren't these running
on a different port? Can someone reasonably use the same UDP port
for both types of traffic?
