Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id F187C853A64
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:57:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DDCBD425EC;
	Tue, 13 Feb 2024 18:57:51 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voAnN_uDDezo; Tue, 13 Feb 2024 18:57:51 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 60ABA425D5;
	Tue, 13 Feb 2024 18:57:49 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id F1D7F38A0F15
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D41442BD25
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:43:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wth81Eu_MK6F for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 24 Jan 2024 10:43:09 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by mail.osmocom.org (Postfix) with ESMTPS id 1738D2BD20
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 10:43:08 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-55c89dbef80so6138a12.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 24 Jan 2024 02:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706092988; x=1706697788; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zqCT08+MvCKkOTXY4Y0tOOr9UtqwBr/HZdtw0FsPlto=;
        b=qAugAhA8EIBExYDYy1p4wsFY3O2xLgN06UaVce20kcIqRxtezgYUp0W2R8k9jcUpvr
         JL3jWB97ooVFAtyA4DkFbyt8I0H27qyn0W+e/8PSJLp8gyf+fXAA4by4Sl37e7+hULYH
         x+/vcm8g80T4qg4srTv9EFbb69QoFE6pJiiUR3X6tTrWapxSF5BpLpMOauMpWHxYSIA8
         mwQsZjjawIIbL2XC1PeDCtu4oD+DbUEH4dl7+Undz/5KZntmIxaTmJGRMJHvc7zukqJ3
         dMYAKRcicLyiV2PpMBwN7Zd2AW8s4PvATLV0FWD+wowPHMSgGnTIGxq0QKvKdRF419no
         21ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706092988; x=1706697788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zqCT08+MvCKkOTXY4Y0tOOr9UtqwBr/HZdtw0FsPlto=;
        b=abXguyjcToCFjK6u2OpRD8F/TVgVpmJ5cwvnB1WVeweufPkzhHKKfuQhhZWA4/ad7K
         1VqPu80rPhtOTPh09A5nK8xkGL9YUqWntRe9oF9szXQz/yw26D1QWaVan7UZI7AFB4kx
         KX8i9tX6US1wRQ9QfpRzUSF2AM0wT7wwX42yzn7DG8uI073Bnx0YhEDcsJzIQyNfvdfo
         7New9O+TDVbgUap9LTnfxkNh8sxsUaOq3vgWpfB0Dy6hKP9stJhT4hSK2aHKuHooU5VB
         YmtdPa6TrL3P15VwtLWjrYMpQzQbT2f3LR0/MXy+AC2CKF3D4mq9vkTy0PG5SAcUcK09
         E1NQ==
X-Gm-Message-State: AOJu0YyJWv2hzxTS5YAFZDzP5VZrPQrG9rrld4m7au/3aGcqdpLmvIWh
	2TFaqXaqeIwIe/MXRB6kxqfsen4I7PxD/aZLw35O/YVVzxUqN96yTQxVIGKP9x2vaiXLCHJ3LI+
	/2WaKhCN2SSdnNaQ8AG+cGFEYsg5Z54Nv8CYS
X-Google-Smtp-Source: AGHT+IFA4Tc1j4sf2WdSd9/PHzO6hw9s+bdVXHkMEgmkV/sJrLFCLqNCgSWRThpV968rVYpmG1ZNtjXk5o4YzlQpA2I=
X-Received: by 2002:a05:6402:3109:b0:55c:6037:c237 with SMTP id
 dc9-20020a056402310900b0055c6037c237mr99964edb.6.1706092987914; Wed, 24 Jan
 2024 02:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20240124101404.161655-1-kovalev@altlinux.org> <20240124101404.161655-2-kovalev@altlinux.org>
In-Reply-To: <20240124101404.161655-2-kovalev@altlinux.org>
From: Eric Dumazet <edumazet@google.com>
Date: Wed, 24 Jan 2024 11:42:54 +0100
Message-ID: <CANn89iKxC5KiqZ-NS7qkgX-6qcUYBJVsdbesXwrAOKTh=oJyZg@mail.gmail.com>
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in gtp_genl_dump_pdp()
To: kovalev@altlinux.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H2WQJJLVNB7ITQLDNVKT7OCCELM3S6XS
X-Message-ID-Hash: H2WQJJLVNB7ITQLDNVKT7OCCELM3S6XS
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:57:43 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/H2WQJJLVNB7ITQLDNVKT7OCCELM3S6XS/>
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
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.0-alt1
> RIP: 0010:gtp_genl_dump_pdp+0x1b1/0x790 [gtp]
> ...
> Call Trace:
>  genl_lock_dumpit+0x6b/0xa0 net/netlink/genetlink.c:623
>  netlink_dump+0x575/0xc70 net/netlink/af_netlink.c:2271
>  __netlink_dump_start+0x64e/0x910 net/netlink/af_netlink.c:2376
>  genl_family_rcv_msg_dumpit+0x2b8/0x310 net/netlink/genetlink.c:686
>  genl_family_rcv_msg net/netlink/genetlink.c:780 [inline]
>  genl_rcv_msg+0x450/0x5a0 net/netlink/genetlink.c:800
>  netlink_rcv_skb+0x150/0x440 net/netlink/af_netlink.c:2497
>  genl_rcv+0x29/0x40 net/netlink/genetlink.c:811
>  netlink_unicast_kernel net/netlink/af_netlink.c:1322 [inline]
>  netlink_unicast+0x54e/0x800 net/netlink/af_netlink.c:1348
>  netlink_sendmsg+0x914/0xe00 net/netlink/af_netlink.c:1916
>  sock_sendmsg_nosec net/socket.c:651 [inline]
>  __sock_sendmsg+0x159/0x190 net/socket.c:663
>  ____sys_sendmsg+0x712/0x870 net/socket.c:2376
>  ___sys_sendmsg+0xf8/0x170 net/socket.c:2430
>  __sys_sendmsg+0xea/0x1b0 net/socket.c:2459
>  do_syscall_64+0x33/0x40 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x62/0xc7
> RIP: 0033:0x7f2ea16c2d49
>
> Fixes: 94a6d9fb88df ("gtp: fix wrong condition in gtp_genl_dump_pdp()")
> Signed-off-by: Vasiliy Kovalev <kovalev@altlinux.org>
> ---
>  drivers/net/gtp.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 477b4d4f860bd3..3fc4639711cd83 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -1675,6 +1675,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb, st=
ruct genl_info *info)
>         return err;
>  }
>
> +static bool dump_pdp_en;
> +

Hmm, it seems there is a missing try_module_get() somewhere...

__netlink_dump_start() does one, so perhaps we reach __netlink_dump_start()
with a NULL in control->module ?
