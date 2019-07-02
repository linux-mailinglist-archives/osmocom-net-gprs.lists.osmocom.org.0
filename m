Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id BE46E610B1
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  6 Jul 2019 14:41:42 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5F21DC6196;
	Sat,  6 Jul 2019 12:41:42 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=VJ0eKcay
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::443; helo=mail-pf1-x443.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com
 [IPv6:2607:f8b0:4864:20::443])
 by lists.osmocom.org (Postfix) with ESMTP id 0CDBDB9DD5
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  2 Jul 2019 15:23:04 +0000 (UTC)
Received: by mail-pf1-x443.google.com with SMTP id d126so8405274pfd.2
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 02 Jul 2019 08:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0MmGjm5aumHgJf27PbMfUiuiPOO/2bFmzO1fqEnb01c=;
 b=VJ0eKcaydfHmRk91mx1FclRPUU73P/ojbpeAVz8OXOWiivp90t41ZKw1tG9anVx3Nh
 nsrXrZC77oJpd6jFq9fIq53Y8wt8aCXQ/X+1InhaMn9exsMqHNc4ik7xn+ckiOGtXIMg
 KYemVQPBgmzqjjC0vDGDknuZkCgh3nWv+j1A+dr9SIaUnm3Y+a/Ro7UV/i9ioDi4weD9
 Xg120qey8n0eLsAQdvfnigFjKZfcAdY8jXK7eHgMka4RxbGemz47mrlYBjKF7OhbZurQ
 G4+dfCZCu96hcI5If1wZfhcNLipM6vcz1FWi4F6DqJ1iTua+olkywPIEvgJcnV7dIlV5
 kucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0MmGjm5aumHgJf27PbMfUiuiPOO/2bFmzO1fqEnb01c=;
 b=sA/9h4pcXOmQ18vWFxYUGhY5ULMCjXvaVZ7G+aHBUDz7lBmxszI8gdLq0snGyojNpe
 EkVPGu50K1Atpcl1xm2/wKa+2y8MnQz8kc5vz0eIBdZl7HG441htVv8/jyvTE04WVurt
 xpXomyEBMCOuupCcz45WrHl6zp5B0h9tlbE6FPhqh8w5+2D9zfwHfeKHlJcu/MSXy3R8
 QVnU/jmRNUVnqVxeVgZwrzP+6rcaWNNBCEf3ftX9cfC+zlMdoLaNVTlCcrGyQEwfKH65
 tf/QgRV0pyn+Ol0LVPGCZfEqtvQMpfwr4mofMZG7SVzEqJAbaTfej5dPTsF3uhtB4eeV
 fusw==
X-Gm-Message-State: APjAAAVIZChZoJLGMEdvKqgJQmbR2JpEgSj9W2pEW0YDxxRBFjJG2hpL
 rTwDEPJaRs98TDeExwCwW70=
X-Google-Smtp-Source: APXvYqy2WYsnA8Uf1zXzmprJT/J6XXBJBGBdbI2FQcj/AY436m4ECgTwnL15vNsytDkrHrTsxEwaPg==
X-Received: by 2002:a17:90a:35e5:: with SMTP id
 r92mr6344233pjb.34.1562080983611; 
 Tue, 02 Jul 2019 08:23:03 -0700 (PDT)
Received: from ap-To-be-filled-by-O-E-M.8.8.8.8 ([14.33.120.60])
 by smtp.gmail.com with ESMTPSA id g18sm5245136pgm.9.2019.07.02.08.23.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 08:23:03 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 3/6] gtp: remove duplicate code in gtp_dellink()
Date: Wed,  3 Jul 2019 00:22:56 +0900
Message-Id: <20190702152256.22884-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Sat, 06 Jul 2019 12:41:30 +0000
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

gtp_encap_disable() in gtp_dellink() is unnecessary because it will be
called by unregister_netdevice().
unregister_netdevice() internally calls gtp_dev_uninit() by ->ndo_uninit().
And gtp_dev_uninit() calls gtp_encap_disable().

Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/gtp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 5101f8c3c99c..92ef777a757f 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -694,7 +694,6 @@ static void gtp_dellink(struct net_device *dev, struct list_head *head)
 {
 	struct gtp_dev *gtp = netdev_priv(dev);
 
-	gtp_encap_disable(gtp);
 	gtp_hashtable_free(gtp);
 	list_del_rcu(&gtp->list);
 	unregister_netdevice_queue(dev, head);
-- 
2.17.1

