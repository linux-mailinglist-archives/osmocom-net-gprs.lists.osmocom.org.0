Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id C45411B478B
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Apr 2020 16:42:36 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 4AE7712018F;
	Wed, 22 Apr 2020 14:42:26 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=ph90rjLP
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1044; helo=mail-pj1-x1044.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by lists.osmocom.org (Postfix) with ESMTP id C369D12017C
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 22 Apr 2020 14:42:19 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id ms17so1070480pjb.0
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 22 Apr 2020 07:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=THgk2o3Aj3nTpBaIGZNekzgL+pBqc2fk9J4yq2Ttug4=;
 b=ph90rjLPHXzgGuqJg9ks87YYhDAZmLFVBD+dImnlqjE5a9eVd/G7ZGLFPzZ8xTYcwB
 Ng3GbjqKq06JR34vJFynTFS8ZNPJAEnA+PmIOacUo+k2oqhGMFmaS1MkdROv/W/Tz4+Q
 j5fvkjXfOC8I1eDPK1QkKlFiP8kFmcsJDg5ZO1xpFx2J7wNhBHFmhkmfKuXeg0CVRwwn
 R9aBj9zsVMvHcVAbjj7hV4Q2kGkSO1M1CQ8tbLmJbIldQPH3ovsDIQzxQ1Scz5Ycd/VN
 Z0mUYcAWQmGRMg9dazjHFUd4h1SGNmfKJPIoyhSeZja12Mc05ijCGhko5iqsrkzPFrmC
 fxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=THgk2o3Aj3nTpBaIGZNekzgL+pBqc2fk9J4yq2Ttug4=;
 b=SXQCjbQBoUwhGCOzBQn35Svnnh67AQj6FMfiLaTZm0GHk094CQ7YNsEtsAy+xLuWjf
 xxDRsg4lG2zVuj6A65Pg39WWx97RV92+KIgyDd+vNk6MEERVjcIJTDApT6tBXZV1YL8J
 5T3gMWOKW5HmUd1UVcgLQhPyrMINmiOa+TBuQjsGDyP/Hk1GbET9f7AMjFkZSghAW/mP
 //DUYN37ZtXWPAZHBSi0/wae3vwo5dyGulkQBdpq8zc3oAILn9eDJIteSc3JBcYfEpmt
 lhskIQcmKG8peLmmWZeotokhXrw2ys3f2K7VraDf0R9cyfzwlv+XhLdUgi1tJrRyiyRP
 oNTA==
X-Gm-Message-State: AGi0PuYjrWdb7KvrlERKoru7+m5f4mFNI1/HbwmPisNaQkBjfK9DDAzO
 6uhxANFSTHwT6O0jM+lH6vE=
X-Google-Smtp-Source: APiQypJ+jZejoy3h/r/mDMDEr6y+t3wXsGYb1Cdqi/NW1D43ObIVCgWZbF5rz3Cy9ZCre7TjCJDLjw==
X-Received: by 2002:a17:90a:dc01:: with SMTP id
 i1mr12241425pjv.166.1587566538918; 
 Wed, 22 Apr 2020 07:42:18 -0700 (PDT)
Received: from localhost.localdomain (fp98a56d27.tkyc502.ap.nuro.jp.
 [152.165.109.39])
 by smtp.gmail.com with ESMTPSA id z5sm2520298pfn.142.2020.04.22.07.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 07:42:17 -0700 (PDT)
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
To: pablo@netfilter.org,
	laforge@gnumonks.org
Subject: [PATCH] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
Date: Wed, 22 Apr 2020 23:42:11 +0900
Message-Id: <20200422144211.28756-1-ahochauwaaaaa@gmail.com>
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

