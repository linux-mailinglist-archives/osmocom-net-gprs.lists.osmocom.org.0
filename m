Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 35307876FA9
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  9 Mar 2024 09:05:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D9D285D39B;
	Sat,  9 Mar 2024 08:05:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rEB34bHgGrJB; Sat,  9 Mar 2024 08:05:55 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 09EF25D390;
	Sat,  9 Mar 2024 08:05:51 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 3C18238A10F2
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 19D9B57E22
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IlnoDaeO_TLS for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  5 Mar 2024 12:15:36 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mail.osmocom.org (Postfix) with ESMTPS id 0C86257E1B
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  5 Mar 2024 12:15:35 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-566e869f631so4605243a12.0
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 05 Mar 2024 04:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709640935; x=1710245735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=73oxC7fiTEx14ckkL7VJ6pLMLA9f6p7sprpT+joqmVc=;
        b=hPFvqfmnN6tpQ0jtVa2hIwd8cCPxdcJzfAHJEHprRLclrrkWTrDt8ZcHK+6J6GUvt7
         3OcDu4u8zpbkPAe1e2/6309BZMcQzDm6rzLC304ZuoA5KxsbLDJF6JL5CqnU2x+wme32
         RwJq5O5QYg5odryYx7Q5Pu76LZTj1OkZqUjNSk2x2WOeOVlr+3ZHnWDuw/9AtvIhGg/v
         cP/dQ5CFB4FN9iFiiT18fSknl5bDVxFq0itZ02vmaTlqAadmnTfLc6QoYb7wEt6y+Ro5
         GIvbFVVqUCp9GsLUWRqF6FHmf+jCmSBaWzUziX4e4rsvPuTsniTMXoLUMcqhbIyfgPlL
         jiKg==
X-Forwarded-Encrypted: i=1; AJvYcCWNcSSmIVgZ12S6kCCyb9QOP3XEZuseZyiHx+dJNG7ZZ9fpMJR6lkdsIHpmG/rRW/nVaJS/CPs3nr07HuwvTCDBMfmLBLr4AuIUYPpQD8rqsE4w
X-Gm-Message-State: AOJu0YyCC0J2pUKEEFLVStDZuAK9MCOnnNGezNruXkdVxqFFF2RRXbsX
	KaUxXb3kL/groZKPnwY2VQdTTLo+iRrXDcsh4ruodzsLG7XxlIJ7
X-Google-Smtp-Source: AGHT+IEgZP/25f03fXOd6Z9uDpCifrB6YeqYPf/fSwLvjFuOevo4KNmPHtiLcHQMRiGqrIZxE03Bmw==
X-Received: by 2002:a50:954c:0:b0:565:8339:5753 with SMTP id v12-20020a50954c000000b0056583395753mr6511550eda.40.1709640935115;
        Tue, 05 Mar 2024 04:15:35 -0800 (PST)
Received: from localhost (fwdproxy-lla-005.fbsv.net. [2a03:2880:30ff:5::face:b00c])
        by smtp.gmail.com with ESMTPSA id v3-20020aa7d9c3000000b0056629f5de88sm5707578eds.61.2024.03.05.04.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 04:15:34 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Harald Welte <laforge@gnumonks.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next 2/3] net: gtp: Remove generic .ndo_get_stats64
Date: Tue,  5 Mar 2024 04:15:22 -0800
Message-ID: <20240305121524.2254533-2-leitao@debian.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305121524.2254533-1-leitao@debian.org>
References: <20240305121524.2254533-1-leitao@debian.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: breno.debian@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UB2GJIJR5HQUKQTG5K4PD3M7AKKMJBB7
X-Message-ID-Hash: UB2GJIJR5HQUKQTG5K4PD3M7AKKMJBB7
X-Mailman-Approved-At: Sat, 09 Mar 2024 08:05:48 +0000
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org, dsahern@kernel.org, "open list:GTP GPRS Tunneling Protocol" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/UB2GJIJR5HQUKQTG5K4PD3M7AKKMJBB7/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Commit 3e2f544dd8a33 ("net: get stats64 if device if driver is
configured") moved the callback to dev_get_tstats64() to net core, so,
unless the driver is doing some custom stats collection, it does not
need to set .ndo_get_stats64.

Since this driver is now relying in NETDEV_PCPU_STAT_TSTATS, then, it
doesn't need to set the dev_get_tstats64() generic .ndo_get_stats64
function pointer.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/gtp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index facbfba5d77f..a279f0cd1b4d 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -940,7 +940,6 @@ static const struct net_device_ops gtp_netdev_ops =3D=
 {
 	.ndo_init		=3D gtp_dev_init,
 	.ndo_uninit		=3D gtp_dev_uninit,
 	.ndo_start_xmit		=3D gtp_dev_xmit,
-	.ndo_get_stats64	=3D dev_get_tstats64,
 };
=20
 static const struct device_type gtp_type =3D {
--=20
2.43.0

