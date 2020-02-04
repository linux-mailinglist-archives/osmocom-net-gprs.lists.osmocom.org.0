Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id D1F4F151A15
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  4 Feb 2020 12:45:50 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 77CB41171F1;
	Tue,  4 Feb 2020 11:45:42 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=davemloft.net
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 317 seconds by postgrey-1.37 at lists.osmocom.org;
 Tue, 04 Feb 2020 11:45:37 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=davemloft.net
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2620:137:e000::1:9;
 helo=shards.monkeyblade.net; envelope-from=davem@davemloft.net;
 receiver=<UNKNOWN> 
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by lists.osmocom.org (Postfix) with ESMTP id 4C8AE1171DE
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  4 Feb 2020 11:45:36 +0000 (UTC)
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BEBD9133E904C;
 Tue,  4 Feb 2020 03:39:59 -0800 (PST)
Date: Tue, 04 Feb 2020 12:39:58 +0100 (CET)
Message-Id: <20200204.123958.1136310259052678902.davem@davemloft.net>
To: ap420073@gmail.com
Subject: Re: [PATCH net] gtp: use __GFP_NOWARN to avoid memalloc warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200204032459.15728-1-ap420073@gmail.com>
References: <20200204032459.15728-1-ap420073@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 04 Feb 2020 03:40:00 -0800 (PST)
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
Cc: kuba@kernel.org, osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org,
 pablo@netfilter.org, netdev@vger.kernel.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Taehee Yoo <ap420073@gmail.com>
Date: Tue,  4 Feb 2020 03:24:59 +0000

> gtp hashtable size is received by user-space.
> So, this hashtable size could be too large. If so, kmalloc will internally
> print a warning message.
> This warning message is actually not necessary for the gtp module.
> So, this patch adds __GFP_NOWARN to avoid this message.
 ...
> Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
> Signed-off-by: Taehee Yoo <ap420073@gmail.com>

Applied and queued up for -stable, thanks.
