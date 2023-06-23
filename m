Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id EF230744CF8
	for <lists+osmocom-net-gprs@lfdr.de>; Sun,  2 Jul 2023 11:29:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A153D2878A;
	Sun,  2 Jul 2023 09:29:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYIujwo7rqN3; Sun,  2 Jul 2023 09:29:06 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E4C6D2878B;
	Sun,  2 Jul 2023 09:29:02 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 67E4F38A0FF7
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 23 Jun 2023 09:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E0B84280E9
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 23 Jun 2023 09:48:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zFqVLrEusp-4 for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 23 Jun 2023 09:48:09 +0000 (UTC)
Received: from mail-ej1-x634.google.com (unknown [IPv6:2a00:1450:4864:20::634])
	by mail.osmocom.org (Postfix) with ESMTPS id EB45827F26
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 23 Jun 2023 09:48:08 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-98bcc533490so45730366b.0
        for <osmocom-net-gprs@lists.osmocom.org>; Fri, 23 Jun 2023 02:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687513688; x=1690105688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xvX8E3LbUWmxzPJ5nWpFakhQiLvgFkJ51a8uwH4tDNY=;
        b=NlAkrnNGQg8bl7TCC2bQawpFhEqUWUeVKf4KhkfmQrGoyJyGffcdvH5hAiG045N0xJ
         BnSuwLjIBVF2euKBskxi7DUnfBO36iNDFdZltPlqAlt0F9Wbi4bWKhLM/78mUK37VnrN
         0RJjrKUiRsfGxPseiCOh/BRDKihYp6oH033xJ1WPneT7VZQ4iki7PuUSh1PCB5E8MvcP
         2RVyT1nnbaMR28P+iCTlyfM7atMouUTfgReFj4l43Vv8P062PUPFKSB2O3NhkVwU7R7o
         ch/tQbTF+Faui7QV+qK5aPOeRhB9T1X78IT1msRevIHb9juEEW2df6Z/NJAprRfbIdrS
         p6aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687513688; x=1690105688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xvX8E3LbUWmxzPJ5nWpFakhQiLvgFkJ51a8uwH4tDNY=;
        b=SW78OUU6Doq8iT3uhz7951EAQvGNjQaODh7QHYuJu4ddtPn0KXSM9lVc1CJqcqZfGl
         MOvMKlipp0pFiGQqqgC+MkQB42jqTSwQ70Cq6iuGC7y59YPwp2NuO0EWJtPZNNIiLMUc
         tjabbBdBqoNoYGhwSN7FJqAMRh8rqFFhKiVSA8E1cpWYwnUoqayhpAHSlE4j5zcGrHIA
         I7LTRm8qCwn0fmPrzF+A5prJuFNEtXEMTmGuhj1bPAx/dMvvBhINQvY9ao7CAnmJ6ZQj
         ZFAxGUaTXD3z9nDFhgNI/cuiiO5G9iFuckT5rPGDzTJ9k9bRcsc3n1uxZArMO2rPw1LS
         pT9A==
X-Gm-Message-State: AC+VfDxQMIhrJa+9av8N03bu5NIe3DBkZkB2Slzowy8jEDmWvpGqHI/i
	N6HOQ9c9ty/v9IdZFnxncOuTkQ==
X-Google-Smtp-Source: ACHHUZ4Pg3p3Zhi7IkuDcGLVX4Xba/2U/WgOrG+VCRj8573vr1wPLZE5mnJ+SnjOx9NEOBwbayZyuw==
X-Received: by 2002:a17:907:6d1a:b0:988:6193:29d8 with SMTP id sa26-20020a1709076d1a00b00988619329d8mr13494552ejc.57.1687513688130;
        Fri, 23 Jun 2023 02:48:08 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net. [213.179.129.39])
        by smtp.gmail.com with ESMTPSA id n17-20020a17090625d100b00988c6ac6b86sm5823194ejb.186.2023.06.23.02.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 02:48:07 -0700 (PDT)
Date: Fri, 23 Jun 2023 11:48:06 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Subject: Re: [PATCH v1 net] gtp: Fix use-after-free in __gtp_encap_destroy().
Message-ID: <ZJVqVsUccEABIXSO@nanopsycho>
References: <20230622213231.24651-1-kuniyu@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230622213231.24651-1-kuniyu@amazon.com>
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KPA6R36DEMBFWVL6S3G4E3K7R3N5FOTB
X-Message-ID-Hash: KPA6R36DEMBFWVL6S3G4E3K7R3N5FOTB
X-Mailman-Approved-At: Sun, 02 Jul 2023 09:28:54 +0000
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, Taehee Yoo <ap420073@gmail.com>, Kuniyuki Iwashima <kuni1840@gmail.com>, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, syzkaller <syzkaller@googlegroups.com>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/KPA6R36DEMBFWVL6S3G4E3K7R3N5FOTB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Thu, Jun 22, 2023 at 11:32:31PM CEST, kuniyu@amazon.com wrote:
>syzkaller reported use-after-free in __gtp_encap_destroy(). [0]
>
>It shows the same process freed sk and touched it illegally.
>
>Commit e198987e7dd7 ("gtp: fix suspicious RCU usage") added lock_sock()
>and release_sock() in __gtp_encap_destroy() to protect sk->sk_user_data,
>but release_sock() is called after sock_put() releases the last refcnt.
>
>[0]:
>BUG: KASAN: slab-use-after-free in instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
>BUG: KASAN: slab-use-after-free in atomic_try_cmpxchg_acquire include/linux/atomic/atomic-instrumented.h:541 [inline]
>BUG: KASAN: slab-use-after-free in queued_spin_lock include/asm-generic/qspinlock.h:111 [inline]
>BUG: KASAN: slab-use-after-free in do_raw_spin_lock include/linux/spinlock.h:186 [inline]
>BUG: KASAN: slab-use-after-free in __raw_spin_lock_bh include/linux/spinlock_api_smp.h:127 [inline]
>BUG: KASAN: slab-use-after-free in _raw_spin_lock_bh+0x75/0xe0 kernel/locking/spinlock.c:178
>Write of size 4 at addr ffff88800dbef398 by task syz-executor.2/2401
>
>CPU: 1 PID: 2401 Comm: syz-executor.2 Not tainted 6.4.0-rc5-01219-gfa0e21fa4443 #2
>Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.16.0-0-gd239552ce722-prebuilt.qemu.org 04/01/2014
>Call Trace:
> <TASK>
> __dump_stack lib/dump_stack.c:88 [inline]
> dump_stack_lvl+0x72/0xa0 lib/dump_stack.c:106
> print_address_description mm/kasan/report.c:351 [inline]
> print_report+0xcc/0x620 mm/kasan/report.c:462
> kasan_report+0xb2/0xe0 mm/kasan/report.c:572
> check_region_inline mm/kasan/generic.c:181 [inline]
> kasan_check_range+0x39/0x1c0 mm/kasan/generic.c:187
> instrument_atomic_read_write include/linux/instrumented.h:96 [inline]
> atomic_try_cmpxchg_acquire include/linux/atomic/atomic-instrumented.h:541 [inline]
> queued_spin_lock include/asm-generic/qspinlock.h:111 [inline]
> do_raw_spin_lock include/linux/spinlock.h:186 [inline]
> __raw_spin_lock_bh include/linux/spinlock_api_smp.h:127 [inline]
> _raw_spin_lock_bh+0x75/0xe0 kernel/locking/spinlock.c:178
> spin_lock_bh include/linux/spinlock.h:355 [inline]
> release_sock+0x1f/0x1a0 net/core/sock.c:3526
> gtp_encap_disable_sock drivers/net/gtp.c:651 [inline]
> gtp_encap_disable+0xb9/0x220 drivers/net/gtp.c:664
> gtp_dev_uninit+0x19/0x50 drivers/net/gtp.c:728
> unregister_netdevice_many_notify+0x97e/0x1520 net/core/dev.c:10841
> rtnl_delete_link net/core/rtnetlink.c:3216 [inline]
> rtnl_dellink+0x3c0/0xb30 net/core/rtnetlink.c:3268
> rtnetlink_rcv_msg+0x450/0xb10 net/core/rtnetlink.c:6423
> netlink_rcv_skb+0x15d/0x450 net/netlink/af_netlink.c:2548
> netlink_unicast_kernel net/netlink/af_netlink.c:1339 [inline]
> netlink_unicast+0x700/0x930 net/netlink/af_netlink.c:1365
> netlink_sendmsg+0x91c/0xe30 net/netlink/af_netlink.c:1913
> sock_sendmsg_nosec net/socket.c:724 [inline]
> sock_sendmsg+0x1b7/0x200 net/socket.c:747
> ____sys_sendmsg+0x75a/0x990 net/socket.c:2493
> ___sys_sendmsg+0x11d/0x1c0 net/socket.c:2547
> __sys_sendmsg+0xfe/0x1d0 net/socket.c:2576
> do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> do_syscall_64+0x3f/0x90 arch/x86/entry/common.c:80
> entry_SYSCALL_64_after_hwframe+0x72/0xdc
>RIP: 0033:0x7f1168b1fe5d
>Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 73 9f 1b 00 f7 d8 64 89 01 48
>RSP: 002b:00007f1167edccc8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
>RAX: ffffffffffffffda RBX: 00000000004bbf80 RCX: 00007f1168b1fe5d
>RDX: 0000000000000000 RSI: 00000000200002c0 RDI: 0000000000000003
>RBP: 00000000004bbf80 R08: 0000000000000000 R09: 0000000000000000
>R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
>R13: 000000000000000b R14: 00007f1168b80530 R15: 0000000000000000
> </TASK>
>
>Allocated by task 1483:
> kasan_save_stack+0x22/0x50 mm/kasan/common.c:45
> kasan_set_track+0x25/0x30 mm/kasan/common.c:52
> __kasan_slab_alloc+0x59/0x70 mm/kasan/common.c:328
> kasan_slab_alloc include/linux/kasan.h:186 [inline]
> slab_post_alloc_hook mm/slab.h:711 [inline]
> slab_alloc_node mm/slub.c:3451 [inline]
> slab_alloc mm/slub.c:3459 [inline]
> __kmem_cache_alloc_lru mm/slub.c:3466 [inline]
> kmem_cache_alloc+0x16d/0x340 mm/slub.c:3475
> sk_prot_alloc+0x5f/0x280 net/core/sock.c:2073
> sk_alloc+0x34/0x6c0 net/core/sock.c:2132
> inet6_create net/ipv6/af_inet6.c:192 [inline]
> inet6_create+0x2c7/0xf20 net/ipv6/af_inet6.c:119
> __sock_create+0x2a1/0x530 net/socket.c:1535
> sock_create net/socket.c:1586 [inline]
> __sys_socket_create net/socket.c:1623 [inline]
> __sys_socket_create net/socket.c:1608 [inline]
> __sys_socket+0x137/0x250 net/socket.c:1651
> __do_sys_socket net/socket.c:1664 [inline]
> __se_sys_socket net/socket.c:1662 [inline]
> __x64_sys_socket+0x72/0xb0 net/socket.c:1662
> do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> do_syscall_64+0x3f/0x90 arch/x86/entry/common.c:80
> entry_SYSCALL_64_after_hwframe+0x72/0xdc
>
>Freed by task 2401:
> kasan_save_stack+0x22/0x50 mm/kasan/common.c:45
> kasan_set_track+0x25/0x30 mm/kasan/common.c:52
> kasan_save_free_info+0x2e/0x50 mm/kasan/generic.c:521
> ____kasan_slab_free mm/kasan/common.c:236 [inline]
> ____kasan_slab_free mm/kasan/common.c:200 [inline]
> __kasan_slab_free+0x10c/0x1b0 mm/kasan/common.c:244
> kasan_slab_free include/linux/kasan.h:162 [inline]
> slab_free_hook mm/slub.c:1781 [inline]
> slab_free_freelist_hook mm/slub.c:1807 [inline]
> slab_free mm/slub.c:3786 [inline]
> kmem_cache_free+0xb4/0x490 mm/slub.c:3808
> sk_prot_free net/core/sock.c:2113 [inline]
> __sk_destruct+0x500/0x720 net/core/sock.c:2207
> sk_destruct+0xc1/0xe0 net/core/sock.c:2222
> __sk_free+0xed/0x3d0 net/core/sock.c:2233
> sk_free+0x7c/0xa0 net/core/sock.c:2244
> sock_put include/net/sock.h:1981 [inline]
> __gtp_encap_destroy+0x165/0x1b0 drivers/net/gtp.c:634
> gtp_encap_disable_sock drivers/net/gtp.c:651 [inline]
> gtp_encap_disable+0xb9/0x220 drivers/net/gtp.c:664
> gtp_dev_uninit+0x19/0x50 drivers/net/gtp.c:728
> unregister_netdevice_many_notify+0x97e/0x1520 net/core/dev.c:10841
> rtnl_delete_link net/core/rtnetlink.c:3216 [inline]
> rtnl_dellink+0x3c0/0xb30 net/core/rtnetlink.c:3268
> rtnetlink_rcv_msg+0x450/0xb10 net/core/rtnetlink.c:6423
> netlink_rcv_skb+0x15d/0x450 net/netlink/af_netlink.c:2548
> netlink_unicast_kernel net/netlink/af_netlink.c:1339 [inline]
> netlink_unicast+0x700/0x930 net/netlink/af_netlink.c:1365
> netlink_sendmsg+0x91c/0xe30 net/netlink/af_netlink.c:1913
> sock_sendmsg_nosec net/socket.c:724 [inline]
> sock_sendmsg+0x1b7/0x200 net/socket.c:747
> ____sys_sendmsg+0x75a/0x990 net/socket.c:2493
> ___sys_sendmsg+0x11d/0x1c0 net/socket.c:2547
> __sys_sendmsg+0xfe/0x1d0 net/socket.c:2576
> do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> do_syscall_64+0x3f/0x90 arch/x86/entry/common.c:80
> entry_SYSCALL_64_after_hwframe+0x72/0xdc
>
>The buggy address belongs to the object at ffff88800dbef300
> which belongs to the cache UDPv6 of size 1344
>The buggy address is located 152 bytes inside of
> freed 1344-byte region [ffff88800dbef300, ffff88800dbef840)
>
>The buggy address belongs to the physical page:
>page:00000000d31bfed5 refcount:1 mapcount:0 mapping:0000000000000000 index:0xffff88800dbeed40 pfn:0xdbe8
>head:00000000d31bfed5 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
>memcg:ffff888008ee0801
>flags: 0x100000000010200(slab|head|node=0|zone=1)
>page_type: 0xffffffff()
>raw: 0100000000010200 ffff88800c7a3000 dead000000000122 0000000000000000
>raw: ffff88800dbeed40 0000000080160015 00000001ffffffff ffff888008ee0801
>page dumped because: kasan: bad access detected
>
>Memory state around the buggy address:
> ffff88800dbef280: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> ffff88800dbef300: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>>ffff88800dbef380: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>                            ^
> ffff88800dbef400: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> ffff88800dbef480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>

In the patch desctiption you say what is wrong and why, yet you don't
describe what to do in order to fix the problem. Could please
extend the patch description by that?


>Fixes: e198987e7dd7 ("gtp: fix suspicious RCU usage")
>Reported-by: syzkaller <syzkaller@googlegroups.com>
>Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>
>---
> drivers/net/gtp.c | 2 ++
> 1 file changed, 2 insertions(+)
>
>diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
>index 15c7dc82107f..acb20ad4e37e 100644
>--- a/drivers/net/gtp.c
>+++ b/drivers/net/gtp.c
>@@ -631,7 +631,9 @@ static void __gtp_encap_destroy(struct sock *sk)
> 			gtp->sk1u = NULL;
> 		udp_sk(sk)->encap_type = 0;
> 		rcu_assign_sk_user_data(sk, NULL);
>+		release_sock(sk);
> 		sock_put(sk);
>+		return;
> 	}
> 	release_sock(sk);
> }
>-- 
>2.30.2
>
>
