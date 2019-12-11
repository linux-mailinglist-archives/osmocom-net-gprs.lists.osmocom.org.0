Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id E310411A5D2
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 11 Dec 2019 09:26:58 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 0C551CCBBC;
	Wed, 11 Dec 2019 08:26:19 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=e/40FtwO
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::644; helo=mail-pl1-x644.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com
 [IPv6:2607:f8b0:4864:20::644])
 by lists.osmocom.org (Postfix) with ESMTP id A5386CCB52
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 08:23:57 +0000 (UTC)
Received: by mail-pl1-x644.google.com with SMTP id d15so1129393pll.3
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 00:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ene9HNEpELndTJ+9+fQ+V3XkCSrA1CAW4jgaOqzREN4=;
 b=e/40FtwOmGOuSGOphzi4ISuQXEoUAGgp/NXIMiCE7YX99Aw9laUpTbAnrknfInNXQE
 07pMfZiSHcHWxqHIxO8BMmZz3TenomIcXbbyxEFVCE5YAQKH+6Td09vgsJ6b321G5geD
 2wpLuTgs3R5YIeJykrIepL7XK9QZMruD0J9jGsowsugRd31WOHw3d+oquhIZrG8Jdq4p
 8yNEA3t3iJmTXKdeoAaqVogFsrOnwXoMvsjZbmKeE9VeudLkCVoj0Z91LCHY7aoW6SDR
 3C7boq5YG2gE0N2DUQ11Mu97ncc/mtzs6nuE1FMV96qkscbkBcJnrMz5IbsljPYUecXs
 oFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ene9HNEpELndTJ+9+fQ+V3XkCSrA1CAW4jgaOqzREN4=;
 b=X3PanPv18bYS0oPQAPsUxpjKUIMrm9wEvg013prRxS25ygwJ2Ljwo/oxwKN+oNfEYX
 r61+NzlkToW40qm+k2JlmjcxdTfZDjdYlZbWezmsZ+S/Pd/ivmlH/Kn8OGnY1UR+LKAy
 oL0+Hw6iKs3VEsbg9ukU9piDtygeEDhE1hyP0OjkYPO936MBGbUHxD4nKpK4WxFGifLa
 XQIzxxEXPs/SVHAsyozyt5sWOzKPOcFMrPL0ihTw2smZZt6jQNRb8TXk9tJbQ/42qdF/
 rcym2ZPlnQjLElWFza5axyjyELchiGOQXTLlYNVgy+k4JYJ8YHcu5h8cpmtTi/tg6Nh3
 KT2A==
X-Gm-Message-State: APjAAAWu/6u5t+a6HLZeFco0DkMyJTRMC1reGDFwNmq+JpfLk+QkSoNI
 6RCGI2gyPwQUzLUNKwtCusM=
X-Google-Smtp-Source: APXvYqyBNkuaScM/rAC6cjkJxvhFn8t/zduvV+/PaKsNQdeOVD5IwGkidN3pmQSnm73NLxCZHj+Gfg==
X-Received: by 2002:a17:902:8649:: with SMTP id
 y9mr1941424plt.67.1576052636286; 
 Wed, 11 Dec 2019 00:23:56 -0800 (PST)
Received: from localhost.localdomain ([110.35.161.54])
 by smtp.gmail.com with ESMTPSA id n26sm1868196pgd.46.2019.12.11.00.23.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:23:55 -0800 (PST)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 4/4] gtp: avoid zero size hashtable
Date: Wed, 11 Dec 2019 08:23:48 +0000
Message-Id: <20191211082348.28768-1-ap420073@gmail.com>
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

GTP default hashtable size is 1024 and userspace could set specific
hashtable size with IFLA_GTP_PDP_HASHSIZE. If hashtable size is set to 0
from userspace,  hashtable will not work and panic will occur.

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/gtp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 5450b1099c6d..e5b7d6d2286e 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -667,10 +667,13 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 	if (err < 0)
 		return err;
 
-	if (!data[IFLA_GTP_PDP_HASHSIZE])
+	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
 		hashsize = 1024;
-	else
+	} else {
 		hashsize = nla_get_u32(data[IFLA_GTP_PDP_HASHSIZE]);
+		if (!hashsize)
+			hashsize = 1024;
+	}
 
 	err = gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
-- 
2.17.1

