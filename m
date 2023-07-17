Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2F0758D65
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 19 Jul 2023 08:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C3BED28799;
	Wed, 19 Jul 2023 06:03:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KqmoqdOIdaO8; Wed, 19 Jul 2023 06:03:56 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id CF01728058;
	Wed, 19 Jul 2023 06:03:54 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 3111838A109E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 13:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0F1B2280E9
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 13:53:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9oKicOZN4oTE for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 17 Jul 2023 13:53:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.osmocom.org (Postfix) with ESMTPS id 2D4F627F26
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689602018;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K56/Xqw2n1ZvKULuZ30MMWN4kbPwGNfcAsA3x+nB8mA=;
	b=MKqpmV8vPy/J0M/lfZ9yB3TKhU16PSVLgnIYS7JA0PeAGoqT+jv9A5r+SRou7hr4VziNe0
	Pykll/s5g4FO5wWEg5jClX7A8cvkCwa1MEtXdGBRebOM7ny/UVkTt45lcQLgNpAdN5i3B0
	VfpIrdjLRw4/QfVH9amhc+Vlkd6tbrY=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-301-ZjCFehgePIKnYfuOQIPXWw-1; Mon, 17 Jul 2023 09:53:36 -0400
X-MC-Unique: ZjCFehgePIKnYfuOQIPXWw-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-63511adcf45so52113606d6.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 06:53:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689602016; x=1692194016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K56/Xqw2n1ZvKULuZ30MMWN4kbPwGNfcAsA3x+nB8mA=;
        b=TrLXDkpcmkUrTE75FmyxIvo1IYuZpraqXuY9kjM/vbZZ4myXn39JB/hPh3okW9X97h
         Pnx+lrWH2ubpHqEr1xnoICQP6DZSgRzhk1kiaXX/gkd5aRohudJ1YFksH2/OPeDQX/sE
         Blp3Du3ioytUPIuSf3CuBC0cLwHTCN1jzLX7qiZQQVm7vTNA3tSQz1xKrtMxM+fDMm3K
         bd9Vz9gYtKzJRBks0klc5ffFd2DzXowja2LVz/j2pTfoLHTWyS5c1wrNgRDQ/eOhAryY
         nGAGwXc0ANL+FaKVdHMH1f7mw69a3jMdjEp7yG4DbjWgaI49/oTovm8QoVvPxxfyFpFr
         H7XA==
X-Gm-Message-State: ABy/qLZYIEBDxdN8tMEHcxXTkSxO8LHjplDTf/u0FWi4X/OFHuEanwQv
	BA4AXtpUOTS/y0yyvXWCqNOujXEN7q/q7E93WeF485p9k2fVvGsQcaJcan1RkmHbSz7POqr2CnD
	sR2ePRbKzp66qxxczMbdiolUGSgS5PzOS
X-Received: by 2002:a0c:f194:0:b0:635:5a95:bb48 with SMTP id m20-20020a0cf194000000b006355a95bb48mr12113024qvl.24.1689602016387;
        Mon, 17 Jul 2023 06:53:36 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFV5fomCE7nyPplywCBoISP71GTts2gOATnk7D/Tsz54T+B6cPi/kr9VTBv7MVGW3wH/asTNw==
X-Received: by 2002:a0c:f194:0:b0:635:5a95:bb48 with SMTP id m20-20020a0cf194000000b006355a95bb48mr12113012qvl.24.1689602016127;
        Mon, 17 Jul 2023 06:53:36 -0700 (PDT)
Received: from debian ([92.62.32.42])
        by smtp.gmail.com with ESMTPSA id b10-20020a0cf04a000000b0063c79938606sm2541741qvl.120.2023.07.17.06.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 06:53:35 -0700 (PDT)
Date: Mon, 17 Jul 2023 15:53:30 +0200
From: Guillaume Nault <gnault@redhat.com>
To: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>
Subject: [PATCH net-next 1/3] gtp: Set TOS and routing scope independently
 for fib lookups.
Message-ID: <239feab76be1770fd8ed43e7ce6e004a2a7f8471.1689600901.git.gnault@redhat.com>
References: <cover.1689600901.git.gnault@redhat.com>
MIME-Version: 1.0
In-Reply-To: <cover.1689600901.git.gnault@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-MailFrom: gnault@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4H6INLSGV3RJOC2KPQTRN3JSF77T6CAL
X-Message-ID-Hash: 4H6INLSGV3RJOC2KPQTRN3JSF77T6CAL
X-Mailman-Approved-At: Wed, 19 Jul 2023 06:01:57 +0000
CC: netdev@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4H6INLSGV3RJOC2KPQTRN3JSF77T6CAL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

There's no reason for setting the RTO_ONLINK flag in ->flowi4_tos as
RT_CONN_FLAGS() does. We can easily set ->flowi4_scope properly
instead. This makes the code more explicit and will allow to convert
->flowi4_tos to dscp_t in the future.

Signed-off-by: Guillaume Nault <gnault@redhat.com>
---
 drivers/net/gtp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index acb20ad4e37e..144ec626230d 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -243,7 +243,8 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
 	fl4->flowi4_oif		= sk->sk_bound_dev_if;
 	fl4->daddr		= daddr;
 	fl4->saddr		= saddr;
-	fl4->flowi4_tos		= RT_CONN_FLAGS(sk);
+	fl4->flowi4_tos		= ip_sock_rt_tos(sk);
+	fl4->flowi4_scope	= ip_sock_rt_scope(sk);
 	fl4->flowi4_proto	= sk->sk_protocol;
 
 	return ip_route_output_key(sock_net(sk), fl4);
-- 
2.39.2

