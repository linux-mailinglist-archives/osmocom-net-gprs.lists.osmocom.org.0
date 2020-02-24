Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 4311616A106
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 24 Feb 2020 10:08:40 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2DE2833F07;
	Mon, 24 Feb 2020 09:08:28 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=K8bMPzHl
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::444; helo=mail-pf1-x444.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by lists.osmocom.org (Postfix) with ESMTP id 53A2233EF3
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 24 Feb 2020 09:08:19 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id x185so5024173pfc.5
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 24 Feb 2020 01:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=THgk2o3Aj3nTpBaIGZNekzgL+pBqc2fk9J4yq2Ttug4=;
 b=K8bMPzHljeeL5rOh08gUY5UH7pIf/QBo8h+JbKilNk5LJVOvZLzBu4HsifFVjmw9yM
 x0o5qUdTLM0JkElo1KBRfyJgpRXBxocVwP/fxLTMMx6muOi+Z10CKQIq7to3KT71S/WC
 LlSqqYi3HdSaYvFGY6sZ6CKvUxYh8DEuY4FDDqGu0Pnv7OljowCFOVpFGMr1IiFBR0l9
 UarilQzClp9be987WAGocIgJv8CCo7tSTsFgLk7YzdI2Qf2Fed9kocNp9NzX4o+hwGOV
 9TUHQRFRV8ioUvDZYR8hOWrNqPZPNtJkdGgYPZklyPx4IEay7Fyk6bq5Fy2QDDiqawq6
 MtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=THgk2o3Aj3nTpBaIGZNekzgL+pBqc2fk9J4yq2Ttug4=;
 b=KA/EiJ59ldHpWNeWA5CX1nU50fAS5hL0y8ZMAvNAxiZfm/ey/1iLM89roM2/5WFoMi
 HZFv99jVXqaMWaOAkj/VT7D+eKKlUxOEL95EsytgVW9fVMJDaN9m053++7WVhduf3Xs6
 yWfXLmGyZLgD6y3Kqa0FU7CCjmdVVX9GhvCSKa8QFGTVVRFvJoQeYdnZyfPlMWDDFtMn
 Adkz2AvbV13kzaQzO++bTEpg2cMSBfxe+oD74s68RWjzUFsG3r8u1mQYbfo5q7QfVXy7
 lhZhynxCEsOhIEj4w8MoQJhIt+Gxpal0DMhFySR/vAwTCwrQvdi9M64uzy5uparnMXJ3
 YWuA==
X-Gm-Message-State: APjAAAVq5hsrCzrbL+vp/Npog52rl2UrnITIb+/pJKRgUrmMTSZvAR6p
 wNt+ZbXPd3YuWu9rDw0ncXVh2Bs/IOVW6oh3
X-Google-Smtp-Source: APXvYqyzskoo5Y+afjYzcE7VcgWUn4yOLugRNz1I3Zs/l6HAXHieH28hXtvPse1EYfi7UnuHPnDYtQ==
X-Received: by 2002:a63:34b:: with SMTP id 72mr50012865pgd.278.1582535298978; 
 Mon, 24 Feb 2020 01:08:18 -0800 (PST)
Received: from localhost.localdomain (ip76ee06d3.ap.nuro.jp. [118.238.6.211])
 by smtp.gmail.com with ESMTPSA id
 e2sm11436851pjs.25.2020.02.24.01.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 01:08:18 -0800 (PST)
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
To: pablo@netfilter.org,
	laforge@gnumonks.org
Subject: [PATCH] net: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
Date: Mon, 24 Feb 2020 18:07:04 +0900
Message-Id: <20200224090704.3078-1-ahochauwaaaaa@gmail.com>
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
Cc: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
flag since it returns multipart message.
This patch adds a new arg "flags" in gtp_genl_fill_info() so that
flags can be set by the callers.

Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
---
 drivers/net/gtp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 672cd2caf2fb..10fa731bae6d 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1097,7 +1097,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, struct genl_info *info)
 }
 
 static struct pdp_ctx *gtp_find_pdp_by_link(struct net *net,
-					    struct nlattr *nla[])
+						struct nlattr *nla[])
 {
 	struct gtp_dev *gtp;
 
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
+				info->nlhdr->nlmsg_flags, info->nlhdr->nlmsg_type, pctx);
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
2.17.1

