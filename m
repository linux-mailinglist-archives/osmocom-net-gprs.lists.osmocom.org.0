Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B217D1F64
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 05C8C28328;
	Sat, 21 Oct 2023 20:16:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pI6_UKIxi36V; Sat, 21 Oct 2023 20:16:04 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7445628327;
	Sat, 21 Oct 2023 20:16:04 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 833A838A35CF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 17:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 51AEB28134
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 17:40:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K_ftDtXZuz3g for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 17:40:20 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by mail.osmocom.org (Postfix) with ESMTPS id 61B2C27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 17:40:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7AB45CE247C;
	Wed, 18 Oct 2023 17:40:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56F17C433C8;
	Wed, 18 Oct 2023 17:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697650816;
	bh=a4MNBzIoQraa+P47UnuWNFSqE8gtKcdSsgT0BnTe1Vs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YVvNKp1Gdiy4zquRwSNqkoqP9Y8U1CeEAVV8xmeElCyZ8nCupZmWYM7ZTz1xZB9dY
	 8AHPqT+TI3kITYLP7q8ccjFQhl5JV9Bc9bjmAkXAEHYzrFH3pve6CqtbDbab8Bnnl6
	 yeua8COeRAd6q1xaRDSLEgFDq1OkCzqHdXUlq6CcxFeAVmCICPR5MnkBm18/eiBt41
	 8QYwyXm+zebSU3kSVNasCwuS+26jLzVO1PBQflcoYVqsHuyli5k4x7yd6eHqQ3+FrA
	 jLTRGDCWrhp4z06IZP4FBWDo7gCM7ZJixinvMqNLCMPyUeDoFTldAABiA8VYmt/mUv
	 au/6sQvEm84NQ==
Date: Wed, 18 Oct 2023 10:40:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Harald Welte <laforge@gnumonks.org>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <20231018104015.42b2465b@kernel.org>
In-Reply-To: <ZS-TfMKAxHLEiXBl@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
	<20231016152343.1fc7c7be@kernel.org>
	<CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
	<CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
	<20231017164915.23757eed@kernel.org>
	<CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
	<ZS-TfMKAxHLEiXBl@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: XVJZX2T75CLWAA34LEYUKXRTPY6WWIIZ
X-Message-ID-Hash: XVJZX2T75CLWAA34LEYUKXRTPY6WWIIZ
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: takeru hayasaka <hayatake396@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XVJZX2T75CLWAA34LEYUKXRTPY6WWIIZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, 18 Oct 2023 10:12:44 +0200 Harald Welte wrote:
> > If we were to propose again, setting aside considerations specific to
> > Intel, I believe, considering the users of ethtool, the smallest units
> > should be gtpu4|6 and gtpc4|6.  
> 
> agreed.  Though I'm not entirely sure one would usually want to treat v4
> different from v6.  I'd assume they would usually both follow the same
> RSS scheme?

FWIW I had the same thought. But if we do add flow matching 
support for GTP one day we'll have to define a struct like
struct ethtool_tcpip4_spec, which means size of the address
matters?
