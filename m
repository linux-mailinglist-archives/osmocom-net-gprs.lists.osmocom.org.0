Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 5FBFE255B3E
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Aug 2020 15:31:23 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 1651D1396B1;
	Fri, 28 Aug 2020 13:31:23 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.23.145.76;
 helo=proxy.6wind.com; envelope-from=dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from proxy.6wind.com (host.76.145.23.62.rev.coltfrance.com
 [62.23.145.76])
 by lists.osmocom.org (Postfix) with ESMTP id 51B2C139671
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 28 Aug 2020 13:31:07 +0000 (UTC)
Received: from bretzel.dev.6wind.com (unknown [10.16.0.19])
 by proxy.6wind.com (Postfix) with ESMTPS id 6AFC544A9B4;
 Fri, 28 Aug 2020 15:31:07 +0200 (CEST)
Received: from dichtel by bretzel.dev.6wind.com with local (Exim 4.92)
 (envelope-from <dichtel@bretzel.dev.6wind.com>)
 id 1kBeTD-0005x5-BJ; Fri, 28 Aug 2020 15:31:07 +0200
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
To: davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org,
 laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
Subject: [PATCH net-next 0/2] gtp: minor enhancements
Date: Fri, 28 Aug 2020 15:30:54 +0200
Message-Id: <20200828133056.22751-1-nicolas.dichtel@6wind.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: netdev@vger.kernel.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

The first patch removes a useless rcu lock and the second relax alloc
constraints when a PDP context is added.

 drivers/net/gtp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

Comments are welcomed,
Nicolas


