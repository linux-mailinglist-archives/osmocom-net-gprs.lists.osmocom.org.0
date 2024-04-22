Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id F26658B4B32
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 28 Apr 2024 12:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C1B0A8DA61;
	Sun, 28 Apr 2024 10:08:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LI8JGxXaahA9; Sun, 28 Apr 2024 10:08:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AA5648DA55;
	Sun, 28 Apr 2024 10:08:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 05F7238A1BB1
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 09:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E29E887243
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 09:39:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mw5Z4nvAyBnv for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 22 Apr 2024 09:39:37 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by mail.osmocom.org (Postfix) with ESMTPS id 242F88723E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 09:39:35 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6ee13f19e7eso3772505b3a.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 02:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theori.io; s=google; t=1713778774; x=1714383574; darn=lists.osmocom.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IDItpqL0UDIlKD5/NBmiAMYCQdIF/bw4O4ygkqJXmjY=;
        b=X8/1edJnk70DEFmZGRR7mHFwl48E2L+YYa+K5wACK4mpYWi7nkI6ZFYyftlLblgPto
         QuzMyBxKD4RMnZQC9lzbFaCqDnJFIKO1zqPKW8ApVXTUxTxMAuamtQHX5QX8M020edvz
         hpg4aNGTNMQpmo1OQBg7CUyN++REuei0QgUtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713778774; x=1714383574;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IDItpqL0UDIlKD5/NBmiAMYCQdIF/bw4O4ygkqJXmjY=;
        b=wq16DVC6nxuYY22Hz5R40E7f+nSHSxG9t5gY8wDn9mBCoyKsk+OPKC9IXFXBO9yc1b
         G32kEYEEqvpRa8E/+PafZBA0CPqD8M5pNsoNtdaNBpuaXEf6nKqZcZ9x/SqZzm8abUqM
         dafj8eojZAz8P4LgGcRIOLfhqoRYZF5H97pL0ssItYSNhnMqL1wuZCfu95E54zgKtL71
         1wclMbzMy/0TkZx/XeJjZnFp99mCAJAq9E7D4eRjV+LhFpSq8+QTBaYjUbmCVIlFn9FI
         jYcGIE6mKxV2mK3OY5PLlDFkI+kLSZo3DUn3beWOIR8VTS++FErM2loTG4MrqwBAw4fZ
         zz9g==
X-Forwarded-Encrypted: i=1; AJvYcCUw9nfbDDVllU9MxaMNxFsCQ+G6LG4a2NQ9BMfdyMx4LI9xPu5VuGLs4yoV/TugqOR3plpIO/cXq8nk2C53N1Am+X4iBcVKhld7Ed9t1Jh4R2+C
X-Gm-Message-State: AOJu0Ywv6LGuvmZ0RlN7fO0UXocU1J9BfT2UbEqg9T52Fo7aWh3mAemo
	euFxYb6aeqXGB2xXRU445s2HyIEO+4/HNjOIPmjrgg6F8IZbfGCC1JpY9n4lSjQ=
X-Google-Smtp-Source: AGHT+IGqmA4pgTf4XEHQuFXf9Fek3k9UzdSqdUkolwrxtvxbsjeva+yKtotIOB57F6CPjW390MtT+Q==
X-Received: by 2002:a05:6a00:ad3:b0:6ed:6b11:4076 with SMTP id c19-20020a056a000ad300b006ed6b114076mr8878481pfl.12.1713778774168;
        Mon, 22 Apr 2024 02:39:34 -0700 (PDT)
Received: from v4bel-B760M-AORUS-ELITE-AX ([211.219.71.65])
        by smtp.gmail.com with ESMTPSA id ka1-20020a056a00938100b006ecfb733248sm7667162pfb.13.2024.04.22.02.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 02:39:33 -0700 (PDT)
Date: Mon, 22 Apr 2024 05:39:30 -0400
From: Hyunwoo Kim <v4bel@theori.io>
To: pablo@netfilter.or, edumazet@google.com, laforge@gnumonks.org
Subject: [PATCH] net: gtp: Fix Use-After-Free in gtp_dellink
Message-ID: <ZiYwUnZU+50fH0SN@v4bel-B760M-AORUS-ELITE-AX>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-MailFrom: v4bel@theori.io
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NPXAKYSHEBM43A5CP3BG73DRFJR7UCGW
X-Message-ID-Hash: NPXAKYSHEBM43A5CP3BG73DRFJR7UCGW
X-Mailman-Approved-At: Sun, 28 Apr 2024 10:08:11 +0000
CC: v4bel@theori.io, imv4bel@gmail.com, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NPXAKYSHEBM43A5CP3BG73DRFJR7UCGW/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Since call_rcu, which is called in the hlist_for_each_entry_rcu traversal
of gtp_dellink, is not part of the RCU read critical section, it
is possible that the RCU grace period will pass during the traversal and
the key will be free.

To prevent this, it should be changed to hlist_for_each_entry_safe.

Fixes: 94dc550a5062 ("gtp: fix an use-after-free in ipv4_pdp_find()")
Signed-off-by: Hyunwoo Kim <v4bel@theori.io>
---
 drivers/net/gtp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index ba4704c2c640..e62d6cbdf9bc 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1098,11 +1098,12 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 static void gtp_dellink(struct net_device *dev, struct list_head *head)
 {
 	struct gtp_dev *gtp = netdev_priv(dev);
+	struct hlist_node *next;
 	struct pdp_ctx *pctx;
 	int i;
 
 	for (i = 0; i < gtp->hash_size; i++)
-		hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid)
+		hlist_for_each_entry_safe(pctx, next, &gtp->tid_hash[i], hlist_tid)
 			pdp_context_delete(pctx);
 
 	list_del_rcu(&gtp->list);
-- 
2.34.1

