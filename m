Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 44DF561919
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  8 Jul 2019 04:04:41 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id E7D4AC96C3;
	Mon,  8 Jul 2019 02:04:28 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=davemloft.net
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 511 seconds by postgrey-1.34 at lists.osmocom.org;
 Mon, 08 Jul 2019 02:04:15 UTC
Authentication-Results: lists.osmocom.org; dmarc=none header.from=davemloft.net
Received-SPF: None (no SPF record) identity=mailfrom;
 client-ip=2620:137:e000::1:9; helo=shards.monkeyblade.net;
 envelope-from=davem@davemloft.net;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by lists.osmocom.org (Postfix) with ESMTP id 6D51AC96AE
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  8 Jul 2019 02:04:15 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DA9E615288A25;
 Sun,  7 Jul 2019 18:55:19 -0700 (PDT)
Date: Sun, 07 Jul 2019 18:55:19 -0700 (PDT)
Message-Id: <20190707.185519.1104845537295054845.davem@davemloft.net>
To: ap420073@gmail.com
Subject: Re: [PATCH net 0/6] gtp: fix several bugs
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190702152034.22412-1-ap420073@gmail.com>
References: <20190702152034.22412-1-ap420073@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 07 Jul 2019 18:55:20 -0700 (PDT)
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
 laforge@gnumonks.org, pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Taehee Yoo <ap420073@gmail.com>
Date: Wed,  3 Jul 2019 00:20:34 +0900

> This patch series fixes several bugs in the gtp module.

I reviewed these carefully by hand and decided to apply these now.

Thanks Taehee.
