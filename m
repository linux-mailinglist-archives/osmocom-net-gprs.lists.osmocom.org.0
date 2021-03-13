Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id D928333D7B8
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 16 Mar 2021 16:37:44 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 289591B692E;
	Tue, 16 Mar 2021 15:37:44 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=BD6P9vK8
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1031; helo=mail-pj1-x1031.google.com;
 envelope-from=chinmayishetty359@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by lists.osmocom.org (Postfix) with ESMTP id C85451A1D4C
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 13 Mar 2021 16:51:41 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id gb6so6676460pjb.0
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 13 Mar 2021 08:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=S9+2IFN1dv7+M9NnZ3JAWoiEoZQsQf5Cgay5lNY5ss4=;
 b=BD6P9vK8aJUvG4QnoR3Puj8kvKseW+6o55j/P82M88x02I+JmcKr0kc3RGQsZ37JnF
 TpAsEmNKWLD8YcrY1wJOrOaJth1XufxoyCEXfxwFdsxgKUKYZZtWWBJmNpnispcNGt2p
 PqOZpRCAZAYCByrvhSWdqpYAjP8DW0Lo/GmzX+O/Ffo3uNXGi2hgeJmmx0j8E+bzFZXe
 Ul5IFFt6mJqynovKGjmk0NFGAz3Lrw6VZE0wb6YDCFxj7HgcbaIG3sEkPOeXEVOgBYTw
 KfU5povOAaC0mN3ZNhPy4cibPnvN0xRuGA2k4NL60Fv8NBSNN5PKWktHs3qf/X7CEPTr
 kDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=S9+2IFN1dv7+M9NnZ3JAWoiEoZQsQf5Cgay5lNY5ss4=;
 b=uZSOE0yUeWjwhzw4Gpl12yoB19C/XKb5WW2C+0H4Zv8Zy7yPVDTBS8S+fYUoD4L89q
 ej2QiZ0k2Kbxy58ek+PPORBqHd7tQ+j+zV8f3AYbGnmPPX8b4hfwRCvzbxVG97tqHbaz
 jscPieIf+Pm2q3xIKCv+ENXJYxOB6LdC1gD4vrcHL1/pBaXjeOkSHhbSXfhTwpQ2Vwtp
 9cieLs/rL1a8r4jkhX24CoWTgh+Y89rriWsRcBaTCNJXq1rDyvkdy9+/6qz16dxtdso+
 E+xYnUK9fB1m3KKezCWPjA1oQ1FYxpdBdl5ZIE+Y6ttMr3zR2epDsYiJl0AJpVb10eui
 2OZg==
X-Gm-Message-State: AOAM530yzfoCCTk1cqGYUlDKuowtVEmfKaDc34pSRjFm9XTokWWH0rPp
 INAqYi9dFoEGBPSC/S2syRw=
X-Google-Smtp-Source: ABdhPJyhUajGkXVqVI+2w2kKBevWnt3jZ2LBA6OEJfupov4wAmkSuPaGY7mKMoi4jniZ4t/uSUzXRQ==
X-Received: by 2002:a17:90a:bb91:: with SMTP id
 v17mr4287638pjr.24.1615654300218; 
 Sat, 13 Mar 2021 08:51:40 -0800 (PST)
Received: from client-VirtualBox ([223.186.9.86])
 by smtp.gmail.com with ESMTPSA id a70sm8572800pfa.202.2021.03.13.08.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 08:51:39 -0800 (PST)
Date: Sat, 13 Mar 2021 22:21:28 +0530
From: Chinmayi Shetty <chinmayishetty359@gmail.com>
To: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net,
 kuba@kernel.org, osmocom-net-gprs@lists.osmocom.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: bkkarthik@pesu.pes.edu
Subject: [PATCH] Net: gtp: Fixed missing blank line after declaration
Message-ID: <20210313165128.jc2u2pnpm3enbx2h@client-VirtualBox>
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

