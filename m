Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C729D10A8
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:25 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 744AB182032;
	Mon, 18 Nov 2024 12:38:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HJ3qBDafV_oA; Mon, 18 Nov 2024 12:38:25 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 29595181FD4;
	Mon, 18 Nov 2024 12:38:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 319A338A18D0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:30 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 19EFD17B376
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:30 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KdbV3V9HcDLa for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 13 Nov 2024 12:58:29 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by mail.osmocom.org (Postfix) with ESMTPS id 6A92417B371
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:28 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2e9e377aeadso1740150a91.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 04:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731502707; x=1732107507; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqrrLk6+C692qIcVQOp9KatlJAZHjGryjisTBrwbzoI=;
        b=VhQLItB4gYghPz6SPwxa9qa1EV3jSm/inUQ58kjlEjNbDMcWnMXzcKw/4IrEvG8GgD
         93kVvJhs0iu1vYlE1Ru1AWNO+09l3XC+qtVgGJDv6u/GSYafjV2QXwnEk8KLbrtkEQ4h
         oWjj6bP3gJJCqWu9dSXSOk6mBgg+/WV7RutlUfb8LTjlOetPXO7lK+jID6yFtPH5EhAl
         Ago97O+3RP3xWzvwTSgFOA8s95Htcrm72k7ZZ2Fo4Is2etOCf6MBhldUkvedLWnoHGzx
         9qHov0Ec/5J5hTQ3TtYsBN+gWKVVDlDmeJHSTZ/74MyDUuBxczxDV2ZTysUjRTYFnaS2
         9SXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731502707; x=1732107507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tqrrLk6+C692qIcVQOp9KatlJAZHjGryjisTBrwbzoI=;
        b=c9eOR3TiS/06xqQNCBMdukfSM6vK714Yr+8Ni/KVTx0KK28sXzR+/NmrtTF/1dHdUS
         oeW/qMuJsZF8uMXCWZk6ct+p6oTnvqXj1XsfkSGz3AegMwVoE2ahr0EvFXN+vvU/a5ab
         JXXDMmjsJJEHpMq6UYGvHCSNoihXpcVb83hMBY9qHTupvUxPmSUEDlhC+/Xoi3QZdcvE
         TuaF+3fr2gqgRVSmGfIfnKC/cSXQg3QRxlnQGC6aivv8r9zFGNjYMQPUvNHa3gbJyMmK
         FXnfetG4sCB0YCnNheJ+IgVXF208zyQrSswfOoFAbe2j0ugY84hPG29+lyCcOmA/ux6n
         AULA==
X-Forwarded-Encrypted: i=1; AJvYcCV8vLohvcHqFY9+c6gPVWgXShB2VePTXYYSeXGLagt2rB2X4AqVu7sFy6+kbzGUaKNBZgjSZ/NWlLPWOFrOA+mr@lists.osmocom.org
X-Gm-Message-State: AOJu0YxmtwZGeyx3BTQp00iw+VZRLqjVSnf32VivvVyyp1WOTq9lYjbO
	TiC/n/gUVpZx/8zUB1mxXHhau/4DXXtoH8ISV6Al4KUh4JI74EI5
X-Google-Smtp-Source: AGHT+IE/vtXg73mPc9UwMocIh3JnpJ4Nx9KNFh/J++F7E0J+l3pL2CaZbF6bhZwKtLiUviIv9q/4Rw==
X-Received: by 2002:a17:90b:3c12:b0:2e2:b2ce:e41e with SMTP id 98e67ed59e1d1-2e9f2c78421mr3106773a91.13.1731502707231;
        Wed, 13 Nov 2024 04:58:27 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f8ed0esm1398632a91.40.2024.11.13.04.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 04:58:26 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v3 6/6] selftests: net: Add two test cases for link netns
Date: Wed, 13 Nov 2024 20:57:15 +0800
Message-ID: <20241113125715.150201-7-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113125715.150201-1-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EW6CZU6Y26EOJMAWL5UKD4YF3LYG75PQ
X-Message-ID-Hash: EW6CZU6Y26EOJMAWL5UKD4YF3LYG75PQ
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EW6CZU6Y26EOJMAWL5UKD4YF3LYG75PQ/>
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
 tools/testing/selftests/net/netns_atomic.py | 38 +++++++++++++++++++++
 3 files changed, 49 insertions(+)
 create mode 100755 tools/testing/selftests/net/netns_atomic.py

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftes=
ts/net/Makefile
index 2b2a5ec7fa6a..4c15a115c251 100644
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
index 000000000000..e6c4147ef75e
--- /dev/null
+++ b/tools/testing/selftests/net/netns_atomic.py
@@ -0,0 +1,38 @@
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
+    ksft_true(not rtnl.async_msg_queue, "Received unexpected link notifi=
cation")
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

