Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id E99359BA551
	for <lists+osmocom-net-gprs@lfdr.de>; Sun,  3 Nov 2024 12:47:46 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D2C8F16AB0C;
	Sun,  3 Nov 2024 11:47:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIWWoTrC7EkH; Sun,  3 Nov 2024 11:47:46 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 499AF16AAF7;
	Sun,  3 Nov 2024 11:47:44 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4688338A1327
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 30 Oct 2024 12:02:23 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 273C016718E
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 30 Oct 2024 12:02:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EbanS6Af-ftc for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 30 Oct 2024 12:02:21 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id B19E416718B
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 30 Oct 2024 12:02:20 +0000 (UTC)
Received: from [78.30.37.63] (port=41894 helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <pablo@gnumonks.org>)
	id 1t67Ox-00BAA0-JW; Wed, 30 Oct 2024 13:02:18 +0100
Date: Wed, 30 Oct 2024 13:02:14 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: syzbot <syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com>
Subject: Re: [syzbot] [net?] possible deadlock in gtp_encap_enable_socket
Message-ID: <ZyIgRmJUbnZpzXNV@calendula>
References: <66f18d50.050a0220.c23dd.0012.GAE@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <66f18d50.050a0220.c23dd.0012.GAE@google.com>
X-MailFrom: pablo@gnumonks.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: QBIUDWCV7C3AG5UO6M4I7V7WEITOQSJP
X-Message-ID-Hash: QBIUDWCV7C3AG5UO6M4I7V7WEITOQSJP
X-Mailman-Approved-At: Sun, 03 Nov 2024 11:47:40 +0000
CC: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, laforge@gnumonks.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, syzkaller-bugs@googlegroups.com, wenjia@linux.ibm.com, jaka@linux.ibm.com, alibuda@linux.alibaba.com, tonylu@linux.alibaba.com, guwen@linux.alibaba.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/QBIUDWCV7C3AG5UO6M4I7V7WEITOQSJP/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Cc'ing SMC maintainers.

syzkaller combining layer is a crazy way to find crashes.

I think this is a false possible lockdep considers smc->clcsock_release_lock
is a lock of the same class sk_lock-AF_INET.

this can be solved with lockdep_set_class in af_smc?

Thanks.

On Mon, Sep 23, 2024 at 08:46:24AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    9410645520e9 Merge tag 'net-next-6.12' of git://git.kernel..
> git tree:       net-next
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=15d39e9f980000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=37c006d80708398d
> dashboard link: https://syzkaller.appspot.com/bug?extid=e953a8f3071f5c0a28fd
> compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16215ca9980000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110c6c27980000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/80466d230dfb/disk-94106455.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/ba253eabab42/vmlinux-94106455.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/569982fb6c88/bzImage-94106455.xz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com
> 
> IPVS: Unknown mcast interface: macvlan0
> netlink: 8 bytes leftover after parsing attributes in process `syz-executor297'.
> netlink: 24 bytes leftover after parsing attributes in process `syz-executor297'.
> ======================================================
> WARNING: possible circular locking dependency detected
> 6.11.0-syzkaller-01458-g9410645520e9 #0 Not tainted
> ------------------------------------------------------
> syz-executor297/5243 is trying to acquire lock:
> ffff88801cf99158 (sk_lock-AF_INET){+.+.}-{0:0}, at: lock_sock include/net/sock.h:1609 [inline]
> ffff88801cf99158 (sk_lock-AF_INET){+.+.}-{0:0}, at: gtp_encap_enable_socket+0x2ce/0x5c0 drivers/net/gtp.c:1674
> 
> but task is already holding lock:
> ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnl_lock net/core/rtnetlink.c:79 [inline]
> ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnetlink_rcv_msg+0x6e6/0xcf0 net/core/rtnetlink.c:6643
> 
> which lock already depends on the new lock.
> 
> 
> the existing dependency chain (in reverse order) is:
> 
> -> #2 (rtnl_mutex){+.+.}-{3:3}:
>        lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
>        __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>        __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>        start_sync_thread+0xdc/0x2dc0 net/netfilter/ipvs/ip_vs_sync.c:1761
>        do_ip_vs_set_ctl+0x442/0x13d0 net/netfilter/ipvs/ip_vs_ctl.c:2732
>        nf_setsockopt+0x295/0x2c0 net/netfilter/nf_sockopt.c:101
>        smc_setsockopt+0x275/0xe50 net/smc/af_smc.c:3064
>        do_sock_setsockopt+0x3af/0x720 net/socket.c:2330
>        __sys_setsockopt+0x1ae/0x250 net/socket.c:2353
>        __do_sys_setsockopt net/socket.c:2362 [inline]
>        __se_sys_setsockopt net/socket.c:2359 [inline]
>        __x64_sys_setsockopt+0xb5/0xd0 net/socket.c:2359
>        do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>        do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>        entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> -> #1 (&smc->clcsock_release_lock){+.+.}-{3:3}:
>        lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
>        __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>        __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>        smc_switch_to_fallback+0x35/0xdb0 net/smc/af_smc.c:902
>        smc_sendmsg+0x11f/0x530 net/smc/af_smc.c:2771
>        sock_sendmsg_nosec net/socket.c:730 [inline]
>        __sock_sendmsg+0x221/0x270 net/socket.c:745
>        ____sys_sendmsg+0x525/0x7d0 net/socket.c:2603
>        ___sys_sendmsg net/socket.c:2657 [inline]
>        __sys_sendmsg+0x2b0/0x3a0 net/socket.c:2686
>        do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>        do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>        entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> -> #0 (sk_lock-AF_INET){+.+.}-{0:0}:
>        check_prev_add kernel/locking/lockdep.c:3133 [inline]
>        check_prevs_add kernel/locking/lockdep.c:3252 [inline]
>        validate_chain+0x18e0/0x5900 kernel/locking/lockdep.c:3868
>        __lock_acquire+0x137a/0x2040 kernel/locking/lockdep.c:5142
>        lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
>        lock_sock_nested+0x48/0x100 net/core/sock.c:3611
>        lock_sock include/net/sock.h:1609 [inline]
>        gtp_encap_enable_socket+0x2ce/0x5c0 drivers/net/gtp.c:1674
>        gtp_encap_enable drivers/net/gtp.c:1707 [inline]
>        gtp_newlink+0x589/0xf30 drivers/net/gtp.c:1511
>        rtnl_newlink_create net/core/rtnetlink.c:3510 [inline]
>        __rtnl_newlink net/core/rtnetlink.c:3730 [inline]
>        rtnl_newlink+0x1591/0x20a0 net/core/rtnetlink.c:3743
>        rtnetlink_rcv_msg+0x73f/0xcf0 net/core/rtnetlink.c:6646
>        netlink_rcv_skb+0x1e3/0x430 net/netlink/af_netlink.c:2550
>        netlink_unicast_kernel net/netlink/af_netlink.c:1331 [inline]
>        netlink_unicast+0x7f6/0x990 net/netlink/af_netlink.c:1357
>        netlink_sendmsg+0x8e4/0xcb0 net/netlink/af_netlink.c:1901
>        sock_sendmsg_nosec net/socket.c:730 [inline]
>        __sock_sendmsg+0x221/0x270 net/socket.c:745
>        ____sys_sendmsg+0x525/0x7d0 net/socket.c:2603
>        ___sys_sendmsg net/socket.c:2657 [inline]
>        __sys_sendmsg+0x2b0/0x3a0 net/socket.c:2686
>        do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>        do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>        entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> other info that might help us debug this:
> 
> Chain exists of:
>   sk_lock-AF_INET --> &smc->clcsock_release_lock --> rtnl_mutex
> 
>  Possible unsafe locking scenario:
> 
>        CPU0                    CPU1
>        ----                    ----
>   lock(rtnl_mutex);
>                                lock(&smc->clcsock_release_lock);
>                                lock(rtnl_mutex);
>   lock(sk_lock-AF_INET);
> 
>  *** DEADLOCK ***
> 
> 1 lock held by syz-executor297/5243:
>  #0: ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnl_lock net/core/rtnetlink.c:79 [inline]
>  #0: ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnetlink_rcv_msg+0x6e6/0xcf0 net/core/rtnetlink.c:6643
> 
> stack backtrace:
> CPU: 0 UID: 0 PID: 5243 Comm: syz-executor297 Not tainted 6.11.0-syzkaller-01458-g9410645520e9 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/06/2024
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:93 [inline]
>  dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
>  check_noncircular+0x36a/0x4a0 kernel/locking/lockdep.c:2186
>  check_prev_add kernel/locking/lockdep.c:3133 [inline]
>  check_prevs_add kernel/locking/lockdep.c:3252 [inline]
>  validate_chain+0x18e0/0x5900 kernel/locking/lockdep.c:3868
>  __lock_acquire+0x137a/0x2040 kernel/locking/lockdep.c:5142
>  lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
>  lock_sock_nested+0x48/0x100 net/core/sock.c:3611
>  lock_sock include/net/sock.h:1609 [inline]
>  gtp_encap_enable_socket+0x2ce/0x5c0 drivers/net/gtp.c:1674
>  gtp_encap_enable drivers/net/gtp.c:1707 [inline]
>  gtp_newlink+0x589/0xf30 drivers/net/gtp.c:1511
>  rtnl_newlink_create net/core/rtnetlink.c:3510 [inline]
>  __rtnl_newlink net/core/rtnetlink.c:3730 [inline]
>  rtnl_newlink+0x1591/0x20a0 net/core/rtnetlink.c:3743
>  rtnetlink_rcv_msg+0x73f/0xcf0 net/core/rtnetlink.c:6646
>  netlink_rcv_skb+0x1e3/0x430 net/netlink/af_netlink.c:2550
>  netlink_unicast_kernel net/netlink/af_netlink.c:1331 [inline]
>  netlink_unicast+0x7f6/0x990 net/netlink/af_netlink.c:1357
>  netlink_sendmsg+0x8e4/0xcb0 net/netlink/af_netlink.c:1901
>  sock_sendmsg_nosec net/socket.c:730 [inline]
>  __sock_sendmsg+0x221/0x270 net/socket.c:745
>  ____sys_sendmsg+0x525/0x7d0 net/socket.c:2603
>  ___sys_sendmsg net/socket.c:2657 [inline]
>  __sys_sendmsg+0x2b0/0x3a0 net/socket.c:2686
>  do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>  do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>  entry_SYSCALL_64_after_hwframe+0x77/0x7f
> RIP: 0033:0x7fed198844a9
> Code: 48 83 c4 28 c3 e8 37 17 00 00 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
> RS
> 
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> 
> If the report is already addressed, let syzbot know by replying with:
> #syz fix: exact-commit-title
> 
> If you want syzbot to run the reproducer, reply with:
> #syz test: git://repo/address.git branch-or-commit-hash
> If you attach or paste a git patch, syzbot will apply it before testing.
> 
> If you want to overwrite report's subsystems, reply with:
> #syz set subsystems: new-subsystem
> (See the list of subsystem names on the web dashboard)
> 
> If the report is a duplicate of another one, reply with:
> #syz dup: exact-subject-of-another-report
> 
> If you want to undo deduplication, reply with:
> #syz undup
