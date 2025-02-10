Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id ED900A370A3
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:30 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E0C6B1E8945;
	Sat, 15 Feb 2025 20:34:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RniA3Mw696PP; Sat, 15 Feb 2025 20:34:29 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3FD2D1E8851;
	Sat, 15 Feb 2025 20:34:21 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0A98738A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:32:00 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E60EA1E1C89
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pSfNRFVFyvim for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:59 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by mail.osmocom.org (Postfix) with ESMTPS id 398EE1E1C84
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:58 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-21f3e2b4eceso80507675ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194317; x=1739799117; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jk0dxyoWsu5lRO3R+Rz0JbRWJlXzABQyZSbO//NLaUs=;
        b=M8+dHpvyLN1dUIEIKkEDmFjyByzkeZS86OwoLR/EVINDB1lEDS8ARkx8gfpT4pDRiP
         8y8u/DpSjyOJUbsVtxcFzxMARz/v15uEJoUPe7x98xqeLinllcx2kG0VaEg5PSQwvfmk
         enwOuJlRTIVFOL9FE0+a1VJwiP8Hdns7wWjzfHe+UyYDB56NztSmeI5jPmwLwUoPUKdi
         BFblahQSgb7MblRdIrObtIcjCmvq9t+jrrWLE6AAbxkDYeOgQ7YY95v+CAybO4xhnSOE
         cViio6i5zpAAsDbku2Lcf9DWdasqcAPoZZxmvvE4b9rH32RK+L1rYdlhY37WG2uACsVV
         Q4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194317; x=1739799117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jk0dxyoWsu5lRO3R+Rz0JbRWJlXzABQyZSbO//NLaUs=;
        b=JkPy45HdcNU/XC10xpTLs+oJqwWofAALF186dqwTRPyRq6NqK1VZV9LLGAEsJZLCeB
         vAD/rPDFOZhgwjdwkW9JKPV2zI4z/hBW69vyBzMB3xguKrfJmFl+I9XdV8Vr/kXFODRi
         omQbXwaGaBib7gbI8qIpJlBhw2ZAIsbX0PE7P4pTMSz1EBYoLz69Zi4caTT/gpIbN7si
         kU4z1G+7R0FOpuB+VRkJD3t2U/mULyrnhJs9PUSquS/1guiHHVSFJT1K7hDWKsFZbuHa
         zdJ9WLLarUAQepyTtLjcNlt3WJ49M0/LpQ6k1r5XhNwA9ah/6vhyb9bfYrm+6b9r+s7r
         B38g==
X-Forwarded-Encrypted: i=1; AJvYcCVL3+ekAuq5jYBJFNgv0xnhR0p6mtNzHoSSsrHDmzK1dhbSlLL6AF46XK5Ek6zAzFy1Iu0A7Qln5QO8rZoQiQjh@lists.osmocom.org
X-Gm-Message-State: AOJu0YyqFp5DI2BWKg1qS0V3VuuH36qDTfWqNaEe2PNX3Jk31G0zHKsl
	hG6EbtjALnrR1VJVAZzt2CYEdBfwKx2DD9Vju7T7OuQ/lDwKmlX/
X-Gm-Gg: ASbGnctHG9R+Ur+EaKQ89TlCryDnWXl7JjJI9r494J2nG+nuYxc1jxFfRNsabCrCznl
	ZcXnA9vzCc7jdi7g8ADptu50GRq8HtAXGcUgD7UWyU02xSxhjBO+xvhiYWys5FaqwyLLhwtAY9Z
	AypO5RhPnuxan39XBgdC4eiHztx1mokq//R6UeKv9tV5eET1kunvcsZTp+979ND67cpIHYq5Vso
	4KUqGCqkaHsD7DV57hf76qOPdrUg8jkhlWY703bCyhS5eLQzm9tk1Xmdfi3n4khbjTsGqutoGLK
	QMJOAg==
X-Google-Smtp-Source: AGHT+IFvHDtUC7UviecjfNl3hpHTbMhh0EOi41PhfMqFPmLkJsOvzu+7RGuTxjt6Zfs/TZjuhdiWxA==
X-Received: by 2002:a17:902:f60a:b0:21e:feac:8b99 with SMTP id d9443c01a7336-21f4e10da1bmr232900525ad.0.1739194317162;
        Mon, 10 Feb 2025 05:31:57 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:56 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 11/11] selftests: net: Add test cases for link and peer netns
Date: Mon, 10 Feb 2025 21:30:02 +0800
Message-ID: <20250210133002.883422-12-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FQZCQ33ZXHWPS7HK4HSCLOJBUWIEEVYM
X-Message-ID-Hash: FQZCQ33ZXHWPS7HK4HSCLOJBUWIEEVYM
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:47 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FQZCQ33ZXHWPS7HK4HSCLOJBUWIEEVYM/>
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
2.48.1

