Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id C9A9829006F
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Oct 2020 11:02:29 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 881BA18D6F6;
	Fri, 16 Oct 2020 09:02:29 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=btinternet.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=btinternet.com header.i=@btinternet.com header.b=DqrPHxHv
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=213.120.69.102;
 helo=re-prd-fep-049.btinternet.com;
 envelope-from=richard_c_haines@btinternet.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none)
 header.from=btinternet.com
Received: from re-prd-fep-049.btinternet.com (mailomta9-re.btinternet.com
 [213.120.69.102])
 by lists.osmocom.org (Postfix) with ESMTP id 9DB7418D313
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 16 Oct 2020 02:49:30 +0000 (UTC)
Received: from re-prd-rgout-005.btmx-prd.synchronoss.net ([10.2.54.8])
 by re-prd-fep-041.btinternet.com with ESMTP id
 <20200930094937.YAYH30588.re-prd-fep-041.btinternet.com@re-prd-rgout-005.btmx-prd.synchronoss.net>;
 Wed, 30 Sep 2020 10:49:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com;
 s=btmx201904; t=1601459377; 
 bh=YNsOkUZujBTp1VIhvorGSCJE/j6KGbTrOkO5VSFNFN8=;
 h=From:To:Cc:Subject:Date:Message-Id:X-Mailer:MIME-Version;
 b=DqrPHxHvqmH7LX/vwWop3jtNl2Yqrr9Ow5Sj6CeB5L2TpH0LaeRHRKN2Uc0hDUykXM0RavbyxvsDxZxnHboNWUOlxlQH1j0mdrJlPGzxdGZzkLpgqCJgeZdI6Femno1jqAEjhXcmLCjURmb90frPBYsQ/ZZYDB0yB+eOm7ZWEAnNaKweCwf34HGWnzDcznkN8WquvAvb1e/NiXFsjTC6psHE1J20dT8rSn1MwVKIH9PpXNzhgoDldMYtOv+zUhb58N+0+hKaVuiGogOgh2JALGwjyK5GNPZQggoMnDrlzWpRfMlFdz2zdIg24B8gYQ+OvyoqC5a+9gsoQ6SDs9pWUw==
Authentication-Results: btinternet.com;
 auth=pass (PLAIN) smtp.auth=richard_c_haines@btinternet.com
X-Originating-IP: [81.141.56.129]
X-OWM-Source-IP: 81.141.56.129 (GB)
X-OWM-Env-Sender: richard_c_haines@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedujedrfedvgdduhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptfhitghhrghrugcujfgrihhnvghsuceorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomheqnecuggftrfgrthhtvghrnhepgedvgeelgfefvdeftefhhfelveekgffhudektdelveduueejudevueejleekfffgnecuffhomhgrihhnpehgihhthhhusgdrtghomhdpkhgvrhhnvghlrdhorhhgpdhoshhmohgtohhmrdhorhhgnecukfhppeekuddrudeguddrheeirdduvdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplhhotggrlhhhohhsthdrlhhotggrlhguohhmrghinhdpihhnvghtpeekuddrudeguddrheeirdduvdelpdhmrghilhhfrhhomhepoehrihgthhgrrhgupggtpghhrghinhgvshessghtihhnthgvrhhnvghtrdgtohhmqedprhgtphhtthhopeeojhhmohhrrhhishesnhgrmhgvihdrohhrgheqpdhrtghpthhtohepoehlrghfohhrghgvsehgnhhumhhonhhkshdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhsvggtuhhrihhthidqmhhoughulhgvsehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeonhgvthguvghv
 sehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeoohhsmhhotghomhdqnhgvthdqghhprhhssehlihhsthhsrdhoshhmohgtohhmrdhorhhgqedprhgtphhtthhopeeophgrsghlohesnhgvthhfihhlthgvrhdrohhrgheqpdhrtghpthhtohepoehprghulhesphgruhhlqdhmohhorhgvrdgtohhmqedprhgtphhtthhopeeorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhequcfqtfevrffvpehrfhgtkedvvdenrhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhdprhgtphhtthhopeeoshgvlhhinhhugiesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehsthgvphhhvghnrdhsmhgrlhhlvgihrdifohhrkhesghhmrghilhdrtghomheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-SNCR-hdrdom: btinternet.com
Received: from localhost.localdomain (81.141.56.129) by
 re-prd-rgout-005.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 richard_c_haines@btinternet.com)
 id 5ED9C74D136117B5; Wed, 30 Sep 2020 10:49:37 +0100
From: Richard Haines <richard_c_haines@btinternet.com>
To: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org
Cc: stephen.smalley.work@gmail.com, paul@paul-moore.com, pablo@netfilter.org,
 laforge@gnumonks.org, jmorris@namei.org,
 Richard Haines <richard_c_haines@btinternet.com>
Subject: [PATCH 0/3] Add LSM/SELinux support for GPRS Tunneling Protocol (GTP)
Date: Wed, 30 Sep 2020 10:49:31 +0100
Message-Id: <20200930094934.32144-1-richard_c_haines@btinternet.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 16 Oct 2020 09:02:15 +0000
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

These patches came about after looking at 5G open source in particular
the updated 5G GTP driver at [1]. As this driver is still under
development, added the LSM/SELinux hooks to the current stable GTP
version in kernel selinux-next [2]. Similar hooks have also been
implemented in [1] as it uses the same base code as the current 3G
version (except that it handles different packet types).

To test the 3G GTP driver there is an RFC patch for the selinux-testsuite
at [3].

To enable the selinux-testsuite GTP tests, the libgtpnl [4] library and
tools needed to be modified to:
Return ERRNO on error to detect EACCES, Add gtp_match_tunnel function,
Allow gtp-link to specify port numbers for multiple instances to
run in the same namespace.

A patch for libgtpnl is supplied in the selinux-testsuite patch as well
as setup/test instructions (libgtpnl is not packaged by Fedora)

These patches were tested on Fedora 32 with kernel [2] using the
'targeted' policy. Also ran the Linux Kernel GTP-U basic tests [5].

[1] https://github.com/PrinzOwO/gtp5g
[2] https://github.com/SELinuxProject/selinux-kernel
[3] https://lore.kernel.org/selinux/20200924085314.6120-1-richard_c_haines@btinternet.com/
[4] git://git.osmocom.org/libgtpnl.git
[5] https://osmocom.org/projects/linux-kernel-gtp-u/wiki/Basic_Testing

Changes from RFC patches:
1) Rework the LSM hook names and contents as suggested by Casey Schaufler.
This resulted in moving the gtp_dev struct from gtp.c to include/net/gtp.h
so that it is visible to the LSM modules for storing the security blob.
2) Remove pr_debug's from gtp.c security_* calls.
3) Minor GTP.rst updates.
4) Added netdev to distribution list.

Richard Haines (3):
  security: Add GPRS Tunneling Protocol (GTP) security hooks
  gtp: Add LSM hooks to GPRS Tunneling Protocol (GTP)
  selinux: Add SELinux GTP support

 Documentation/security/GTP.rst      | 100 ++++++++++++++++++++++++++++
 Documentation/security/index.rst    |   1 +
 drivers/net/gtp.c                   |  50 +++++++++-----
 include/linux/lsm_hook_defs.h       |   3 +
 include/linux/lsm_hooks.h           |  13 ++++
 include/linux/security.h            |  22 ++++++
 include/net/gtp.h                   |  21 ++++++
 security/security.c                 |  18 +++++
 security/selinux/hooks.c            |  66 ++++++++++++++++++
 security/selinux/include/classmap.h |   2 +
 security/selinux/include/objsec.h   |   4 ++
 11 files changed, 284 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/security/GTP.rst

-- 
2.26.2

