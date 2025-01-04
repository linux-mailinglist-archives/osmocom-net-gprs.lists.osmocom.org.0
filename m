Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A4A05DEB
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:28 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 861EC1BD16C;
	Wed,  8 Jan 2025 14:04:28 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijt9xTWX3nyw; Wed,  8 Jan 2025 14:04:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E8BEF1BD091;
	Wed,  8 Jan 2025 14:04:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id BA62438A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:09 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 96F7F1B9791
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PAveXpBghotc for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  4 Jan 2025 12:59:08 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by mail.osmocom.org (Postfix) with ESMTPS id DACB91B978C
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  4 Jan 2025 12:59:08 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-21675fd60feso241716305ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 04 Jan 2025 04:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735995547; x=1736600347; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=m3QoIqxjsKt5ehdMi64Y9bIUqNL2YY+pXqNX6BHUnJDylIa8mfMHLh1V1Y5bHfcPXf
         IN/LclCNvzQ/BoSdW7pIQsdjFqf4AF+ZtLdHrMGJ3NKJJnEV/63a7r2daz5Ala9t5qVn
         uij0TAJOHKfkzml+06iSC9MBMwKvzcgFUFteVpUqApUZv93gNRZNo/tipW/7VMBci8LJ
         w04ucLKls4U6T6bfKGfsu24bSeEd4YOff3TzJoaf6oHRl0psb54VwRfCjuoKPX3LQMEb
         WF9A0u+LUUPl65oRpnu71H8fii/8iQOJVFfPQKO8ZiYfsz6S/U9b8hhWFz4MxJc7NL6n
         FAGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735995547; x=1736600347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=qGzFTVIp3vDrLkilkcf8RFZ+k5dgZB1pWMs9ByVNSEOhGMD0LUFl4F2k/JochOGZHN
         aEYdkXkqGc0iDAlVMUPRXW20/iOXJfxfFIsLXMM/1PTB9lrjCOVHo/cw3b/2Nt6bYkP2
         hF1VF/StW0sw1D8zGwy92fsdxnF0bKG9UZzIES9jCU8/ZA6xvlM2AZaX2Xs9deOC6yvc
         921HMxPMxur0ZUkaJjVnuQDlsUFYKWJ+WXfmjXBZLMUrTmRYzXGVVu0qkoOmZaRTT+ka
         ac+0/Zg5Z1uTKI2u2l4x9Qfi2TH226KRN1jYqiS8FXTqj8iBliJGm7NnHhiYYmc4X2LO
         85/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7dK/V0n9eUx58NF8MDDf8Etf6zOFjrZ1bvzemilgpGzKjWSHswWH2LySZOP2z5N0lvr+7YdbivWrgiG8d6V7m@lists.osmocom.org
X-Gm-Message-State: AOJu0YyOQ9RL8Pdli6pTnKCoqFX+Y4UCRNuwUXD3F2UAZAM/NoJrbNPj
	nv0CVN7h4P5YQiTnx+ONSuZBEixTSvqxOVfY60z6vBc6NkSAjJ5J
X-Gm-Gg: ASbGnctg4mwazxnVDKdGlwiXg+MWONdgSKmYbpZjeFvJs7MDpkI+4LK0DDehDMIcwmp
	rZyiB5/yA2XL/5x8JYINXH0+2ZqOE5no0zCzB2m2/GiniKW4Ors/Ogdl14p02VaGKktoBn4PPwO
	F0eKF1fvKJPEDj2XlDLjTEpQdsBszSHIfBCcXSMH7O98f/nBhANf+DQo9vEtX0WuUBBpdYQwWDl
	vEAH8XTDI2WCLf2upvJ4QjowivnwYUS8x2BxkJxHWpd4tM=
X-Google-Smtp-Source: AGHT+IGUseWUHEPuZ2azBnIbXH4/rAn+CSEtKsSSu9kCqJsAhEDYnxH1YaaDUJFfNwCRIx8vP1I8ew==
X-Received: by 2002:a05:6a20:2d14:b0:1e1:dbfd:1fde with SMTP id adf61e73a8af0-1e5e04a3427mr79059917637.27.1735995547161;
        Sat, 04 Jan 2025 04:59:07 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad830349sm27761344b3a.47.2025.01.04.04.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 04:59:06 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v7 10/11] selftests: net: Add python context manager for netns entering
Date: Sat,  4 Jan 2025 20:57:31 +0800
Message-ID: <20250104125732.17335-11-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104125732.17335-1-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6EO5PO2K3BWPXFHKKTPFCGRQ52U6O7Y4
X-Message-ID-Hash: 6EO5PO2K3BWPXFHKKTPFCGRQ52U6O7Y4
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6EO5PO2K3BWPXFHKKTPFCGRQ52U6O7Y4/>
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

