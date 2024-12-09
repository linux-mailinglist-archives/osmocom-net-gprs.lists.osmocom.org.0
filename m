Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E5B9FF13D
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:08 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4D3AB1B66E7;
	Tue, 31 Dec 2024 18:40:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQa21Id7Yp4v; Tue, 31 Dec 2024 18:40:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 681171B66AC;
	Tue, 31 Dec 2024 18:40:03 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D99AA38A77A2
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:06:08 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C09F21A2944
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:06:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6ed3PBrgd4b for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  9 Dec 2024 14:06:08 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by mail.osmocom.org (Postfix) with ESMTPS id 16C711A293F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:06:07 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2162c0f6a39so15522345ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 09 Dec 2024 06:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733753166; x=1734357966; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=Strw8PHKXx+WTQxnoJHmPHJC6HjHQSsuHSboMJi3o49jEEDvDWMoJPvHNDhRFd15pt
         7s61VsXmKzgwLPBWKMXbL9VO1tJtrJVmfyu/yyUvDZdgSgXjMEgLqeMqXtQAPj6BNvBe
         N8lKRiP8dcANaVxpgI9ad0JQhSmWBrwNeqVbuVdCZaEfIIPd2byxX6GxbiTIZtK7u62R
         psoI/bQC2MDyz9xq8Xv7SmcFoSxnJmxkjbd/B0TSAf35dB0AAq1aGWwJ9n3sf9IBRrlW
         2K//c7rTXdQESWS3n2aDlz9Gh1S1yZWacPZMOVg9lwmn9cXl9aJjY9jBdudemOJ+MpOQ
         MT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733753166; x=1734357966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=cHwy0wsfumAg2GIB7KmKpuitA34nhKkGbwbOMLxQ+Yhv/fg1jr5b2e4OEwl2eBkQFz
         lM/iXGd5Y53ceXm/CAz03d844oRhhbouYgv+yWWAKWEvMQVl5OmWhso1H106KH3zrWX3
         fTmiIipy1CMp8r+wafuFkVuk3Lgmu8H8B4XLeXENghGSgsysyBVRB6KQ1UJdG4RUsWng
         9866dgGVooCeG926xevU1qjB7YyFua66ATa9wJF6S7a67zdOGusUC4mLiadPAxpSGhIq
         5xCibT0zgZuJHKcptx0DUGDMDTDB72ptV26RtN9AG7Kczoc3ivu5R+krFD96pWWCUb+U
         Ovew==
X-Forwarded-Encrypted: i=1; AJvYcCW/kirA+qXAcVPuPwLJgYnkJHizDS6yj8zJ+OfWWlWh4hcMBOP2rQUPKAp/Ek3iw3SKxspQd+1XW42RS8FjgAYs@lists.osmocom.org
X-Gm-Message-State: AOJu0YxCJUM9eHYw1F5MGCnINPyhP13qD1lrY/oEE/Opj61SBWlt0S0Z
	BPMv62Dy0p/0gBih9Nr9NhoxCXygNBpu9CHHkJQ5NV5z8M6zn0EM
X-Gm-Gg: ASbGncudc/iKPdydNCHvMW23979kgxqjbl9d3CguAmYSL4F8uoF5zJviN/22O0Ed35x
	DyT2BSfqnprlTRBEWpAZ2SFZZEimceuQFfWcyLGSisjQo0vk2pOBGYXPnGASsbLFaWqyeyqpARc
	EDuLgWdDtYEm5ef15VjMU6+wOo36Rf9HzAJ0jYbqVWPIi+mTIg6PQx2z//QSucgBv/OQ18A1ytz
	4uBWFFRNkLPDC5iBymi0LmwGGBkn4Ghw2SYEJemF784R8c=
X-Google-Smtp-Source: AGHT+IEgO+eAsdpey+DR5/LF2b2LrxgYAnjIwOd9wPEert31MRK25WTtIv1pjQ5j1prur61gIiJ4iQ==
X-Received: by 2002:a17:902:c949:b0:215:58be:334e with SMTP id d9443c01a7336-21610b3539amr198169675ad.10.1733753165835;
        Mon, 09 Dec 2024 06:06:05 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216221db645sm49605645ad.46.2024.12.09.06.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 06:06:05 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v5 4/5] selftests: net: Add python context manager for netns entering
Date: Mon,  9 Dec 2024 22:01:50 +0800
Message-ID: <20241209140151.231257-5-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241209140151.231257-1-shaw.leon@gmail.com>
References: <20241209140151.231257-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S3MZCAE55R6O3545M7UCLUTYYXYKWGZZ
X-Message-ID-Hash: S3MZCAE55R6O3545M7UCLUTYYXYKWGZZ
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:39:49 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/S3MZCAE55R6O3545M7UCLUTYYXYKWGZZ/>
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

