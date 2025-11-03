Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIElF4cLzGnGNgYAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:35 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0408136F943
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:33 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EC0DD4C028F;
	Tue, 31 Mar 2026 17:59:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bijjdUOVg0RD; Tue, 31 Mar 2026 17:59:32 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8772E4C0281;
	Tue, 31 Mar 2026 17:59:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 89B5C38A010E
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 06:07:02 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6868A306AB2
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 06:07:02 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0Vho8IDtLL0 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 06:07:00 +0000 (UTC)
Received: from ssh248.corpemail.net (ssh248.corpemail.net [210.51.61.248])
	by mail.osmocom.org (Postfix) with ESMTPS id B6DAE306AAD
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 06:06:58 +0000 (UTC)
Received: from Jtjnmail201617.home.langchao.com
        by ssh248.corpemail.net ((D)) with ASMTP (SSL) id 202511031406474531;
        Mon, 03 Nov 2025 14:06:47 +0800
Received: from jtjnmailAR02.home.langchao.com (10.100.2.43) by
 Jtjnmail201617.home.langchao.com (10.100.2.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 3 Nov 2025 14:06:47 +0800
Received: from inspur.com (10.100.2.107) by jtjnmailAR02.home.langchao.com
 (10.100.2.43) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Mon, 3 Nov 2025 14:06:47 +0800
Received: from localhost.com (unknown [10.94.13.117])
	by app3 (Coremail) with SMTP id awJkCsDw3fh2RghpRboJAA--.11961S4;
	Mon, 03 Nov 2025 14:06:47 +0800 (CST)
From: Chu Guangqing <chuguangqing@inspur.com>
To: <pablo@netfilter.org>, <laforge@gnumonks.org>, <andrew+netdev@lunn.ch>,
	<davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
	<pabeni@redhat.com>
Subject: [PATCH] gtp: Fix a typo error for size
Date: Mon, 3 Nov 2025 14:05:04 +0800
Message-ID: <20251103060504.3524-1-chuguangqing@inspur.com>
X-Mailer: git-send-email 2.43.7
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: awJkCsDw3fh2RghpRboJAA--.11961S4
X-Coremail-Antispam: 1UD129KBjvdXoWrZrykKFyUCFW8ZryxCrWDCFg_yoWxCFgEk3
	4xZFWxX3WUGFyvyw17ur4Y9ryak3W8ZF4kuw1IgrZxA345Za1Dur97uF97Xan8Cr4UJFy3
	CFnxXryUZ34YqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb38FF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_GcCE
	3s1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s
	1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0
	cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8Jw
	ACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka
	0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7
	v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF
	1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIx
	AIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI
	42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWI
	evJa73UjIFyTuYvjfUFg4SDUUUU
X-CM-SenderInfo: 5fkxw35dqj1xlqj6x0hvsx2hhfrp/
X-CM-DELIVERINFO: 
 =?B?XyNJupRRTeOiUs3aOqHZ50hzsfHKF9Ds6CbXmDm38RucXu3DYXJR7Zlh9zE0nt/Iac
	D+Kd002PUJ0c/jQWv7cO1ektgJ30b0MeiTb5cNH1w8ExGK1nHqxZ4+VdrBkvIbSUEPrEtB
	VrlxhN96MEJ7s9QwWAU=
Content-Type: text/plain
tUid: 20251103140648c88674082191d03c82b124efa3dea5eb
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-MailFrom: chuguangqing@inspur.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: IP7DVQT3FVJC4XYKYVHDZRLJTNQGZ56P
X-Message-ID-Hash: IP7DVQT3FVJC4XYKYVHDZRLJTNQGZ56P
X-Mailman-Approved-At: Tue, 31 Mar 2026 17:59:25 +0000
CC: osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chu Guangqing <chuguangqing@inspur.com>
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/IP7DVQT3FVJC4XYKYVHDZRLJTNQGZ56P/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Spamd-Result: default: False [3.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3563];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:chuguangqing@inspur.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[inspur.com];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER(0.00)[chuguangqing@inspur.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11];
	FROM_NEQ_ENVFROM(0.00)[chuguangqing@inspur.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inspur.com:email,inspur.com:mid,mail.osmocom.org:helo,mail.osmocom.org:rdns]
X-Rspamd-Queue-Id: 0408136F943
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix the spelling error of "size".

Signed-off-by: Chu Guangqing <chuguangqing@inspur.com>
---
 drivers/net/gtp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 5cb59d72bc82..4213c3b2d532 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -633,7 +633,7 @@ static void gtp1u_build_echo_msg(struct gtp1_header_long *hdr, __u8 msg_type)
 	hdr->tid = 0;
 
 	/* seq, npdu and next should be counted to the length of the GTP packet
-	 * that's why szie of gtp1_header should be subtracted,
+	 * that's why size of gtp1_header should be subtracted,
 	 * not size of gtp1_header_long.
 	 */
 
-- 
2.43.7

