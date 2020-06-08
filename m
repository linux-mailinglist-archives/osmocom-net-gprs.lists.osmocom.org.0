Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D10C51F233C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  9 Jun 2020 01:14:51 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 75B17131018;
	Mon,  8 Jun 2020 23:14:43 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=EeTMlYmx
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 8031A130FEE
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  8 Jun 2020 23:14:37 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ED1D20B80;
 Mon,  8 Jun 2020 23:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658076;
 bh=0wblg+mjV7gSWmz93T+E11WB/Wjp2kweRBmGDzFdv/k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EeTMlYmxgc6x5QU2HfYUqodcuqRsNx3/5S0LAkjDT4nuJar5H4MXstYQ5hDzwaucT
 i5yOFqgHIPa1K8jiCUS/X6Sib5tntLnhPc01NYcY42HvhGpAtCPeWbg7OrQvnammSP
 mIzhVLVhQugDKe+OARX4w8KZa3EPJUXz4uQsZ1WM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 121/606] gtp: set NLM_F_MULTI flag in
 gtp_genl_dump_pdp()
Date: Mon,  8 Jun 2020 19:04:06 -0400
Message-Id: <20200608231211.3363633-121-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>,
 Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org, "David S . Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>

[ Upstream commit 846c68f7f1ac82c797a2f1db3344a2966c0fe2e1 ]

In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
flag since it returns multipart message.
This patch adds a new arg "flags" in gtp_genl_fill_info() so that
flags can be set by the callers.

Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 672cd2caf2fb..21640a035d7d 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1169,11 +1169,11 @@ static int gtp_genl_del_pdp(struct sk_buff *skb, struct genl_info *info)
 static struct genl_family gtp_genl_family;
 
 static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
-			      u32 type, struct pdp_ctx *pctx)
+			      int flags, u32 type, struct pdp_ctx *pctx)
 {
 	void *genlh;
 
-	genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, 0,
+	genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, flags,
 			    type);
 	if (genlh == NULL)
 		goto nlmsg_failure;
@@ -1227,8 +1227,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb, struct genl_info *info)
 		goto err_unlock;
 	}
 
-	err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
-				 info->snd_seq, info->nlhdr->nlmsg_type, pctx);
+	err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid, info->snd_seq,
+				 0, info->nlhdr->nlmsg_type, pctx);
 	if (err < 0)
 		goto err_unlock_free;
 
@@ -1271,6 +1271,7 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 				    gtp_genl_fill_info(skb,
 					    NETLINK_CB(cb->skb).portid,
 					    cb->nlh->nlmsg_seq,
+					    NLM_F_MULTI,
 					    cb->nlh->nlmsg_type, pctx)) {
 					cb->args[0] = i;
 					cb->args[1] = j;
-- 
2.25.1

