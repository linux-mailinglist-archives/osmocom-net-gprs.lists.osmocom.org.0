Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 00725853A6B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:58:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E128B426F2;
	Tue, 13 Feb 2024 18:58:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yp7EwcWl_mJz; Tue, 13 Feb 2024 18:58:09 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 9CC74426DE;
	Tue, 13 Feb 2024 18:58:07 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D55DB38A0F10
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  9 Feb 2024 18:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B24843E542
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  9 Feb 2024 18:16:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B-lMoOxeB-yX for <osmocom-net-gprs@lists.osmocom.org>;
 Fri,  9 Feb 2024 18:16:09 +0000 (UTC)
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	by mail.osmocom.org (Postfix) with ESMTPS id 37B193E53D
	for <osmocom-net-gprs@lists.osmocom.org>; Fri,  9 Feb 2024 18:16:08 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
	id 23B782F2024D; Fri,  9 Feb 2024 18:16:08 +0000 (UTC)
Received: from [192.168.0.102] (unknown [178.76.204.78])
	by air.basealt.ru (Postfix) with ESMTPSA id 1328C2F2024B;
	Fri,  9 Feb 2024 18:16:01 +0000 (UTC)
Message-ID: <d602ebc3-f0e7-171c-7d76-e2f9bb4c2db6@basealt.ru>
Date: Fri, 9 Feb 2024 21:16:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in
 gtp_genl_dump_pdp()
Content-Language: en-US
To: Eric Dumazet <edumazet@google.com>
References: <20240124101404.161655-1-kovalev@altlinux.org>
 <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
 <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
 <CANn89iKb+NQPOuZ9wdovQYVOwC=1fUMMdWd5VrEU=EsxTH7nFg@mail.gmail.com>
From: kovalev@altlinux.org
In-Reply-To: <CANn89iKb+NQPOuZ9wdovQYVOwC=1fUMMdWd5VrEU=EsxTH7nFg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MailFrom: kovalev@altlinux.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UTYYZBBYRVHUCGPXCB76NO36DA7EGKOK
X-Message-ID-Hash: UTYYZBBYRVHUCGPXCB76NO36DA7EGKOK
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:58:04 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/UTYYZBBYRVHUCGPXCB76NO36DA7EGKOK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

24.01.2024 14:52, Eric Dumazet wrote:
> On Wed, Jan 24, 2024 at 12:20=E2=80=AFPM <kovalev@altlinux.org> wrote:
>> 24.01.2024 13:57, Eric Dumazet wrote:
>>> Oh wait, this is a 5.10 kernel ?
>> Yes, but the bug is reproduced on the latest stable kernels.
>>> Please generate a stack trace using a recent tree, it is possible the
>>> bug has been fixed already.
>> See [PATCH 0/1] above, there's a stack for the 6.6.13 kernel at the
>> bottom of the message.
> Ah, ok. Not sure why you sent a cover letter for a single patch...
>
> Setting a boolean, in a module that can disappear will not prevent the
> module from disappearing.
>
> This work around might work, or might not work, depending on timing,
> preemptions, ....
>
> Thanks.

I tested running the reproducer [1] on the 6.8-rc3 kernel, the crash=20
occurs in less than 10 seconds and the qemu VM restarts:

dmesg -w:

[=C2=A0 106.941736] gtp: GTP module unloaded
[=C2=A0 106.962548] gtp: GTP module loaded (pdp ctx size 104 bytes)
[=C2=A0 107.014691] gtp: GTP module unloaded
[=C2=A0 107.041554] gtp: GTP module loaded (pdp ctx size 104 bytes)
[=C2=A0 107.082283] gtp: GTP module unloaded
[=C2=A0 107.123268] general protection fault, probably for non-canonical=20
address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN NOPTI
[=C2=A0 107.124050] KASAN: null-ptr-deref in range=20
[0x0000000000000010-0x0000000000000017]
[=C2=A0 107.124339] CPU: 1 PID: 5826 Comm: gtp Not tainted=20
6.8.0-rc3-std-def-alt1 #1
[=C2=A0 107.124604] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), B=
IOS=20
1.16.0-alt1 04/01/2014
[=C2=A0 107.124916] RIP: 0010:gtp_genl_dump_pdp+0x1be/0x800 [gtp]
[=C2=A0 107.125141] Code: c6 89 c6 e8 64 e9 86 df 58 45 85 f6 0f 85 4e 04=
 00=20
00 e8 c5 ee 86 df 48 8b 54 24 18 48 b8 00 00 00 00 00 fc ff df 48 c1 ea=20
03 <80> 3c 02 00 0f 85 de 05 00 00 48 8b 44 24 18 4c 8b 30 4c 39 f0 74
[=C2=A0 107.125960] RSP: 0018:ffff888014107220 EFLAGS: 00010202
[=C2=A0 107.126164] RAX: dffffc0000000000 RBX: 0000000000000000 RCX:=20
0000000000000000
[=C2=A0 107.126434] RDX: 0000000000000002 RSI: 0000000000000000 RDI:=20
0000000000000000
[=C2=A0 107.126707] RBP: 0000000000000000 R08: 0000000000000000 R09:=20
0000000000000000
[=C2=A0 107.126976] R10: 0000000000000000 R11: 0000000000000000 R12:=20
0000000000000000
[=C2=A0 107.127245] R13: ffff88800fcda588 R14: 0000000000000001 R15:=20
0000000000000000
[=C2=A0 107.127515] FS:=C2=A0 00007f1be4eb05c0(0000) GS:ffff88806ce80000(=
0000)=20
knlGS:0000000000000000
[=C2=A0 107.127955] CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 000000008005003=
3
[=C2=A0 107.128177] CR2: 00007f1be4e766cf CR3: 000000000c33e000 CR4:=20
0000000000750ef0
[=C2=A0 107.128450] PKRU: 55555554
[=C2=A0 107.128577] Call Trace:
[=C2=A0 107.128699]=C2=A0 <TASK>
[=C2=A0 107.128790]=C2=A0 ? show_regs+0x90/0xa0
[=C2=A0 107.128935]=C2=A0 ? die_addr+0x50/0xd0
[=C2=A0 107.129075]=C2=A0 ? exc_general_protection+0x148/0x220
[=C2=A0 107.129267]=C2=A0 ? asm_exc_general_protection+0x22/0x30
[=C2=A0 107.129469]=C2=A0 ? gtp_genl_dump_pdp+0x1be/0x800 [gtp]
[=C2=A0 107.129677]=C2=A0 ? __alloc_skb+0x1dd/0x350
[=C2=A0 107.129831]=C2=A0 ? __pfx___alloc_skb+0x10/0x10
[=C2=A0 107.129999]=C2=A0 genl_dumpit+0x11d/0x230
[=C2=A0 107.130150]=C2=A0 netlink_dump+0x5b9/0xce0
[=C2=A0 107.130301]=C2=A0 ? lockdep_hardirqs_on_prepare+0x253/0x430
[=C2=A0 107.130503]=C2=A0 ? __pfx_netlink_dump+0x10/0x10
[=C2=A0 107.130686]=C2=A0 ? kasan_save_track+0x10/0x40
[=C2=A0 107.130849]=C2=A0 ? __kasan_kmalloc+0x9b/0xa0
[=C2=A0 107.131009]=C2=A0 ? genl_start+0x675/0x970
[=C2=A0 107.131162]=C2=A0 __netlink_dump_start+0x6fc/0x9f0
[=C2=A0 107.131341]=C2=A0 genl_family_rcv_msg_dumpit+0x1bb/0x2d0
[=C2=A0 107.131538]=C2=A0 ? __pfx_genl_family_rcv_msg_dumpit+0x10/0x10
[=C2=A0 107.131754]=C2=A0 ? genl_op_from_small+0x2a/0x440
[=C2=A0 107.131972]=C2=A0 ? cap_capable+0x1d0/0x240
[=C2=A0 107.132127]=C2=A0 ? __pfx_genl_start+0x10/0x10
[=C2=A0 107.132292]=C2=A0 ? __pfx_genl_dumpit+0x10/0x10
[=C2=A0 107.132461]=C2=A0 ? __pfx_genl_done+0x10/0x10
[=C2=A0 107.132645]=C2=A0 ? security_capable+0x9d/0xe0

With the proposed patch applied, such a crash is not observed during=20
long-term testing.

[1]=20
https://lore.kernel.org/lkml/20240124101404.161655-1-kovalev@altlinux.org=
/T/#mf9b411baec52858b1c9118c671f26a6dc424e7b4

--=20
Regards,
Vasiliy Kovalev

