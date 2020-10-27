Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id D674729AAB7
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 27 Oct 2020 12:30:46 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9118B1A0830;
	Tue, 27 Oct 2020 11:30:44 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=pFRPSL+G
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1044; helo=mail-pj1-x1044.google.com;
 envelope-from=fujiwara.masahiro@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by lists.osmocom.org (Postfix) with ESMTP id 112EB1A0816
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 27 Oct 2020 11:30:34 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id g16so622452pjv.3
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 27 Oct 2020 04:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mgmaXaSSxDiV1b+vN33kB7/M7evqK+m/IRdQHJNh9jk=;
 b=pFRPSL+GSCzBQDKauwbGT6fQCTggPxcs6myOc39+QrHiAEc6OuJx36gjiOuDt6wAmc
 oLgBdbCAMFPK315jRpNz5EpcvNVfgX1MBVloYI1s1Pdr51JyqVRQx9ee1F94TNlYb8Bx
 ErXcZ1iUTwVyFIas59jyygcX+hXBjHq07yvxpnkB9drXLXIOUG1YEjHe2Yng5c32szOE
 gThDTkEcGAenGz4hq7uC3LREMabLk1fUJYMk5i/ceAUNlUsv5hoeXbk2Rc1S+0YSSvek
 zEU11/PBq4nJtK6D2qlrSPF8DzvMNKDAt7NEYvGfVKjqncdUSIuh91klphYhGj0nsdt4
 iVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mgmaXaSSxDiV1b+vN33kB7/M7evqK+m/IRdQHJNh9jk=;
 b=UYCV9vTuvOknAxULMB2PAcmKmzZMFb6ERg+nbLmn+ZgjNJPv7EkiRpjUmTgSXvEgII
 hFr0g74UHY2NigOyt+PuEs42xNjdJY5Z312XIrM1caEL6maql/mpol8qblBYqURusM72
 nQrOWH5yQcr5aqy6RZNaynxlujGfywUBoYJlq4Alz3mLdk3enXSDkqEgABGP+8tTH88W
 uvyJG94a+eXRIPpsQYnE/ZEeuQvyu63QapR0BgwEn5OsVb3hhx2V3Hj99EZiTAEiyhRm
 6gRtZa7hdSDBw6ikXjDx95dh4YGsWtekNrNPy10gbRJnm9ZOLrvCdT/fOhfBVOUgIHLp
 VegQ==
X-Gm-Message-State: AOAM5306qUK0mXFu4VHZnB4Q2k9EGM/RJbmFhBGPHdKyKImjh5b+0Yzt
 AgViyiMgeGebORFZu01voAk=
X-Google-Smtp-Source: ABdhPJwsqWSwXmygTrmntcqynMZDWqdNru0B16qHE/XYS3+TXU2exIp7TDeoTYcfbjfH8CjS6AuBQA==
X-Received: by 2002:a17:902:7046:b029:d5:a5e3:4701 with SMTP id
 h6-20020a1709027046b02900d5a5e34701mr1819449plt.57.1603798233456; 
 Tue, 27 Oct 2020 04:30:33 -0700 (PDT)
Received: from lte-devbox.localdomain (KD106154081201.au-net.ne.jp.
 [106.154.81.201])
 by smtp.googlemail.com with ESMTPSA id v1sm1536951pjt.2.2020.10.27.04.30.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Oct 2020 04:30:32 -0700 (PDT)
From: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>
Cc: fujiwara.masahiro@gmail.com, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andreas Schultz <aschultz@tpip.net>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] gtp: fix an use-before-init in gtp_newlink()
Date: Tue, 27 Oct 2020 20:30:21 +0900
Message-Id: <20201027113021.3581-1-fujiwara.masahiro@gmail.com>
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

v2:
 - Leave out_hashtable: label for clarity (Jakub).
 - Fix code and comment styles.

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

