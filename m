Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 10C8E439B2E
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 25 Oct 2021 18:06:26 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id AFA95218016;
	Mon, 25 Oct 2021 16:06:25 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=Gxzp1rmB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=kyeongun15@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by lists.osmocom.org (Postfix) with ESMTP id EB38B20667F
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  6 Oct 2021 03:57:58 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id v11so1248809pgb.8
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 05 Oct 2021 20:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UK80SyfLd6llwFc7jco+SVF0N09vq3Pw351kA9XVKCU=;
 b=Gxzp1rmBw3e5S7S06NE2wYw+b2dQtI1fY/mAToXuDEpEwX+U/7y9f5opRKDvxWok7J
 SfUmx2cfybRG2nf+7LKyhbOIKkZXH6VLA0E7jx7W8nOh+f/N4SThaHYG+GMhmOyHddzj
 XLQiEO32yRuvdtC54WaqPeP968I4OFVaOY7qYR1eyMKEqq7h4UBjHd7J1ZaOAuD9ljI6
 HkgZMxcfZyi1XeVyn1yKFCXq8A5pv7yrdrodgGLRvM3j/p4UZdtl8JPT33Jdj4xYAdAL
 xgB8bcuzvccRgJRDGXvSykYQnxZqwfbJZO/zCaSAfaaJHSm48pGN8fgOTXNTmINKyOfK
 ynUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UK80SyfLd6llwFc7jco+SVF0N09vq3Pw351kA9XVKCU=;
 b=JasnQESYBSueYlI1hMJFLZ9/DrRxDHFzgwmZuxemrIGtadhOinDYTzdC5z7PFipsaE
 3qVa7xTeX3VT09fcj8f4nX7KrUluqNHugpGdKyLf0AqOJ2rMcZedDYyZqSCbJRAPU6fj
 WS4mMTOFGMsfcITu0FiG8iJrXG3JaDec4/giqDpskRwRTjLKHAOq5pa0PBa6Mf+wtrgM
 r4WvmnH3CV4mrTONOTYMCVm7a7cVygw1fNqIKyQZ43NKVnd8Nu64ReXHcS+eak54bi8X
 Lju4S315U1/qhuSm/2vyxKw6BIiLE3vARCooVLV9N4vm6VLdNAcPaQVdhczrQIh2MvfJ
 W/DQ==
X-Gm-Message-State: AOAM5329pEh6gewXLgGoNvbES6O6HHP2GwSFWBSA25D4G2Vep5IrH7mZ
 hb3ZfPdLp3LbXKZS5sQ22EQ=
X-Google-Smtp-Source: ABdhPJyCc0vAsmREZd3hR1OCTe3HEHRgCA/UG5g2ECxW+DsNtrjqZ4a6CPJfwP50kk32YmRD+6E1Kw==
X-Received: by 2002:a65:5bcf:: with SMTP id o15mr18552109pgr.379.1633492675626; 
 Tue, 05 Oct 2021 20:57:55 -0700 (PDT)
Received: from localhost.localdomain ([218.155.72.34])
 by smtp.gmail.com with ESMTPSA id i24sm3327812pjl.8.2021.10.05.20.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 20:57:55 -0700 (PDT)
From: Gyeongun Kang <kyeongun15@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org
Subject: [PATCH net-next] gtp: use skb_dst_update_pmtu_no_confirm() instead of
 direct call
Date: Wed,  6 Oct 2021 03:57:39 +0000
Message-Id: <20211006035739.5377-1-kyeongun15@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 25 Oct 2021 16:06:23 +0000
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

skb_dst_update_pmtu_no_confirm() is a just wrapper function of
->update_pmtu(). So, it doesn't change logic

Signed-off-by: Gyeongun Kang <kyeongun15@gmail.com>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 30e0a10595a1..24e5c54d06c1 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -539,7 +539,7 @@ static int gtp_build_skb_ip4(struct sk_buff *skb, struct net_device *dev,
 		mtu = dst_mtu(&rt->dst);
 	}
 
-	rt->dst.ops->update_pmtu(&rt->dst, NULL, skb, mtu, false);
+	skb_dst_update_pmtu_no_confirm(skb, mtu);
 
 	if (!skb_is_gso(skb) && (iph->frag_off & htons(IP_DF)) &&
 	    mtu < ntohs(iph->tot_len)) {
-- 
2.25.1

