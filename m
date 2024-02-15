Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E740857A8D
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Feb 2024 11:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5998E44E3E;
	Fri, 16 Feb 2024 10:44:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKFGbWX_Qpba; Fri, 16 Feb 2024 10:44:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B627044E31;
	Fri, 16 Feb 2024 10:44:06 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8EA9238A0FAC
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 15 Feb 2024 20:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 541C544839
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 15 Feb 2024 20:32:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nR-nYZ4P2crn for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 15 Feb 2024 20:32:57 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by mail.osmocom.org (Postfix) with ESMTPS id 76BDD44834
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 15 Feb 2024 20:32:57 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-561f0f116ecso2547a12.0
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 15 Feb 2024 12:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708029176; x=1708633976; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=laSyg7YQPz643rzuuYEwb1CY2iHDVt99rko3X2hSnfw=;
        b=jt9kvEtjVFgiKaFhaShdq06kzVSEhQCa1p7c4chpVXUr2T1Kga7JhkShQodPsO8qz4
         XvlbYIafrdvoEO7KKrCYhZQBQt8LGjUHQBjGQndKKlQjlA54HnDfK5OxNesyx1eewy7R
         rpuI0Dwg/Cqeb+APE/Z5foAlxF2+aJtjaLmVIPfGr73QW56+DWFyNu9xr5sKlCZrwRv0
         ilow85vUPxyxPuSwRL9VLSNjI1Q8OyNzv06FZqTcQoKgSeewa6g5euxgmwntz9pyfBPV
         iPhdyio/ehtBPRCqLcg+355mTWmisR+49kg2P60fe67nZ9RVg181P//mAwDDzyu9Dbkt
         W0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708029176; x=1708633976;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=laSyg7YQPz643rzuuYEwb1CY2iHDVt99rko3X2hSnfw=;
        b=Fn4/suTgoUuQJKVBIZYTV8JfJ3rYrI8KWOR41NNIhJDYqYnp3TR8iylC58np0KU1Yo
         LQfPG6TGaoKqZFOQas2rMcmk9UJXjbWZF6rg7s0rApQHSzZ6+5JL2Rz7gypfNR7sMj+v
         RmnxeusRFDxKwRY2T3V3fxLSo2NHn9xMvmoxgFhXDRGlOqjF2Ld2GOmhHNaCdjVuLJpo
         Lyf1+kss9/vSqN5Ss6q6OusETH69j4fDwMutoYRiW0unF8awsU2fOqA1+vO5CfilRNUI
         t4Z3R243Y6TDVD5X26viP6CG0yLPY7JbwL/i4UlMt9lYVH+krEq9a7Kcf4O66QGXRsha
         ly3g==
X-Forwarded-Encrypted: i=1; AJvYcCVYw1PAEjgA7QyJ1v4Pry1ayo6FZoOQwniO/hGE54b+f2lGMCAhYupQ/FzcUwZSGmje5wOjR8jFthZeTtVLkyNfJFhVqyNfeIMTI1ohi+vZZlg1
X-Gm-Message-State: AOJu0YyWU7aCfO4UjzHRv7ye67LxyPFEsP2l0N5alR8fHuDFaXSNww+O
	oG4yEDzQSxZaxilwok31P319j0YJIq0vtYpM6H40jQV+MjcV79PHqa2g/pfIvEoLFHYNTb/vtwM
	/Eib6EXeIsxB6MXiku0oecvaJJWRQqnZOBsxX
X-Google-Smtp-Source: AGHT+IEchM9k5jNArbj5+35xIQAzhyJ/jP6cl9FmgZLvIfjEnm9gulJ+kijAQ6eqYDiIJUnuCe8d9j548sUG4qfxPWI=
X-Received: by 2002:a50:cd8c:0:b0:561:a93:49af with SMTP id
 p12-20020a50cd8c000000b005610a9349afmr44357edi.7.1708029176383; Thu, 15 Feb
 2024 12:32:56 -0800 (PST)
MIME-Version: 1.0
References: <20240124101404.161655-1-kovalev@altlinux.org> <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
 <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru> <CANn89iKb+NQPOuZ9wdovQYVOwC=1fUMMdWd5VrEU=EsxTH7nFg@mail.gmail.com>
 <d602ebc3-f0e7-171c-7d76-e2f9bb4c2db6@basealt.ru> <CANn89iJ4hVyRHiZXWTiW9ftyN8PFDaWiZnzE7GVAzu1dT78Daw@mail.gmail.com>
 <6cbbecf1-eba1-f3e1-259a-24df71f44785@basealt.ru>
In-Reply-To: <6cbbecf1-eba1-f3e1-259a-24df71f44785@basealt.ru>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 15 Feb 2024 21:32:42 +0100
Message-ID: <CANn89i+mSOtzxOfY=FLhQAj2bZ+a-9KdzivGhBx8_V9YwaAeOw@mail.gmail.com>
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
To: kovalev@altlinux.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KMI6KI3CD4L52FYC6PET3BIVZG6EYWPO
X-Message-ID-Hash: KMI6KI3CD4L52FYC6PET3BIVZG6EYWPO
X-Mailman-Approved-At: Fri, 16 Feb 2024 10:44:05 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/KMI6KI3CD4L52FYC6PET3BIVZG6EYWPO/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, Feb 14, 2024 at 5:50=E2=80=AFPM <kovalev@altlinux.org> wrote:
>
> 09.02.2024 22:21, Eric Dumazet wrote:
>
> > Maybe, but the patch is not good, I think I and Pablo gave feedback on =
this ?
> >
> > Please trace __netlink_dump_start() content of control->module
> >
> > gtp_genl_family.module should be set, and we should get it.
> >
> > Otherwise, if the bug is in the core, we would need a dozen of 'work
> > arounds because it is better than nothing'
> >
> > Thank you.
>
> Thanks.
>
> I tracked the moment when the __netlink_dump_start() function was
> called, it turned out that in the gtp_init() initialization function
> before registering pernet subsystem (gtp_net_ops), therefore, outdated
> data is used, which leads to a crash.
>
> The documentation says that ops structure must be assigned before
> registering a generic netlink family [1].
>
> I have fixed and sent a new patch [2].
>
> [1]
> https://elixir.bootlin.com/linux/v6.8-rc4/source/net/netlink/genetlink.c#=
L773
>
> [2]
> https://lore.kernel.org/netdev/20240214162733.34214-1-kovalev@altlinux.or=
g/T/#u
>

Excellent detective work, thanks a lot !
