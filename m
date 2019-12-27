Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id EE15112B849
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 27 Dec 2019 18:55:48 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id E4FF2F212C;
	Fri, 27 Dec 2019 17:54:37 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=QPU7nXQW
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id C337EF20CD
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 27 Dec 2019 17:54:34 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFE3121582;
 Fri, 27 Dec 2019 17:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468695;
 bh=K77zhdQCGo5aAIegA2dbl4U7QWifn6VkpvH5DQ65VY4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QPU7nXQWrMPqkE8GaHj/k2dUr8lxf18gDBDhu16wJK3k59m5+CBOM+UySDGGZO0lR
 VM7NFVvHFz4vZQjHPV40cBM8AyC08uzWetFdFEhnFnr2IajjJg6jZOULnGORz5V6oZ
 3S9Xea3dAg1I6LnfWSlLY2my2dF1B4qk+aFxNB2g=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 52/84] gtp: do not allow adding duplicate tid and
 ms_addr pdp context
Date: Fri, 27 Dec 2019 12:43:20 -0500
Message-Id: <20191227174352.6264-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174352.6264-1-sashal@kernel.org>
References: <20191227174352.6264-1-sashal@kernel.org>
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

[ Upstream commit 6b01b1d9b2d38dc84ac398bfe9f00baff06a31e5 ]

GTP RX packet path lookups pdp context with TID. If duplicate TID pdp
contexts are existing in the list, it couldn't select correct pdp context.
So, TID value  should be unique.
GTP TX packet path lookups pdp context with ms_addr. If duplicate ms_addr pdp
contexts are existing in the list, it couldn't select correct pdp context.
So, ms_addr value should be unique.

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index d178d5bad7e4..7ca96ba00f20 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -931,24 +931,31 @@ static void ipv4_pdp_fill(struct pdp_ctx *pctx, struct genl_info *info)
 	}
 }
 
-static int ipv4_pdp_add(struct gtp_dev *gtp, struct sock *sk,
-			struct genl_info *info)
+static int gtp_pdp_add(struct gtp_dev *gtp, struct sock *sk,
+		       struct genl_info *info)
 {
+	struct pdp_ctx *pctx, *pctx_tid = NULL;
 	struct net_device *dev = gtp->dev;
 	u32 hash_ms, hash_tid = 0;
-	struct pdp_ctx *pctx;
+	unsigned int version;
 	bool found = false;
 	__be32 ms_addr;
 
 	ms_addr = nla_get_be32(info->attrs[GTPA_MS_ADDRESS]);
 	hash_ms = ipv4_hashfn(ms_addr) % gtp->hash_size;
+	version = nla_get_u32(info->attrs[GTPA_VERSION]);
 
-	hlist_for_each_entry_rcu(pctx, &gtp->addr_hash[hash_ms], hlist_addr) {
-		if (pctx->ms_addr_ip4.s_addr == ms_addr) {
-			found = true;
-			break;
-		}
-	}
+	pctx = ipv4_pdp_find(gtp, ms_addr);
+	if (pctx)
+		found = true;
+	if (version == GTP_V0)
+		pctx_tid = gtp0_pdp_find(gtp,
+					 nla_get_u64(info->attrs[GTPA_TID]));
+	else if (version == GTP_V1)
+		pctx_tid = gtp1_pdp_find(gtp,
+					 nla_get_u32(info->attrs[GTPA_I_TEI]));
+	if (pctx_tid)
+		found = true;
 
 	if (found) {
 		if (info->nlhdr->nlmsg_flags & NLM_F_EXCL)
@@ -956,6 +963,11 @@ static int ipv4_pdp_add(struct gtp_dev *gtp, struct sock *sk,
 		if (info->nlhdr->nlmsg_flags & NLM_F_REPLACE)
 			return -EOPNOTSUPP;
 
+		if (pctx && pctx_tid)
+			return -EEXIST;
+		if (!pctx)
+			pctx = pctx_tid;
+
 		ipv4_pdp_fill(pctx, info);
 
 		if (pctx->gtp_version == GTP_V0)
@@ -1079,7 +1091,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 		goto out_unlock;
 	}
 
-	err = ipv4_pdp_add(gtp, sk, info);
+	err = gtp_pdp_add(gtp, sk, info);
 
 out_unlock:
 	rcu_read_unlock();
-- 
2.20.1

