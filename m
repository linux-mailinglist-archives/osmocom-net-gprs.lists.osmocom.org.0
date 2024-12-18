Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7889FF14D
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:48 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 49BC91B6A32;
	Tue, 31 Dec 2024 18:40:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XVU4WdBixeS0; Tue, 31 Dec 2024 18:40:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0DFF51B68D2;
	Tue, 31 Dec 2024 18:40:32 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4630A38A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:57 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2CC351ADBFA
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wUyljeU5fO93 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:10:56 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by mail.osmocom.org (Postfix) with ESMTPS id 7B7811ADBF5
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:56 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-21675fd60feso67027885ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527454; x=1735132254; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cEe2srsfNQuo3cFtk4Exr0i8mchzSjDC/1TEtzbMZ8U=;
        b=j9eN61Y8tYYsayUvaC3lI6aKk1mjQzbdu/TMX7jRYNj8YX9KowS4EDcmGiY3DfMFEo
         ANboK3pum9jCkBLuBlvphVQlNKTVUa7Ktrw+XYcBIYk2YKA9SQMGXEK8xxjm7voTVFwS
         +ji9AZeuNPOJ6qPZptDqAsKfnFmJHQT+hbctKuMgaXeisSLfNO8vS5hEXHxGiZszo/Pr
         1DdAE0ZjvWduNciRxKcczdcdXvhyqH9ZHvPLv5h6Zgao2QeaAZkZ2qIl+TWnXb2ZXLYz
         NVs50ln7A8Ks4YrPP82REcTyHamV2d+vfGuecV7mNrChPk0q5Zf+fBgaMu8OtmhYEDuS
         S1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527454; x=1735132254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cEe2srsfNQuo3cFtk4Exr0i8mchzSjDC/1TEtzbMZ8U=;
        b=h1twTvNQiwZAWRMh+o5kCqHlGyRVTfHM4ZO8izHowzMxny1SqiW+rM6Yr5x6E36jeD
         qinTKX1+UgqBnifv5+V8BKA6sPp76+4+DPRNtiRQtjR3HB/goAVFV7obgEAz1QnZCobY
         IvS1IADiC/1m5pMCRUJvOrdCU4laSwsj7q8jwRuji4p+NCr6bj+HDtIoUBVFwjuZfSQI
         EkDq6dVZjoW+dAfOykW5bt4m0w89MaXVwkqO+5hkg0gW3Bs7vE+CGwNmzloowXXO0jSo
         FKisNgPM13ml0UKLjWVQM1qJC/mWqL4uyrzew0XYquOoOqzvpDvRFiSpgpADbxa5D+IO
         1hAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbsnHdP7aRpvBOp05xFaYUdFMmRi+/FXtMNwsxLuoMGd4x1w0bp+ZcFKb8WQoaEP8k5XnkiItOXGx29Flac6E/@lists.osmocom.org
X-Gm-Message-State: AOJu0Yw4sGX0yjxZqbrTKFEagzumPZ+nESZVNl/ulb2sFWFryzTecW2w
	8WgG49px9PpIR2eL0KqUWfugAengwQP9DYh7hWzOZVgIUBOI/t22pRTd4blzBmw=
X-Gm-Gg: ASbGncvvd+MCcrlN0kdO0EmqCto3jNsoPsf6GQYQV9Iu6VQtReUO9S8op6/T5RCWtcT
	3jCHKlkhcc5j4+hdMEDe4HDphctq3Ojq/OiFg6JFuXodg+K2xYMHpixR/bOkKQKH6AUJrC2yrh6
	FlNSZ9ZKY12G+AXTomd9OdKEMSUbwoN0YREUYt+wyFxwrR9ZZ2WHqDByylZRKIpfhi7NRnsVZlY
	4iPt6ooOLdrz0Bf9e+2oI44qulcxfrOv2IByNm8hnDsrUc=
X-Google-Smtp-Source: AGHT+IGW2ivQBr6ib7m/cmjzjnkogelPQGpBxwq3iWWAr6K+/MU6YNZqq3IUhKj+TIVnGpc4fMVSow==
X-Received: by 2002:a17:902:f985:b0:216:6c77:7bbb with SMTP id d9443c01a7336-218d70dc242mr29804885ad.17.1734527454469;
        Wed, 18 Dec 2024 05:10:54 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:10:53 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 11/11] selftests: net: Add test cases for link and peer netns
Date: Wed, 18 Dec 2024 21:09:09 +0800
Message-ID: <20241218130909.2173-12-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WFJNJTXTDQID47LTKATOOU3KRHG5I7FB
X-Message-ID-Hash: WFJNJTXTDQID47LTKATOOU3KRHG5I7FB
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:30 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/WFJNJTXTDQID47LTKATOOU3KRHG5I7FB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

 - Add test for creating link in another netns when a link of the same
   name and ifindex exists in current netns.
 - Add test to verify that link is created in target netns directly -
   no link new/del events should be generated in link netns or current
   netns.
 - Add test cases to verify that link-netns is set as expected for
   various drivers and combination of namespace-related parameters.

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 tools/testing/selftests/net/Makefile      |   1 +
 tools/testing/selftests/net/link_netns.py | 142 ++++++++++++++++++++++
 tools/testing/selftests/net/netns-name.sh |  10 ++
 3 files changed, 153 insertions(+)
 create mode 100755 tools/testing/selftests/net/link_netns.py

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftes=
ts/net/Makefile
index f09bd96cc978..cc6665212304 100644
--- a/tools/testing/selftests/net/Makefile
+++ b/tools/testing/selftests/net/Makefile
@@ -35,6 +35,7 @@ TEST_PROGS +=3D cmsg_so_mark.sh
 TEST_PROGS +=3D cmsg_so_priority.sh
 TEST_PROGS +=3D cmsg_time.sh cmsg_ipv6.sh
 TEST_PROGS +=3D netns-name.sh
+TEST_PROGS +=3D link_netns.py
 TEST_PROGS +=3D nl_netdev.py
 TEST_PROGS +=3D srv6_end_dt46_l3vpn_test.sh
 TEST_PROGS +=3D srv6_end_dt4_l3vpn_test.sh
diff --git a/tools/testing/selftests/net/link_netns.py b/tools/testing/se=
lftests/net/link_netns.py
new file mode 100755
index 000000000000..c4b2ddf201ff
--- /dev/null
+++ b/tools/testing/selftests/net/link_netns.py
@@ -0,0 +1,142 @@
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
+LINK_NETNSID =3D 100
+
+
+def test_event() -> None:
+    with NetNS() as ns1, NetNS() as ns2:
+        with NetNSEnter(str(ns2)):
+            rtnl =3D RtnlFamily()
+
+        rtnl.ntf_subscribe("rtnlgrp-link")
+
+        ip(f"netns set {ns2} {LINK_NETNSID}", ns=3Dstr(ns1))
+        ip(f"link add netns {ns1} link-netnsid {LINK_NETNSID} dummy1 typ=
e dummy")
+        ip(f"link add netns {ns1} dummy2 type dummy", ns=3Dstr(ns2))
+
+        ip("link del dummy1", ns=3Dstr(ns1))
+        ip("link del dummy2", ns=3Dstr(ns1))
+
+        time.sleep(1)
+        rtnl.check_ntf()
+        ksft_true(rtnl.async_msg_queue.empty(),
+                  "Received unexpected link notification")
+
+
+def validate_link_netns(netns, ifname, link_netnsid) -> bool:
+    link_info =3D ip(f"-d link show dev {ifname}", ns=3Dnetns, json=3DTr=
ue)
+    if not link_info:
+        return False
+    return link_info[0].get("link_netnsid") =3D=3D link_netnsid
+
+
+def test_link_net() -> None:
+    configs =3D [
+        # type, common args, type args, fallback to dev_net
+        ("ipvlan", "link dummy1", "", False),
+        ("macsec", "link dummy1", "", False),
+        ("macvlan", "link dummy1", "", False),
+        ("macvtap", "link dummy1", "", False),
+        ("vlan", "link dummy1", "id 100", False),
+        ("gre", "", "local 192.0.2.1", True),
+        ("vti", "", "local 192.0.2.1", True),
+        ("ipip", "", "local 192.0.2.1", True),
+        ("ip6gre", "", "local 2001:db8::1", True),
+        ("ip6gre", "", "local 2001:db8::1", True),
+        ("ip6tnl", "", "local 2001:db8::1", True),
+        ("vti6", "", "local 2001:db8::1", True),
+        ("sit", "", "local 192.0.2.1", True),
+        ("xfrm", "", "if_id 1", True),
+    ]
+
+    with NetNS() as ns1, NetNS() as ns2, NetNS() as ns3:
+        net1, net2, net3 =3D str(ns1), str(ns2), str(ns3)
+
+        # prepare link netnsid  and a dummy link needed by certain drive=
rs
+        ip(f"netns set {net3} {LINK_NETNSID}", ns=3Dstr(net2))
+        ip("link add dummy1 type dummy", ns=3Dnet3)
+
+        cases =3D [
+            # source, "netns", "link-netns", expected link-netns
+            (net3, None, None, None, None),
+            (net3, net2, None, None, LINK_NETNSID),
+            (net2, None, net3, LINK_NETNSID, LINK_NETNSID),
+            (net1, net2, net3, LINK_NETNSID, LINK_NETNSID),
+        ]
+
+        for src_net, netns, link_netns, exp1, exp2 in cases:
+            tgt_net =3D netns or src_net
+            for typ, cargs, targs, fb_dev_net in configs:
+                cmd =3D "link add"
+                if netns:
+                    cmd +=3D f" netns {netns}"
+                if link_netns:
+                    cmd +=3D f" link-netns {link_netns}"
+                cmd +=3D f" {cargs} foo type {typ} {targs}"
+                ip(cmd, ns=3Dsrc_net)
+                if fb_dev_net:
+                    ksft_true(validate_link_netns(tgt_net, "foo", exp1),
+                              f"{typ} link_netns validation failed")
+                else:
+                    ksft_true(validate_link_netns(tgt_net, "foo", exp2),
+                              f"{typ} link_netns validation failed")
+                ip(f"link del foo", ns=3Dtgt_net)
+
+
+def test_peer_net() -> None:
+    types =3D [
+        "vxcan",
+        "netkit",
+        "veth",
+    ]
+
+    with NetNS() as ns1, NetNS() as ns2, NetNS() as ns3, NetNS() as ns4:
+        net1, net2, net3, net4 =3D str(ns1), str(ns2), str(ns3), str(ns4=
)
+
+        ip(f"netns set {net3} {LINK_NETNSID}", ns=3Dstr(net2))
+
+        cases =3D [
+            # source, "netns", "link-netns", "peer netns", expected
+            (net1, None, None, None, None),
+            (net1, net2, None, None, None),
+            (net2, None, net3, None, LINK_NETNSID),
+            (net1, net2, net3, None, None),
+            (net2, None, None, net3, LINK_NETNSID),
+            (net1, net2, None, net3, LINK_NETNSID),
+            (net2, None, net2, net3, LINK_NETNSID),
+            (net1, net2, net4, net3, LINK_NETNSID),
+        ]
+
+        for src_net, netns, link_netns, peer_netns, exp in cases:
+            tgt_net =3D netns or src_net
+            for typ in types:
+                cmd =3D "link add"
+                if netns:
+                    cmd +=3D f" netns {netns}"
+                if link_netns:
+                    cmd +=3D f" link-netns {link_netns}"
+                cmd +=3D f" foo type {typ}"
+                if peer_netns:
+                    cmd +=3D f" peer netns {peer_netns}"
+                ip(cmd, ns=3Dsrc_net)
+                ksft_true(validate_link_netns(tgt_net, "foo", exp),
+                          f"{typ} peer_netns validation failed")
+                ip(f"link del foo", ns=3Dtgt_net)
+
+
+def main() -> None:
+    ksft_run([test_event, test_link_net, test_peer_net])
+    ksft_exit()
+
+
+if __name__ =3D=3D "__main__":
+    main()
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
--=20
2.47.1

