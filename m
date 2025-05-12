Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD81AC325B
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 25 May 2025 06:23:13 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0953D25C34A;
	Sun, 25 May 2025 04:23:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bC0NGlYhKY9q; Sun, 25 May 2025 04:23:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E1B8F25C33A;
	Sun, 25 May 2025 04:23:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 276AD38A003C;
	Mon, 12 May 2025 22:10:49 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 04371251A6A;
	Mon, 12 May 2025 22:10:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zD-t63wrkVFt; Mon, 12 May 2025 22:10:48 +0000 (UTC)
Received: from smtp-fw-52003.amazon.com (smtp-fw-52003.amazon.com [52.119.213.152])
	by mail.osmocom.org (Postfix) with ESMTPS id B176F251A65;
	Mon, 12 May 2025 22:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
  t=1747087849; x=1778623849;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7tN0DJOjCDbYyLG3fBURerzunikZ2GPsRRAIeI9irw8=;
  b=CNDaQsEt1ne53WCZbI9dNjgiNk8lXN7HmjMWLbRbs4kutLrof+xlSKlv
   RCaomQl6dUmLGnTIfOn5oUo8DCak4Mg/tnLDjLVSG5nKDmyEIZSGnetIk
   Eh8ko1Gr/biwtiivBRVUvshnQyTB5nv0aS9J+L4l0Dzz3fW0H0b3lO7fa
   l5TR1oYs2T07yBH+wJ+ZagvrckIuOMr0xbjm4EXv6EdN9XKsb6LgvM3jh
   a0HanBC0KCAWZGi5zaNhBxcKx9kMEuLC+za5XIAe5SBp+UraGJ7slTk8m
   HOAX0ECW4YLR0c00SykTzQFJqeCFX6MvRtxCpOVilCx9BX+9Z7zg5LezA
   A==;
X-IronPort-AV: E=Sophos;i="6.15,283,1739836800";
   d="scan'208";a="92404891"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-52003.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2025 22:10:43 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.38.20:17316]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.51.68:2525] with esmtp (Farcaster)
 id dc358a6f-7c1b-414a-9827-10a9fec784f8; Mon, 12 May 2025 22:10:42 +0000 (UTC)
X-Farcaster-Flow-ID: dc358a6f-7c1b-414a-9827-10a9fec784f8
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 12 May 2025 22:10:41 +0000
Received: from 6c7e67bfbae3.amazon.com (10.187.170.42) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 12 May 2025 22:10:37 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com>
Subject: Re: [syzbot] [net?] possible deadlock in gtp_encap_enable_socket
Date: Mon, 12 May 2025 15:10:26 -0700
Message-ID: <20250512221029.56357-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <68221ce4.050a0220.f2294.0070.GAE@google.com>
References: <68221ce4.050a0220.f2294.0070.GAE@google.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.187.170.42]
X-ClientProxiedBy: EX19D041UWB002.ant.amazon.com (10.13.139.179) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: prvs=22023415d=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5GHT4CGLSBIIHRQXFM5LBAJDKTPBJVPB
X-Message-ID-Hash: 5GHT4CGLSBIIHRQXFM5LBAJDKTPBJVPB
X-Mailman-Approved-At: Sun, 25 May 2025 04:22:31 +0000
CC: alibuda@linux.alibaba.com, danielyang32@g.ucla.edu, danielyangkang@gmail.com, davem@davemloft.net, edumazet@google.com, guwen@linux.alibaba.com, hdanton@sina.com, jaka@linux.ibm.com, kuba@kernel.org, kuniyu@amazon.com, laforge@gnumonks.org, linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org, lkp@intel.com, llvm@lists.linux.dev, netdev@vger.kernel.org, oe-kbuild-all@lists.linux.dev, osmocom-net-gprs-bounces@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, pablo@netfilter.org, syzkaller-bugs@googlegroups.com, tonylu@linux.alibaba.com, wenjia@linux.ibm.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/5GHT4CGLSBIIHRQXFM5LBAJDKTPBJVPB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: syzbot <syzbot+e953a8f3071f5c0a28fd@syzkaller.appspotmail.com>
Date: Mon, 12 May 2025 09:08:04 -0700
> syzbot suspects this issue was fixed by commit:
>=20
> commit 752e2217d789be2c6a6ac66554b981cd71cd9f31
> Author: Kuniyuki Iwashima <kuniyu@amazon.com>
> Date:   Mon Apr 7 17:03:17 2025 +0000
>=20
>     smc: Fix lockdep false-positive for IPPROTO_SMC.
>=20
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D140462f4=
580000
> start commit:   9410645520e9 Merge tag 'net-next-6.12' of git://git.ker=
nel..
> git tree:       net-next
> kernel config:  https://syzkaller.appspot.com/x/.config?x=3D37c006d8070=
8398d
> dashboard link: https://syzkaller.appspot.com/bug?extid=3De953a8f3071f5=
c0a28fd
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D16215ca99=
80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D110c6c27980=
000
>=20
> If the result looks correct, please mark the issue as fixed by replying=
 with:
>=20
> #syz fix: smc: Fix lockdep false-positive for IPPROTO_SMC.

#syz fix: smc: Fix lockdep false-positive for IPPROTO_SMC.

