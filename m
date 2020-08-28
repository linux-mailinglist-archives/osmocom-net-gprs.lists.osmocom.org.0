Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 15EC7255B3D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 28 Aug 2020 15:31:22 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 3F9F51396AA;
	Fri, 28 Aug 2020 13:31:21 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.23.145.76;
 helo=proxy.6wind.com; envelope-from=dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from proxy.6wind.com (host.76.145.23.62.rev.coltfrance.com
 [62.23.145.76])
 by lists.osmocom.org (Postfix) with ESMTP id 5088913966F
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 28 Aug 2020 13:31:07 +0000 (UTC)
Received: from bretzel.dev.6wind.com (unknown [10.16.0.19])
 by proxy.6wind.com (Postfix) with ESMTPS id 905F944A9B6;
 Fri, 28 Aug 2020 15:31:07 +0200 (CEST)
Received: from dichtel by bretzel.dev.6wind.com with local (Exim 4.92)
 (envelope-from <dichtel@bretzel.dev.6wind.com>)
 id 1kBeTD-0005xA-FX; Fri, 28 Aug 2020 15:31:07 +0200
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
To: davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org,
 laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
Subject: [PATCH net-next 2/2] gtp: relax alloc constraint when adding a pdp
Date: Fri, 28 Aug 2020 15:30:56 +0200
Message-Id: <20200828133056.22751-3-nicolas.dichtel@6wind.com>
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

When a PDP context is added, the rtnl lock is held, thus no need to force
a GFP_ATOMIC.

Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
---
 drivers/net/gtp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 6f871ec31393..2ed1e82a8ad8 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1036,7 +1036,7 @@ static void pdp_context_delete(struct pdp_ctx *pctx)
 	call_rcu(&pctx->rcu_head, pdp_context_free);
 }
 
-static int gtp_tunnel_notify(struct pdp_ctx *pctx, u8 cmd);
+static int gtp_tunnel_notify(struct pdp_ctx *pctx, u8 cmd, gfp_t allocation);
 
 static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 {
@@ -1094,7 +1094,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 	if (IS_ERR(pctx)) {
 		err = PTR_ERR(pctx);
 	} else {
-		gtp_tunnel_notify(pctx, GTP_CMD_NEWPDP);
+		gtp_tunnel_notify(pctx, GTP_CMD_NEWPDP, GFP_KERNEL);
 		err = 0;
 	}
 
@@ -1166,7 +1166,7 @@ static int gtp_genl_del_pdp(struct sk_buff *skb, struct genl_info *info)
 		netdev_dbg(pctx->dev, "GTPv1-U: deleting tunnel id = %x/%x (pdp %p)\n",
 			   pctx->u.v1.i_tei, pctx->u.v1.o_tei, pctx);
 
-	gtp_tunnel_notify(pctx, GTP_CMD_DELPDP);
+	gtp_tunnel_notify(pctx, GTP_CMD_DELPDP, GFP_ATOMIC);
 	pdp_context_delete(pctx);
 
 out_unlock:
@@ -1220,12 +1220,12 @@ static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
 	return -EMSGSIZE;
 }
 
-static int gtp_tunnel_notify(struct pdp_ctx *pctx, u8 cmd)
+static int gtp_tunnel_notify(struct pdp_ctx *pctx, u8 cmd, gfp_t allocation)
 {
 	struct sk_buff *msg;
 	int ret;
 
-	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
+	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, allocation);
 	if (!msg)
 		return -ENOMEM;
 
-- 
2.26.2

