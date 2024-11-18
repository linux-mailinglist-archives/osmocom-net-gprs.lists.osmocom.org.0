Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCEB9D945B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 26 Nov 2024 10:26:55 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A02E5191BDD;
	Tue, 26 Nov 2024 09:26:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgGhqtiXzkih; Tue, 26 Nov 2024 09:26:55 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 08DCD191BAB;
	Tue, 26 Nov 2024 09:26:51 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ABC1F38A1B4B
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:50 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 93C8318245E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8H-o6E6GgcwX for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 18 Nov 2024 14:33:49 +0000 (UTC)
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by mail.osmocom.org (Postfix) with ESMTPS id E7B47182459
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:49 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-7e6d04f74faso2787564a12.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 06:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731940428; x=1732545228; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dFTsOSdSHxPXXC/kmCtPA19UOd1z5UErpUP4tQUDFm4=;
        b=jVLOaV0OnbLo/bWs4h6ZA/1gN8ECGyTHEdGSXstG2dWReap2sSDC4s2MV6o7AEQE4Y
         NfzRqR5Y69t7+fFcSzboEPVioTGO7ODFcHTlE7YQWHJPDOmL87dapTy7P3nT6tOnTna2
         55g0BCXFXroW08odeFhT8uoUHsdDN6GrzOyocEuFrPz1q8PMV+AgTMTAG1F+nEaKfn5Y
         vRkC5OYGplx251RyIbJHlnensUCcYLT3QVs+7DjfrRHjmGvFowxlQxOq5ZJXHJDdIbHe
         8w3ta2WAZDy/0tlC8dBVpAB1TQhWAw6PJWs6xG1y6ZEomXFpS4m3fRyazAeYwQ8pWho3
         Ptmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731940428; x=1732545228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFTsOSdSHxPXXC/kmCtPA19UOd1z5UErpUP4tQUDFm4=;
        b=pZ2pA+pNsPC2hRR3MrNgZEWeVkTtm/2XynTJQeQcwkHkSIl1ArAW8mFR95iSWL4bD5
         sVZRYTPZIO/kJwVAYjUvZupJVa/FzJCDTACVxwKAxndb0Bd8jgAxcPU1WzehCd8PFGVJ
         Z+EZTs+Y7ZmeVwJcgXkGk+JjrEBdZEFNGzT/xw1vYDWuzVxlYgfjJy1EeWT2FBYy3WjG
         2uHZRA6pm3oTJ6Cu+Ec7Gr7QV9O3tur4m/OiN4/uu9oyqjCSF/OEj97ZQL5hL/4jKd+H
         aMZcU+cfPBrXUOQHUajVEdvNm/yLv4Ffv1E1EyTv5HuyxFMsv7P9OQgLDnehfOufovI8
         4x2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUFa+US/l1cMTq+C9kScCqWL5gAuKJq4BhhLViW21pc46p0yILG17z3HkwvMDh5iF23mvVtk2T9avPLkQJ5fg1A@lists.osmocom.org
X-Gm-Message-State: AOJu0Yy9fT3+KiHZ7lPvSjdoURkfLwap5PPLO9EK/wdKITu8nFDwUp0r
	txRaWW6wVsqQyQdAIImzMoKGz4InMF7w8O0WH9QNuTOuWfxVZS/N
X-Google-Smtp-Source: AGHT+IEB4OLbXUI9lGpusUMTTQj7CZMlri2szirQ6bOEHE+aXQRtMaJMjzV66+oDEF7uQxq+tjw2ug==
X-Received: by 2002:a17:90b:4a87:b0:2ea:7bdd:f320 with SMTP id 98e67ed59e1d1-2ea7bddf3c1mr5084481a91.1.1731940427545;
        Mon, 18 Nov 2024 06:33:47 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ea81b0e2fasm1616926a91.52.2024.11.18.06.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:33:46 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v4 4/5] selftests: net: Add python context manager for netns entering
Date: Mon, 18 Nov 2024 22:32:43 +0800
Message-ID: <20241118143244.1773-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241118143244.1773-1-shaw.leon@gmail.com>
References: <20241118143244.1773-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CJPE4AMAN36YYMKWQ2LTETMXSLIUD37Q
X-Message-ID-Hash: CJPE4AMAN36YYMKWQ2LTETMXSLIUD37Q
X-Mailman-Approved-At: Tue, 26 Nov 2024 09:26:34 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CJPE4AMAN36YYMKWQ2LTETMXSLIUD37Q/>
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

