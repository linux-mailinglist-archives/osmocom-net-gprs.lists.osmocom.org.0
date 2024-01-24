Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BA848853A65
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 82ED742603;
	Tue, 13 Feb 2024 18:57:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tD-MVxiooExq; Tue, 13 Feb 2024 18:57:52 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3C18D425DA;
	Tue, 13 Feb 2024 18:57:50 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 444C538AB6DF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 204332BD53
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:58:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkYMIyAxv0KC for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 24 Jan 2024 10:58:00 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by mail.osmocom.org (Postfix) with ESMTPS id 4EC422BD4E
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:57:59 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-55c89dbef80so6257a12.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 02:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706093879; x=1706698679; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=095eySjr9UdkzN6h8F///pYrDXdNnhrwqoAvJkhHULs=;
        b=NkfO+/6036684lzAUcZpw9Mqp2KbdGFi0uXp77Y/ggnz3dPZdLZro4J0xe5ZKkJPJp
         hYT+cYW6TKClkza/4P36yhIlmCsGaYJIr+wqPztwrNcskrxh0/J9nN8/xUQKQjVKSUjl
         gvQF3ivO1ceA3eu913Jh6jJz0VSnfn0MHXOj9L4YnlxlNHrDPBIqVwWI20ftHmi6hhmW
         pDEI6Rj4SLEQyQOAvMFuEof0JtQaRzTJ1v3bA4CDYQ4Is/Ery38My9B0d0P6/nrdI++a
         HSpa5aKZbj8QnAMw1agpzF+z/xnkt1RuUh74ajHtO8c+PT3FehHm5NKMbOwZhAEs1lqT
         ExBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706093879; x=1706698679;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=095eySjr9UdkzN6h8F///pYrDXdNnhrwqoAvJkhHULs=;
        b=mIfa9ExbM2LTjMYRtYJNJ86sDowjeT5pJXoyy6nsIG4hAe3jb5G/IpSXbJQ1PcHyAi
         qj+BULzR/mW6Jbf49/5lJE5E6eR7+JEmLeFKC059DFUT1N2Ej63CRZXCmzIC6mGtAUbM
         RNfitbrEytljXsFemGZxUeSqJXWOeX1febjGoUBfEFgGs4AVNPHNY2wFxob0yjx1+h3Z
         QJJEX7VRtDsgpnODj7P9kpionWmo8BkZhA0DDbkNZVchnbhnSqC4nojMIrls7dcOB7wA
         q7JdFRKB+Uh6RPEs+Ja7HsbXDZQFGpYaPvdv10OJhkSpD/Ulz03TB7vqs0IBop1pdXta
         klFQ==
X-Gm-Message-State: AOJu0YyrKqSs/xls7e83xQmeqztxkQnjfPqM2fmpiB5DJGCW/OIH/bds
	o9MSvLXvvKjABX2+NvUUoQZ4VIoYQOHxf+nUkzHrbL0ZKF4LN8W9TH87tzaEVQVDQuC/9bJiOUB
	xfwPFKoQdODztA2fAHz9xRfPv0VTbju9XevTc
X-Google-Smtp-Source: AGHT+IEyJLEJeXzrz7WWPOPz319HwrQPvPDFw7AtqAnVFipnMCWC8jtIyoIoTMP7JJeoV+a2BjBgXMK8TZV1bSra9MA=
X-Received: by 2002:a05:6402:1d84:b0:55a:4959:4978 with SMTP id
 dk4-20020a0564021d8400b0055a49594978mr44083edb.7.1706093878885; Wed, 24 Jan
 2024 02:57:58 -0800 (PST)
MIME-Version: 1.0
References: <20240124101404.161655-1-kovalev@altlinux.org> <20240124101404.161655-2-kovalev@altlinux.org>
In-Reply-To: <20240124101404.161655-2-kovalev@altlinux.org>
From: Eric Dumazet <edumazet@google.com>
Date: Wed, 24 Jan 2024 11:57:47 +0100
Message-ID: <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
To: kovalev@altlinux.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: O4JAJYLINWUCEHETQYLF62DK7ZWBE3VJ
X-Message-ID-Hash: O4JAJYLINWUCEHETQYLF62DK7ZWBE3VJ
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/O4JAJYLINWUCEHETQYLF62DK7ZWBE3VJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, Jan 24, 2024 at 11:14=E2=80=AFAM <kovalev@altlinux.org> wrote:
>
> From: Vasiliy Kovalev <kovalev@altlinux.org>
>
> After unloading the module, an instance continues to exist that accesses
> outdated memory addresses.
>
> To prevent this, the dump_pdp_en flag has been added, which blocks the
> dump of pdp contexts by a false value. And only after these checks can
> the net_generic() function be called.
>
> These errors were found using the syzkaller program:
>
> Syzkaller hit 'general protection fault in gtp_genl_dump_pdp' bug.
> gtp: GTP module loaded (pdp ctx size 104 bytes)
> gtp: GTP module unloaded
> general protection fault, probably for non-canonical address
> 0xdffffc0000000001:0000 [#1] SMP KASAN NOPTI
> KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
> CPU: 0 PID: 2782 Comm: syz-executor139 Not tainted 5.10.200-std-def-alt1 =
#1

Oh wait, this is a 5.10 kernel ?

Please generate a stack trace using a recent tree, it is possible the
bug has been fixed already.
