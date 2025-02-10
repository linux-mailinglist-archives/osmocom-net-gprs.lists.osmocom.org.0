Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 09011A370A2
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:30 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 17FB11E892F;
	Sat, 15 Feb 2025 20:34:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xD131bYgMXHY; Sat, 15 Feb 2025 20:34:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5A87F1E8848;
	Sat, 15 Feb 2025 20:34:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id EC2AF38A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:50 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D2DEA1E1C5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XG6_Fdcb9tuH for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:31:50 +0000 (UTC)
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
	by mail.osmocom.org (Postfix) with ESMTPS id 16A061E1C5A
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:31:49 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2f83a8afcbbso6795384a91.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194308; x=1739799108; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ke0PFn5ns0UuVrqND5gWG1VnmGxHj7kcjuhyXJXO0M=;
        b=Lpww5KFFb+M/m/eN0waTc0/BNfoSopEG882cIb0fQeE635ncUIC1XAVfe1UE0EonfI
         YP+A+qEvEDoWfYg7v9nWB6gZ1ojY5qMfkRWBtCLL6W3wrmpSy9h5JKyH7S6MzcFQy7OI
         FBf4DZv+XZXGkjglL0jqdLcw/1KO3EjLJtQDJgF1bH1G+Ck7XXX5+A7/BCK3CmbumrQ9
         GyFCeIVw3Ca6VKMTa+R8ugitWyjUafDwMQTxT+QgQmVgfcFocOrE05tro6TodvDVDjVe
         u3ZHOJ5Rwr3jMHot0Zq0pwWDlm8lRBd03/gL7Qm0PFi1KsIXmTypAFl2RsSiwtlbGSUT
         Tecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194308; x=1739799108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ke0PFn5ns0UuVrqND5gWG1VnmGxHj7kcjuhyXJXO0M=;
        b=AUBklB+7hCh+xKipieK+GLXlQIjc5gsYkM+RB1WuNVWb3vEnNOOmnA6nQ+Oawd8I+D
         Rd7rAqjIkdzUOMZDd0R0lxkzK3pdBjuI1ncnPoMgGz1XbvR0ecom9KT8Yt5PcwAhpZf+
         8ELqF1Ch35Ot67HvU1kCtJQgNRqRTdrUsxJfggU84DhLqTdchJYc2Bs7VUCJ31e/ds2y
         0k/wsiSGxn9xyjkZwb71+gSpANc51Pq5XVNPvtuxdStu2VcOQbAcIHQAc8VAhXbu2UlS
         50XrPX30VF9mbqngCHUETFVTJPyzu7U3jqzfj0zb4wVMMc+qqAYCXUZtTrkgXn72vEZ/
         412g==
X-Forwarded-Encrypted: i=1; AJvYcCXpo7E5FkeJ6ukVJj5JWJNCXBplCIc/AyUzqbCKryauY9V1bxoYwVZmUTiOLKTpuS5b7Gi9wyiSD9fl49B1gMlU@lists.osmocom.org
X-Gm-Message-State: AOJu0YwkzCXO3sxdw+OXtKEeXbcPOFLbXVQq1MM336jONVhHMSbpLZ9W
	H3hkwYYEsnkgSqPZ7lvLP5TxOsQq1e4QeYHgUievPCovF976wLR6
X-Gm-Gg: ASbGncuxJett2rFbGfSh4nzntaqMaqmRxgyEe+6oPnjwh91ierKdwDwMbn69lTcylmd
	qXhG7+TqjfSomWQBT1AMWW8TpyPxBINPhRhZrzevsikNDVyflV7nK464/mg3JaLT3x01Z6a2qGW
	7St21uxB10Va9GrPHj/z05ywnnM1UNPqNBg0MFCSpYPbSTz6J4pFyFaUHzoT1KuHvGLxa4PwWGj
	fnCQhgbYqo1wS0s5kNMz3Y94Dl/QTgAc0Op194HxkWPU3tnI05JrXtxDunFePFsbvejuIgRjnRz
	yeaZKQ==
X-Google-Smtp-Source: AGHT+IFPiBsnnOAy2e8DGACZaeMc4ZZCgfCsAVv3/+u7QA91zVdRjIX/zkP0E7/3XIVhHqlMh6JYtA==
X-Received: by 2002:a17:90b:350e:b0:2ef:ad48:7175 with SMTP id 98e67ed59e1d1-2f9ffb7ba83mr30255082a91.15.1739194308152;
        Mon, 10 Feb 2025 05:31:48 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:31:47 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 10/11] selftests: net: Add python context manager for netns entering
Date: Mon, 10 Feb 2025 21:30:01 +0800
Message-ID: <20250210133002.883422-11-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210133002.883422-1-shaw.leon@gmail.com>
References: <20250210133002.883422-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PXFLW2XIHTB4JVAMACSSIDHRJAD7K3JD
X-Message-ID-Hash: PXFLW2XIHTB4JVAMACSSIDHRJAD7K3JD
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:47 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PXFLW2XIHTB4JVAMACSSIDHRJAD7K3JD/>
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
2.48.1

