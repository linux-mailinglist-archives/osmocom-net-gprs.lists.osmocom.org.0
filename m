Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id C9D8416A0FD
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 24 Feb 2020 10:04:16 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5A30233EBC;
	Mon, 24 Feb 2020 09:04:03 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=PjvzDzep
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::541; helo=mail-pg1-x541.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by lists.osmocom.org (Postfix) with ESMTP id C3D9933EA9
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 24 Feb 2020 09:03:57 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id r77so1407733pgr.12
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 24 Feb 2020 01:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pxcD2dZmLpbEH1TXb9g0deqw6a97LYep4SXbIEWmGRU=;
 b=PjvzDzepE4oTGdLam2ZUWkORK8sTt9HLL40+F7TLQxKIKz3Sh6H8GpSwstDy/rE1O6
 haIM1O4T+AA0ppjBTVuFsX2xSu0R8jwyF/tk+Xj7k816o8zn4rEsBdjiq0VgWZMxMsge
 nnd3cJCstL9qZ8XjMz7tonRy69kqzZIRstFNFGNZf0xybtQRsP24nf08lYOTcm/oxlS0
 R05CnkU68IomdVJR/8QAJIs6iLs52+bE8CzCL1GX7X8/5HLJWZbd2f79AASQn1YBsVhS
 QrE+LXtpqtuOKGGl4CQTEymJQVhPRThM7fWTYVMnVNs+7Sm0QuaxgjPuXgoKP5CSPIvv
 nlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pxcD2dZmLpbEH1TXb9g0deqw6a97LYep4SXbIEWmGRU=;
 b=MWLI3NfQmHloUcMdpkWdLZQe7DtS/NtxdIn70laV4e/B7N1Qtpmo7FJbWgK8L+slt/
 c4gI7zifDNLQSjb1oAdN7IFX8ASngPebBUDqdWyuOX1so0hIECMHPwziXsg3AaBDYdAo
 NLxkPia3Zb3j4Mng5jdw7d6bijxdKsKsPK6Atvw9WT+i8eJJo26uwpAXopuoqnDv65bR
 ToCinCnRKWg447M4tZitVT69tD8PwFVftT4utDTpXl0U85hLr4fkPWmoNGCb9WMmW1lX
 0LWveXaPzHd0Pn9zL+TRsOAK8V4TEWI2vR4K/fCRMlUxWK1LK8tHgR+N7hrFwYGMMU/3
 6bdw==
X-Gm-Message-State: APjAAAX6LNqFHXDTnxaCbXs94nkXGPF2D9GPF38a0mtrdC3Raf1zctS1
 V5n+t/iYwnkXdPrVNGvqNi8=
X-Google-Smtp-Source: APXvYqzXVxKHcfPB/OA+7FWTXHsH3avZaoSmUdzbt5+n5Nvm9fpNoffj+9YBGJU669nZEURZVvi0jQ==
X-Received: by 2002:a62:7bcb:: with SMTP id
 w194mr51589161pfc.216.1582535036599; 
 Mon, 24 Feb 2020 01:03:56 -0800 (PST)
Received: from localhost.localdomain (ip76ee06d3.ap.nuro.jp. [118.238.6.211])
 by smtp.gmail.com with ESMTPSA id
 l69sm11654650pgd.1.2020.02.24.01.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 01:03:56 -0800 (PST)
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
To: pablo@netfilter.org,
	laforge@gnumonks.org
Subject: [PATCH] net: set NLM_F_MULTI flag in gtp_genl_dump_pdp() In
 drivers/net/gtp.c,
 gtp_genl_dump_pdp() should set NLM_F_MULTI flag since it returns multipart
 message. This patch adds a new arg "flags" in gtp_genl_fill_info() so that
 flags can be set by the callers.
Date: Mon, 24 Feb 2020 18:03:49 +0900
Message-Id: <20200224090349.2883-1-ahochauwaaaaa@gmail.com>
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

