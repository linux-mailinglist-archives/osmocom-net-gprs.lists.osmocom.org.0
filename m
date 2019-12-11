Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id ADF3511A5CF
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 11 Dec 2019 09:25:31 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 8928CCCB8F;
	Wed, 11 Dec 2019 08:24:43 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=nOvDKEPT
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::444; helo=mail-pf1-x444.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by lists.osmocom.org (Postfix) with ESMTP id 2C607CCB06
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 08:23:25 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id 2so1427565pfx.6
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 00:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9AaKIHGVxUO/9sjItMG4Dz/kMGJMWTEvFs9HTsa7WhI=;
 b=nOvDKEPThk20a8mBu9sMh/FJ9H/0huElK9EConIwjxVLEFg73EHrGLy2i532Vf0qNj
 KGybyyK2HzJ2G8lv/L9G9RZ9SiN0LVt2EIB5Xnhk1exDLP6ekIIhGNMfBSb84oNn03sO
 Pt6KCVIV9In5Pk1xM71iPMBQWJ7Q8RADWdsCfCwqQwopqW0sNbgtGehkg8jH7X4h/4eF
 7EqPVPvGltL68U/v+wIB0QderFvJUvUGOOnf1d+tawjSeGc5k9+i4Uk8K+eMVkNEp7Uc
 96CW4V9icN1G4wxuyCGLE3lfHlZxiBbB513/ETvH6SlY09NM/Dm4tkq6LUP/UlbTKyY0
 81/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9AaKIHGVxUO/9sjItMG4Dz/kMGJMWTEvFs9HTsa7WhI=;
 b=kMEX22RHkNO0ckvmAFv7ikURE1z7K5hPwa8d0eGi21N6973gLjHxSMGrFwIhHAB65e
 6AYFySCl0xuDmRkckPoTHm+a9b3712mxyFrdL3k0kWKGBEyUcrO/nRn1eTY9Q/YZaRte
 WjLxx33HbaTwPlak5QH42QwoXNFaxeZRRLkMpOeuf5NTVcBHrxSmkm16lEgRCTEswDXe
 Xswa1QCkMAUdAOWs5+VF+rk1vXWe/sbRVufe6H+cHMfuZHh8d7ssDIailQoo2eLWlq0t
 J1t6P2lC7G7g1BhWGcSg9ZIqVJHr9BeGOs4udgVp4aGs+Bl4R/hczfGHh1AlHXtrR19B
 uVJA==
X-Gm-Message-State: APjAAAV4qf4QBs2puqNO3n/9JbOre3x4FdeoNpkvfmesf0BpnBE5FJwL
 FIEv/OcXsgg0lfOIO+Lc1C5RAL4T
X-Google-Smtp-Source: APXvYqypI31RJq6L8oduT00EeJT6PCgojIVTKyB80ovzCynTkwwULqjvHylPs7F41gsqimcaBgAcSg==
X-Received: by 2002:aa7:9697:: with SMTP id f23mr2333729pfk.232.1576052605032; 
 Wed, 11 Dec 2019 00:23:25 -0800 (PST)
Received: from localhost.localdomain ([110.35.161.54])
 by smtp.gmail.com with ESMTPSA id e6sm1852398pfh.32.2019.12.11.00.23.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:23:24 -0800 (PST)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 2/4] gtp: fix wrong condition in gtp_genl_dump_pdp()
Date: Wed, 11 Dec 2019 08:23:17 +0000
Message-Id: <20191211082317.28609-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: ap420073@gmail.com
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

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
2.17.1

