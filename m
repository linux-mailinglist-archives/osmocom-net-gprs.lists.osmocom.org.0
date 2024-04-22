Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7645F8B4B33
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 28 Apr 2024 12:08:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 425168DA7B;
	Sun, 28 Apr 2024 10:08:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BUza_P6UBnKj; Sun, 28 Apr 2024 10:08:20 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 871788DA6B;
	Sun, 28 Apr 2024 10:08:18 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9758838A1C2F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 10:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 753BA87398
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 10:41:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0-NzxcScmClW for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 22 Apr 2024 10:41:26 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by mail.osmocom.org (Postfix) with ESMTPS id AAF9F87393
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 10:41:26 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-571b5fba660so12960a12.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 22 Apr 2024 03:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713782486; x=1714387286; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBRC1YDpPGCAjFOyqrEApiRfhPhWX1kD74GppyD2DVk=;
        b=1TyTxn78FtBHsFc87gmpNJ5fIUFxNfHRnVMw8jH5/ceur/0QdpXcoLoPh8irLUJUzw
         cWWHRdck0iEGlBiHjenPPKBclbv64LU5S2akg3Q0kkP0zz5K8VYYsPhnhua/3nFDTf+j
         UumUi5E0CHwy3OnJE/ILTdcN0h/5SfACJxUc0O3iypc4a5tSDERRMTKHcRDjzwMHX5Dv
         i4DLA0QZLAiKEaft6P8uwg1wAk66UW1+tGUV0XGeEvhyLbBbjTCFT6YkxgHTupRh7YqK
         Z9Zpwf+RsMBRXsezE5AVM4D2DPovFMoWKrQg4iQ9VfjSv39iu7Y7ya+JjkCDtb3b1SYi
         de9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713782486; x=1714387286;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WBRC1YDpPGCAjFOyqrEApiRfhPhWX1kD74GppyD2DVk=;
        b=moFwCM6E5xoYbcc/XTHZalmV7KgvmRM5g6+xdZvhGCf3bLCFF75vqrPGnXlGGuQoYP
         QVJ1ORLY509V1+B0djGb44QxBKDF7rKlIMQkABaK8EpvGSDbQJJM/ZhhfTJlJ6SLsY43
         51QCkNAZ7sckOGbez2drUWICmXwfxTWbzibJ8CHMjF1uKtwzw70A8L5Wak90M/MzQBik
         AkZTOnGmkoB0/aj1sbgckhL1Vywn0MFrGLi+eZLNiBcyHIuWyp0ZcDXXzDTB6U4ynwvR
         8Q8x/HUee81m80cdTwQ3V4sVPUGYswuIiHapiMfZzBUX22adzl7HDS+k2IWWFTMUlmEh
         +O+A==
X-Forwarded-Encrypted: i=1; AJvYcCX+MS4DIJiRebcdotsJ4gEvm68ckwiHVrLvia5wiTSITLPJW1m3AmTBFGjbUtFKAzHfB/9O+Z8FE8SMg+tbSrh+T1tX1eF/IQ/7I8F5Hz7rSr+K
X-Gm-Message-State: AOJu0YyaySLPk654M+8VomJwgd+22bgd4PKsdiAjVev0fejUB0aHYnDg
	G8QIYzjAUScAALDlbxCTZRvj5qTG+8M0WnRoy3EUxjR61aHgrf30ZInf7wqxTG5U75Of+tISyRo
	2En6Joq+7MRREDTGvQnfbSU3PEOL/bRV/crUC
X-Google-Smtp-Source: AGHT+IGJCCnmZCJSsHSxEAneZezhyepUjxPj+3DwdkZfFCUXOX2W2iK36+58hR0uav9q4Qv8dTpG3dgIYuFX/Fp9Xcs=
X-Received: by 2002:aa7:da0a:0:b0:571:fc5e:ba34 with SMTP id
 r10-20020aa7da0a000000b00571fc5eba34mr134189eds.2.1713782485665; Mon, 22 Apr
 2024 03:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <ZiYwUnZU+50fH0SN@v4bel-B760M-AORUS-ELITE-AX>
In-Reply-To: <ZiYwUnZU+50fH0SN@v4bel-B760M-AORUS-ELITE-AX>
From: Eric Dumazet <edumazet@google.com>
Date: Mon, 22 Apr 2024 12:41:14 +0200
Message-ID: <CANn89iKSxF1Nz-XjeeJ2Hv9BfbV1tULE0aq6S8xnT4pys1qvZw@mail.gmail.com>
Subject: Re: [PATCH] net: gtp: Fix Use-After-Free in gtp_dellink
To: Hyunwoo Kim <v4bel@theori.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K6GROFWOVHDOL6JWVQBKJHT766AU7KYR
X-Message-ID-Hash: K6GROFWOVHDOL6JWVQBKJHT766AU7KYR
X-Mailman-Approved-At: Sun, 28 Apr 2024 10:08:11 +0000
CC: pablo@netfilter.or, laforge@gnumonks.org, imv4bel@gmail.com, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/K6GROFWOVHDOL6JWVQBKJHT766AU7KYR/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Mon, Apr 22, 2024 at 11:39=E2=80=AFAM Hyunwoo Kim <v4bel@theori.io> wrot=
e:
>
> Since call_rcu, which is called in the hlist_for_each_entry_rcu traversal
> of gtp_dellink, is not part of the RCU read critical section, it
> is possible that the RCU grace period will pass during the traversal and
> the key will be free.
>
> To prevent this, it should be changed to hlist_for_each_entry_safe.
>
> Fixes: 94dc550a5062 ("gtp: fix an use-after-free in ipv4_pdp_find()")
> Signed-off-by: Hyunwoo Kim <v4bel@theori.io>

Reviewed-by: Eric Dumazet <edumazet@google.com>

Thanks !
