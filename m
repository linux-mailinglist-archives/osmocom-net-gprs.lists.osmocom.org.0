Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 2B027299454
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 26 Oct 2020 18:52:27 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id B2A4819F708;
	Mon, 26 Oct 2020 17:52:19 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=j+7+X285
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::644; helo=mail-pl1-x644.google.com;
 envelope-from=fujiwara.masahiro@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com
 [IPv6:2607:f8b0:4864:20::644])
 by lists.osmocom.org (Postfix) with ESMTP id 700EE19D429
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 25 Oct 2020 11:33:20 +0000 (UTC)
Received: by mail-pl1-x644.google.com with SMTP id t22so3310565plr.9
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 25 Oct 2020 04:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NLwOajz7aLbYTCZJfZv4NGxOgDz/dYsUjO8aQaKp6ps=;
 b=j+7+X28549W+BrYcs7KatPfnkg3umYsdcjB+PsIuZdtA5kqWyqlnD230ae3p6VXXSs
 DAdjbrvEPPncflGS63+zsp8q7v2j9GE5l0RIKlUGZb4U8g4dSaUnhUQqK7mOYDrqj8t6
 eKYhyCZXwV1D6HqcendEtsrku+KR4IYroD7xcIchaNdOY6bnrHCQrHbUPHCUDs51oSbf
 76PpSC6/bPxFkY71ie+EhIWZm25BzKlrd/jVET2Eu4m6UQAi8f0XhLRz1CN0hMnIQGpb
 bUZ/5Io0D5U5C1BOwWXCui3acqh7toFHI+ldHY/y4dGtfrk3JWxyPEaVHLPXc/iY4IgI
 oWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NLwOajz7aLbYTCZJfZv4NGxOgDz/dYsUjO8aQaKp6ps=;
 b=QN7GEoDCy010dk5APonCUbJG3BgS/K4fSGTyBO6ZnSUZlW2egZYTE/oetZlrOx+3W9
 SYNzL7M2mXMsY3dRoxFsAuOQOqs7pyECwSRRG0WVIErywvuTdcpek6xIdHIxZt5epFxW
 HOuFdatY+FPSTcZGVJJtEoYudG3r1otcBLwLD6/MayFtdY/6yXv7mzXvnn5B8hr73zVT
 5O9N04L6nsMzeMwef+ysruHEPJpmmD5wlfYSbnUZcbY1eYXv8iU02bmGiluH48xwesDY
 3pAKLdTj9TzAN1gAcqsbgDUNjWarX2LC7qfwsHS2Okmxq5gAbcXmCzelyWoeeZG7GbEa
 mPcQ==
X-Gm-Message-State: AOAM533gDliPTcNVxTU0Jq3wV5xZYwi4nP4R1wzjHFha7KwxfUQjIjO3
 6u3fjaDFm9MaB74hgOdB8+8=
X-Google-Smtp-Source: ABdhPJyETl+EMoUUbZE2de5fwBvYir5gEzAt9d8BzO/XXFUJWvOdwy4xs6N7rTzEH4QIMbduoyYj1w==
X-Received: by 2002:a17:902:a50f:b029:d6:da2:aaa7 with SMTP id
 s15-20020a170902a50fb02900d60da2aaa7mr9034793plq.42.1603625599643; 
 Sun, 25 Oct 2020 04:33:19 -0700 (PDT)
Received: from lte-devbox.localdomain (KD106154087147.au-net.ne.jp.
 [106.154.87.147])
 by smtp.googlemail.com with ESMTPSA id cs21sm21557515pjb.0.2020.10.25.04.33.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Oct 2020 04:33:18 -0700 (PDT)
From: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>
Cc: fujiwara.masahiro@gmail.com, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andreas Schultz <aschultz@tpip.net>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH net] gtp: fix an use-before-init in gtp_newlink()
Date: Sat, 24 Oct 2020 15:42:33 +0000
Message-Id: <20201024154233.4024-1-fujiwara.masahiro@gmail.com>
X-Mailer: git-send-email 2.24.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 26 Oct 2020 17:52:12 +0000
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

*_pdp_find() from gtp_encap_recv() would trigger a crash when a peer
sends GTP packets while creating new GTP device.

RIP: 0010:gtp1_pdp_find.isra.0+0x68/0x90 [gtp]
<SNIP>
Call Trace:
 <IRQ>
 gtp_encap_recv+0xc2/0x2e0 [gtp]
 ? gtp1_pdp_find.isra.0+0x90/0x90 [gtp]
 udp_queue_rcv_one_skb+0x1fe/0x530
 udp_queue_rcv_skb+0x40/0x1b0
 udp_unicast_rcv_skb.isra.0+0x78/0x90
 __udp4_lib_rcv+0x5af/0xc70
 udp_rcv+0x1a/0x20
 ip_protocol_deliver_rcu+0xc5/0x1b0
 ip_local_deliver_finish+0x48/0x50
 ip_local_deliver+0xe5/0xf0
 ? ip_protocol_deliver_rcu+0x1b0/0x1b0

gtp_encap_enable() should be called after gtp_hastable_new() otherwise
*_pdp_find() will access the uninitialized hash table.

Fixes: 1e3a3abd8 ("gtp: make GTP sockets in gtp_newlink optional")
Signed-off-by: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
---
 drivers/net/gtp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 8e47d0112e5d..6c56337b02a3 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -663,10 +663,6 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 
 	gtp = netdev_priv(dev);
 
-	err = gtp_encap_enable(gtp, data);
-	if (err < 0)
-		return err;
-
 	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
 		hashsize = 1024;
 	} else {
@@ -676,13 +672,18 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 	}
 
 	err = gtp_hashtable_new(gtp, hashsize);
+	if (err < 0) {
+		return err;
+	}
+
+	err = gtp_encap_enable(gtp, data);
 	if (err < 0)
 		goto out_encap;
 
 	err = register_netdevice(dev);
 	if (err < 0) {
 		netdev_dbg(dev, "failed to register new netdev %d\n", err);
-		goto out_hashtable;
+		goto out_encap;
 	}
 
 	gn = net_generic(dev_net(dev), gtp_net_id);
@@ -693,11 +694,10 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 
 	return 0;
 
-out_hashtable:
-	kfree(gtp->addr_hash);
-	kfree(gtp->tid_hash);
 out_encap:
 	gtp_encap_disable(gtp);
+	kfree(gtp->addr_hash);
+	kfree(gtp->tid_hash);
 	return err;
 }
 
-- 
2.24.3

