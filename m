Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 35B8E12B7EC
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 27 Dec 2019 18:52:28 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 349D7F20A3;
	Fri, 27 Dec 2019 17:52:01 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=AIdNTDtr
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id DE300F2038
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 27 Dec 2019 17:49:34 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C859E222C3;
 Fri, 27 Dec 2019 17:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468591;
 bh=FZOqHE2/x5MgNjPov91iLk+BM+iEb6L4UN1TGMbnRIA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AIdNTDtrNtkWXJLy05paGThKdift4Yo3PmMCyqf09M/VqYQ3bhVDcpL5lhNv5hyUu
 9F2TLkCqTn+/cV2dZq6xGcU4pvFofL5+FCWRmpov877VYIhz/11kfiWowpr4gKa6Ul
 6a30GJ43yCxQyKKUeoyrS4rLrjVglko+UxQceSHQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 113/187] gtp: fix wrong condition in
 gtp_genl_dump_pdp()
Date: Fri, 27 Dec 2019 12:39:41 -0500
Message-Id: <20191227174055.4923-113-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jakub Kicinski <jakub.kicinski@netronome.com>, Taehee Yoo <ap420073@gmail.com>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Taehee Yoo <ap420073@gmail.com>

[ Upstream commit 94a6d9fb88df43f92d943c32b84ce398d50bf49f ]

gtp_genl_dump_pdp() is ->dumpit() callback of GTP module and it is used
to dump pdp contexts. it would be re-executed because of dump packet size.

If dump packet size is too big, it saves current dump pointer
(gtp interface pointer, bucket, TID value) then it restarts dump from
last pointer.
Current GTP code allows adding zero TID pdp context but dump code
ignores zero TID value. So, last dump pointer will not be found.

In addition, this patch adds missing rcu_read_lock() in
gtp_genl_dump_pdp().

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 8b742edf793d..a010e0a11c33 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -38,7 +38,6 @@ struct pdp_ctx {
 	struct hlist_node	hlist_addr;
 
 	union {
-		u64		tid;
 		struct {
 			u64	tid;
 			u16	flow;
@@ -1244,43 +1243,46 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 				struct netlink_callback *cb)
 {
 	struct gtp_dev *last_gtp = (struct gtp_dev *)cb->args[2], *gtp;
+	int i, j, bucket = cb->args[0], skip = cb->args[1];
 	struct net *net = sock_net(skb->sk);
-	struct gtp_net *gn = net_generic(net, gtp_net_id);
-	unsigned long tid = cb->args[1];
-	int i, k = cb->args[0], ret;
 	struct pdp_ctx *pctx;
+	struct gtp_net *gn;
+
+	gn = net_generic(net, gtp_net_id);
 
 	if (cb->args[4])
 		return 0;
 
+	rcu_read_lock();
 	list_for_each_entry_rcu(gtp, &gn->gtp_dev_list, list) {
 		if (last_gtp && last_gtp != gtp)
 			continue;
 		else
 			last_gtp = NULL;
 
-		for (i = k; i < gtp->hash_size; i++) {
-			hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid) {
-				if (tid && tid != pctx->u.tid)
-					continue;
-				else
-					tid = 0;
-
-				ret = gtp_genl_fill_info(skb,
-							 NETLINK_CB(cb->skb).portid,
-							 cb->nlh->nlmsg_seq,
-							 cb->nlh->nlmsg_type, pctx);
-				if (ret < 0) {
+		for (i = bucket; i < gtp->hash_size; i++) {
+			j = 0;
+			hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i],
+						 hlist_tid) {
+				if (j >= skip &&
+				    gtp_genl_fill_info(skb,
+					    NETLINK_CB(cb->skb).portid,
+					    cb->nlh->nlmsg_seq,
+					    cb->nlh->nlmsg_type, pctx)) {
 					cb->args[0] = i;
-					cb->args[1] = pctx->u.tid;
+					cb->args[1] = j;
 					cb->args[2] = (unsigned long)gtp;
 					goto out;
 				}
+				j++;
 			}
+			skip = 0;
 		}
+		bucket = 0;
 	}
 	cb->args[4] = 1;
 out:
+	rcu_read_unlock();
 	return skb->len;
 }
 
-- 
2.20.1

