Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B394D991655
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  5 Oct 2024 13:17:14 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D8D5B14AA6F;
	Sat,  5 Oct 2024 11:17:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VzYyBLwiUpxc; Sat,  5 Oct 2024 11:17:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 71D6B14AA63;
	Sat,  5 Oct 2024 11:17:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9862A38A0AE1
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 23 Sep 2024 15:46:28 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8040D13B67D
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 23 Sep 2024 15:46:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2gobRQBxF5ZC for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 23 Sep 2024 15:46:27 +0000 (UTC)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mail.osmocom.org (Postfix) with ESMTPS id BA3F613B675
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 23 Sep 2024 15:46:26 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3a0a71b7d90so64493485ab.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 23 Sep 2024 08:46:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727106385; x=1727711185;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=prPVt5cguf8d01sLaNgmGgS8NpJHgZ878V5tnotzEpg=;
        b=CU+MeV4mDIEeR8qGau/tMl7zEWtXuQAZgcXTXX8qRAIeDQSfR9bwLoeoyjCn3lLwGy
         qe1+m0Yp/eNikJnht4DN31HtMgzKJ/Uk4nvRo7HKp1XMe8fOACEyf1EN4HFIx0IcJWa5
         zkOfR9XJbKb/pdcutIGFAknrjNjpxKZF6m2zhOMmnlgehRuR+gjozB6k5Vj1emobFmdF
         SR1issWkOWyNwFJE4yYfwPsL2giuJycgvkHD5Kz49O4A7ei+eCcyXCrgnHQYz+P6v2Jx
         ajqk8MNOX/mQI5kCilupZKs1lm5EDOkby+x6AVYSvVWijg37tZULuQ5vdaN/95DSxV01
         eLVw==
X-Forwarded-Encrypted: i=1; AJvYcCVRC97xcMx3+nixoEECSX5oKEOgAN8QuqUxLVVNmsv3nP2+MVgERyk7udXLCIJSKM670xXpVRUKMCbVs1AXUP28@lists.osmocom.org
X-Gm-Message-State: AOJu0Yx1wecr52M4qm0I3cDYIKiR7M6G7CITBcfD33Bk1ftcWRKMhsyn
	FjBFJaeBZLwfwJlbCW2odba2N+z+DufIAylW52u236uLFtkPh+cLcJko6/iMjr3PnDM2gM3X0/W
	seVsSZ9G1WcOcVHFyohErJXM8B56NK+fkSyHY239IDZXgJOq/z2qLR1Q=
X-Google-Smtp-Source: AGHT+IFzJbuikFWCJ31F6HFTXZgdwvxKzbj2BuXXfQeUx1+VxdLNDg/Rk8vlVjgdTJnT4hNWmooyde52lN0AfF8hmnJ2OwdZD9eU
MIME-Version: 1.0
X-Received: by 2002:a92:ca47:0:b0:39b:3894:9298 with SMTP id
 e9e14a558f8ab-3a0c9b82e20mr104292805ab.0.1727106384915; Mon, 23 Sep 2024
 08:46:24 -0700 (PDT)
Date: Mon, 23 Sep 2024 08:46:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <66f18d50.050a0220.c23dd.0012.GAE@google.com>
Subject: [syzbot] [net?] possible deadlock in gtp_encap_enable_socket
From: syzbot <syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	laforge@gnumonks.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, pablo@netfilter.org,
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-MailFrom: 3UI3xZgkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6HYDUZIQQITBALMFM7E7W25LTDAHERCM
X-Message-ID-Hash: 6HYDUZIQQITBALMFM7E7W25LTDAHERCM
X-Mailman-Approved-At: Sat, 05 Oct 2024 11:17:08 +0000
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6HYDUZIQQITBALMFM7E7W25LTDAHERCM/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello,

syzbot found the following issue on:

HEAD commit:    9410645520e9 Merge tag 'net-next-6.12' of git://git.kernel..
git tree:       net-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15d39e9f980000
kernel config:  https://syzkaller.appspot.com/x/.config?x=37c006d80708398d
dashboard link: https://syzkaller.appspot.com/bug?extid=e953a8f3071f5c0a28fd
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16215ca9980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110c6c27980000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/80466d230dfb/disk-94106455.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ba253eabab42/vmlinux-94106455.xz
kernel image: https://storage.googleapis.com/syzbot-assets/569982fb6c88/bzImage-94106455.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com

IPVS: Unknown mcast interface: macvlan0
netlink: 8 bytes leftover after parsing attributes in process `syz-executor297'.
netlink: 24 bytes leftover after parsing attributes in process `syz-executor297'.
======================================================
WARNING: possible circular locking dependency detected
6.11.0-syzkaller-01458-g9410645520e9 #0 Not tainted
------------------------------------------------------
syz-executor297/5243 is trying to acquire lock:
ffff88801cf99158 (sk_lock-AF_INET){+.+.}-{0:0}, at: lock_sock include/net/sock.h:1609 [inline]
ffff88801cf99158 (sk_lock-AF_INET){+.+.}-{0:0}, at: gtp_encap_enable_socket+0x2ce/0x5c0 drivers/net/gtp.c:1674

but task is already holding lock:
ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnl_lock net/core/rtnetlink.c:79 [inline]
ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnetlink_rcv_msg+0x6e6/0xcf0 net/core/rtnetlink.c:6643

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #2 (rtnl_mutex){+.+.}-{3:3}:
       lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
       __mutex_lock_common kernel/locking/mutex.c:608 [inline]
       __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
       start_sync_thread+0xdc/0x2dc0 net/netfilter/ipvs/ip_vs_sync.c:1761
       do_ip_vs_set_ctl+0x442/0x13d0 net/netfilter/ipvs/ip_vs_ctl.c:2732
       nf_setsockopt+0x295/0x2c0 net/netfilter/nf_sockopt.c:101
       smc_setsockopt+0x275/0xe50 net/smc/af_smc.c:3064
       do_sock_setsockopt+0x3af/0x720 net/socket.c:2330
       __sys_setsockopt+0x1ae/0x250 net/socket.c:2353
       __do_sys_setsockopt net/socket.c:2362 [inline]
       __se_sys_setsockopt net/socket.c:2359 [inline]
       __x64_sys_setsockopt+0xb5/0xd0 net/socket.c:2359
       do_syscall_x64 arch/x86/entry/common.c:52 [inline]
       do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #1 (&smc->clcsock_release_lock){+.+.}-{3:3}:
       lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
       __mutex_lock_common kernel/locking/mutex.c:608 [inline]
       __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
       smc_switch_to_fallback+0x35/0xdb0 net/smc/af_smc.c:902
       smc_sendmsg+0x11f/0x530 net/smc/af_smc.c:2771
       sock_sendmsg_nosec net/socket.c:730 [inline]
       __sock_sendmsg+0x221/0x270 net/socket.c:745
       ____sys_sendmsg+0x525/0x7d0 net/socket.c:2603
       ___sys_sendmsg net/socket.c:2657 [inline]
       __sys_sendmsg+0x2b0/0x3a0 net/socket.c:2686
       do_syscall_x64 arch/x86/entry/common.c:52 [inline]
       do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

-> #0 (sk_lock-AF_INET){+.+.}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:3133 [inline]
       check_prevs_add kernel/locking/lockdep.c:3252 [inline]
       validate_chain+0x18e0/0x5900 kernel/locking/lockdep.c:3868
       __lock_acquire+0x137a/0x2040 kernel/locking/lockdep.c:5142
       lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
       lock_sock_nested+0x48/0x100 net/core/sock.c:3611
       lock_sock include/net/sock.h:1609 [inline]
       gtp_encap_enable_socket+0x2ce/0x5c0 drivers/net/gtp.c:1674
       gtp_encap_enable drivers/net/gtp.c:1707 [inline]
       gtp_newlink+0x589/0xf30 drivers/net/gtp.c:1511
       rtnl_newlink_create net/core/rtnetlink.c:3510 [inline]
       __rtnl_newlink net/core/rtnetlink.c:3730 [inline]
       rtnl_newlink+0x1591/0x20a0 net/core/rtnetlink.c:3743
       rtnetlink_rcv_msg+0x73f/0xcf0 net/core/rtnetlink.c:6646
       netlink_rcv_skb+0x1e3/0x430 net/netlink/af_netlink.c:2550
       netlink_unicast_kernel net/netlink/af_netlink.c:1331 [inline]
       netlink_unicast+0x7f6/0x990 net/netlink/af_netlink.c:1357
       netlink_sendmsg+0x8e4/0xcb0 net/netlink/af_netlink.c:1901
       sock_sendmsg_nosec net/socket.c:730 [inline]
       __sock_sendmsg+0x221/0x270 net/socket.c:745
       ____sys_sendmsg+0x525/0x7d0 net/socket.c:2603
       ___sys_sendmsg net/socket.c:2657 [inline]
       __sys_sendmsg+0x2b0/0x3a0 net/socket.c:2686
       do_syscall_x64 arch/x86/entry/common.c:52 [inline]
       do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
       entry_SYSCALL_64_after_hwframe+0x77/0x7f

other info that might help us debug this:

Chain exists of:
  sk_lock-AF_INET --> &smc->clcsock_release_lock --> rtnl_mutex

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(rtnl_mutex);
                               lock(&smc->clcsock_release_lock);
                               lock(rtnl_mutex);
  lock(sk_lock-AF_INET);

 *** DEADLOCK ***

1 lock held by syz-executor297/5243:
 #0: ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnl_lock net/core/rtnetlink.c:79 [inline]
 #0: ffffffff8fc88588 (rtnl_mutex){+.+.}-{3:3}, at: rtnetlink_rcv_msg+0x6e6/0xcf0 net/core/rtnetlink.c:6643

stack backtrace:
CPU: 0 UID: 0 PID: 5243 Comm: syz-executor297 Not tainted 6.11.0-syzkaller-01458-g9410645520e9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/06/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 check_noncircular+0x36a/0x4a0 kernel/locking/lockdep.c:2186
 check_prev_add kernel/locking/lockdep.c:3133 [inline]
 check_prevs_add kernel/locking/lockdep.c:3252 [inline]
 validate_chain+0x18e0/0x5900 kernel/locking/lockdep.c:3868
 __lock_acquire+0x137a/0x2040 kernel/locking/lockdep.c:5142
 lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5759
 lock_sock_nested+0x48/0x100 net/core/sock.c:3611
 lock_sock include/net/sock.h:1609 [inline]
 gtp_encap_enable_socket+0x2ce/0x5c0 drivers/net/gtp.c:1674
 gtp_encap_enable drivers/net/gtp.c:1707 [inline]
 gtp_newlink+0x589/0xf30 drivers/net/gtp.c:1511
 rtnl_newlink_create net/core/rtnetlink.c:3510 [inline]
 __rtnl_newlink net/core/rtnetlink.c:3730 [inline]
 rtnl_newlink+0x1591/0x20a0 net/core/rtnetlink.c:3743
 rtnetlink_rcv_msg+0x73f/0xcf0 net/core/rtnetlink.c:6646
 netlink_rcv_skb+0x1e3/0x430 net/netlink/af_netlink.c:2550
 netlink_unicast_kernel net/netlink/af_netlink.c:1331 [inline]
 netlink_unicast+0x7f6/0x990 net/netlink/af_netlink.c:1357
 netlink_sendmsg+0x8e4/0xcb0 net/netlink/af_netlink.c:1901
 sock_sendmsg_nosec net/socket.c:730 [inline]
 __sock_sendmsg+0x221/0x270 net/socket.c:745
 ____sys_sendmsg+0x525/0x7d0 net/socket.c:2603
 ___sys_sendmsg net/socket.c:2657 [inline]
 __sys_sendmsg+0x2b0/0x3a0 net/socket.c:2686
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fed198844a9
Code: 48 83 c4 28 c3 e8 37 17 00 00 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RS


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
