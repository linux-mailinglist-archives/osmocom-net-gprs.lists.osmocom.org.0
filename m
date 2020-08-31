Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7312581B8
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 31 Aug 2020 21:25:12 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 52452140913;
	Mon, 31 Aug 2020 19:25:05 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 26B391408F9
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 31 Aug 2020 19:24:55 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 74ACC12889EDE;
 Mon, 31 Aug 2020 12:08:02 -0700 (PDT)
Date: Mon, 31 Aug 2020 12:24:48 -0700 (PDT)
Message-Id: <20200831.122448.218384742586415389.davem@davemloft.net>
To: nicolas.dichtel@6wind.com
Subject: Re: [PATCH net-next 0/2] gtp: minor enhancements
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200828133056.22751-1-nicolas.dichtel@6wind.com>
References: <20200828133056.22751-1-nicolas.dichtel@6wind.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 31 Aug 2020 12:08:02 -0700 (PDT)
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

From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Date: Fri, 28 Aug 2020 15:30:54 +0200

> The first patch removes a useless rcu lock and the second relax alloc
> constraints when a PDP context is added.

Series applied, thanks.
