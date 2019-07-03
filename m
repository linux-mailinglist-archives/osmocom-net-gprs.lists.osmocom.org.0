Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id D136C610B5
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  6 Jul 2019 14:41:49 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 77F66C61C5;
	Sat,  6 Jul 2019 12:41:49 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=lcHFy3XB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::341; helo=mail-ot1-x341.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by lists.osmocom.org (Postfix) with ESMTP id 56E9FBB688
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  3 Jul 2019 01:31:36 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id e8so580654otl.7
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 02 Jul 2019 18:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kz+9zOW0wyQSZRd/JBrHskK3qA1pb0xtBKwU/DLH+ig=;
 b=lcHFy3XBY6mPR7agONYFug4R4ipehKYSL5c1oCIb+hVX3SU2LBI1H8YsXTu/xWx5Bn
 0bhg+/w6qfKzB2bmihP1NcuqZDss+g9jEPhDYJ4yDN+8gta4m5LjWGBZphAnyeihTx+P
 6D7l9LHlfor3f1RdGbQJWDAyqNmMOif0XJROzoSZnEEY+kquBiZemdvG1py5zhcdGhaX
 nz0BmaBxHtL744e3M2mIiTy4STUvryc8SzUDiYE3hae4asXlKgq9HfyxOREC2bAY3Jjp
 m/+7JqGkT95RmbvUc+P2G5EBSOXleK2rhNGHlxtFe5zNtSuKnXDKsnTbrCFoXuSerfm7
 S+MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kz+9zOW0wyQSZRd/JBrHskK3qA1pb0xtBKwU/DLH+ig=;
 b=ocBpOnnPtU1OcYl8SKZ6rqvHxM9WW4d6t2B5iJammAlN5kjkkIZtea+ynhzVJ4w++Q
 ttrO26faW2bvNQaOhxZm2enrjapS5vCbcMK+Wjlfnv5Sq7ZpGqfYLH5uqlz3zDjshlA3
 gAItislux/ONh6YyNdYCa1z/OG3xao++RK7HgqUU7Mn0d9L8alPbOml3ILsiyMpI2buN
 rmAvc9E4ftDFeYy4Y3TGSkPy4X0uBtCGhf1kno8UKGavUsLGjnmY2q8L0Vh+qdckXNk4
 OeXjvFHqs+eWO6STT9ctYXt8zEQq/9Ff6VaCLBgQNZqMGx8rvD1D00QKj4pWJfuWqLUb
 e2nw==
X-Gm-Message-State: APjAAAUN+PvOcdk7/CQdp/uKDSgQBhXmVcz5rhLLCXzQpp+m+2vN7X9L
 onk+QF3Wpkq0o4HDOotl24ayckmTpzoZYONtFTA=
X-Google-Smtp-Source: APXvYqwKf5pL/iFUn7NBNyhieLaTrpWjs0YyKF18I4f3TLzxJcXF92K8ULUkW/57t1g5/m/MH4VMgorV2yNG8cx4eJk=
X-Received: by 2002:a05:6830:2010:: with SMTP id
 e16mr972947otp.344.1562117495945; 
 Tue, 02 Jul 2019 18:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190702152034.22412-1-ap420073@gmail.com>
 <20190703010856.GA11901@nataraja>
In-Reply-To: <20190703010856.GA11901@nataraja>
From: Taehee Yoo <ap420073@gmail.com>
Date: Wed, 3 Jul 2019 10:31:25 +0900
Message-ID: <CAMArcTVkO=axymtvyRBg8RTq4YLrhcg-1x2HaK9URywjbiLnXw@mail.gmail.com>
Subject: Re: [PATCH net 0/6] gtp: fix several bugs
To: Harald Welte <laforge@gnumonks.org>
Content-Type: text/plain; charset="UTF-8"
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
Cc: osmocom-net-gprs@lists.osmocom.org, Netdev <netdev@vger.kernel.org>,
 Pau Espin <pespin@sysmocom.de>, David Miller <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi Harald,

On Wed, 3 Jul 2019 at 09:10, Harald Welte <laforge@gnumonks.org> wrote:
>
> Hi Taehee,
>
> On Wed, Jul 03, 2019 at 12:20:34AM +0900, Taehee Yoo wrote:
> > This patch series fixes several bugs in the gtp module.
>
> thanks a lot for your patches, they are much appreciated.
>
> They look valid to me after a brief initial review.
>
> However, I'm currently on holidays and don't have the ability to test
> any patches until my return on July 17.  Maybe Pablo and/or Pau can have
> a look meanwhile?  Thanks in advance.
>

Thank you for letting me know.

Thanks a lot!

> Regards,
>         Harald
> --
> - Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
> ============================================================================
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch. A6)
