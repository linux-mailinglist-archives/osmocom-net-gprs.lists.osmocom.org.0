Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 781EB610B4
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  6 Jul 2019 14:41:48 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 0F665C61BC;
	Sat,  6 Jul 2019 12:41:48 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=uP9+GkbB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::444; helo=mail-pf1-x444.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by lists.osmocom.org (Postfix) with ESMTP id EA8C0B9E2A
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  2 Jul 2019 15:24:11 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id 19so8418138pfa.4
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 02 Jul 2019 08:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H5YVno4WCiXQA9eWbK1LzW9cfzXvcKQqHrSxyIbLeis=;
 b=uP9+GkbBlZ/FeAN0XdLlB89EUUqPpQ5JfsU9U2xLGHnnBo4HJRly73sA/RWzKMFItO
 Wxpnk62o4W1nKWps/ww7LI+G32Je3hhTIZ+EmgTUh4dRnCnFcXpJq90XN3MKnFi46t8r
 dcxxiXIDSim794fObnad9P7H41erD5Tk+TKc6F3zpGLRdlAr5muFPwN//p4obVaDgoXc
 r5mHKsHL2DYXeuUjLYuTcI25wkSrrB+uJUnZ5ZtUMjB5eqlKYy8nxsiSEyehpvUQsTDA
 ixMLWULl8qyLgF9VxIYvCuXfkBDIFUMe6xNP9BKIkh/3JlMnNYGYtV4vW3+xMa8fchSQ
 r/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H5YVno4WCiXQA9eWbK1LzW9cfzXvcKQqHrSxyIbLeis=;
 b=k+Kqwj0bgtz+bsIaJVVmUXlvvoOzo0O9uy71r/O8V5/g5pPt1f69cYi8a2MyleR46c
 7EapkYCzjbNDhv1EqObl2xB6uUxNwAVXigdW8Zp4aKhsS58hJcxkqXvpZ2jADQMKhxac
 HlOLPD13m8JHeNy2Lk6xkt/k6Ct8/fWKWtUZeMjvzR4GZg4h0TMygUDAB0f/+ff0E5kU
 ozqx6uuZwmgxIMiNehsAwX2WAo7hlP/bZ6ymTGvXWsvO70tT89nYmo9vVTNE8NwDVTP+
 zV6xaQ7K5g/dLDkt/Hp4KiqjhKsSYSnkSkBPVAz8fVHZk74XA52VnKACGZO/w/9sk2PM
 NqHA==
X-Gm-Message-State: APjAAAUPKhPu8PhXFUI51DuUGey4EyRtxKJfeuuIeNljggh4Q2tj2cIX
 exc1R5tlTwD3P37HcpWkcQc=
X-Google-Smtp-Source: APXvYqyylfXXBNTXrVGLKG2VV7I1hXPpSWCUk5AeP8svx2I4AaA2XJTxuHzhC8yPUX+4GuFLCixNNg==
X-Received: by 2002:a63:6986:: with SMTP id
 e128mr32602107pgc.220.1562081050733; 
 Tue, 02 Jul 2019 08:24:10 -0700 (PDT)
Received: from ap-To-be-filled-by-O-E-M.8.8.8.8 ([14.33.120.60])
 by smtp.gmail.com with ESMTPSA id d2sm15133462pgo.0.2019.07.02.08.24.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 08:24:10 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 6/6] gtp: add missing gtp_encap_disable_sock() in
 gtp_encap_enable()
Date: Wed,  3 Jul 2019 00:24:04 +0900
Message-Id: <20190702152404.23210-1-ap420073@gmail.com>
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

If an invalid role is sent from user space, gtp_encap_enable() will fail.
Then, it should call gtp_encap_disable_sock() but current code doesn't.
It makes memory leak.

Fixes: 91ed81f9abc7 ("gtp: support SGSN-side tunnels")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/gtp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index b3ccac54e204..ecfe26215935 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -857,8 +857,13 @@ static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
 
 	if (data[IFLA_GTP_ROLE]) {
 		role = nla_get_u32(data[IFLA_GTP_ROLE]);
-		if (role > GTP_ROLE_SGSN)
+		if (role > GTP_ROLE_SGSN) {
+			if (sk0)
+				gtp_encap_disable_sock(sk0);
+			if (sk1u)
+				gtp_encap_disable_sock(sk1u);
 			return -EINVAL;
+		}
 	}
 
 	gtp->sk0 = sk0;
-- 
2.17.1

