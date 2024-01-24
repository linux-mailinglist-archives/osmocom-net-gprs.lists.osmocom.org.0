Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 02799853A67
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CA17A42629;
	Tue, 13 Feb 2024 18:57:53 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VMoI2TO8ZVpD; Tue, 13 Feb 2024 18:57:53 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DE53F425ED;
	Tue, 13 Feb 2024 18:57:51 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id DC2C638AB6DF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 11:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B48B52BDCC
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 11:52:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2iEmBZPOZ2Aa for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 24 Jan 2024 11:52:20 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by mail.osmocom.org (Postfix) with ESMTPS id F13792BDC7
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 11:52:19 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-55c24a32bf4so11066a12.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 03:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706097139; x=1706701939; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5H0E6j7eGE53aTaLLK9h7jLJDl/erd4lNXiZJRMz+g=;
        b=P8u6+4Qam8ltoePnoWYslYKbXeArS64LnK152Udh880boQ5fMQz1b5395P85pP1KTQ
         smxClBWD9UTfV3f5RDPW9uO9yD73pdW/HbtbJcKxDW8BR8S4WZ0ryuoaxwwZeG26QHE5
         SfVE87WNbL6783jBt/nRuvHC4kGCFf7zxDIQrOxCDJ7AEUvdtU8i2sd0gZSCYKnPRS5v
         YkUYXq44MatDVjvny7Ja9GGOEN0z6bjvgpaR6z1kh7/lKZKVLgNAZVHbO1g1KDSCuzgp
         qJdPJODIpeQG0VNtv50OqVvYQvVQtAKdF+GtZItacsI9KJQQ5XTQW7drLnP36LMJz5Yi
         Vzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706097139; x=1706701939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a5H0E6j7eGE53aTaLLK9h7jLJDl/erd4lNXiZJRMz+g=;
        b=wYD2zYfXpNhTnP201BJsx/vOucj9ea41MKU+ET/DzRqxRF/mpKLaSG8d2M3FFHl4nA
         Z1zkoJWpiPwyyaJ+B44IbUNnmujh6mD7on/WLUWXYSwjjTiSJ0QS3P9jX4jCmwPh494b
         IXg2sDOr+fZzO2GYjtIzOpBcOrGTu3Wj/RkaDNok9Lh60OLAW/tGl7n2ZK4aAdgOLyck
         RxsS1bfbYbbRi99iLm7d0Xm+qaqEfQwY/xQjbK6MB0jDvs/ee4nXDtVZuxHl1eziq+NI
         pjHpbo0dyI5CrIOjVzH1JTJJk0TRPlUAV46qqpENUTaCW9gEh75BswfSCKq0QXfoAAer
         zu4g==
X-Gm-Message-State: AOJu0YxHnsRnCKLqVCFcsODTdlmnS6r6HVh2CWTU/Xs0x6OuQ9Q4589g
	wgo3LJMOqmD1PuZJ6OQqNz9+Jo+dBTVr3xFv8RW66p9QAXJNHtDm1grKz/2Ougkbfp97isGhgf3
	Be0zqxwbOo1Es14LhZUY5sUkU+pB7oVz8XLt8
X-Google-Smtp-Source: AGHT+IH/GHZq8Aih5T2bhKVnYYebke8oNKPl/T86BTOCByN90Bn9Mikn6W5nbeRbtjUxaevlh+Dm2IHuIzUofLLwBx0=
X-Received: by 2002:a05:6402:368:b0:55c:6a45:d6de with SMTP id
 s8-20020a056402036800b0055c6a45d6demr94542edw.0.1706097138639; Wed, 24 Jan
 2024 03:52:18 -0800 (PST)
MIME-Version: 1.0
References: <20240124101404.161655-1-kovalev@altlinux.org> <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com> <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
In-Reply-To: <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
From: Eric Dumazet <edumazet@google.com>
Date: Wed, 24 Jan 2024 12:52:04 +0100
Message-ID: <CANn89iKb+NQPOuZ9wdovQYVOwC=1fUMMdWd5VrEU=EsxTH7nFg@mail.gmail.com>
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
To: kovalev@altlinux.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NMSTDDXC5DPZMM5YKSDAS2EBXY4ABGA4
X-Message-ID-Hash: NMSTDDXC5DPZMM5YKSDAS2EBXY4ABGA4
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NMSTDDXC5DPZMM5YKSDAS2EBXY4ABGA4/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, Jan 24, 2024 at 12:20=E2=80=AFPM <kovalev@altlinux.org> wrote:
>
> 24.01.2024 13:57, Eric Dumazet wrote:
> > Oh wait, this is a 5.10 kernel ?
> Yes, but the bug is reproduced on the latest stable kernels.
> > Please generate a stack trace using a recent tree, it is possible the
> > bug has been fixed already.
>
> See [PATCH 0/1] above, there's a stack for the 6.6.13 kernel at the
> bottom of the message.

Ah, ok. Not sure why you sent a cover letter for a single patch...

Setting a boolean, in a module that can disappear will not prevent the
module from disappearing.

This work around might work, or might not work, depending on timing,
preemptions, ....

Thanks.
