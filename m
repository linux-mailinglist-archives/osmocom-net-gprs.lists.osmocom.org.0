Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A4F758D62
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 19 Jul 2023 08:03:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1D7C928795;
	Wed, 19 Jul 2023 06:03:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ms_OghjDnzE9; Wed, 19 Jul 2023 06:03:04 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 391EA2810E;
	Wed, 19 Jul 2023 06:02:59 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0150C38A109E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 13:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D13E0280E9
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 13:53:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZFdOL-vPurSD for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 17 Jul 2023 13:53:36 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.osmocom.org (Postfix) with ESMTPS id 1257A27F26
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 13:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689602014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=cxwNxY4JS8J6tPLEogfd2SFfXj3N8uNj2U1eKeq6+xE=;
	b=Tciml48Jb8afZz3cX7JA5o0TBxnzAGNSkeOKatB5jAenyd00YNsKrQFzarUFvwlsHx5jVh
	lTpfaOcC5ABRWLYz1TzvT91cG6BhCiC7Vwzj8ITiTb3vwCs9rRaU4Ngd613hYFcariur23
	tsgfAPPGhsCJgXBxvANtcRVLz+rQ9H0=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-491-sjmNirK1OUKe9bP_X9hs8A-1; Mon, 17 Jul 2023 09:53:32 -0400
X-MC-Unique: sjmNirK1OUKe9bP_X9hs8A-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-403f48dc8a1so1411971cf.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 17 Jul 2023 06:53:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689602012; x=1692194012;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cxwNxY4JS8J6tPLEogfd2SFfXj3N8uNj2U1eKeq6+xE=;
        b=XSLifK0IioUiimhHcpF0WZf6QpWOmXn0nhzcWKF/YUjRna8fkyjZM2hvmJxxor40Du
         biuSbhqIMkKIVhBnItjA5HZEnfuAKvrYkH/GeQxpyfbAdyksw5UWif4FI5s13hCFClED
         /1aqX7twaz9YrLfSTG4xCpR5au5kJvOGkFKtNVHURZgg+MAIDadmbZWbfH6xUY6Ww83w
         3bTtBnwmNL4eb9ae42kZ9ipUdAVWSL7ESpvV6oFvdIrXDUVJTBPDfz1hFBpZvY6yj3/a
         z11Ua+GkimJ5pWOFK0la1gC2yCqwYFUvl44u1xHZcCNQb3Vx1RQ2TPX2zjEkrn3DAOuh
         ICLQ==
X-Gm-Message-State: ABy/qLaRq91lDBvEp4mjlnpZGJ7cp438vvC3+3Y8MT/p65L3lC1daDma
	comPJfBYo2RYKKSZ9VTnBk44BZlAKYKFWz+DTtgCn619v297UbU6wNVEwl6EBOlEyIqlpUkX0/9
	yaj/YVsvRNn6Km8xiuQedV76jWjooRkIk
X-Received: by 2002:a05:622a:104c:b0:3e3:9117:66e8 with SMTP id f12-20020a05622a104c00b003e3911766e8mr15174581qte.35.1689602012147;
        Mon, 17 Jul 2023 06:53:32 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFQ6vap0ITLUfu8vhP2jR7nb8amW+13ht5RG1X59wHJKsZtwSGwA6x7Lps3sxW4+8YYauf9HQ==
X-Received: by 2002:a05:622a:104c:b0:3e3:9117:66e8 with SMTP id f12-20020a05622a104c00b003e3911766e8mr15174559qte.35.1689602011845;
        Mon, 17 Jul 2023 06:53:31 -0700 (PDT)
Received: from debian ([92.62.32.42])
        by smtp.gmail.com with ESMTPSA id x10-20020ac87eca000000b00403b44bc230sm6250267qtj.95.2023.07.17.06.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 06:53:31 -0700 (PDT)
Date: Mon, 17 Jul 2023 15:53:24 +0200
From: Guillaume Nault <gnault@redhat.com>
To: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>
Subject: [PATCH net-next 0/3] net: Remove more RTO_ONLINK users.
Message-ID: <cover.1689600901.git.gnault@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-MailFrom: gnault@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J6X7RUQ6PRCP6LK5UTXQLL7X3VYS3Z3Q
X-Message-ID-Hash: J6X7RUQ6PRCP6LK5UTXQLL7X3VYS3Z3Q
X-Mailman-Approved-At: Wed, 19 Jul 2023 06:01:57 +0000
CC: netdev@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, osmocom-net-gprs@lists.osmocom.org, dccp@vger.kernel.org, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, linux-sctp@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/J6X7RUQ6PRCP6LK5UTXQLL7X3VYS3Z3Q/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Code that initialise a flowi4 structure manually before doing a fib
lookup can easily avoid overloading ->flowi4_tos with the RTO_ONLINK
bit. They can just set ->flowi4_scope correctly instead.

Properly separating the routing scope from ->flowi4_tos will allow to
eventually convert this field to dscp_t (to ensure proper separation
between DSCP and ECN).

Guillaume Nault (3):
  gtp: Set TOS and routing scope independently for fib lookups.
  dccp: Set TOS and routing scope independently for fib lookups.
  sctp: Set TOS and routing scope independently for fib lookups.

 drivers/net/gtp.c   | 3 ++-
 net/dccp/ipv4.c     | 3 ++-
 net/sctp/protocol.c | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.39.2

