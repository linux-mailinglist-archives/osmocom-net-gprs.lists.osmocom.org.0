Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC4C853A6C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:58:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 979AA42703;
	Tue, 13 Feb 2024 18:58:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0F6JNur_ooQZ; Tue, 13 Feb 2024 18:58:10 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6F5CE426E4;
	Tue, 13 Feb 2024 18:58:08 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7698038AB811
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  9 Feb 2024 19:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 50BF93E583
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  9 Feb 2024 19:21:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d_mIiZZE69I9 for <osmocom-net-gprs@lists.osmocom.org>;
 Fri,  9 Feb 2024 19:21:18 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by mail.osmocom.org (Postfix) with ESMTPS id 893D13E57A
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  9 Feb 2024 19:21:17 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-56037115bb8so31423a12.0
        for <osmocom-net-gprs@lists.osmocom.org>; Fri, 09 Feb 2024 11:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707506477; x=1708111277; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJg4bfYXPwPiy0JMSmR/4Rr2jZhjgTgFupJ/GtQoC/8=;
        b=PDVRxKj7Cl1vDUgzm0rJOgTQCf+hAVHOb6SDR7lEnOADRm8DMIx0kAJs1a76Q5ltnN
         nvBQRm6KirLrhPs8m/0Xvk5cRTmSWBHLhWDovW8ccBkX4TDqXYXRoBaoVTg0/Ozto3Tj
         j+H2D0hqamen6F1cVD46d6qUB5mIzi03Mlm1QrcP3+tfMYIZkQxv+lsiBItpdpkLW/Az
         PQr9PngrqtloJLPZk/8XgRbhqDD27lfzNfljcuG0R8qfxfNi2FWWUFX0i/0KxtRi5Zgv
         5+as0AkD9DX/0GNoqfuX+E2Ahc/YwvdmnOjR6f1g+l+/Q1wRGnkL6sWLSS9XXRv56U5A
         EjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707506477; x=1708111277;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJg4bfYXPwPiy0JMSmR/4Rr2jZhjgTgFupJ/GtQoC/8=;
        b=tcUJcbvIIYf8xHQ8OBfshN1s7A7yDbGs1TvVxZIldYAhtmM+632fZA/gjWqx1vffEW
         JiYckf6TvPVgIL525yNKZXoYISvE1QGrn5ytpFBf7SvvF8FMtwZ+sgABpIWKY7jgU8Qz
         L7FwszQIUEPi6IpIMpKc8hxRwqvxecE/yslbOttbrNOQhfqcptrcabipC6s9ZQ1020ft
         mCa38erYXC+0Vv8Nc95XhquvqZnmt4Gi1OpVk0BFMGSw3DjbeYqN+MDOWAsjtnQRJt33
         /iQ/23Q5Ovx8ZJ9V4GmLVV7yDkQ9d+qrerFHbRl8W/Fuq6uBOLuG2kC8NQca1j4e0jrb
         hRAg==
X-Gm-Message-State: AOJu0Yz4tNZeX1lrEorCckeo+sNQ6qeFp8xWZFRcOPDohk9StRRiseFk
	ERw8GgHMgwpYi2tRz1OBpjOrC269ZrPcPNGaXIM6axDAFt9d2TU2r0cJuv/N2TLon7dVoLkjnuB
	pl86sDtjGWd5YOU71/WcRWOuyOFKahhvRcgC2
X-Google-Smtp-Source: AGHT+IG2kLziXtT/fk8qRx78CTjdcYczJaScUJk2tdb/AFoc/wMV/qamdUzmXKVQr5Y1iRQN8ZDUfXbgw3AE34wXsro=
X-Received: by 2002:a50:bb0d:0:b0:560:f37e:2d5d with SMTP id
 y13-20020a50bb0d000000b00560f37e2d5dmr212187ede.5.1707506476110; Fri, 09 Feb
 2024 11:21:16 -0800 (PST)
MIME-Version: 1.0
References: <20240124101404.161655-1-kovalev@altlinux.org> <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
 <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru> <CANn89iKb+NQPOuZ9wdovQYVOwC=1fUMMdWd5VrEU=EsxTH7nFg@mail.gmail.com>
 <d602ebc3-f0e7-171c-7d76-e2f9bb4c2db6@basealt.ru>
In-Reply-To: <d602ebc3-f0e7-171c-7d76-e2f9bb4c2db6@basealt.ru>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 9 Feb 2024 20:21:02 +0100
Message-ID: <CANn89iJ4hVyRHiZXWTiW9ftyN8PFDaWiZnzE7GVAzu1dT78Daw@mail.gmail.com>
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
To: kovalev@altlinux.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 74TNGBYR23WGIQ5OPO3GJLRPELGL3HVA
X-Message-ID-Hash: 74TNGBYR23WGIQ5OPO3GJLRPELGL3HVA
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:58:05 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/74TNGBYR23WGIQ5OPO3GJLRPELGL3HVA/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Fri, Feb 9, 2024 at 7:16=E2=80=AFPM <kovalev@altlinux.org> wrote:
>
> Hi,
>
> 24.01.2024 14:52, Eric Dumazet wrote:
> > On Wed, Jan 24, 2024 at 12:20=E2=80=AFPM <kovalev@altlinux.org> wrote:
> >> 24.01.2024 13:57, Eric Dumazet wrote:
> >>> Oh wait, this is a 5.10 kernel ?
> >> Yes, but the bug is reproduced on the latest stable kernels.
> >>> Please generate a stack trace using a recent tree, it is possible the
> >>> bug has been fixed already.
> >> See [PATCH 0/1] above, there's a stack for the 6.6.13 kernel at the
> >> bottom of the message.
> > Ah, ok. Not sure why you sent a cover letter for a single patch...
> >
> > Setting a boolean, in a module that can disappear will not prevent the
> > module from disappearing.
> >
> > This work around might work, or might not work, depending on timing,
> > preemptions, ....
> >
> > Thanks.
>
> I tested running the reproducer [1] on the 6.8-rc3 kernel, the crash
> occurs in less than 10 seconds and the qemu VM restarts:
>
> dmesg -w:
>
> [  106.941736] gtp: GTP module unloaded
> [  106.962548] gtp: GTP module loaded (pdp ctx size 104 bytes)
> [  107.014691] gtp: GTP module unloaded
> [  107.041554] gtp: GTP module loaded (pdp ctx size 104 bytes)
> [  107.082283] gtp: GTP module unloaded
> [  107.123268] general protection fault, probably for non-canonical
> address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN NOPTI
> [  107.124050] KASAN: null-ptr-deref in range
> [0x0000000000000010-0x0000000000000017]
> [  107.124339] CPU: 1 PID: 5826 Comm: gtp Not tainted
> 6.8.0-rc3-std-def-alt1 #1
> [  107.124604] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS
> 1.16.0-alt1 04/01/2014
> [  107.124916] RIP: 0010:gtp_genl_dump_pdp+0x1be/0x800 [gtp]
> [  107.125141] Code: c6 89 c6 e8 64 e9 86 df 58 45 85 f6 0f 85 4e 04 00
> 00 e8 c5 ee 86 df 48 8b 54 24 18 48 b8 00 00 00 00 00 fc ff df 48 c1 ea
> 03 <80> 3c 02 00 0f 85 de 05 00 00 48 8b 44 24 18 4c 8b 30 4c 39 f0 74
> [  107.125960] RSP: 0018:ffff888014107220 EFLAGS: 00010202
> [  107.126164] RAX: dffffc0000000000 RBX: 0000000000000000 RCX:
> 0000000000000000
> [  107.126434] RDX: 0000000000000002 RSI: 0000000000000000 RDI:
> 0000000000000000
> [  107.126707] RBP: 0000000000000000 R08: 0000000000000000 R09:
> 0000000000000000
> [  107.126976] R10: 0000000000000000 R11: 0000000000000000 R12:
> 0000000000000000
> [  107.127245] R13: ffff88800fcda588 R14: 0000000000000001 R15:
> 0000000000000000
> [  107.127515] FS:  00007f1be4eb05c0(0000) GS:ffff88806ce80000(0000)
> knlGS:0000000000000000
> [  107.127955] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  107.128177] CR2: 00007f1be4e766cf CR3: 000000000c33e000 CR4:
> 0000000000750ef0
> [  107.128450] PKRU: 55555554
> [  107.128577] Call Trace:
> [  107.128699]  <TASK>
> [  107.128790]  ? show_regs+0x90/0xa0
> [  107.128935]  ? die_addr+0x50/0xd0
> [  107.129075]  ? exc_general_protection+0x148/0x220
> [  107.129267]  ? asm_exc_general_protection+0x22/0x30
> [  107.129469]  ? gtp_genl_dump_pdp+0x1be/0x800 [gtp]
> [  107.129677]  ? __alloc_skb+0x1dd/0x350
> [  107.129831]  ? __pfx___alloc_skb+0x10/0x10
> [  107.129999]  genl_dumpit+0x11d/0x230
> [  107.130150]  netlink_dump+0x5b9/0xce0
> [  107.130301]  ? lockdep_hardirqs_on_prepare+0x253/0x430
> [  107.130503]  ? __pfx_netlink_dump+0x10/0x10
> [  107.130686]  ? kasan_save_track+0x10/0x40
> [  107.130849]  ? __kasan_kmalloc+0x9b/0xa0
> [  107.131009]  ? genl_start+0x675/0x970
> [  107.131162]  __netlink_dump_start+0x6fc/0x9f0
> [  107.131341]  genl_family_rcv_msg_dumpit+0x1bb/0x2d0
> [  107.131538]  ? __pfx_genl_family_rcv_msg_dumpit+0x10/0x10
> [  107.131754]  ? genl_op_from_small+0x2a/0x440
> [  107.131972]  ? cap_capable+0x1d0/0x240
> [  107.132127]  ? __pfx_genl_start+0x10/0x10
> [  107.132292]  ? __pfx_genl_dumpit+0x10/0x10
> [  107.132461]  ? __pfx_genl_done+0x10/0x10
> [  107.132645]  ? security_capable+0x9d/0xe0
>
> With the proposed patch applied, such a crash is not observed during
> long-term testing.

Maybe, but the patch is not good, I think I and Pablo gave feedback on this=
 ?

Please trace __netlink_dump_start() content of control->module

gtp_genl_family.module should be set, and we should get it.

Otherwise, if the bug is in the core, we would need a dozen of 'work
arounds because it is better than nothing'

Thank you.
