Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0B09FF14C
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:47 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E175A1B6A15;
	Tue, 31 Dec 2024 18:40:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ij1R-zFAc8bS; Tue, 31 Dec 2024 18:40:46 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2763E1B68C3;
	Tue, 31 Dec 2024 18:40:31 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 28E6038A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:49 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 10DC91ADBCF
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CanQKGdffUCn for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:10:48 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
	by mail.osmocom.org (Postfix) with ESMTPS id 6255C1ADBCA
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:10:47 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-728ea1573c0so5638797b3a.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527446; x=1735132246; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=CVGDMJJsFcLqFARFp6HYiF8u8zAWNiPo1olgE2g3LTC7W5Qn21Z7+LRM8U7ZjwyIHv
         N6zWU9pqdBN3Cge9lawYMAoCsC82EVCVyqt1nIZugP7tbebfVN/KAxZCPNylOmuUvtH9
         PVVMF82qtNKM7M3u+0NLzQ8p9pCdC0UdAGEQ4013OEiLzuW+Yco3h6mA9ix+xGKxdHsn
         nkw80xtgsWBwjFYJRtvsPFO+ukBGO3075iTJWhQ+v1GReoSEUupXI+nRJp4l4OrPyvsn
         /yE9haZ0HRG4IBi3sy5IUd9IdSRvelPhZaHdaj3pyx6wM5fPEMUB+Zd0gLTbcoxNcQxP
         lP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527446; x=1735132246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=j/OtnJbXtFtqTeyhlD78BWSIE8mV+mfnDdyJ0fXPy7Zb4MM+GkPgzcEHdJNaYiHt+/
         09QtkziQIw1B309MJmXFfMZwygcsEaCHlYwtDFR+bvsU/lA12O9mHjH8uz/bE3bAXMfO
         1x4gqVH/6A/BqDlArCNan/jDPuKTKXSM52jP8ux2sfDmb1csRMFo9FbIuC71OFGfv6XC
         /8RPTVGSfGdYyqthqq7Hf77GMwsPC1Wp2TaWjbHz8mEKfyHlzJ7OMOO0d088EnCCZBkC
         56DvHJaK/288dOfzUiigX4AsPn8pnXj5aJGWfkLsRfG11iEH1g4jHGzL5L7gSw0xxKtu
         g2hw==
X-Forwarded-Encrypted: i=1; AJvYcCV/4gjfD7yLuIgEavB0sDwVFMhN9J4CtvUMqveTRrCted0oDwcDqWA3SRdehCTaQKDbnCBP4gQbfu5ZHi6q8809@lists.osmocom.org
X-Gm-Message-State: AOJu0YzMve/wQB+3ZQdoEaIto2TX/lz91WRAKOrbHq9LoAgQjRHEpqbI
	qJo9t9dW8poKNZEuDDacwuAxWg/Ei8JV1ecs5MlIcXMZxahL9r+C
X-Gm-Gg: ASbGncvH9rHG+BDAgEmykPf9oPy2EvwziKKzZNuCX9kmV1kJ5PMeemylaZsJPP6K0qZ
	X7umJcZ+Bjpgk5qBYuEa2o+kCHx+d40MrjRF96zXS+hNn65Vk2PEbUPraYNmab66sYNAyUaH0JM
	Eoi1Gzzjr1uV4tvqIVil8IOoeGb+8D3R2a6Xf2r5pf0YPZr+2No8jRbcbZBG+JxfbakmomEW8fF
	DBWs4avXsdxPXEm8Z6b7/hGaM+KcAjQwHvai2q7BrHJkyM=
X-Google-Smtp-Source: AGHT+IFJSba0hMYoxDtWWfQo3+fMH+6cNLxoIt5yunX4KkQHyaeVCZq9fnVPYHJO8DT42j8sEsCrNg==
X-Received: by 2002:a05:6a21:6f02:b0:1e0:dcc5:164d with SMTP id adf61e73a8af0-1e5b47f3b12mr5217374637.8.1734527446438;
        Wed, 18 Dec 2024 05:10:46 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:10:45 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 10/11] selftests: net: Add python context manager for netns entering
Date: Wed, 18 Dec 2024 21:09:08 +0800
Message-ID: <20241218130909.2173-11-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241218130909.2173-1-shaw.leon@gmail.com>
References: <20241218130909.2173-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DTPE5L6JJ27PRQ3ZYXIGGOUTGDXJ4VBH
X-Message-ID-Hash: DTPE5L6JJ27PRQ3ZYXIGGOUTGDXJ4VBH
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:30 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/DTPE5L6JJ27PRQ3ZYXIGGOUTGDXJ4VBH/>
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
2.47.1

