Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 4EEF711A5CA
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 11 Dec 2019 09:24:14 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id B217CCCAE7;
	Wed, 11 Dec 2019 08:22:58 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=GSpLC4u1
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::442; helo=mail-pf1-x442.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by lists.osmocom.org (Postfix) with ESMTP id C32A3CCAD1
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 08:22:53 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id b19so1435943pfo.2
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 11 Dec 2019 00:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rveMbpPf16JSkGp1c+3AGjpujfZxn6vIX/+XYtDa1KA=;
 b=GSpLC4u1qZ63g5vP4SXucoubDpIxEHNVFsgo+hERcytGAuPcCeLIBi7k4EJNzE59vo
 +jzYHZ8qHfqUlOQ8CfDyvdaQWGm7Cs9IlnFVFlZRnJxurxPRZdK+t+I4rBOPr8w4iYqa
 zHLHTZGjJ1XmHEmT0xi3RbbgNrOyt0ErjJgGDoq6tehuM7g/aalzreX0qFanbnMmfYWl
 WolcoTsgpGbThsYvZTuD154gLLEtL6DV0G7h/duCby80jTIAvFhCJ/ugtqKyDd6VPETw
 J+/PWvIpZSbr4ddilbdeuOWg4AlN5iZgmK3nEql9eJcwr1iqwjy6Dv/W7Afx67YVXHIl
 LHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rveMbpPf16JSkGp1c+3AGjpujfZxn6vIX/+XYtDa1KA=;
 b=pp3YrbIdcnNGY+RUxCfLMZ+5Ey2XPVJdkHzJLi7ULizQn+92ZwE1EIp4H8IA8fxGaZ
 XJQs0zB/Ooygtns6juiYPel2Evi51Fshsw8EsEbDllHnawvfK7j7h+XqeZ1XheyasEy5
 /7LG6s6IACX3/UM/H2gXVzrW1szTBgCrL9K1BYksZSLgR/Vijj/OR6oo8BFNyfooB0p6
 5FEdsqPV+jUFKTVFzpFOCiDT5HmSDfV3ss5ZxhFVXMz2gVShpwQ8LAYyKTz5SjtdGC3c
 HOyc1zkIRzoUWoPCKEOsJV99iiJm+kN6bVQ6HrOzMOMnqzb72ZQt9Q1V6wuuSNpVdsB6
 mGiw==
X-Gm-Message-State: APjAAAWYUwwk7+WHWbhvJM7UTlxPgXoKuro7v8RCd21r3vPNz39KwbsE
 WVxUkF/XyMimqB/MYf0KcZE=
X-Google-Smtp-Source: APXvYqxo1ZezgIZ9FL+2PdAQx+a3IKjSTznrB13Lb4OXLZjl5Mqo4LqMeUnTSgbT1x3cas63AcFzzg==
X-Received: by 2002:aa7:95a3:: with SMTP id a3mr2452264pfk.193.1576052572174; 
 Wed, 11 Dec 2019 00:22:52 -0800 (PST)
Received: from localhost.localdomain ([110.35.161.54])
 by smtp.gmail.com with ESMTPSA id y6sm1667720pgc.10.2019.12.11.00.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:22:50 -0800 (PST)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 0/4] gtp: fix several bugs in gtp module
Date: Wed, 11 Dec 2019 08:22:43 +0000
Message-Id: <20191211082243.28465-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
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

This patchset fixes several bugs in the GTP module.

1. Do not allow adding duplicate TID and ms_addr pdp context.
In the current code, duplicate TID and ms_addr pdp context could be added.
So, RX and TX path could find correct pdp context.

2. Fix wrong condition in ->dumpit() callback.
->dumpit() callback is re-called if dump packet size is too big.
So, before return, it saves last position and then restart from
last dump position.
TID value is used to find last dump position.
GTP module allows adding zero TID value. But ->dumpit() callback ignores
zero TID value.
So, dump would not work correctly if dump packet size too big.

3. Fix use-after-free in ipv4_pdp_find().
RX and TX patch always uses gtp->tid_hash and gtp->addr_hash.
but while packet processing, these hash pointer would be freed.
So, use-after-free would occur.

4. Fix panic because of zero size hashtable
GTP hashtable size could be set by user-space.
If hashsize is set to 0, hashtable will not work and panic will occur.

Taehee Yoo (4):
  gtp: do not allow adding duplicate tid and ms_addr pdp context
  gtp: fix wrong condition in gtp_genl_dump_pdp()
  gtp: fix an use-after-free in ipv4_pdp_find()
  gtp: avoid zero size hashtable

 drivers/net/gtp.c | 109 +++++++++++++++++++++++++++-------------------
 1 file changed, 63 insertions(+), 46 deletions(-)

-- 
2.17.1

