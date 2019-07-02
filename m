Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id B4128610AF
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  6 Jul 2019 14:41:40 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5F256C6186;
	Sat,  6 Jul 2019 12:41:39 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=GmIKtRK6
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::642; helo=mail-pl1-x642.google.com;
 envelope-from=ap420073@gmail.com; receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com
 [IPv6:2607:f8b0:4864:20::642])
 by lists.osmocom.org (Postfix) with ESMTP id 9E8F3B9D84
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  2 Jul 2019 15:21:00 +0000 (UTC)
Received: by mail-pl1-x642.google.com with SMTP id e5so526742pls.13
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 02 Jul 2019 08:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DKzdEoM6Lmp9JUgVQf/KSYmgH23uDbw/uvQ6/6yRYvE=;
 b=GmIKtRK6eBgpW5N6NyYg5FQ7yd4ziypLbZ19nbjkIC/TlCkSwMh48b5t2KcNwX+0rF
 v3bVNYU7zWO8qSuZXKajUO6fXaFM1qJGnpYK0kMkXc9ef00sfHd9ZNs3MyRYVvxku8GV
 HLfPtbCzApNK+XFkSp+iK+jKCxlo3etsWIiOBBRtOsL568M9yzaQPp7il1nI4Gb7jSOO
 JFV52hVcu/Jyo0oLeQ4NWaYUuJW7R9kJF9mdfE08FWRmJO2wXlIKcVtw2LeaaqkFGUw2
 FYiwdOuglOymndWBooZbskwof6ET/SjwgR8zm3pgRk4StJUi7IudT/1vazp/f2FQDMnt
 OsmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DKzdEoM6Lmp9JUgVQf/KSYmgH23uDbw/uvQ6/6yRYvE=;
 b=gxnlSh1dDqiFaYmvFWtPSdZ7Ubcgl2D4wuGfYuSmSUdXuOYDUwsrYtuc8szwXk131E
 Gf+SGD/Lbsa5Owc8tDF0T+pyWpYoIhZGN9kq6KohTtML9FltVlbyoddkolHBHEKlU+Bm
 pMevwKLzA12cCUgd5exLQNkovT+PTuKXzKmkB5rlg2pQsGuneFsH5jUqUrEpdVNwAdku
 bTDc1V4ZVeboR+zOAHwOz8+c+8pykSfgfDuCnGvMDlX1g8Ifr1ZqBpw76PGbWctDFg97
 uqFpdCPZ8zHCFH1J8IH12TvvAixVpJUHhu7CRKL8+iZiyZulPWMF8Dp3T8opqiJuwE4l
 qGMQ==
X-Gm-Message-State: APjAAAV83Thkc9i5Obgq1Q16uO0L/TmqS06LRfc6ny7waWcerKpJ9V+8
 gcQ4JtEWTV4CUf9TQHWcOG8=
X-Google-Smtp-Source: APXvYqzF0cQ+/VJDorqycm3dfNF/lUqKXl/HB8dDHfxrLrzA/xgiZGFxu9LQhnzDpZ2b94QWbbUYow==
X-Received: by 2002:a17:902:9a49:: with SMTP id
 x9mr24556514plv.282.1562080859248; 
 Tue, 02 Jul 2019 08:20:59 -0700 (PDT)
Received: from ap-To-be-filled-by-O-E-M.8.8.8.8 ([14.33.120.60])
 by smtp.gmail.com with ESMTPSA id e10sm14683769pfi.173.2019.07.02.08.20.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 08:20:58 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Subject: [PATCH net 1/6] gtp: fix suspicious RCU usage
Date: Wed,  3 Jul 2019 00:20:51 +0900
Message-Id: <20190702152051.22513-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Sat, 06 Jul 2019 12:41:30 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Cc: ap420073@gmail.com
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

gtp_encap_enable_socket() and gtp_encap_destroy() are not protected
by rcu_read_lock(). and it's not safe to write sk->sk_user_data.
This patch make these functions to use lock_sock() instead of
rcu_dereference_sk_user_data().

Test commands:
    gtp-link add gtp1

Splat looks like:
[   83.238315] =============================
[   83.239127] WARNING: suspicious RCU usage
[   83.239702] 5.2.0-rc6+ #49 Not tainted
[   83.240268] -----------------------------
[   83.241205] drivers/net/gtp.c:799 suspicious rcu_dereference_check() usage!
[   83.243828]
[   83.243828] other info that might help us debug this:
[   83.243828]
[   83.246325]
[   83.246325] rcu_scheduler_active = 2, debug_locks = 1
[   83.247314] 1 lock held by gtp-link/1008:
[   83.248523]  #0: 0000000017772c7f (rtnl_mutex){+.+.}, at: __rtnl_newlink+0x5f5/0x11b0
[   83.251503]
[   83.251503] stack backtrace:
[   83.252173] CPU: 0 PID: 1008 Comm: gtp-link Not tainted 5.2.0-rc6+ #49
[   83.253271] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006
[   83.254562] Call Trace:
[   83.254995]  dump_stack+0x7c/0xbb
[   83.255567]  gtp_encap_enable_socket+0x2df/0x360 [gtp]
[   83.256415]  ? gtp_find_dev+0x1a0/0x1a0 [gtp]
[   83.257161]  ? memset+0x1f/0x40
[   83.257843]  gtp_newlink+0x90/0xa21 [gtp]
[   83.258497]  ? __netlink_ns_capable+0xc3/0xf0
[   83.259260]  __rtnl_newlink+0xb9f/0x11b0
[   83.260022]  ? rtnl_link_unregister+0x230/0x230
[ ... ]

Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/gtp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index fc45b749db46..939da5442f65 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -289,12 +289,14 @@ static void gtp_encap_destroy(struct sock *sk)
 {
 	struct gtp_dev *gtp;
 
-	gtp = rcu_dereference_sk_user_data(sk);
+	lock_sock(sk);
+	gtp = sk->sk_user_data;
 	if (gtp) {
 		udp_sk(sk)->encap_type = 0;
 		rcu_assign_sk_user_data(sk, NULL);
 		sock_put(sk);
 	}
+	release_sock(sk);
 }
 
 static void gtp_encap_disable_sock(struct sock *sk)
@@ -796,7 +798,8 @@ static struct sock *gtp_encap_enable_socket(int fd, int type,
 		goto out_sock;
 	}
 
-	if (rcu_dereference_sk_user_data(sock->sk)) {
+	lock_sock(sock->sk);
+	if (sock->sk->sk_user_data) {
 		sk = ERR_PTR(-EBUSY);
 		goto out_sock;
 	}
@@ -812,6 +815,7 @@ static struct sock *gtp_encap_enable_socket(int fd, int type,
 	setup_udp_tunnel_sock(sock_net(sock->sk), sock, &tuncfg);
 
 out_sock:
+	release_sock(sock->sk);
 	sockfd_put(sock);
 	return sk;
 }
-- 
2.17.1

