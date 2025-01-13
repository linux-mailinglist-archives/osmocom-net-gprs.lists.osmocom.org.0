Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 901E1A188A3
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:23 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7D2C31D30A6;
	Tue, 21 Jan 2025 23:58:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LyR2nlZ6-OEp; Tue, 21 Jan 2025 23:58:23 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 42DCE1D3006;
	Tue, 21 Jan 2025 23:58:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id AABA038A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:39:06 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9187A1C36B8
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:39:06 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPOhCpFQbbaV for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 13 Jan 2025 14:39:06 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by mail.osmocom.org (Postfix) with ESMTPS id 086531C36B3
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 14:39:06 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-21634338cfdso59145395ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 13 Jan 2025 06:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736779144; x=1737383944; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=R5Sm5NxaJ1xUKipZdILUJW8rYsD7iCab+WuP4HU4JM7EPoNjnVHEntMnpwU5tNM3LO
         QX8Fyp6ur18Qybm5ypYcP8DfpQ0Glja8wWzZg8yf5jAIWOcOYLO09hQfSKYxd0ArHMuO
         LTQ2yuRVRB2vHvZtKUT1wbYgh5EHRvKy9iL+8i3BN5eiMgkgCUEaH08a/aPJ1rKVF2XC
         GLLT6AeGKaRoRfKcZjE+xvVoJcFlCgaJR9effGonHKixFmPmplVacDeRNKbbcv9kJoau
         2m9PEmmX6Kh0bHndtnZ2BXIURtCOe2PFnMuOhc9C7ZlhQvQo9VIyGDNvwyokAaDFfE2c
         PCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779144; x=1737383944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/aVoxIsj2NaHZxO0wthneclpZNQFTaEi7bz2gcdad0=;
        b=TJeNWyUoUjbD+KjXjhnoQTW6oMG3bDSR8I+XKwFKEl7dUo+dEkNT+EHTTsSatzDbL3
         enZZT3yHVnvHUAXztbzybKkU6ORqY0HADeMwy2dW7NYiPqOZvkC/HjbP/m0RyCaNhvvR
         EKXYmXKlTnCGSQTLPyeBAKbNP8CH77Vqq78jGjERGQcZM8VseR6zavaG1I8aIGRfXkfn
         wexbLZpsrwXsHbb2h8sthJa/P/SNER3vIaUKlKco1aoEVZ3kMu5LeRGk1c8hIWcAZU+W
         tgvtxQn7eW/vZ85Gd8BjiCd4Za1OKJg2nH5mNVXq+QBP2BR9f8gOdrbAGkPsBXKhVZIY
         ZM9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2kJINC15JJi5fY2ZDldelFDFW7Avj2SjLeNchrfqhczlXRxmRFm7kWWwmA80BjTHzpVpd625phdjPEzHDaPaX@lists.osmocom.org
X-Gm-Message-State: AOJu0YydtXTqsDsfxxpB5Aze++ezyP3c92nF1FOnvkiDj5yBQhdWEFEB
	2mj8Ew+RcX4n8Q7T55Vf8VIFTMqTTQUv3hqliDkZS1+8zA7RlCzr
X-Gm-Gg: ASbGnct4s27bsOjn97M6JZreZJg8gTepkc5XsAcyNI70ah65Bi8vERfFJSFBitU++Lh
	9gTttNI14zBtOt1jO/5rwLNfeuojbJ6HmBaXNN5Abc5onl1I+9VlNlGUgv6gQJITAwtK9JzarO7
	aiR3tvhPnV/+SGkB8ug6isJz9kGpiOctSWLVenBY0ZzaavlnwVeSkElSha3gsWhiG/kzvMdP8rk
	8tZ/2q9duQxOsyWjoWJTdIVrTKlg9XlvH8qlbYeeL5yAKs=
X-Google-Smtp-Source: AGHT+IEL9Q/TeE8X83a4D73J5c4BnqISbL2nsMzkDnt4Xq2JHmNtTfGl7cYLX08uLNv4xfpjIcH6KQ==
X-Received: by 2002:a17:902:f685:b0:216:5002:7341 with SMTP id d9443c01a7336-21a83fde2bcmr322676685ad.44.1736779144551;
        Mon, 13 Jan 2025 06:39:04 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f155e00sm54328715ad.103.2025.01.13.06.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:39:04 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v8 10/11] selftests: net: Add python context manager for netns entering
Date: Mon, 13 Jan 2025 22:37:18 +0800
Message-ID: <20250113143719.7948-11-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250113143719.7948-1-shaw.leon@gmail.com>
References: <20250113143719.7948-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: D2QFU7N5Q7K2U4YPFMWKFNB4QB2NKPQ2
X-Message-ID-Hash: D2QFU7N5Q7K2U4YPFMWKFNB4QB2NKPQ2
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:00 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/D2QFU7N5Q7K2U4YPFMWKFNB4QB2NKPQ2/>
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

