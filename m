Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id BC5E21BA1F5
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 27 Apr 2020 13:09:37 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9052E1241BC;
	Mon, 27 Apr 2020 11:09:30 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=FenwKMLP
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1041; helo=mail-pj1-x1041.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com
 [IPv6:2607:f8b0:4864:20::1041])
 by lists.osmocom.org (Postfix) with ESMTP id 6EE9E1241A9
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 27 Apr 2020 11:09:25 +0000 (UTC)
Received: by mail-pj1-x1041.google.com with SMTP id ms17so7324527pjb.0
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 27 Apr 2020 04:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=amsR6fKfRr2MWIQ/OWsdu5esmwGJH8U8a3u3xAw5fqo=;
 b=FenwKMLPioQFrtZqDOGf85TTCcbIURhdUoplogS46KWGL6OlHFudyg+rjNH2SjP41R
 pdqXtOnXxTUfJdMylEDQORXVqxOsSPqi1ILvBFhI/BUpt3PgyrB5EWfcZO2PQZkgd1Ma
 6f0UKjdXWAxskSTOvtAsnBw9kEM1Ev/Bml8iA7HsZjrMuGoirkBajGA29caU9qEPBH7D
 qcm18pkDCPTB0fQJYFfs05tPUMxlk5BsvvacV7YK7M5SKWVYYd2QfSob85gJPG3w//hl
 MVB+qiVec+/wRFj7dPrajlwA5XhJlKnzivGQisLaz26913kW7Aqa0NUxTf4654dWAWLY
 7Z6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=amsR6fKfRr2MWIQ/OWsdu5esmwGJH8U8a3u3xAw5fqo=;
 b=LSZZAmq7OmdL6hdNRJ7FKVEtA9crLVWBBTC+MjA04u3SkOi/SYd4GrLb21L9IdjbQp
 jBbl0ki40NcvcuTjxASf2tknf5Su3N7IoJ6oMf5ytsBHlxcwLbU/aoJSuGd2+rvDrn56
 Ihj9LyEqTQpMFMZ0Lo6dycKxJ3gq6NMJzM98IbhiKFkjWhhxsaRk24O+SNj1uaILZjrz
 CIUplsvY64UGQ/w7ND4rKBu0+3N+DGmsejyWQHtwfpsO3pu7H4Jgu3XLWPqg64X04po0
 pmpDAq6HdwV2bkl6o9CHiI/D2j9r7YEuxDEmI2NISWuUy4Wm1DL/DbgVRNEmxWb6sDkR
 my1g==
X-Gm-Message-State: AGi0PuZFCyXsH+Gs5UMxzmz8lHKKHV8eEyz0w1fVP8QL93rHq9c9eRoB
 0NleoNOozluYh+wHNT6SB8U=
X-Google-Smtp-Source: APiQypKC+llTbQFDNjzBHTs05UAQ6IANrpfD3kJk4DOLtX32/cnysjO9LpHzSHiCF3eyy1Z7ya6F/w==
X-Received: by 2002:a17:90a:ee84:: with SMTP id
 i4mr23214040pjz.71.1587985764318; 
 Mon, 27 Apr 2020 04:09:24 -0700 (PDT)
Received: from localhost.localdomain (fp98a56d27.tkyc502.ap.nuro.jp.
 [152.165.109.39])
 by smtp.gmail.com with ESMTPSA id p66sm12062418pfb.65.2020.04.27.04.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 04:09:23 -0700 (PDT)
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
To: pablo@netfilter.org
Subject: [PATCH] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
Date: Mon, 27 Apr 2020 20:08:14 +0900
Message-Id: <20200427110814.10896-1-ahochauwaaaaa@gmail.com>
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
 osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
flag since it returns multipart message.
This patch adds a new arg "flags" in gtp_genl_fill_info() so that
flags can be set by the callers.

Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
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
2.17.1

