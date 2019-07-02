Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 19F8E610AE
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  6 Jul 2019 14:41:38 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 37E52C617E;
	Sat,  6 Jul 2019 12:41:35 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=CGxwPWNC
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::542; helo=mail-pg1-x542.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com
 [IPv6:2607:f8b0:4864:20::542])
 by lists.osmocom.org (Postfix) with ESMTP id 9927CB9D69
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  2 Jul 2019 15:20:47 +0000 (UTC)
Received: by mail-pg1-x542.google.com with SMTP id g15so5944811pgi.4
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 02 Jul 2019 08:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Vy/yZ/n5ClLY1qISZNlSWGbzy8L79W0QJBOBUkiGiwc=;
 b=CGxwPWNCA3mybOVTqjzzkpmGfFV2Vrm0m50eQAI8eqVBu95IDnHwerya4iMFeQ7DL7
 awFq6it2K4WLi2ixTYXn+Dx0/7/2G6YugluzatCv+gYDW9kBJLqDu241mDkwPko7haqm
 EI49YsZu82Kayhh7y/lMC8jkxg7C81/OJQs0pSVKEjfmcCB1YKh1ypSwp7nZgNRuZO9q
 kNU4FWBI8paMlT9F17pNLjYSme5CfMz/As8ZZi7rkntNggvvH0BKpkuDpX4PuQLlFpT1
 fhFGM9Mi+zT7KLll2ZCcoeZWnHtxzsI0o1weuDCiGECtDayvjymd7Y4ngSMWWJkY6it6
 QaGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Vy/yZ/n5ClLY1qISZNlSWGbzy8L79W0QJBOBUkiGiwc=;
 b=CeOlQM7VB2nhKOJOcJGXIu1Ys8C70Nu/e6ysdNLcFqxKKWUpuxGBWvaStctj5a66Lw
 Am/1H5SjWRentT1kiVyiuv18Jfr3TeGReCcCWgYvWqoeatviZIsnqL39l3B6Cl54iqYd
 ydie+MkoIGvMvbtjuQVbe0eOeEENxYGedfvCcOJfOyABdf12tG2nyAanIw65OGEf512T
 V/JHkpfUAvlExXIcQ+RW7JqejlAdZdt1awusAj+8eKl8LhCQxGoiP5YTb/1wYcNizpjC
 qZLmbfyJVoDzRSaojrTY8OSzzkga8LVcLuQwDc+/2TwKZtAU1jZT2u6ujC8lVIqiNrIf
 4TKw==
X-Gm-Message-State: APjAAAWhzVqvVPvPKrYhW81k+L05Y3FJ5MBEEnqmNieF5I0fKIQoQmfV
 9xe1sryt8OHPqhsCamX+9EY=
X-Google-Smtp-Source: APXvYqwIpIT/ewZBvuE1KwHMVr4758qCSfWkqIaLCMGJHtRRi8W2dMDFyHbkkf/opVpK9cMvFc5qLQ==
X-Received: by 2002:a17:90a:1aa4:: with SMTP id
 p33mr6274593pjp.27.1562080845980; 
 Tue, 02 Jul 2019 08:20:45 -0700 (PDT)
Received: from ap-To-be-filled-by-O-E-M.8.8.8.8 ([14.33.120.60])
 by smtp.gmail.com with ESMTPSA id c98sm2919647pje.1.2019.07.02.08.20.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 08:20:45 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 0/6] gtp: fix several bugs
Date: Wed,  3 Jul 2019 00:20:34 +0900
Message-Id: <20190702152034.22412-1-ap420073@gmail.com>
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

This patch series fixes several bugs in the gtp module.

First patch fixes suspicious RCU usage.
The problem is to use rcu_dereference_sk_user_data() outside of
RCU read critical section.

Second patch fixes use-after-free.
gtp_encap_destroy() is called twice.
gtp_encap_destroy() use both gtp->sk0 and gtp->sk1u.
these pointers can be freed in gtp_encap_destroy().
So, gtp_encap_destroy() should avoid using freed sk pointer.

Third patch removes duplicate code in gtp_dellink().
gtp_dellink() calls gtp_encap_disable() twice.
So, remove one of them.

Fourth patch fixes usage of GFP_KERNEL.
GFP_KERNEL can not be used in RCU read critical section.
This patch make ipv4_pdp_add() to use GFP_ATOMIC instead of GFP_KERNEL.

Fifth patch fixes use-after-free in gtp_newlink().
gtp_newlink() uses gtp_net which would be destroyed by the __exit_net
routine.
So, gtp_newlink should not be called after the __exit_net routine.

Sixth patch adds missing error handling routine in gtp_encap_enable().
gtp_encap_enable() will fail, if invalid role value is sent from
user-space. if so, gtp_encap_enable() should execute error handling
routine.

Taehee Yoo (6):
  gtp: fix suspicious RCU usage
  gtp: fix use-after-free in gtp_encap_destroy()
  gtp: remove duplicate code in gtp_dellink()
  gtp: fix Illegal context switch in RCU read-side critical section.
  gtp: fix use-after-free in gtp_newlink()
  gtp: add missing gtp_encap_disable_sock() in gtp_encap_enable()

 drivers/net/gtp.c | 37 +++++++++++++++++++++++++++++--------
 1 file changed, 29 insertions(+), 8 deletions(-)

-- 
2.17.1

