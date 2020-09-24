Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 0AFDC290DD5
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 17 Oct 2020 00:43:42 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 771ED18E688;
	Fri, 16 Oct 2020 22:43:37 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=btinternet.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=btinternet.com header.i=@btinternet.com header.b=VYEj14M8
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=213.120.69.14;
 helo=sa-prd-fep-044.btinternet.com;
 envelope-from=richard_c_haines@btinternet.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none)
 header.from=btinternet.com
Received: from sa-prd-fep-044.btinternet.com (mailomta8-sa.btinternet.com
 [213.120.69.14])
 by lists.osmocom.org (Postfix) with ESMTP id CA00118E666
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 16 Oct 2020 22:43:30 +0000 (UTC)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
 by sa-prd-fep-046.btinternet.com with ESMTP id
 <20200924085108.BRXF4114.sa-prd-fep-046.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>;
 Thu, 24 Sep 2020 09:51:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com;
 s=btmx201904; t=1600937468; 
 bh=vTnmokXIBzkZXHYrLM+LF+a2TNPM2QjsiABAPz1KhKw=;
 h=From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:References:MIME-Version;
 b=VYEj14M8rpCFdDJIclcCCkuhgwR3INdIWlObzgcq6o2AY02Pr4KHaOkmz8uAnvTNZe6RBgoXu26+MXMgDCflAcYSjDJ/N1ddOpLbL4C5m1B/mQybUtMszqW1r9Dr6MrbGqMu4WOApte/nefqfJTgEsS0TN3XS4mxCodfxiF/OCPpWdBXGWIJEU48A/wZbYZhipX6jM4vXTmWkDha1Ii3J0zhlNLjFyCNmRXCYa7iHtOiu6B3FtRQ4s5ptDdhxmzLaVC+35qZiMO10AfTAS/oiBkH2cGW3F/beDq+Ls9uOzsueNWx78NOr1kXnhEFMmOGttYhczyqrPUgZaFm2RGPjA==
Authentication-Results: btinternet.com; none
X-Originating-IP: [86.146.219.130]
X-OWM-Source-IP: 86.146.219.130 (GB)
X-OWM-Env-Sender: richard_c_haines@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedujedrudekgddutdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfhitghhrghrugcujfgrihhnvghsuceorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomheqnecuggftrfgrthhtvghrnhepuedttdelleehueeggfeihfeitdehueekffeviedtffegffeiueegleejgeevgfeinecukfhppeekiedrudegiedrvdduledrudeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehlohgtrghlhhhoshhtrdhlohgtrghlughomhgrihhnpdhinhgvthepkeeirddugeeirddvudelrddufedtpdhmrghilhhfrhhomhepoehrihgthhgrrhgupggtpghhrghinhgvshessghtihhnthgvrhhnvghtrdgtohhmqedprhgtphhtthhopeeojhhmohhrrhhishesnhgrmhgvihdrohhrgheqpdhrtghpthhtohepoehlrghfohhrghgvsehgnhhumhhonhhkshdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhsvggtuhhrihhthidqmhhoughulhgvsehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeoohhsmhhotghomhdqnhgvthdqghhprhhssehlihhsthhsrdhoshhmohgtohhmrdhorhhgqedprhgtphhtthhopeeo
 phgrsghlohesnhgvthhfihhlthgvrhdrohhrgheqpdhrtghpthhtohepoehprghulhesphgruhhlqdhmohhorhgvrdgtohhmqedprhgtphhtthhopeeorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhequcfqtfevrffvpehrfhgtkedvvdenrhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhdprhgtphhtthhopeeoshgvlhhinhhugiesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehsthgvphhhvghnrdhsmhgrlhhlvgihrdifohhrkhesghhmrghilhdrtghomheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-SNCR-hdrdom: btinternet.com
Received: from localhost.localdomain (86.146.219.130) by
 sa-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 richard_c_haines@btinternet.com)
 id 5ED9AFBE1282CF0E; Thu, 24 Sep 2020 09:51:08 +0100
From: Richard Haines <richard_c_haines@btinternet.com>
To: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org
Cc: stephen.smalley.work@gmail.com, paul@paul-moore.com, pablo@netfilter.org,
 laforge@gnumonks.org, jmorris@namei.org,
 Richard Haines <richard_c_haines@btinternet.com>
Subject: [RFC PATCH 1/3] security: Add GPRS Tunneling Protocol (GTP) security
 hooks
Date: Thu, 24 Sep 2020 09:51:00 +0100
Message-Id: <20200924085102.5960-2-richard_c_haines@btinternet.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200924085102.5960-1-richard_c_haines@btinternet.com>
References: <20200924085102.5960-1-richard_c_haines@btinternet.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

The GTP security hooks are explained in:
Documentation/security/GTP.rst

Signed-off-by: Richard Haines <richard_c_haines@btinternet.com>
---
 Documentation/security/GTP.rst   | 39 ++++++++++++++++++++++++++++++++
 Documentation/security/index.rst |  1 +
 include/linux/lsm_hook_defs.h    |  3 +++
 include/linux/lsm_hooks.h        | 16 +++++++++++++
 include/linux/security.h         | 19 ++++++++++++++++
 security/security.c              | 18 +++++++++++++++
 6 files changed, 96 insertions(+)
 create mode 100644 Documentation/security/GTP.rst

diff --git a/Documentation/security/GTP.rst b/Documentation/security/GTP.rst
new file mode 100644
index 000000000..e307d0b59
--- /dev/null
+++ b/Documentation/security/GTP.rst
@@ -0,0 +1,39 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=============================
+GPRS Tunneling Protocol (GTP)
+=============================
+
+GTP LSM Support
+===============
+
+Security Hooks
+--------------
+For security module support, three GTP specific hooks have been implemented::
+
+    security_gtp_dev_add()
+    security_gtp_dev_del()
+    security_gtp_dev_cmd()
+
+
+security_gtp_dev_add()
+~~~~~~~~~~~~~~~~~~~~~~
+Allows a module to allocate a security structure for a GTP device. Returns a
+zero on success, negative values on failure.
+If successful the GTP device ``struct gtp_dev`` will hold the allocated
+pointer in ``void *security;``.
+
+
+security_gtp_dev_del()
+~~~~~~~~~~~~~~~~~~~~~~
+Allows a module to free the security structure for a GTP device. Returns a
+zero on success, negative values on failure.
+
+
+security_gtp_dev_cmd()
+~~~~~~~~~~~~~~~~~~~~~~
+Allows a module to validate a command for the selected GTP device. Returns a
+zero on success, negative values on failure. The commands are based on values
+from ``include/uapi/linux/gtp.h`` as follows::
+
+``enum gtp_genl_cmds { GTP_CMD_NEWPDP, GTP_CMD_DELPDP, GTP_CMD_GETPDP };``
diff --git a/Documentation/security/index.rst b/Documentation/security/index.rst
index 8129405eb..cdbdaa83b 100644
--- a/Documentation/security/index.rst
+++ b/Documentation/security/index.rst
@@ -16,3 +16,4 @@ Security Documentation
    siphash
    tpm/index
    digsig
+   GTP
diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
index 2a8c74d99..a994417fb 100644
--- a/include/linux/lsm_hook_defs.h
+++ b/include/linux/lsm_hook_defs.h
@@ -322,6 +322,9 @@ LSM_HOOK(int, 0, sctp_bind_connect, struct sock *sk, int optname,
 	 struct sockaddr *address, int addrlen)
 LSM_HOOK(void, LSM_RET_VOID, sctp_sk_clone, struct sctp_endpoint *ep,
 	 struct sock *sk, struct sock *newsk)
+LSM_HOOK(int, 0, gtp_dev_add, void **security)
+LSM_HOOK(int, 0, gtp_dev_del, void *security)
+LSM_HOOK(int, 0, gtp_dev_cmd, void *security, enum gtp_genl_cmds cmd)
 #endif /* CONFIG_SECURITY_NETWORK */
 
 #ifdef CONFIG_SECURITY_INFINIBAND
diff --git a/include/linux/lsm_hooks.h b/include/linux/lsm_hooks.h
index 9e2e3e637..3d6888d51 100644
--- a/include/linux/lsm_hooks.h
+++ b/include/linux/lsm_hooks.h
@@ -982,6 +982,22 @@
  *	This hook can be used by the module to update any security state
  *	associated with the TUN device's security structure.
  *	@security pointer to the TUN devices's security structure.
+ * @gtp_dev_add:
+ *	This hook allows a module to allocate a security structure for a GTP
+ *	device.
+ *	@security pointer to a security structure pointer.
+ *	Returns a zero on success, negative values on failure.
+ * @gtp_dev_del:
+ *	This hook allows a module to free the security structure for a GTP
+ *	device.
+ *	@security pointer to the GTP device's security structure.
+ *	Returns a zero on success, negative values on failure.
+ * @gtp_dev_cmd:
+ *	This hook allows a module to free the security structure for a GTP
+ *	device.
+ *	@security pointer to the GTP device's security structure.
+ *	@cmd contains the GTP command.
+ *	Returns a zero on success, negative values on failure.
  *
  * Security hooks for SCTP
  *
diff --git a/include/linux/security.h b/include/linux/security.h
index 0a0a03b36..67ff43afa 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -30,6 +30,7 @@
 #include <linux/err.h>
 #include <linux/string.h>
 #include <linux/mm.h>
+#include <linux/gtp.h>
 
 struct linux_binprm;
 struct cred;
@@ -1365,6 +1366,9 @@ int security_sctp_bind_connect(struct sock *sk, int optname,
 			       struct sockaddr *address, int addrlen);
 void security_sctp_sk_clone(struct sctp_endpoint *ep, struct sock *sk,
 			    struct sock *newsk);
+int security_gtp_dev_add(void **security);
+int security_gtp_dev_del(void *security);
+int security_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd);
 
 #else	/* CONFIG_SECURITY_NETWORK */
 static inline int security_unix_stream_connect(struct sock *sock,
@@ -1582,6 +1586,21 @@ static inline void security_sctp_sk_clone(struct sctp_endpoint *ep,
 					  struct sock *newsk)
 {
 }
+
+static inline int security_gtp_dev_add(void **security)
+{
+	return 0;
+}
+
+static inline int security_gtp_dev_del(void *security)
+{
+	return 0;
+}
+
+static inline int security_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd)
+{
+	return 0;
+}
 #endif	/* CONFIG_SECURITY_NETWORK */
 
 #ifdef CONFIG_SECURITY_INFINIBAND
diff --git a/security/security.c b/security/security.c
index 70a7ad357..63b656848 100644
--- a/security/security.c
+++ b/security/security.c
@@ -2304,6 +2304,24 @@ void security_sctp_sk_clone(struct sctp_endpoint *ep, struct sock *sk,
 }
 EXPORT_SYMBOL(security_sctp_sk_clone);
 
+int security_gtp_dev_add(void **security)
+{
+	return call_int_hook(gtp_dev_add, 0, security);
+}
+EXPORT_SYMBOL(security_gtp_dev_add);
+
+int security_gtp_dev_del(void *security)
+{
+	return call_int_hook(gtp_dev_del, 0, security);
+}
+EXPORT_SYMBOL(security_gtp_dev_del);
+
+int security_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd)
+{
+	return call_int_hook(gtp_dev_cmd, 0, security, cmd);
+}
+EXPORT_SYMBOL(security_gtp_dev_cmd);
+
 #endif	/* CONFIG_SECURITY_NETWORK */
 
 #ifdef CONFIG_SECURITY_INFINIBAND
-- 
2.26.2

