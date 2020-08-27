Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8CA254858
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Aug 2020 17:05:48 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id EE0BC131912;
	Thu, 27 Aug 2020 15:05:42 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=davemloft.net
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2620:137:e000::1:9;
 helo=shards.monkeyblade.net; envelope-from=davem@davemloft.net;
 receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by lists.osmocom.org (Postfix) with ESMTP id 169D81318EF
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 15:05:31 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 18DC6127A057C;
 Thu, 27 Aug 2020 07:48:29 -0700 (PDT)
Date: Thu, 27 Aug 2020 08:05:14 -0700 (PDT)
Message-Id: <20200827.080514.1573033574724120328.davem@davemloft.net>
To: nicolas.dichtel@6wind.com
Subject: Re: [PATCH net-next v3] gtp: add notification mechanism
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200827121923.7302-1-nicolas.dichtel@6wind.com>
References: <20200827090026.GK130874@nataraja>
 <20200827121923.7302-1-nicolas.dichtel@6wind.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 27 Aug 2020 07:48:29 -0700 (PDT)
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
Cc: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org,
 laforge@gnumonks.org, gabriel.ganne@6wind.com, kuba@kernel.org,
 pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Date: Thu, 27 Aug 2020 14:19:23 +0200

> Like all other network functions, let's notify gtp context on creation and
> deletion.
> 
> Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> Tested-by: Gabriel Ganne <gabriel.ganne@6wind.com>
> Acked-by: Harald Welte <laforge@gnumonks.org>

Applied, thanks.
