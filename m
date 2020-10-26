Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9E2299459
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 26 Oct 2020 18:52:33 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id BD27B19F717;
	Mon, 26 Oct 2020 17:52:32 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=GvOSPVA9
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::442; helo=mail-pf1-x442.google.com;
 envelope-from=fujiwara.masahiro@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by lists.osmocom.org (Postfix) with ESMTP id 02E1319E855
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 26 Oct 2020 07:22:54 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id a200so5692346pfa.10
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 26 Oct 2020 00:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CoiP1SRYFw3dRE7KHCo2Xt8qwofyEh+WF/YMDll/K+c=;
 b=GvOSPVA9pBC4VK6/qA8CKb/cm13ibcrCcuILBHK5nEodqKbfoGN6HeR/4wvn8BxuBq
 Fw3bAaYr5zwtnpzHyCeqb1kXwLsyDzV/S78MOk7qKWqRoAN7RjEW3vOwB8q4KNea4cvT
 AK3IaazTIAaY6uBLHlYlHiVehr0vZqdU2NBCXFlP/aoHHwH7VJUffc9Nw9d1t9Oh4Syq
 Czi5rlJrUAdDOZaSN0zf8RAWTDf6k1KblAvbHiZzIdiM1w59o+Asdo96oDmgvEB1y2P7
 ZSATANJ/PHTIkD4utD8Hnsj76/RZSktvOyP3LrxkcyLOCj8PfAXyx5vGhnm/cRYwLKHN
 T6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CoiP1SRYFw3dRE7KHCo2Xt8qwofyEh+WF/YMDll/K+c=;
 b=IostbZ0d+9Q47xSNkG3JffBj9LGWS9oMMztS08hMpWhPQnBKDIizXS9eQ/rnYC/4YY
 E+u8XXDvO9llnO8XMRKkC0NceaLsOKzGg3QE74R8/1FP4RDPOn/IWF3+S+09x3i98npY
 BTH182NB8R7KhA/eQ7MeHdPA/sbvtzOgoEYx3KTTccwHL1mv8q0P2bSsWeOt/MzY6RZI
 xpJo+b4YeuuwJmxx/DNjpBwVBd8NvKnE6gsbIMaMePKzYExceamkwSrNchYrldPZdM4W
 XlizGLyEWjXeLl7SVNDQ9nX2cIcm+81vR+Yr3JIr9bhyXGjyK6tESWjX1kI8/02Yowzk
 6grA==
X-Gm-Message-State: AOAM5336UYM00XqCi6WxouU8z+TBQpUPLFYFk4sRneTRHE1xbacDuJGK
 hcXZG852IUz4i7x4twohweA=
X-Google-Smtp-Source: ABdhPJy6s966DPXokAQoPL1Ku+1MQ7hK6MwHo1Ka3bj0BWa9wdplT3Qkh8NtX6gCuj2fiKIt+8GM2Q==
X-Received: by 2002:a63:cd51:: with SMTP id a17mr15269064pgj.167.1603696973345; 
 Mon, 26 Oct 2020 00:22:53 -0700 (PDT)
Received: from lte-devbox.localdomain (KD106154087157.au-net.ne.jp.
 [106.154.87.157])
 by smtp.googlemail.com with ESMTPSA id h2sm11502178pjv.15.2020.10.26.00.22.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Oct 2020 00:22:52 -0700 (PDT)
From: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>
Cc: fujiwara.masahiro@gmail.com, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andreas Schultz <aschultz@tpip.net>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 net] gtp: fix an use-before-init in gtp_newlink()
Date: Mon, 26 Oct 2020 16:22:27 +0900
Message-Id: <20201026072227.7280-1-fujiwara.masahiro@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20201025140550.1e29f770@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
References: <20201025140550.1e29f770@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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

Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")
Signed-off-by: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
---
v2:
 - leave out_hashtable: label for clarity (Jakub).
 - fix code and comment styles.

 drivers/net/gtp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 8e47d0112e5d..07cb6d9495e8 100644
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
@@ -676,13 +672,17 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 	}
 
 	err = gtp_hashtable_new(gtp, hashsize);
+	if (err < 0)
+		return err;
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

