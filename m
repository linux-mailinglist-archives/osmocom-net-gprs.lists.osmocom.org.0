Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A41853A68
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0F30342649;
	Tue, 13 Feb 2024 18:57:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yawnKxe-dHhS; Tue, 13 Feb 2024 18:57:54 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B858B42609;
	Tue, 13 Feb 2024 18:57:52 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5FC8538A0F0B
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Jan 2024 12:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3975B31367
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Jan 2024 12:02:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dUO836A9sBL6 for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 29 Jan 2024 12:02:45 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 8377E31364
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Jan 2024 12:02:44 +0000 (UTC)
Received: from [78.30.41.52] (port=53984 helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <pablo@gnumonks.org>)
	id 1rUQLY-00DalQ-0n; Mon, 29 Jan 2024 13:02:42 +0100
Date: Mon, 29 Jan 2024 13:02:39 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: kovalev@altlinux.org
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in
 gtp_genl_dump_pdp()
Message-ID: <ZbeT31rUh0h3CctO@calendula>
References: <20240124101404.161655-1-kovalev@altlinux.org>
 <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
 <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
X-MailFrom: pablo@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: PO7VLTOU243KM27BEIV56P2MP6U3RNIS
X-Message-ID-Hash: PO7VLTOU243KM27BEIV56P2MP6U3RNIS
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: Eric Dumazet <edumazet@google.com>, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PO7VLTOU243KM27BEIV56P2MP6U3RNIS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

On Wed, Jan 24, 2024 at 02:20:04PM +0300, kovalev@altlinux.org wrote:
> 24.01.2024 13:57, Eric Dumazet wrote:
> > Oh wait, this is a 5.10 kernel ?
>
> Yes, but the bug is reproduced on the latest stable kernels.
>
> > Please generate a stack trace using a recent tree, it is possible the
> > bug has been fixed already.

__netlink_dump_start() is called at the beginning of the dump, which is
grabbing a reference on this module.

do you have a reproducer?

> See [PATCH 0/1] above, there's a stack for the 6.6.13 kernel at the bottom
> of the message.
> 
> [  523.915255] Call Trace:
> [  523.915255]  <TASK>
> [  523.915255]  ? __die+0x1f/0x70
> [  523.915255]  ? page_fault_oops+0x14d/0x4a0
> [  523.915255]  ? exc_page_fault+0x7b/0x180
> [  523.915255]  ? asm_exc_page_fault+0x22/0x30
> [  523.915255]  ? gtp_genl_dump_pdp+0x82/0x190 [gtp]
> [  523.915255]  ? gtp_genl_dump_pdp+0x82/0x190 [gtp]
> [  523.915255]  genl_dumpit+0x2f/0x90
> [  523.915255]  netlink_dump+0x126/0x320
> [  523.915255]  __netlink_dump_start+0x1da/0x2a0
> [  523.915255]  genl_family_rcv_msg_dumpit+0x93/0x100
> [  523.915255]  ? __pfx_genl_start+0x10/0x10
> [  523.915255]  ? __pfx_genl_dumpit+0x10/0x10
> [  523.915255]  ? __pfx_genl_done+0x10/0x10
> [  523.915255]  genl_rcv_msg+0x112/0x2a0
> [  523.915255]  ? __pfx_gtp_genl_dump_pdp+0x10/0x10 [gtp]
> [  523.915255]  ? __pfx_genl_rcv_msg+0x10/0x10
> [  523.915255]  netlink_rcv_skb+0x54/0x110
> [  523.915255]  genl_rcv+0x24/0x40
> [  523.915255]  netlink_unicast+0x19f/0x290
> [  523.915255]  netlink_sendmsg+0x250/0x4e0
> [  523.915255]  ____sys_sendmsg+0x376/0x3b0
> [  523.915255]  ? copy_msghdr_from_user+0x6d/0xb0
> [  523.915255]  ___sys_sendmsg+0x86/0xe0
> [  523.915255]  ? do_fault+0x296/0x470
> [  523.915255]  ? __handle_mm_fault+0x771/0xda0
> [  523.915255]  __sys_sendmsg+0x57/0xb0
> [  523.915255]  do_syscall_64+0x59/0x90
> [  523.915255]  ? ct_kernel_exit.isra.0+0x71/0x90
> [  523.915255]  ? __ct_user_enter+0x5a/0xd0
> [  523.915255]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
> [  523.915255] RIP: 0033:0x7f2bcb93cd49
> 
> -- 
> Regards,
> Vasiliy Kovalev
> 
