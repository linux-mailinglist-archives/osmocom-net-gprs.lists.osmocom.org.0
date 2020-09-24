Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 19A6A2911E5
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 17 Oct 2020 14:52:14 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2463718F234;
	Sat, 17 Oct 2020 12:52:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=btinternet.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=btinternet.com header.i=@btinternet.com header.b=b2uwY7R8
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=213.120.69.36;
 helo=sa-prd-fep-040.btinternet.com;
 envelope-from=richard_c_haines@btinternet.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none)
 header.from=btinternet.com
Received: from sa-prd-fep-040.btinternet.com (mailomta30-sa.btinternet.com
 [213.120.69.36])
 by lists.osmocom.org (Postfix) with ESMTP id 49DDB18F221
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 17 Oct 2020 12:52:01 +0000 (UTC)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
 by sa-prd-fep-043.btinternet.com with ESMTP id
 <20200924085109.QVPS26847.sa-prd-fep-043.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>;
 Thu, 24 Sep 2020 09:51:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com;
 s=btmx201904; t=1600937469; 
 bh=hJfPr6+77ngrMgiiMx4q7DeUWYIZcFvVGyVOPuqdTdg=;
 h=From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:References:MIME-Version;
 b=b2uwY7R8uD1HJVNqBvVMi5zptAHSLJNxW9CpsXvzMMakiIJrlFHj8SP6BJYxZ6zdsCBi6m+ElsvQkUKul1ujX7hjAtHWlSX+bW0YoarTRIB77Z3MD3RHbcz0CExlVKdruzh7olPzt5dBnFmtsW9J6Yn7UTjkmvnI6QOGwnd7Buq8llrekbFztC8F4YJIvOU15H65QPw6sfNGy6dMWbMBPE1aD8wZoW7yDh+tkCLIiHfo/WDOzroLJ5umOdE9jB5aeYXnI25oVXc+YS4EU4P9ZOleGyK+15lL6xL1TkcIu52xxbBQj0w1ylJr5bC6Ay5bjenTtqLLyumoqeoQt5oExA==
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
 id 5ED9AFBE1282CF4F; Thu, 24 Sep 2020 09:51:09 +0100
From: Richard Haines <richard_c_haines@btinternet.com>
To: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org
Cc: stephen.smalley.work@gmail.com, paul@paul-moore.com, pablo@netfilter.org,
 laforge@gnumonks.org, jmorris@namei.org,
 Richard Haines <richard_c_haines@btinternet.com>
Subject: [RFC PATCH 3/3] selinux: Add SELinux GTP support
Date: Thu, 24 Sep 2020 09:51:02 +0100
Message-Id: <20200924085102.5960-4-richard_c_haines@btinternet.com>
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

The SELinux GTP implementation is explained in:
Documentation/security/GTP.rst

Signed-off-by: Richard Haines <richard_c_haines@btinternet.com>
---
 Documentation/security/GTP.rst      | 59 ++++++++++++++++++++++++++
 security/selinux/hooks.c            | 64 +++++++++++++++++++++++++++++
 security/selinux/include/classmap.h |  2 +
 security/selinux/include/objsec.h   |  4 ++
 4 files changed, 129 insertions(+)

diff --git a/Documentation/security/GTP.rst b/Documentation/security/GTP.rst
index e307d0b59..55e41ecd0 100644
--- a/Documentation/security/GTP.rst
+++ b/Documentation/security/GTP.rst
@@ -15,6 +15,9 @@ For security module support, three GTP specific hooks have been implemented::
     security_gtp_dev_del()
     security_gtp_dev_cmd()
 
+The usage of these hooks are described below with the SELinux implementation
+described in the `GTP SELinux Support`_ chapter.
+
 
 security_gtp_dev_add()
 ~~~~~~~~~~~~~~~~~~~~~~
@@ -37,3 +40,59 @@ zero on success, negative values on failure. The commands are based on values
 from ``include/uapi/linux/gtp.h`` as follows::
 
 ``enum gtp_genl_cmds { GTP_CMD_NEWPDP, GTP_CMD_DELPDP, GTP_CMD_GETPDP };``
+
+
+GTP SELinux Support
+===================
+
+Policy Statements
+-----------------
+The following class and permissions to support GTP are available within the
+kernel::
+
+    class gtp { add del get }
+
+The permissions are described in the sections that follow.
+
+Security Hooks
+--------------
+
+The `GTP LSM Support`_ chapter above describes the following GTP security
+hooks with the SELinux specifics expanded below::
+
+    security_gtp_dev_add(&gtp->security)
+    security_gtp_dev_del(gtp->security)
+    security_gtp_dev_cmd(gtp->security, cmd)
+
+
+security_gtp_dev_add()
+~~~~~~~~~~~~~~~~~~~~~~
+Allocates a security structure for a GTP device provided the caller has the
+``gtp { add }`` permission. Can return errors ``-ENOMEM`` or ``-EACCES``.
+Returns zero if the security structure has been allocated.
+
+
+security_gtp_dev_del()
+~~~~~~~~~~~~~~~~~~~~~~
+Frees a security structure for a GTP device provided the caller has the
+``gtp { del }`` permission. Can return error ``-EACCES``. Returns zero if the
+security structure has been freed.
+
+
+security_gtp_dev_cmd()
+~~~~~~~~~~~~~~~~~~~~~~
+Validate if the caller (current SID) and the GTP device SID have the required
+permission to perform the operation. The GTP/SELinux permission map as follow::
+
+    GTP_CMD_NEWPDP = gtp { add }
+    GTP_CMD_DELPDP = gtp { del }
+    GTP_CMD_GETPDP = gtp { get }
+
+Returns ``-EACCES`` if denied or zero if allowed.
+
+NOTES:
+   1) If the GTP device has the ``{ add }`` permission it can add device and
+      also add PDP's.
+
+   2) If the GTP device has the ``{ del }`` permission it can delete a device
+      and also delete PDP's.
diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
index d6b182c11..74b2bea87 100644
--- a/security/selinux/hooks.c
+++ b/security/selinux/hooks.c
@@ -5520,6 +5520,67 @@ static int selinux_tun_dev_open(void *security)
 	return 0;
 }
 
+static int selinux_gtp_dev_add(void **security)
+{
+	struct gtp_security_struct *gtpsec = NULL;
+	u32 sid = current_sid();
+	int err;
+
+	err = avc_has_perm(&selinux_state, sid, sid,
+			   SECCLASS_GTP, GTP__ADD, NULL);
+	if (err < 0)
+		return err;
+
+	gtpsec = kzalloc(sizeof(*gtpsec), GFP_KERNEL);
+	if (!gtpsec)
+		return -ENOMEM;
+
+	gtpsec->sid = sid;
+	*security = gtpsec;
+
+	return 0;
+}
+
+static int selinux_gtp_dev_del(void *security)
+{
+	struct gtp_security_struct *gtpsec = security;
+	u32 sid = current_sid();
+	int err;
+
+	err = avc_has_perm(&selinux_state, sid, gtpsec->sid,
+			   SECCLASS_GTP, GTP__DEL, NULL);
+	if (err < 0)
+		return err;
+
+	kfree(security);
+
+	return 0;
+}
+
+static int selinux_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd)
+{
+	struct gtp_security_struct *gtpsec = security;
+	u32 perm, sid = current_sid();
+
+	switch (cmd) {
+	case GTP_CMD_NEWPDP:
+		perm = GTP__ADD;
+		break;
+	case GTP_CMD_DELPDP:
+		perm = GTP__DEL;
+		break;
+	case GTP_CMD_GETPDP:
+		perm = GTP__GET;
+		break;
+	default:
+		WARN_ON(1);
+		return -EPERM;
+	}
+
+	return avc_has_perm(&selinux_state, sid, gtpsec->sid,
+			    SECCLASS_GTP, perm, NULL);
+}
+
 #ifdef CONFIG_NETFILTER
 
 static unsigned int selinux_ip_forward(struct sk_buff *skb,
@@ -7130,6 +7191,9 @@ static struct security_hook_list selinux_hooks[] __lsm_ro_after_init = {
 	LSM_HOOK_INIT(tun_dev_attach_queue, selinux_tun_dev_attach_queue),
 	LSM_HOOK_INIT(tun_dev_attach, selinux_tun_dev_attach),
 	LSM_HOOK_INIT(tun_dev_open, selinux_tun_dev_open),
+	LSM_HOOK_INIT(gtp_dev_add, selinux_gtp_dev_add),
+	LSM_HOOK_INIT(gtp_dev_del, selinux_gtp_dev_del),
+	LSM_HOOK_INIT(gtp_dev_cmd, selinux_gtp_dev_cmd),
 #ifdef CONFIG_SECURITY_INFINIBAND
 	LSM_HOOK_INIT(ib_pkey_access, selinux_ib_pkey_access),
 	LSM_HOOK_INIT(ib_endport_manage_subnet,
diff --git a/security/selinux/include/classmap.h b/security/selinux/include/classmap.h
index 40cebde62..3865a4549 100644
--- a/security/selinux/include/classmap.h
+++ b/security/selinux/include/classmap.h
@@ -249,6 +249,8 @@ struct security_class_mapping secclass_map[] = {
 	  {"open", "cpu", "kernel", "tracepoint", "read", "write"} },
 	{ "lockdown",
 	  { "integrity", "confidentiality", NULL } },
+	{ "gtp",
+	  { "add", "del", "get", NULL } },
 	{ NULL }
   };
 
diff --git a/security/selinux/include/objsec.h b/security/selinux/include/objsec.h
index 330b7b6d4..311ffb6ea 100644
--- a/security/selinux/include/objsec.h
+++ b/security/selinux/include/objsec.h
@@ -148,6 +148,10 @@ struct perf_event_security_struct {
 	u32 sid;  /* SID of perf_event obj creator */
 };
 
+struct gtp_security_struct {
+	u32 sid;  /* SID of gtp obj creator */
+};
+
 extern struct lsm_blob_sizes selinux_blob_sizes;
 static inline struct task_security_struct *selinux_cred(const struct cred *cred)
 {
-- 
2.26.2

