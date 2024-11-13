Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3859D10A3
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:16 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E922E181F77;
	Mon, 18 Nov 2024 12:38:15 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pkzz3lnIDTwB; Mon, 18 Nov 2024 12:38:15 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8863E181F60;
	Mon, 18 Nov 2024 12:38:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D4BCE38A18D0
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:47 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B219B17B29D
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pVPlYuCQY4-z for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 13 Nov 2024 12:57:47 +0000 (UTC)
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by mail.osmocom.org (Postfix) with ESMTPS id 0419F17B298
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:46 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2e2eb9dde40so5532992a91.0
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 04:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731502665; x=1732107465; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9sIZI/WV8nhbNfyJEUDND2yz+m6sbgKmtk/cQXv5cxc=;
        b=JXVsu14npe0lmnOY9hyhFQZyIrQaFfeNEfGJ8h0O/tTi1VFKpzCY+9raVd7zdHDHs0
         FE6S7An85bYxr/7kFlh2iIu8HrtmR4ft83x+110A1KToe6ETgWKxSwfYaOZ6h7Ckb1Bx
         YFX2UUL+KcY3Yl5YsaNCssQpY90ZaBeF5SnXWedPKf5JeIMXChAf/gIZFJ7q+VgUAyo3
         3X2KQOwJwNsie+eLmYb0uwUoNDIFSd4nxli5j9SXKQ+eTRK18K+OubOZnUOqT1exCFnr
         Q/RdccKa3FLc49zg56IbvZpBjquxBaW0ud5MdJOWp6hfYqJm7R5gY/HAdk2UBJXUA5x+
         NZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731502665; x=1732107465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9sIZI/WV8nhbNfyJEUDND2yz+m6sbgKmtk/cQXv5cxc=;
        b=HHGbmo+k3U/IweDs9B9oajcjvrWI4kx8tQPCS0ZzDqiNO02I7A9ByrCsndibO+hmEq
         iOu3gz3IjJ+Bdg5NVwECQ+0Dkyc84uFGqznyRG6/gbDfEKRB1sD1GbxDFMv7blSRH+Pg
         raegTNZClcfQLajUZQePfcVDo51Dq+/HcYmoN3WnMOggJ4bEXM//gxY+mrxg5HEsB1TW
         G8ulG5DpKGwYCiviTHemtrTiu5EXFonj2YPHDHonMaxJWeCNk6pAiZqRSYDS9nCwVN7E
         Z18SXKI1MN0pXN9yJ9ycinVpV4u23mGfiJdzIYifFMfI1JaCZMn9BC8kp2VBOx/htCJg
         zXZA==
X-Forwarded-Encrypted: i=1; AJvYcCUaB510LdJJZHinn3XGpvnoIwHHexhd4RN2KJ9+DDmoRfCsUHjenupAnMIBe5UI3Pfm29QQF2l22VBXWbV4rAla@lists.osmocom.org
X-Gm-Message-State: AOJu0Yzhk9UixF1P3kDL0MSYByJpLfb96NfGJfL8Oy3+CMlyRGhlRLg+
	sd3jhd+Y9qfROK2zrGM2ieiGh+g5JpRsuOCmKEKxjnMQIgefk5bx
X-Google-Smtp-Source: AGHT+IFBBLW/otzoU3VQWNkQ98rdfNz5WHNkXJFNuYVXzuqAWCzWf4F656wLCdVO3Ph+9deaw1I3JA==
X-Received: by 2002:a17:90b:48c8:b0:2e2:c40c:6e8a with SMTP id 98e67ed59e1d1-2e9f2d5da7amr2684315a91.26.1731502664731;
        Wed, 13 Nov 2024 04:57:44 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f8ed0esm1398632a91.40.2024.11.13.04.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 04:57:44 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v3 1/6] Revert "tools/net/ynl: improve async notification handling"
Date: Wed, 13 Nov 2024 20:57:10 +0800
Message-ID: <20241113125715.150201-2-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113125715.150201-1-shaw.leon@gmail.com>
References: <20241113125715.150201-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VHJ6GZOJD2INDEBBGTEJEG6FAHU32HKE
X-Message-ID-Hash: VHJ6GZOJD2INDEBBGTEJEG6FAHU32HKE
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VHJ6GZOJD2INDEBBGTEJEG6FAHU32HKE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

From: Donald Hunter <donald.hunter@gmail.com>

This reverts commit 1bf70e6c3a5346966c25e0a1ff492945b25d3f80.

This modification to check_ntf() is being reverted so that its behaviour
remains equivalent to ynl_ntf_check() in the C YNL. Instead a new
poll_ntf() will be added in a separate patch.

Signed-off-by: Donald Hunter <donald.hunter@gmail.com>
---
 tools/net/ynl/cli.py     | 10 +++-----
 tools/net/ynl/lib/ynl.py | 49 ++++++++++++++++------------------------
 2 files changed, 23 insertions(+), 36 deletions(-)

diff --git a/tools/net/ynl/cli.py b/tools/net/ynl/cli.py
index 9e95016b85b3..b8481f401376 100755
--- a/tools/net/ynl/cli.py
+++ b/tools/net/ynl/cli.py
@@ -5,7 +5,6 @@ import argparse
 import json
 import pprint
 import time
-import signal
=20
 from lib import YnlFamily, Netlink, NlError
=20
@@ -18,8 +17,6 @@ class YnlEncoder(json.JSONEncoder):
             return list(obj)
         return json.JSONEncoder.default(self, obj)
=20
-def handle_timeout(sig, frame):
-    exit(0)
=20
 def main():
     description =3D """
@@ -84,8 +81,7 @@ def main():
         ynl.ntf_subscribe(args.ntf)
=20
     if args.sleep:
-        signal.signal(signal.SIGALRM, handle_timeout)
-        signal.alarm(args.sleep)
+        time.sleep(args.sleep)
=20
     if args.list_ops:
         for op_name, op in ynl.ops.items():
@@ -110,8 +106,8 @@ def main():
         exit(1)
=20
     if args.ntf:
-        for msg in ynl.check_ntf():
-            output(msg)
+        ynl.check_ntf()
+        output(ynl.async_msg_queue)
=20
=20
 if __name__ =3D=3D "__main__":
diff --git a/tools/net/ynl/lib/ynl.py b/tools/net/ynl/lib/ynl.py
index 92f85698c50e..c22c22bf2cb7 100644
--- a/tools/net/ynl/lib/ynl.py
+++ b/tools/net/ynl/lib/ynl.py
@@ -12,8 +12,6 @@ import sys
 import yaml
 import ipaddress
 import uuid
-import queue
-import time
=20
 from .nlspec import SpecFamily
=20
@@ -491,7 +489,7 @@ class YnlFamily(SpecFamily):
         self.sock.setsockopt(Netlink.SOL_NETLINK, Netlink.NETLINK_GET_ST=
RICT_CHK, 1)
=20
         self.async_msg_ids =3D set()
-        self.async_msg_queue =3D queue.Queue()
+        self.async_msg_queue =3D []
=20
         for msg in self.msgs.values():
             if msg.is_async:
@@ -905,39 +903,32 @@ class YnlFamily(SpecFamily):
=20
         msg['name'] =3D op['name']
         msg['msg'] =3D attrs
-        self.async_msg_queue.put(msg)
+        self.async_msg_queue.append(msg)
=20
-    def check_ntf(self, interval=3D0.1):
+    def check_ntf(self):
         while True:
             try:
                 reply =3D self.sock.recv(self._recv_size, socket.MSG_DON=
TWAIT)
-                nms =3D NlMsgs(reply)
-                self._recv_dbg_print(reply, nms)
-                for nl_msg in nms:
-                    if nl_msg.error:
-                        print("Netlink error in ntf!?", os.strerror(-nl_=
msg.error))
-                        print(nl_msg)
-                        continue
-                    if nl_msg.done:
-                        print("Netlink done while checking for ntf!?")
-                        continue
+            except BlockingIOError:
+                return
=20
-                    decoded =3D self.nlproto.decode(self, nl_msg, None)
-                    if decoded.cmd() not in self.async_msg_ids:
-                        print("Unexpected msg id while checking for ntf"=
, decoded)
-                        continue
+            nms =3D NlMsgs(reply)
+            self._recv_dbg_print(reply, nms)
+            for nl_msg in nms:
+                if nl_msg.error:
+                    print("Netlink error in ntf!?", os.strerror(-nl_msg.=
error))
+                    print(nl_msg)
+                    continue
+                if nl_msg.done:
+                    print("Netlink done while checking for ntf!?")
+                    continue
=20
-                    self.handle_ntf(decoded)
-            except BlockingIOError:
-                pass
+                decoded =3D self.nlproto.decode(self, nl_msg, None)
+                if decoded.cmd() not in self.async_msg_ids:
+                    print("Unexpected msg id done while checking for ntf=
", decoded)
+                    continue
=20
-            try:
-                yield self.async_msg_queue.get_nowait()
-            except queue.Empty:
-                try:
-                    time.sleep(interval)
-                except KeyboardInterrupt:
-                    return
+                self.handle_ntf(decoded)
=20
     def operation_do_attributes(self, name):
       """
--=20
2.47.0

