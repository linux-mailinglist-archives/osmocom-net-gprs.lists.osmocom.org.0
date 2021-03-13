Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 6612A33D7B7
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 16 Mar 2021 16:37:43 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 483E21B6910;
	Tue, 16 Mar 2021 15:37:35 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=nkbMim4b
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=chinmayishetty359@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by lists.osmocom.org (Postfix) with ESMTP id E453E1A1A0C
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 13 Mar 2021 15:45:13 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id x21so2560564pfa.3
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 13 Mar 2021 07:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=S9+2IFN1dv7+M9NnZ3JAWoiEoZQsQf5Cgay5lNY5ss4=;
 b=nkbMim4bUAwn0PZUvZ0bcKau1AndWHfcZsw9+A6a3p/EcsX6hOxZzahMXoOZV4TN3h
 Z0wjMdKucuiiEDyA51FyjurwfLCX7lvfe3NI5sKRnoL5KsJvmt6LiTdXRd6lwTehwzAV
 iTTUxfxj4xqaZZaroyB4HUplmkQQwFxV487hLoLOVIhAu5rtepkCpPbc4kw9ijqHoqHl
 NnxK6r3ipW81SM6yCwbLs46g4AMpkYUOVTnWo/2mRolWh1AF+ZDC6mZeGxpoowa4pHGB
 /JiSzH6OPwXUZge/KB1qyIZWK3XZFNk8L1a0u2rl29j9jQYBvHN/XLVr38JqDmIHjvPP
 HgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=S9+2IFN1dv7+M9NnZ3JAWoiEoZQsQf5Cgay5lNY5ss4=;
 b=g9Bq+WwMgZFtiUL1SRZW3tkdxVmnX1c3Ur3rsH6a6a+TLMlqP+tQmbcs67K9K37sm4
 OHTstDotDD/p67SkDaNa+Zro4TigJxAMGNGh7UsCItTHgTgM+1X6gdz6rT3xzKWLzqVF
 Unj4PvSF76c9smRMqyYgM5n3iakl05qVEX1S3AxOWwruQc09MA/vKXJ5cmHAeYc7tMnL
 moYjMLQj1rwocU4NsgQqU7v9QXzA6UQbydkxXHdFX2/VZHv+OxN7mx13rG7iSjQ3FYu4
 n+fUH0H7Y+JAbi4vgvWtjWXctNKhKbeVxP/roVXY+Z5y6NfxyOQRMynDR+DfRYgM6uCW
 j+VA==
X-Gm-Message-State: AOAM531tuZnHiJXvJkMm6UVvjg8gSqiYRYMWfD17OTql0iX4GZnmFoa2
 fVS+QDD5lJNtLIrId0vSCPwDvBSYBqhESxvE
X-Google-Smtp-Source: ABdhPJwGrY1scXKJ2QkQoihOTydIoIeU7OCTD0or4qa1MtSSiOpgtOiQcWQhAFjl1yELW6FnqnlPQw==
X-Received: by 2002:a62:7594:0:b029:203:2d6c:cea1 with SMTP id
 q142-20020a6275940000b02902032d6ccea1mr3314398pfc.33.1615650311758; 
 Sat, 13 Mar 2021 07:45:11 -0800 (PST)
Received: from client-VirtualBox ([223.186.9.86])
 by smtp.gmail.com with ESMTPSA id j5sm8200714pgl.55.2021.03.13.07.45.10
 for <osmocom-net-gprs@lists.osmocom.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 07:45:11 -0800 (PST)
Date: Sat, 13 Mar 2021 21:15:03 +0530
From: Chinmayi Shetty <chinmayishetty359@gmail.com>
To: osmocom-net-gprs@lists.osmocom.org
Subject: [PATCH] Net: gtp: Fixed missing blank line after declaration
Message-ID: <20210313154503.nrz3bzrdy4hw4ypk@client-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Tue, 16 Mar 2021 15:37:30 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
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
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Signed-off-by: Chinmayi Shetty <chinmayishetty359@gmail.com>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index efe5247d8c42..79998f4394e5 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -437,7 +437,7 @@ static inline void gtp1_push_header(struct sk_buff *skb, struct pdp_ctx *pctx)
 	gtp1->length	= htons(payload_len);
 	gtp1->tid	= htonl(pctx->u.v1.o_tei);
 
-	/* TODO: Suppport for extension header, sequence number and N-PDU.
+	/* TODO: Support for extension header, sequence number and N-PDU.
 	 *	 Update the length field if any of them is available.
 	 */
 }
-- 
2.25.1

