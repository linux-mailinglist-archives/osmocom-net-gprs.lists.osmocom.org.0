Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF00A188AC
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:37 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A82B81D3241;
	Tue, 21 Jan 2025 23:58:37 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ojoWAi6UFXA8; Tue, 21 Jan 2025 23:58:37 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6E6271D311F;
	Tue, 21 Jan 2025 23:58:27 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9267F38A276E
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 16 Jan 2025 13:39:46 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 68BAD1CBCA6
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 16 Jan 2025 13:39:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gGgrpeqSr96 for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 16 Jan 2025 13:39:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.osmocom.org (Postfix) with ESMTPS id 792E81CBCA1
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 16 Jan 2025 13:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737034783;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=TfExgzHjb5NGuBofVPfjRYOrITWrQg+ThLKOpDbGlSc=;
	b=UDSJCIV36WYd/P4rAinLjHSKJ9QSR16TvvUjxBmzmDpiJSd1hyaHRBkrZHfMIdSX/5zeW6
	hYCB+b3xWYPfDSytK0ldd7+qYYAERliS6PXz7YeEgWb8EQHMQBU31PMK1pu6fIMnxRti5y
	XZGk9Pyn3Pj+LRpFXqhiyJOQLuEJxVI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-640-cCRWD9huOeumA13-Wmmf5A-1; Thu, 16 Jan 2025 08:39:42 -0500
X-MC-Unique: cCRWD9huOeumA13-Wmmf5A-1
X-Mimecast-MFC-AGG-ID: cCRWD9huOeumA13-Wmmf5A
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4361b090d23so4508085e9.0
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 16 Jan 2025 05:39:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737034781; x=1737639581;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TfExgzHjb5NGuBofVPfjRYOrITWrQg+ThLKOpDbGlSc=;
        b=LBA9/fmdGZo5J0D5BuD662Fr3dYePtouexta8l1MxVkX7JW8vjx3Ij/S8oGu3dYROs
         5TxHJBjMGpiaR2toKIGhXBmE66siD9a5H8i8iovy8OrPJY/k8w4/N4rCm3tw5i+Q+Lln
         0DS0nY0/steB1uCoZPHezTOcad7OqqKheaXqGt3+X4To1E6OqSesVAoIIRGOHXtERtDl
         T9QM7gDtwRl4eCMzgNRsltxsUtdNjOZtpOtuMWOUlMYUSqz/lgjCJOGZipyA60sgVgmz
         nuSmLYQj+knG3K/Bi39KGdZu3FuPuRzFGP2jjc0UbzDsvEJicvlsID9MDAp4XKp7sRNL
         SqfA==
X-Forwarded-Encrypted: i=1; AJvYcCVxCHkr5iVTTOsFgtiDGOQPELnL9RzQcPeStuRIE9BfrArAmmAdtQldMUOEfjQ0IDfzRpduyjGHKdtkQwElTaJx@lists.osmocom.org
X-Gm-Message-State: AOJu0YyIXMD/Q8NjVmqUqpimu1OWdE3zscCdBLEKr71g+arnRc7A6Nqe
	ATrrNCcP3vekU2Whsh9qKdGhrvahaBJ1Ga+f4T0axSsYGb+zthJfjZEgfC5sLo3dUn7w+akRFDW
	a1VnIuwog8LiewK+CQ4IwF7uzGcP6N4hFS3lhGIz9+lD5BJQKQSVYn2UBX5mtSg53Eec1jw==
X-Gm-Gg: ASbGnct5yhuAd6ywdIRdeKNAzuOLb96ni3uTow+Z3PBNKEJ8EakHimPeuEUlzo2R/x9
	prsleJrKZB29uL6VqbA0UjC9qTTGSgnhdpWQEB/6qkJxGhFplGdKmnTGx8J81OPiHlkId+2HLA/
	tDe+8G/zNYL6QS5BNrkHhl8ZaYDsK/p1fL+DDosgailszCCIi9V+ffp8qOqRHOa+6HlOxFr5LHr
	G0mUprCVaBZrlX6lRBx7vFlXRePNwYybtl2dpV22rJLSWwkPaUmaChm4MqFWPVkfEfFHF/BOE0i
	C72nO729QuVX4RrcmuGjbiuId3/+wlFIh9uz
X-Received: by 2002:a05:600c:a44:b0:434:feb1:adcf with SMTP id 5b1f17b1804b1-436e26efe1fmr258131565e9.25.1737034780843;
        Thu, 16 Jan 2025 05:39:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMnHCdnVAWHnK9N0SxHtmoNf8DwawtNR7Le2GZyDEKzkO+gxxWOaU/la35B5I5AH7slFaNTA==
X-Received: by 2002:a05:600c:a44:b0:434:feb1:adcf with SMTP id 5b1f17b1804b1-436e26efe1fmr258131365e9.25.1737034780497;
        Thu, 16 Jan 2025 05:39:40 -0800 (PST)
Received: from debian (2a01cb058d23d60074daf58b34fd2b3c.ipv6.abo.wanadoo.fr. [2a01:cb05:8d23:d600:74da:f58b:34fd:2b3c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74e63fasm58906845e9.36.2025.01.16.05.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 05:39:39 -0800 (PST)
Date: Thu, 16 Jan 2025 14:39:38 +0100
From: Guillaume Nault <gnault@redhat.com>
To: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>
Subject: [PATCH net-next v2] gtp: Prepare ip4_route_output_gtp() to
 .flowi4_tos conversion.
Message-ID: <06bdb310a075355ff059cd32da2efc29a63981c9.1737034675.git.gnault@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6pBhF7LSVdE8-lWi-RpFXR5SnEsdc00KTE_6_rm7SGY_1737034781
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-MailFrom: gnault@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U25JEYKUYBT222KE3LLQYQOA2KVUZTSP
X-Message-ID-Hash: U25JEYKUYBT222KE3LLQYQOA2KVUZTSP
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:12 +0000
CC: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>, osmocom-net-gprs@lists.osmocom.org, Ido Schimmel <idosch@nvidia.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/U25JEYKUYBT222KE3LLQYQOA2KVUZTSP/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Use inet_sk_dscp() to get the socket DSCP value as dscp_t, instead of
ip_sock_rt_tos() which returns a __u8. This will ease the conversion
of fl4->flowi4_tos to dscp_t, which now just becomes a matter of
dropping the inet_dscp_to_dsfield() call.

Signed-off-by: Guillaume Nault <gnault@redhat.com>
---
v2: Remove useless parenthesis (Ido).
    Slightly reword the commit message for clarity.

 drivers/net/gtp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 89a996ad8cd0..6fd502cc52c1 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -23,6 +23,8 @@
 
 #include <net/net_namespace.h>
 #include <net/protocol.h>
+#include <net/inet_dscp.h>
+#include <net/inet_sock.h>
 #include <net/ip.h>
 #include <net/ipv6.h>
 #include <net/udp.h>
@@ -350,7 +352,7 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
 	fl4->flowi4_oif		= sk->sk_bound_dev_if;
 	fl4->daddr		= daddr;
 	fl4->saddr		= saddr;
-	fl4->flowi4_tos		= ip_sock_rt_tos(sk);
+	fl4->flowi4_tos		= inet_dscp_to_dsfield(inet_sk_dscp(inet_sk(sk)));
 	fl4->flowi4_scope	= ip_sock_rt_scope(sk);
 	fl4->flowi4_proto	= sk->sk_protocol;
 
-- 
2.39.2

