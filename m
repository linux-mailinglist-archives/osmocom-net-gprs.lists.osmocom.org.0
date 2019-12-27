Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 16E1812B972
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 27 Dec 2019 19:05:46 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9B741F21D9;
	Fri, 27 Dec 2019 18:05:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=yyemZpXL
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=198.145.29.99; helo=mail.kernel.org; envelope-from=sashal@kernel.org;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id CCF65F21A3
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 27 Dec 2019 18:03:07 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CBCC206F4;
 Fri, 27 Dec 2019 18:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577469787;
 bh=khFcGXJVXjFx8I0CAxnrluUsRGAVfEvAW5PLoDh6j0Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yyemZpXLSVORRYvQQ3tNEyHja848SyA84BQ0TSGJi/Bp5K8iomfBak7vW+5amrDvJ
 JgHvglJxEtfuDW8/nrC8yhelqpeLpTttDZEnI3Q4Ydeu36uMiwbdXu3ddNMx3l3C9z
 KPg6yKQO1E/p3etKs9471AaLWWAKnQ4FWuJ/xbcw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 36/57] gtp: avoid zero size hashtable
Date: Fri, 27 Dec 2019 13:02:01 -0500
Message-Id: <20191227180222.7076-36-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227180222.7076-1-sashal@kernel.org>
References: <20191227180222.7076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jakub Kicinski <jakub.kicinski@netronome.com>, Taehee Yoo <ap420073@gmail.com>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

From: Taehee Yoo <ap420073@gmail.com>

[ Upstream commit 6a902c0f31993ab02e1b6ea7085002b9c9083b6a ]

GTP default hashtable size is 1024 and userspace could set specific
hashtable size with IFLA_GTP_PDP_HASHSIZE. If hashtable size is set to 0
from userspace,  hashtable will not work and panic will occur.

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/gtp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 52628a9986b1..b2f5f7f3d6b4 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -664,10 +664,13 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 	if (err < 0)
 		return err;
 
-	if (!data[IFLA_GTP_PDP_HASHSIZE])
+	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
 		hashsize = 1024;
-	else
+	} else {
 		hashsize = nla_get_u32(data[IFLA_GTP_PDP_HASHSIZE]);
+		if (!hashsize)
+			hashsize = 1024;
+	}
 
 	err = gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
-- 
2.20.1

