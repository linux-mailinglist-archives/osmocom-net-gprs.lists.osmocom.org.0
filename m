Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F409D10A7
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:23 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7256B182002;
	Mon, 18 Nov 2024 12:38:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKXKZVsy2c-N; Mon, 18 Nov 2024 12:38:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 51E45181FB8;
	Mon, 18 Nov 2024 12:38:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 3A71738A18D0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:22 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 212D717B34B
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l5lwcDuann8G for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 13 Nov 2024 12:58:21 +0000 (UTC)
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by mail.osmocom.org (Postfix) with ESMTPS id 56BDB17B33E
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:58:20 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2e2ed2230d8so5459893a91.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 04:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731502699; x=1732107499; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dFTsOSdSHxPXXC/kmCtPA19UOd1z5UErpUP4tQUDFm4=;
        b=jIdiSiaxPrLpTTdbjkzg8yqNt6f8ET7hV9v7EdjLy2p+oACQmlxwBRhueBCBWhdPNh
         tH05zn4/09IBsjFd68ClOm3Pe7FsdzfVJolAwKzHteZCRTKb7zbWt7Orhik/SCTSpSnQ
         4vX2uO2Kr6PTmHBk4DC7VihXO6acyJg/YNTHaqUkRjULoM0YbMKhZIzJKMRHr1hKEQ0l
         R5qJsiSPGSeNiMMpZmOyNU9MJNWHgG7epoRM0gv8nexjzhovlP7mff3VvoPsPxedUfIY
         kTdBdLVIXQ+O+tD+s3s6+ePkYyjp+376q/qDgIDW5G372Ib7UTQ7c6VLvpiFCbuAubFU
         quGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731502699; x=1732107499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFTsOSdSHxPXXC/kmCtPA19UOd1z5UErpUP4tQUDFm4=;
        b=FQfoRYKesTSCmn/cMoV7vxcGaIJJSGSbmH1xD0zX/6nqwcicwMaJk+diOoQOAsj4vd
         GGs3FBKFNnC/6qzeOAGOmojmUIAR/QyJKMnOoQvrVNSOd7lrzEZxHYAfapHGobjuCTRI
         1vBVzhSxOu5BcYjQZ7VG7EjkQaAnxMPsxaUtXZGL3r/RWDA7InZsB2onnruIpriCRXz4
         W6Sy/kFlE96wgPkTOca7J7Lp6q5SQVA9utsh8wI+zyCGeHMjnDjLMSJfZ5AhwlkkF3TV
         lLYvx+nKWD9rln20d1aMHmoEIlfbL6EfzQPilC9QG60e7LZLmO3Zq2l/el6jPFC076j3
         WLRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX5ba7R+ujdDRQO6qHSYP3wGGo5VVnfZDQNUSULPuIM9djp6u9eIAnxFhUGYBPcl0usgDsmXAHSlJI6xlRuckr@lists.osmocom.org
X-Gm-Message-State: AOJu0YyScst+jp6QGyikl9lmDlhNuHYW0OKqrtDskyKm0hPGHq27snWB
	W8gsG45IFLctcWjFGyoZZJL2GvAQlt6sQOhcozoWdcUIgLKQPHxE
X-Google-Smtp-Source: AGHT+IG3aP3jfG+H+mqTGfWaQF6eC/hcm8KAxQSToRubUMwTZod3v43r/5qYZbnllxo9jc+4RsAB2Q==
X-Received: by 2002:a17:90b:1810:b0:2e2:cd5e:7eef with SMTP id 98e67ed59e1d1-2e9b1773411mr26583707a91.27.1731502698852;
        Wed, 13 Nov 2024 04:58:18 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f8ed0esm1398632a91.40.2024.11.13.04.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 04:58:18 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v3 5/6] selftests: net: Add python context manager for netns entering
Date: Wed, 13 Nov 2024 20:57:14 +0800
Message-ID: <20241113125715.150201-6-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113125715.150201-1-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IWAQHIVSK3Y3GYHZIVR4FFIQQNUVAYHX
X-Message-ID-Hash: IWAQHIVSK3Y3GYHZIVR4FFIQQNUVAYHX
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/IWAQHIVSK3Y3GYHZIVR4FFIQQNUVAYHX/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Change netns of current thread and switch back on context exit.
For example:

    with NetNSEnter("ns1"):
        ip("link add dummy0 type dummy")

The command be executed in netns "ns1".

Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
---
 tools/testing/selftests/net/lib/py/__init__.py |  2 +-
 tools/testing/selftests/net/lib/py/netns.py    | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/lib/py/__init__.py b/tools/testi=
ng/selftests/net/lib/py/__init__.py
index 54d8f5eba810..e2d6c7b63019 100644
--- a/tools/testing/selftests/net/lib/py/__init__.py
+++ b/tools/testing/selftests/net/lib/py/__init__.py
@@ -2,7 +2,7 @@
=20
 from .consts import KSRC
 from .ksft import *
-from .netns import NetNS
+from .netns import NetNS, NetNSEnter
 from .nsim import *
 from .utils import *
 from .ynl import NlError, YnlFamily, EthtoolFamily, NetdevFamily, RtnlFa=
mily
diff --git a/tools/testing/selftests/net/lib/py/netns.py b/tools/testing/=
selftests/net/lib/py/netns.py
index ecff85f9074f..8e9317044eef 100644
--- a/tools/testing/selftests/net/lib/py/netns.py
+++ b/tools/testing/selftests/net/lib/py/netns.py
@@ -1,9 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0
=20
 from .utils import ip
+import ctypes
 import random
 import string
=20
+libc =3D ctypes.cdll.LoadLibrary('libc.so.6')
+
=20
 class NetNS:
     def __init__(self, name=3DNone):
@@ -29,3 +32,18 @@ class NetNS:
=20
     def __repr__(self):
         return f"NetNS({self.name})"
+
+
+class NetNSEnter:
+    def __init__(self, ns_name):
+        self.ns_path =3D f"/run/netns/{ns_name}"
+
+    def __enter__(self):
+        self.saved =3D open("/proc/thread-self/ns/net")
+        with open(self.ns_path) as ns_file:
+            libc.setns(ns_file.fileno(), 0)
+        return self
+
+    def __exit__(self, exc_type, exc_value, traceback):
+        libc.setns(self.saved.fileno(), 0)
+        self.saved.close()
--=20
2.47.0

