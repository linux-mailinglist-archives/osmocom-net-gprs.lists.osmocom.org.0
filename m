Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E45A4349C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:22 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 238C61F3CF4;
	Tue, 25 Feb 2025 05:36:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id owzp_Q-Wt-H8; Tue, 25 Feb 2025 05:36:21 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7CDEC1F3C51;
	Tue, 25 Feb 2025 05:36:16 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E264C38A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:43 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CA5A11ED38C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VaSmf5MqDVXZ for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:52:43 +0000 (UTC)
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by mail.osmocom.org (Postfix) with ESMTPS id 481531ED387
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:52:43 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2fbfc9ff0b9so10127195a91.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969562; x=1740574362; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h02RoEg/neSt/B+WrRVdIe6OiEkHR+ibxktqvHMDB4Y=;
        b=DbPsCEKlT+DgzKu7+SBh/O8VzuVXCrRWY+DgrtQWtFOCJCIUfOaB/RxWgSFTWd6b2r
         U/9Wgm/pDC/ZAU2iXBEOexNrqptyAtt0dLsI5jz8jravmh4sjtH5l7ZSTUwLSls1kNe7
         dM0VRHbeY+rgdoy6Y5hcMOjLb/GKsI8LADueKVONBzn4aQDTRS2skOvpfx98ZsTtv/i9
         IFvVV8Hh2d0ahi4gGNxyKGlencMHKpFUnF54v/UAb65miPXkGvxxCszxN07NTygqhbow
         373XwV3j0mUgWAyuSAnCXwHq3P5m4PkKlkP3EvEYEoEnkHKC+8HUs463OItZGqmmH/3U
         uj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969562; x=1740574362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h02RoEg/neSt/B+WrRVdIe6OiEkHR+ibxktqvHMDB4Y=;
        b=KAFoeQVn5iQ5pZkLknZIERHA8oGnZD8AmfnldhNLHx2XdaMCOySZmDuZl/kK9ShVyH
         kstS9MMxmPItWfj9MGejTo/dw5Ix5O9zYXFqCoDvGOrdslI1FcWtta8hl0nW9vTeOKHH
         owpDlUztpQpqDJkh3VOx3SLEc0ibKMclrKe7r1Lzel5m178w8pfTguOVoRjnQ3iAcSaq
         1XAxLs73NLYodnqv678bWwQc5SJifzl/6CtjPmYc63txsRXJqcKFe3CFnkW7aa0jqnnF
         qvI2/O35NbqiB5oIc0Vyqj11KokRZ7Nd5CbiQuEYliVqTffrdLD3tGYWOyD/83mdkGXW
         gFgQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8Jqc2TrkpRkAHDcQDiRGJsImcMRnHjhKo/oFkgaAvdq1uLVFszPE2XWA4JlkCR86jDrwGPLTHMBdasDPwuzl1@lists.osmocom.org
X-Gm-Message-State: AOJu0YzYo2+hqNaqAPf0bjvo+V3mnUd5wgxVYy2aenzq5mgemobp5E8V
	mW4UQ/fMp1bRh1qN6aPLsLnd/YQNN9r1DKVAHlPhLLcKAc2HvH4V
X-Gm-Gg: ASbGncvCrpdlymvCfitbxJl4HmS9HZ2n1lqNAXywlq1AMePx93Syp1sOjhWi1HHlD5Q
	HQzLuWeMBvlsYy1MHkfH4BpAVnEJSmhTM2mSmvXlhJq8Fo8Gm5ElWg9E4SgqgFJNGjjiRz4Z/tr
	liZKkWGoChJE4lu14d2QPdDSaexacJLEas/nbgtonSI33nNXbR9ivHCpz/BZXpBP6KICcHsWmVB
	eoYOO0EyccnyUvHMe/Qw6gmOEKK7tjG+6H09IR2nGdlYhgAET9jpvdMKQXhi5Frjkjtr0Al75QS
	2kMk6g==
X-Google-Smtp-Source: AGHT+IHPqeS3VaEOgvZ8Tx3PUVaGMIEIbKpPjORqTeM6yeMS+BbAs1PKrGLT5/zDq05f9NI0VnGgXw==
X-Received: by 2002:a17:90b:2887:b0:2fa:1a23:c01d with SMTP id 98e67ed59e1d1-2fc40f26600mr24663034a91.21.1739969561721;
        Wed, 19 Feb 2025 04:52:41 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:52:41 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 12/13] selftests: net: Add python context manager for netns entering
Date: Wed, 19 Feb 2025 20:50:38 +0800
Message-ID: <20250219125039.18024-13-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RZ5LZLAGIUHDH4YDE5URMOPG6U7GXE4I
X-Message-ID-Hash: RZ5LZLAGIUHDH4YDE5URMOPG6U7GXE4I
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RZ5LZLAGIUHDH4YDE5URMOPG6U7GXE4I/>
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
index 729457859316..8697bd27dc30 100644
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
mily, RtnlAddrFamily
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

