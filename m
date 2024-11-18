Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88F9D945C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 26 Nov 2024 10:26:57 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 55E34191C06;
	Tue, 26 Nov 2024 09:26:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rJ_6mdswvgva; Tue, 26 Nov 2024 09:26:56 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id D8A58191BB4;
	Tue, 26 Nov 2024 09:26:52 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7604338A1B4F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:34:00 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5D983182464
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:34:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VJKLJiUanmIP for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 18 Nov 2024 14:33:59 +0000 (UTC)
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
	by mail.osmocom.org (Postfix) with ESMTPS id AC9F618245F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:59 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2ea2bf25dc8so1879699a91.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 06:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731940438; x=1732545238; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mad+mOcno2P0CIpC5U9uxqbBM+RxeN4q/RBh6+yxx1g=;
        b=WI9jV24FMl+A7S6WZcmgJEYyohF7rAE/aWQDz8dzxd0lNGz5cpNtgYBm2dQmij5Dd0
         9mfgMrmxxlHt02/8jCqc8HlKgrbUYGN+roTwkbML9uP4YPYMw6KluBdH91/eyFYUw2+v
         i+7/2U/BuglsPLsb9GqDqi6pp3uUdLmUZIIU9aN2LYEvyK7ir3p/CpV51a3V89QV6aGc
         rZC6UEbTr6PzuqRKHLuznt/OSEFqrUf+bLms6RPEnGOZ08o7jpbj3VhNyR3VBtq0fYmF
         VyBNvBarr7W8tRtCG7JZ6R0Bt6MgwvWG8W/KNkHPRnQphwoXlJ9+PIjCRlL3kKlTOGqO
         BoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731940438; x=1732545238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mad+mOcno2P0CIpC5U9uxqbBM+RxeN4q/RBh6+yxx1g=;
        b=gaoGAwHAhnS7V8qN7t/7zzDDqwpjH+UvI1oNLAjRm5EoskXOwjjWC83YpD5qcJXCOb
         YVtEibacwZD0WwVwncWlFfVg5Eao+6AF6l8SaG2B+hkyoE1gPXsntnXf+kRBynEkneia
         lI9BRsfS2LexGtfDgW0gMSV5dvhjaVI1ITDFtT2RZbUdkPVW9i2wrHBCWDru18il6Yo1
         R1eWWrFIY/niqvZ1mYFDj+HR+qmaeVjGcHNSTHtvTSmtfWb1w0iDn4PE4g1YZtc8ERJo
         mccq4gKF377MaHrbrxauvggcLBrb878r/W72WGRVFzA5n7cQYLekS/gy+lXd/ogmv2Sl
         UDHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVergLlKutY1o8V7SApky6epWHIj6I0k/5kfiAFKDKysJ4Qm+qbJ8xxRV6loItfsb+pLmHMOvu2CRSBykvZjnY2@lists.osmocom.org
X-Gm-Message-State: AOJu0Yx1zL5pw/dvwyQ8D/B/nfGJtECgdp01K6xpFdNbH7eYFMyl/Vf3
	S4NO9SbDNoxFMShNYEnEuqy3c1Gm/qCOBy/duwVU/YGUgghF+ArN
X-Google-Smtp-Source: AGHT+IF3SrGnsKmrF4jvHwe9jv6er3cYNAFkQ6BmUOZb81V3DDpEwoq4AchAw0/egZEddY1NEy8bEw==
X-Received: by 2002:a17:90b:3887:b0:2ea:98f1:c172 with SMTP id 98e67ed59e1d1-2ea98f1c2a5mr1425759a91.7.1731940436264;
        Mon, 18 Nov 2024 06:33:56 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ea81b0e2fasm1616926a91.52.2024.11.18.06.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:33:55 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v4 5/5] selftests: net: Add two test cases for link netns
Date: Mon, 18 Nov 2024 22:32:44 +0800
Message-ID: <20241118143244.1773-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241118143244.1773-1-shaw.leon@gmail.com>
References: <20241118143244.1773-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7V4VX3PKNJQOUPZU6J7752V7CRXNOKNZ
X-Message-ID-Hash: 7V4VX3PKNJQOUPZU6J7752V7CRXNOKNZ
X-Mailman-Approved-At: Tue, 26 Nov 2024 09:26:34 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7V4VX3PKNJQOUPZU6J7752V7CRXNOKNZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

 - Add test for creating link in another netns when a link of the same
   name and ifindex exists in current netns.
 - Add test for link netns atomicity - create link directly in target
   netns, and no notifications should be generated in current netns.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 tools/testing/selftests/net/Makefile        |  1 +
 tools/testing/selftests/net/netns-name.sh   | 10 ++++++
 tools/testing/selftests/net/netns_atomic.py | 39 +++++++++++++++++++++
 3 files changed, 50 insertions(+)
 create mode 100755 tools/testing/selftests/net/netns_atomic.py

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftes=
ts/net/Makefile
index 3d487b03c4a0..3aaa7950b0f0 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -34,6 +34,7 @@ TEST_PROGS +=3D gre_gso.sh
 TEST_PROGS +=3D cmsg_so_mark.sh
 TEST_PROGS +=3D cmsg_time.sh cmsg_ipv6.sh
 TEST_PROGS +=3D netns-name.sh
+TEST_PROGS +=3D netns_atomic.py
 TEST_PROGS +=3D nl_netdev.py
 TEST_PROGS +=3D srv6_end_dt46_l3vpn_test.sh
 TEST_PROGS +=3D srv6_end_dt4_l3vpn_test.sh
diff --git a/tools/testing/selftests/net/netns-name.sh b/tools/testing/se=
lftests/net/netns-name.sh
index 6974474c26f3..0be1905d1f2f 100755
--- a/tools/testing/selftests/net/netns-name.sh
+++ b/tools/testing/selftests/net/netns-name.sh
@@ -78,6 +78,16 @@ ip -netns $NS link show dev $ALT_NAME 2> /dev/null &&
     fail "Can still find alt-name after move"
 ip -netns $test_ns link del $DEV || fail
=20
+#
+# Test no conflict of the same name/ifindex in different netns
+#
+ip -netns $NS link add name $DEV index 100 type dummy || fail
+ip -netns $NS link add netns $test_ns name $DEV index 100 type dummy ||
+    fail "Can create in netns without moving"
+ip -netns $test_ns link show dev $DEV >> /dev/null || fail "Device not f=
ound"
+ip -netns $NS link del $DEV || fail
+ip -netns $test_ns link del $DEV || fail
+
 echo -ne "$(basename $0) \t\t\t\t"
 if [ $RET_CODE -eq 0 ]; then
     echo "[  OK  ]"
diff --git a/tools/testing/selftests/net/netns_atomic.py b/tools/testing/=
selftests/net/netns_atomic.py
new file mode 100755
index 000000000000..d350a3fc0a91
--- /dev/null
+++ b/tools/testing/selftests/net/netns_atomic.py
@@ -0,0 +1,39 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0
+
+import time
+
+from lib.py import ksft_run, ksft_exit, ksft_true
+from lib.py import ip
+from lib.py import NetNS, NetNSEnter
+from lib.py import RtnlFamily
+
+
+def test_event(ns1, ns2) -> None:
+    with NetNSEnter(str(ns1)):
+        rtnl =3D RtnlFamily()
+
+    rtnl.ntf_subscribe("rtnlgrp-link")
+
+    ip(f"netns set {ns1} 0", ns=3Dstr(ns2))
+
+    ip(f"link add netns {ns2} link-netnsid 0 dummy1 type dummy")
+    ip(f"link add netns {ns2} dummy2 type dummy", ns=3Dstr(ns1))
+
+    ip("link del dummy1", ns=3Dstr(ns2))
+    ip("link del dummy2", ns=3Dstr(ns2))
+
+    time.sleep(1)
+    rtnl.check_ntf()
+    ksft_true(rtnl.async_msg_queue.empty(),
+              "Received unexpected link notification")
+
+
+def main() -> None:
+    with NetNS() as ns1, NetNS() as ns2:
+        ksft_run([test_event], args=3D(ns1, ns2))
+    ksft_exit()
+
+
+if __name__ =3D=3D "__main__":
+    main()
--=20
2.47.0

