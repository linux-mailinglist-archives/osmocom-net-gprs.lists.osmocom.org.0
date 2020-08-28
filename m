Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 0E6F5255B3C
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Aug 2020 15:31:20 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id B27D91396A3;
	Fri, 28 Aug 2020 13:31:13 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.23.145.76;
 helo=proxy.6wind.com; envelope-from=dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from proxy.6wind.com (host.76.145.23.62.rev.coltfrance.com
 [62.23.145.76])
 by lists.osmocom.org (Postfix) with ESMTP id 4F4AD13966E
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 28 Aug 2020 13:31:07 +0000 (UTC)
Received: from bretzel.dev.6wind.com (unknown [10.16.0.19])
 by proxy.6wind.com (Postfix) with ESMTPS id 7A2A144A9B5;
 Fri, 28 Aug 2020 15:31:07 +0200 (CEST)
Received: from dichtel by bretzel.dev.6wind.com with local (Exim 4.92)
 (envelope-from <dichtel@bretzel.dev.6wind.com>)
 id 1kBeTD-0005x7-DC; Fri, 28 Aug 2020 15:31:07 +0200
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
To: davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org,
 laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
Subject: [PATCH net-next 1/2] gtp: remove useless rcu_read_lock()
Date: Fri, 28 Aug 2020 15:30:55 +0200
Message-Id: <20200828133056.22751-2-nicolas.dichtel@6wind.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200828133056.22751-1-nicolas.dichtel@6wind.com>
References: <20200828133056.22751-1-nicolas.dichtel@6wind.com>
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
Cc: netdev@vger.kernel.org, Nicolas Dichtel <nicolas.dichtel@6wind.com>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

The rtnl lock is taken just the line above, no need to take the rcu also.

Fixes: 1788b8569f5d ("gtp: fix use-after-free in gtp_encap_destroy()")
Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
---
 drivers/net/gtp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index c84a10569388..6f871ec31393 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1071,7 +1071,6 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 	}
 
 	rtnl_lock();
-	rcu_read_lock();
 
 	gtp = gtp_find_dev(sock_net(skb->sk), info->attrs);
 	if (!gtp) {
@@ -1100,7 +1099,6 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 	}
 
 out_unlock:
-	rcu_read_unlock();
 	rtnl_unlock();
 	return err;
 }
-- 
2.26.2

