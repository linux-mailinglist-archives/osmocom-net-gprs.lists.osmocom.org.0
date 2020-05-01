Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 4C8991C20D5
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  2 May 2020 00:41:47 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 820AF12819F;
	Fri,  1 May 2020 22:41:39 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=davemloft.net
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 419 seconds by postgrey-1.37 at lists.osmocom.org;
 Fri, 01 May 2020 22:41:35 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=davemloft.net
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2620:137:e000::1:9;
 helo=shards.monkeyblade.net; envelope-from=davem@davemloft.net;
 receiver=<UNKNOWN> 
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by lists.osmocom.org (Postfix) with ESMTP id 23B83128180
 for <osmocom-net-gprs@lists.osmocom.org>; Fri,  1 May 2020 22:41:34 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 85A1414F64DDF;
 Fri,  1 May 2020 15:34:30 -0700 (PDT)
Date: Fri, 01 May 2020 15:34:29 -0700 (PDT)
Message-Id: <20200501.153429.2281822366307684985.davem@davemloft.net>
To: ahochauwaaaaa@gmail.com
Subject: Re: [PATCH net] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200430050136.1837-1-ahochauwaaaaa@gmail.com>
References: <20200430050136.1837-1-ahochauwaaaaa@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 01 May 2020 15:34:30 -0700 (PDT)
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

From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
Date: Thu, 30 Apr 2020 14:01:36 +0900

> In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
> flag since it returns multipart message.
> This patch adds a new arg "flags" in gtp_genl_fill_info() so that
> flags can be set by the callers.
> 
> Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>

Applied.
