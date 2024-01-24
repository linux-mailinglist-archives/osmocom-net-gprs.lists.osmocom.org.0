Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BB81C853A66
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 52BAB4261A;
	Tue, 13 Feb 2024 18:57:53 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e6kq87xHQJUS; Tue, 13 Feb 2024 18:57:53 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 16754425DE;
	Tue, 13 Feb 2024 18:57:51 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 18C0038AB6DF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 11:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CD15C2BDA0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 11:20:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ctrJMdNz9aQN for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 24 Jan 2024 11:20:07 +0000 (UTC)
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	by mail.osmocom.org (Postfix) with ESMTPS id 0D2E62BD9B
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 11:20:06 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
	id 733622F20242; Wed, 24 Jan 2024 11:20:06 +0000 (UTC)
Received: from [10.88.144.178] (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id 94C0B2F20236;
	Wed, 24 Jan 2024 11:20:04 +0000 (UTC)
Message-ID: <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
Date: Wed, 24 Jan 2024 14:20:04 +0300
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
From: kovalev@altlinux.org
In-Reply-To: <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: kovalev@altlinux.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2WEQB6QCJKGXPNHJGSJMQJFCLWTHE344
X-Message-ID-Hash: 2WEQB6QCJKGXPNHJGSJMQJFCLWTHE344
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org, kovalev@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2WEQB6QCJKGXPNHJGSJMQJFCLWTHE344/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

24.01.2024 13:57, Eric Dumazet wrote:
> Oh wait, this is a 5.10 kernel ?
Yes, but the bug is reproduced on the latest stable kernels.
> Please generate a stack trace using a recent tree, it is possible the
> bug has been fixed already.

See [PATCH 0/1] above, there's a stack for the 6.6.13 kernel at the 
bottom of the message.

[  523.915255] Call Trace:
[  523.915255]  <TASK>
[  523.915255]  ? __die+0x1f/0x70
[  523.915255]  ? page_fault_oops+0x14d/0x4a0
[  523.915255]  ? exc_page_fault+0x7b/0x180
[  523.915255]  ? asm_exc_page_fault+0x22/0x30
[  523.915255]  ? gtp_genl_dump_pdp+0x82/0x190 [gtp]
[  523.915255]  ? gtp_genl_dump_pdp+0x82/0x190 [gtp]
[  523.915255]  genl_dumpit+0x2f/0x90
[  523.915255]  netlink_dump+0x126/0x320
[  523.915255]  __netlink_dump_start+0x1da/0x2a0
[  523.915255]  genl_family_rcv_msg_dumpit+0x93/0x100
[  523.915255]  ? __pfx_genl_start+0x10/0x10
[  523.915255]  ? __pfx_genl_dumpit+0x10/0x10
[  523.915255]  ? __pfx_genl_done+0x10/0x10
[  523.915255]  genl_rcv_msg+0x112/0x2a0
[  523.915255]  ? __pfx_gtp_genl_dump_pdp+0x10/0x10 [gtp]
[  523.915255]  ? __pfx_genl_rcv_msg+0x10/0x10
[  523.915255]  netlink_rcv_skb+0x54/0x110
[  523.915255]  genl_rcv+0x24/0x40
[  523.915255]  netlink_unicast+0x19f/0x290
[  523.915255]  netlink_sendmsg+0x250/0x4e0
[  523.915255]  ____sys_sendmsg+0x376/0x3b0
[  523.915255]  ? copy_msghdr_from_user+0x6d/0xb0
[  523.915255]  ___sys_sendmsg+0x86/0xe0
[  523.915255]  ? do_fault+0x296/0x470
[  523.915255]  ? __handle_mm_fault+0x771/0xda0
[  523.915255]  __sys_sendmsg+0x57/0xb0
[  523.915255]  do_syscall_64+0x59/0x90
[  523.915255]  ? ct_kernel_exit.isra.0+0x71/0x90
[  523.915255]  ? __ct_user_enter+0x5a/0xd0
[  523.915255]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
[  523.915255] RIP: 0033:0x7f2bcb93cd49

-- 
Regards,
Vasiliy Kovalev

