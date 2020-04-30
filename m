Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 26B891BEF8A
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 30 Apr 2020 07:02:54 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id BC83D126511;
	Thu, 30 Apr 2020 05:02:44 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=cada2NaG
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::641; helo=mail-pl1-x641.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by lists.osmocom.org (Postfix) with ESMTP id DA0481264F4
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 30 Apr 2020 05:02:39 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id z6so1801744plk.10
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 29 Apr 2020 22:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=amsR6fKfRr2MWIQ/OWsdu5esmwGJH8U8a3u3xAw5fqo=;
 b=cada2NaGDLB0cDt+l+/BM0sLwJkJTr9FMICp0pZn8kxnaesTMJ3PbgBZ7V9uJVHVuq
 dfXXSBabCZvf5g0+YN9RsJUUur7sNpiokvuqRINgIz6jUYaXlnaT+bdZzo/wnNhPQgR6
 wNim2pGqWZKtoPQ6pgiUBy+YJp/kxax8wndidEeY8MVgAwJCXHwO3pcFus7RWfuHEYGH
 tvfCC6NCP+HmqJjmx/oUfte43/+v5jR295AA9Ya9x6mLJRb3bDI6ikQm7d2KLNEW3lFK
 ZG0rp/N2khAetS/m/Dx1bk9rggco4SMbrisNXSVNh1A/J4/zVLxxaYWNu33vk1Lnhh4o
 MR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=amsR6fKfRr2MWIQ/OWsdu5esmwGJH8U8a3u3xAw5fqo=;
 b=f1YItVqKPG8hokZ+xKGNvNMrK7zuhWfAcClDiZbIyTI9m4rMg7RKHcb4KkIwCjdQDC
 n1mZq4f3nb/bX3z90wNP5Y3VI7W1YIdO+w7DrhTWC1jZTcMRzPkNz7947KVSu1El+1Ca
 uvxHvDwTQfQKHzWYtCYlaqGMJT+50CAutDNtF66Lc9kxyqwocfZEz6WM5wDXbUoXoPzu
 vRB4ZgJtyGqs5wNuuwI+Z2GOupvw8A3vRmvfvmPqjs4vTeSlnqKIMeRLc0zHbMt7Zem8
 /YOcnxj1eEIA4EPnYvaR1SDTth0+axrDzE7+5MiFMnTG9PNn5SWeNkANrnlXGxqWyLDo
 0d7Q==
X-Gm-Message-State: AGi0PuaY+4n8T8EO3iPVVRXWn1i+qPuAZFYoQktfUmws1ddFbqDMjg0N
 iHpaWY4hvR+Uysoyfj2Gwnc=
X-Google-Smtp-Source: APiQypKdkRtAZy/nSgsW1YQ2Afy186QEQE0hftz2AxYlZkqTjqac1124OK7R9hqLByZm5Y+HsSlmFQ==
X-Received: by 2002:a17:902:e989:: with SMTP id
 f9mr1971813plb.321.1588222958126; 
 Wed, 29 Apr 2020 22:02:38 -0700 (PDT)
Received: from localhost.localdomain (fp98a56d27.tkyc502.ap.nuro.jp.
 [152.165.109.39])
 by smtp.gmail.com with ESMTPSA id 79sm2169931pgd.62.2020.04.29.22.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 22:02:37 -0700 (PDT)
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
To: pablo@netfilter.org
Subject: [PATCH net] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
Date: Thu, 30 Apr 2020 14:01:36 +0900
Message-Id: <20200430050136.1837-1-ahochauwaaaaa@gmail.com>
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
Cc: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org,
 laforge@gnumonks.org, Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
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

