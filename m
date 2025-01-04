Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id C07A6A05DEC
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:29 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9B0341BD183;
	Wed,  8 Jan 2025 14:04:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ZBHK9w4HNX9; Wed,  8 Jan 2025 14:04:29 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DA5F51BD0A5;
	Wed,  8 Jan 2025 14:04:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8A80D38A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:17 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 666B21B97BF
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9y9fTQkL5n41 for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:59:16 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by mail.osmocom.org (Postfix) with ESMTPS id A495D1B97BA
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:16 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-219f8263ae0so138671695ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995555; x=1736600355; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0TVXDX/Oq9IB0mhgmi61TXIFVtPNPu1PWKjPd5bzuM=;
        b=R7OmwlnD1mwUcnqWEfLGsVLl0EE95yqGdyXpdU2di9CzVPKXe4Ln+fNpOsgZhkfcad
         OVbtGv4lQC38Yxq9Te+PvsS4ZH5cZWsDROI6MhrpkNFPBspfLs3cn94QL1kUiuLPWOml
         3s+ddovPTxxydYaNzMKOmiqlDLM2cL0KIbYrerdbxjgmkZLPC64I81AG6TcxaxjtrIkN
         Z4Uw72vKqwPlZLCB7xwjs/etwxENlPc9gPyHiBBZLKLE3Hi5/WgJ6Nh0iOELpZk0WCCu
         0CVvbf5b1EfF1eGqOgmPiKcSciGNx1HprdhOt0qOnH5knjqnATFE51MJc1Fwpk+LMVFI
         yAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995555; x=1736600355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0TVXDX/Oq9IB0mhgmi61TXIFVtPNPu1PWKjPd5bzuM=;
        b=HqODcXlMii5Tj5b1pSovQSq/CRY2g1CX6/fdr0go50bDH/rGW/g3hWJWtcfcR0RBe2
         lHk5UCeO4CN73Jg/YCQzKUaF/YYDIP2aJusCQBmwGVzCl2BwJ78PxrFZWm/pBoO3p8S/
         VZ016+bP4qV17dX2zJrdS7SAGOperTHfHcGfwvofGC2B1Wf+BNR7ApVoH3FWfhcClE/7
         wzIwmBLt3eR3htKp3krbBmFBAb3T5dbGDT9CZ22tJXNrh38jsWdOw/gLmXfeM23pyz89
         H0nkabBM6UwZc10+15/b7w3kAvvHXV10fGz3gNRywiFxlAuCQY58x8zT+1XXyW8TysEu
         75zw==
X-Forwarded-Encrypted: i=1; AJvYcCXCAiuopcbS2G/KTvpJ/pu7h3Hq2DgbuvsZOplpyOQeX8iN7eZuZ4EXxkX/XpJDoJ3oEXRymxtuTY1m01J/2mTw@lists.osmocom.org
X-Gm-Message-State: AOJu0Yy6QObnLLgRMAing1sQj25HnQoJNNPYhc2RBQE/YP2FL0bOtkzf
	/om1tyEBYfHfnnH4DJ6oifKrZmgwjuPOy6RSI+qQvT3JL8ovd8gk
X-Gm-Gg: ASbGncuKKUZinMnWe3LSR31aGA8xEy5U3qykeIIzKa2Ouu6j0xJI2T89TcvZDFrqOJL
	AV0XKVu/ucyuaIb9xw69BRWOJeSF32dscaCrGsuDodEwknr+5lVnSwXP8nlzkOHZM+8H6WwUlV9
	XLf8/sVCuV8im3WycSGQeMZuJo4Rtqa7onaGpSFtnCG0iphDFoqvUNs8jcMyxX8v5Rxow1R1msI
	8a3Sz01qGYRVOvyDbP94YyKk6KkLvkrHX0KbYAHo68j7nE=
X-Google-Smtp-Source: AGHT+IEUXpwO+l/hEGdKf9OR2BDjiiFxnC7t4NGPTcXQ7io7HhNpF9KYbA9KthQzQ0Wr8hVvBSWkSg==
X-Received: by 2002:a05:6a21:1519:b0:1e1:cdff:5f18 with SMTP id adf61e73a8af0-1e5e044ef7fmr72396060637.4.1735995555179;
        Sat, 04 Jan 2025 04:59:15 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:59:14 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 11/11] selftests: net: Add test cases for link and peer netns
Date: Sat,  4 Jan 2025 20:57:32 +0800
Message-ID: <20250104125732.17335-12-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 26WUTXUOA6YWTLEIN2PPAFFJE6AS7OMB
X-Message-ID-Hash: 26WUTXUOA6YWTLEIN2PPAFFJE6AS7OMB
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:07 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/26WUTXUOA6YWTLEIN2PPAFFJE6AS7OMB/>
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
 tools/testing/selftests/net/config        |   5 +
 tools/testing/selftests/net/link_netns.py | 141 ++++++++++++++++++++++
 tools/testing/selftests/net/netns-name.sh |  10 ++
 4 files changed, 157 insertions(+)
 create mode 100755 tools/testing/selftests/net/link_netns.py

diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftes=
ts/net/Makefile
index 73ee88d6b043..df07a38f884f 100644
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
diff --git a/tools/testing/selftests/net/config b/tools/testing/selftests=
/net/config
index 5b9baf708950..ab55270669ec 100644
--- a/tools/testing/selftests/net/config
+++ b/tools/testing/selftests/net/config
@@ -107,3 +107,8 @@ CONFIG_XFRM_INTERFACE=3Dm
 CONFIG_XFRM_USER=3Dm
 CONFIG_IP_NF_MATCH_RPFILTER=3Dm
 CONFIG_IP6_NF_MATCH_RPFILTER=3Dm
+CONFIG_IPVLAN=3Dm
+CONFIG_CAN=3Dm
+CONFIG_CAN_DEV=3Dm
+CONFIG_CAN_VXCAN=3Dm
+CONFIG_NETKIT=3Dy
diff --git a/tools/testing/selftests/net/link_netns.py b/tools/testing/se=
lftests/net/link_netns.py
new file mode 100755
index 000000000000..aab043c59d69
--- /dev/null
+++ b/tools/testing/selftests/net/link_netns.py
@@ -0,0 +1,141 @@
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

