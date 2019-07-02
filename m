Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 9D7B3610B2
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  6 Jul 2019 14:41:45 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 99D1CC61A5;
	Sat,  6 Jul 2019 12:41:44 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=MLSKKna/
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::643; helo=mail-pl1-x643.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 by lists.osmocom.org (Postfix) with ESMTP id 19972B9DEC
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  2 Jul 2019 15:23:22 +0000 (UTC)
Received: by mail-pl1-x643.google.com with SMTP id t7so535468plr.11
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 02 Jul 2019 08:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CU7BGsZXNgazwEEiVe1gYY76OcBMUw+lUvNAfAOPgNY=;
 b=MLSKKna/xrK1VaVXFuvoDbVuBTMAy6NOIW2/YQTnHtLkwYhK0Fhr4AdqXiE0HkyVpB
 IvDEK5S+zlwne29XdSK5NHuukYf7E1CSZKKA9n0Fztpv46c8vHmEXndU4/gDYuodFhX2
 Xa1sfiFbQWlJfprNemaZeMfDtof8T2F0tyxMtSmHyUpwSNx/I9sVGzOoIs4ZH75/VAVl
 GNH4nA5GjLlmDKjUjdaEvtmEx8CDawZucoA6Jtqyfxl8xRcgynTx3QDzWXnm5B9EDgEN
 vhGwLYhYEmP0bY7MR3v0aaY41rrHc/DBGMVBlpY8/YHBWNPg+SgPpmqFdGwLOI/AcxJj
 UMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CU7BGsZXNgazwEEiVe1gYY76OcBMUw+lUvNAfAOPgNY=;
 b=qRnePfWvVE9oh35CXL+B+2mFVNjZaCXXmTZMlPGhW/HMHSXhTqYc6th62P0Cl8x6H1
 v/oOQxfTm13l3gUnia7oRLqJD2LTW9yrx/1m/bkB5qWUWN1806ImuEissoW984tPylog
 o2yF/oMd4f65fHL7ZuopnTkUNd1ayOnb7rlEJa9FG0USU9iYKeWSUMZaxngt2y8xMoTI
 NEXnkkKTFZwYz0WKUE0OPtnZZFEYlHSRE1FJOsd0/yKaZtIFItLETlVYlWsrejQXbvJ5
 scItZw6N4yKm7H0ttnve7MZdxfL3j68VFM+N569OPL0kn9iOWUMOi4HbylshFMQUPN1N
 hvZQ==
X-Gm-Message-State: APjAAAUOW59loc6daaKaEIuvkTAGd3vfEeMdpHOX0dyN++y2s/UHiJKt
 V+xXEv7ilKM7bFpmQg2j27U=
X-Google-Smtp-Source: APXvYqwtPnEfrC5Nq6Gt1QCf9xYk9SaYQGkcfaXa03gBpwwIWsMtqrqnd0JjMn+TC2zxOBbtZtyiZw==
X-Received: by 2002:a17:902:e65:: with SMTP id
 92mr34373719plw.13.1562081000553; 
 Tue, 02 Jul 2019 08:23:20 -0700 (PDT)
Received: from ap-To-be-filled-by-O-E-M.8.8.8.8 ([14.33.120.60])
 by smtp.gmail.com with ESMTPSA id v3sm13882706pfm.188.2019.07.02.08.23.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 08:23:19 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 4/6] gtp: fix Illegal context switch in RCU read-side
 critical section.
Date: Wed,  3 Jul 2019 00:23:13 +0900
Message-Id: <20190702152313.22970-1-ap420073@gmail.com>
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

ipv4_pdp_add() is called in RCU read-side critical section.
So GFP_KERNEL should not be used in the function.
This patch make ipv4_pdp_add() to use GFP_ATOMIC instead of GFP_KERNEL.

Test commands:
gtp-link add gtp1 &
gtp-tunnel add gtp1 v1 100 200 1.1.1.1 2.2.2.2

Splat looks like:
[  130.618881] =============================
[  130.626382] WARNING: suspicious RCU usage
[  130.626994] 5.2.0-rc6+ #50 Not tainted
[  130.627622] -----------------------------
[  130.628223] ./include/linux/rcupdate.h:266 Illegal context switch in RCU read-side critical section!
[  130.629684]
[  130.629684] other info that might help us debug this:
[  130.629684]
[  130.631022]
[  130.631022] rcu_scheduler_active = 2, debug_locks = 1
[  130.632136] 4 locks held by gtp-tunnel/1025:
[  130.632925]  #0: 000000002b93c8b7 (cb_lock){++++}, at: genl_rcv+0x15/0x40
[  130.634159]  #1: 00000000f17bc999 (genl_mutex){+.+.}, at: genl_rcv_msg+0xfb/0x130
[  130.635487]  #2: 00000000c644ed8e (rtnl_mutex){+.+.}, at: gtp_genl_new_pdp+0x18c/0x1150 [gtp]
[  130.636936]  #3: 0000000007a1cde7 (rcu_read_lock){....}, at: gtp_genl_new_pdp+0x187/0x1150 [gtp]
[  130.638348]
[  130.638348] stack backtrace:
[  130.639062] CPU: 1 PID: 1025 Comm: gtp-tunnel Not tainted 5.2.0-rc6+ #50
[  130.641318] Call Trace:
[  130.641707]  dump_stack+0x7c/0xbb
[  130.642252]  ___might_sleep+0x2c0/0x3b0
[  130.642862]  kmem_cache_alloc_trace+0x1cd/0x2b0
[  130.643591]  gtp_genl_new_pdp+0x6c5/0x1150 [gtp]
[  130.644371]  genl_family_rcv_msg+0x63a/0x1030
[  130.645074]  ? mutex_lock_io_nested+0x1090/0x1090
[  130.645845]  ? genl_unregister_family+0x630/0x630
[  130.646592]  ? debug_show_all_locks+0x2d0/0x2d0
[  130.647293]  ? check_flags.part.40+0x440/0x440
[  130.648099]  genl_rcv_msg+0xa3/0x130
[ ... ]

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 92ef777a757f..52f35cbeb1dc 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -959,7 +959,7 @@ static int ipv4_pdp_add(struct gtp_dev *gtp, struct sock *sk,
 
 	}
 
-	pctx = kmalloc(sizeof(struct pdp_ctx), GFP_KERNEL);
+	pctx = kmalloc(sizeof(*pctx), GFP_ATOMIC);
 	if (pctx == NULL)
 		return -ENOMEM;
 
-- 
2.17.1

