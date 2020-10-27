Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id CB6FA29AB22
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 27 Oct 2020 12:49:26 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id BEEAA1A0884;
	Tue, 27 Oct 2020 11:49:22 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=fDFh/AAh
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::541; helo=mail-pg1-x541.google.com;
 envelope-from=fujiwara.masahiro@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by lists.osmocom.org (Postfix) with ESMTP id 1C96B1A0871
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 27 Oct 2020 11:49:17 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id h6so644231pgk.4
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 27 Oct 2020 04:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rk5GCZpD9PCj2iyqscZfor3nW5DfrrFKBppKxz2Jmb0=;
 b=fDFh/AAhwP0W04FLbvoHj52pYu3vB3Z88L2TXS56y4zF+4xOHAxxmkIRfJethc5FYj
 aYgEOesBInYainijVgDBiBYJJBSBnZ7UF/h88bMqR/kKnVjI3WrwveoWPfFJfNXfL1nY
 ujVW5iPaAO7pM2IfA9Vgh/G7iMVaDVzTfNraWWpPNXB6sVq/OHchKlysFihzVO8DINpw
 RvdEBOl/qj7g1XIBHTy3dMxRU4+UTGlp+DWTTzmK50WVu9xFqDVjpTNCOk3j/A0vJUkD
 tksNVgKwwoG8fJM5TmUyymappf/dZLGWNoBht71b30tv+H6F46cHLPW7c7FkIbRgUS69
 wXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rk5GCZpD9PCj2iyqscZfor3nW5DfrrFKBppKxz2Jmb0=;
 b=cmRnbtiE1rwI7lDixgsyeyQzmLEirhiR3eieb71+LxwimqqsAvCWb6uHN/Cr7bgqp6
 pHlLt6iQ0LZkaJcaCH43IKPDoB8rUbiejQfHjrZ51bBxGIfgfGKhoGiC08qY8GPpFI47
 IulanQEhTBTNObmrKd33+dEI4u66sttgLQ5cYW80o43JQHHzvkYpLS5qFnW1/CYvWOmh
 Q32cAnS0OoWEpzcSu/1S8E5RR4+lVrDyRi9HAixm1w7QnT2vcgZmH33waGaI5KHqSDSG
 z0o31Nug6HJKQGBbQQAArD8VP53Pk/iGNjeBXzXjlFJ4SiazaZbN6j+b95NsND1tzWnp
 51wQ==
X-Gm-Message-State: AOAM532+7Zi3dWldGsP+iSAdeipjzYNaKU1T/YHSZ5UdTcmkamxxxhme
 uNBUEWFGhMCZgP+voPTpWRU=
X-Google-Smtp-Source: ABdhPJxKev2KUWiebl9RTKYGaGqAMLRldMwQYqeZ6injRTwGOuZyeQ+1DBykfREtgV3hW3z4PgzmWw==
X-Received: by 2002:a63:fc09:: with SMTP id j9mr1517574pgi.388.1603799356430; 
 Tue, 27 Oct 2020 04:49:16 -0700 (PDT)
Received: from lte-devbox.localdomain (KD106154098026.au-net.ne.jp.
 [106.154.98.26])
 by smtp.googlemail.com with ESMTPSA id n19sm2082760pfu.24.2020.10.27.04.49.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Oct 2020 04:49:15 -0700 (PDT)
From: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>
Cc: fujiwara.masahiro@gmail.com, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andreas Schultz <aschultz@tpip.net>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 net] gtp: fix an use-before-init in gtp_newlink()
Date: Tue, 27 Oct 2020 20:48:46 +0900
Message-Id: <20201027114846.3924-1-fujiwara.masahiro@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20201026114633.1b2628ae@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
References: <20201026114633.1b2628ae@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")
Signed-off-by: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
---
v3:
 - Fix goto err label.

 drivers/net/gtp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 8e47d0112e5d..10f910f8cbe5 100644
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
@@ -677,12 +673,16 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 
 	err = gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
-		goto out_encap;
+		return err;
+
+	err = gtp_encap_enable(gtp, data);
+	if (err < 0)
+		goto out_hashtable;
 
 	err = register_netdevice(dev);
 	if (err < 0) {
 		netdev_dbg(dev, "failed to register new netdev %d\n", err);
-		goto out_hashtable;
+		goto out_encap;
 	}
 
 	gn = net_generic(dev_net(dev), gtp_net_id);
@@ -693,11 +693,11 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 
 	return 0;
 
+out_encap:
+	gtp_encap_disable(gtp);
 out_hashtable:
 	kfree(gtp->addr_hash);
 	kfree(gtp->tid_hash);
-out_encap:
-	gtp_encap_disable(gtp);
 	return err;
 }
 
-- 
2.24.3

