Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5023976D9
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  1 Jun 2021 17:37:09 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 88ECF1EC923;
	Tue,  1 Jun 2021 15:37:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=huawei.com
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 926 seconds by postgrey-1.37 at lists.osmocom.org;
 Tue, 01 Jun 2021 14:18:19 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=huawei.com
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.189;
 helo=szxga03-in.huawei.com; envelope-from=zhengyongjun3@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by lists.osmocom.org (Postfix) with ESMTP id 3B2171EB141
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  1 Jun 2021 14:18:19 +0000 (UTC)
Received: from dggeme760-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4FvYfv2KfBz67YR;
 Tue,  1 Jun 2021 21:59:03 +0800 (CST)
Received: from localhost.localdomain (10.175.104.82) by
 dggeme760-chm.china.huawei.com (10.3.19.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Tue, 1 Jun 2021 22:02:45 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <pablo@netfilter.org>, <laforge@gnumonks.org>, <davem@davemloft.net>,
 <kuba@kernel.org>, <osmocom-net-gprs@lists.osmocom.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: [PATCH net-next] gtp: Fix a typo
Date: Tue, 1 Jun 2021 22:16:25 +0800
Message-ID: <20210601141625.4131445-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.104.82]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggeme760-chm.china.huawei.com (10.3.19.106)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 01 Jun 2021 15:37:03 +0000
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

Suppport  ==> Support

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 39c00f050fbd..1c9023d47e00 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -436,7 +436,7 @@ static inline void gtp1_push_header(struct sk_buff *skb, struct pdp_ctx *pctx)
 	gtp1->length	= htons(payload_len);
 	gtp1->tid	= htonl(pctx->u.v1.o_tei);
 
-	/* TODO: Suppport for extension header, sequence number and N-PDU.
+	/* TODO: Support for extension header, sequence number and N-PDU.
 	 *	 Update the length field if any of them is available.
 	 */
 }
-- 
2.25.1

