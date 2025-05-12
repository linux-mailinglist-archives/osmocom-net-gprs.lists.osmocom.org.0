Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD78AC325A
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 25 May 2025 06:23:12 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1E93325C32F;
	Sun, 25 May 2025 04:23:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q5k1TEq7dp-T; Sun, 25 May 2025 04:23:10 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1435325C324;
	Sun, 25 May 2025 04:23:09 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6689B38A1A93
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 12 May 2025 16:08:07 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 498EB25172F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 12 May 2025 16:08:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VLwYEICz2M5D for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 12 May 2025 16:08:06 +0000 (UTC)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mail.osmocom.org (Postfix) with ESMTPS id 1F05F251724
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 12 May 2025 16:08:05 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3da717e86b1so48417665ab.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 12 May 2025 09:08:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747066084; x=1747670884;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gt5URQSkZsJi8HYjVkWgqYk5S7TJ2AVMXcD4Cuf60ao=;
        b=ZUjo3n+98USHdY7Xd9DfYJjOcI/MjT32a4rpjPSylMAfs/bcZor/DtJ10DFAa3edZX
         dvkX30PhLfwhT5j/324IfQiy58i0G1kh+7KgzuPUsh3UZhHO/ihI8VagwzFS6H1CvnBm
         CgI0wLuzLxq5nv1cB3LCEce1xU0TsY66FCcQaVlQ8CQGQORZ+c+K8Jd+OSNPHdhYl6N0
         /CjhJcLUuYYKu5xjtFhMAnLw/F221qrehKuNIsOn/E7wUh8TPfdeI8bbVWvIE3fTNTUW
         8e/xypDEbzypsZxdQzErjCYrUo8NHt5LyLSWMb/nSjYDp7UcX1J988XDUxG0Fo7ZliIR
         0W4g==
X-Forwarded-Encrypted: i=1; AJvYcCUtm+Vgqv2vqbzTcicjdnHnSA4eThLvLzBuzY5Wjyr1D5bWCtXuGptj5iVQEBFO31gTGnWRPIERs3a8iEaVAQXn@lists.osmocom.org
X-Gm-Message-State: AOJu0YxRbCiI+lKqhHXBq/gMfN+oTxJQCzNT4Yj/CxnxcDc1fmn3NOcd
	hGXcml71Q5C2L1JhHHJPz13LebAXuWAp0yYIMoI6WR7DYvzPzm7vypRZLq9Tew08Sgx0dZsbiv9
	Pb+enkzYk/ye5OkBTjUvJ5rHK680WDqTC6IQk/gLv+aqC49oKVHLhqok=
X-Google-Smtp-Source: AGHT+IGcj7hDDUl63wjXEO3+XruwNefnp47j4mhldFaZGFjrTH4hft3gln2ARkheFl41Vx6lpdU5XxwDw+Z9Lo0NO1Q33wHkRMQH
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1fc6:b0:3da:7161:23ec with SMTP id
 e9e14a558f8ab-3da7e1e1a63mr160273105ab.3.1747066084202; Mon, 12 May 2025
 09:08:04 -0700 (PDT)
Date: Mon, 12 May 2025 09:08:04 -0700
In-Reply-To: <66f18d50.050a0220.c23dd.0012.GAE@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68221ce4.050a0220.f2294.0070.GAE@google.com>
Subject: Re: [syzbot] [net?] possible deadlock in gtp_encap_enable_socket
From: syzbot <syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com>
To: alibuda@linux.alibaba.com, danielyang32@g.ucla.edu,
	danielyangkang@gmail.com, davem@davemloft.net, edumazet@google.com,
	guwen@linux.alibaba.com, hdanton@sina.com, jaka@linux.ibm.com,
	kuba@kernel.org, kuniyu@amazon.com, laforge@gnumonks.org,
	linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org, lkp@intel.com,
	llvm@lists.linux.dev, netdev@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
	osmocom-net-gprs-bounces@lists.osmocom.org,
	osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, pablo@netfilter.org,
	syzkaller-bugs@googlegroups.com, tonylu@linux.alibaba.com,
	wenjia@linux.ibm.com
Content-Type: text/plain; charset="UTF-8"
X-MailFrom: 35BwiaAkbAO0hnoZPaaTgPeeXS.VddVaTjhTgRdciTci.Rdb@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WOP5V7245DGUALNVTS4TSR7GMSPWBHLP
X-Message-ID-Hash: WOP5V7245DGUALNVTS4TSR7GMSPWBHLP
X-Mailman-Approved-At: Sun, 25 May 2025 04:22:31 +0000
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/WOP5V7245DGUALNVTS4TSR7GMSPWBHLP/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

syzbot suspects this issue was fixed by commit:

commit 752e2217d789be2c6a6ac66554b981cd71cd9f31
Author: Kuniyuki Iwashima <kuniyu@amazon.com>
Date:   Mon Apr 7 17:03:17 2025 +0000

    smc: Fix lockdep false-positive for IPPROTO_SMC.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=140462f4580000
start commit:   9410645520e9 Merge tag 'net-next-6.12' of git://git.kernel..
git tree:       net-next
kernel config:  https://syzkaller.appspot.com/x/.config?x=37c006d80708398d
dashboard link: https://syzkaller.appspot.com/bug?extid=e953a8f3071f5c0a28fd
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16215ca9980000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110c6c27980000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: smc: Fix lockdep false-positive for IPPROTO_SMC.

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
