Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A4B7D1F5C
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:12:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 79CE028316;
	Sat, 21 Oct 2023 20:12:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uxk8atmvxpl0; Sat, 21 Oct 2023 20:12:24 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D73532831A;
	Sat, 21 Oct 2023 20:12:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 46C3738A004F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 23:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1B6B32812D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 23:49:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HmRgtlkYVvhT for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 17 Oct 2023 23:49:21 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
	by mail.osmocom.org (Postfix) with ESMTPS id F417B27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 23:49:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0E01DCE2255;
	Tue, 17 Oct 2023 23:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71A9EC433C8;
	Tue, 17 Oct 2023 23:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697586556;
	bh=MexSOo1RTu4wqGyRDUVunJf4jvcyJayGmORQAzJv3BI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=TmosqRnw6eYeeXCKHLlI4Ha9QwUDZ0FCf/QHS5J6lcI3sc5Qt7K1S8XD+tg5oYavu
	 gFfkFP7t71Sh88xpMOHcpb3Uq5JXj9z32qjyQbrvOWqD9druQj25COP9M6ZkNXDPWn
	 WVN3HYot/sNCESgGIzNowAg286q6+rt9zWRsVde5jkgytaogrlkv7hZUuzjrdwJvWo
	 y5tnaWZjkx9p4piM7Vsd2337+EaWGvlFO9RXh6RK8EjIYi4j3BrGwUcVENL7pmr4Ib
	 CGs2cokr8yjW/G7KuHnSWsg54rwvE+vteaojzMqlpVGbkMYPdszV+qgtV7I94zQCBL
	 yyUPTor2FuwLA==
Date: Tue, 17 Oct 2023 16:49:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: takeru hayasaka <hayatake396@gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <20231017164915.23757eed@kernel.org>
In-Reply-To: <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
References: <20231012060115.107183-1-hayatake396@gmail.com>
	<20231016152343.1fc7c7be@kernel.org>
	<CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
	<CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: CZU4KOPQ47QONI6KSTZPK6CJAMB4BKVJ
X-Message-ID-Hash: CZU4KOPQ47QONI6KSTZPK6CJAMB4BKVJ
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Harald Welte <laforge@gnumonks.org>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CZU4KOPQ47QONI6KSTZPK6CJAMB4BKVJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, 17 Oct 2023 23:37:57 +0900 takeru hayasaka wrote:
> > Are there really deployments where the *very limited* GTP-C control  
> I also think that it should not be limited to GTP-C. However, as I
> wrote in the email earlier, all the flows written are different in
> packet structure, including GTP-C. In the semantics of ethtool, I
> thought it was correct to pass a fixed packet structure and the
> controllable parameters for it. At least, the Intel ice driver that I
> modified is already like that.

I may be wrong (this API predates my involvement in Linux by a decade)
but I think that the current ethtool API is not all that precise in
terms of exact packet headers.

For example the TCPv6 flow includes IPv6 and TCP headers, but the
packet may or may not have any number of encapsulation headers in place.
VLAN, VXLAN, GENEVE etc. If the NIC can parse them - it will extract
the inner-most IPv6 and TCP src/dst and hash on that.

In a way TCP or IP headers may also differ by e.g. including options.
But as long as the fields we care about (source / dst) are in place,
we treat all variants of the header the same.

The question really is how much we should extend this sort of thinking
to GTP and say - we treat all GTP flows with extractable TEID the same;
and how much the user can actually benefit from controlling particular
sub-category of GTP flows. Or knowing that NIC supports a particular
sub-category.

Let's forget about capabilities of Intel NICs for now - can you as a
user think of practical use cases where we'd want to turn on hashing
based on TEID for, e.g. gtpu6 and not gtpc6?
