Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id E5D0328FC08
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Oct 2020 02:21:16 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5CD0718D16A;
	Fri, 16 Oct 2020 00:21:10 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=btinternet.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=btinternet.com header.i=@btinternet.com header.b=CPbPwlZ5
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=213.120.69.107;
 helo=re-prd-fep-047.btinternet.com;
 envelope-from=richard_c_haines@btinternet.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none)
 header.from=btinternet.com
Received: from re-prd-fep-047.btinternet.com (mailomta14-re.btinternet.com
 [213.120.69.107])
 by lists.osmocom.org (Postfix) with ESMTP id 090E418D157
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 16 Oct 2020 00:21:01 +0000 (UTC)
Received: from re-prd-rgout-005.btmx-prd.synchronoss.net ([10.2.54.8])
 by re-prd-fep-046.btinternet.com with ESMTP id
 <20200924085317.LMWN4657.re-prd-fep-046.btinternet.com@re-prd-rgout-005.btmx-prd.synchronoss.net>;
 Thu, 24 Sep 2020 09:53:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com;
 s=btmx201904; t=1600937597; 
 bh=upZeFktiusyKesvANNbo1fkRMuOw9DAeoZOqANbHySQ=;
 h=From:To:Cc:Subject:Date:Message-Id:X-Mailer:MIME-Version;
 b=CPbPwlZ5yiAm0IWpcl+2vh//B1veGXybxOLvTC69894+oao9NcxiZ70b1EX3DnWgsDUfMQdAxBb320M4YqFrtpWM8+DArqfSHVf0bsbnVIQsUXC+4HDUKS9fBnYOtxOayrUUpQrBL48mZqfCchdbzcniJcPXKc8p8yJRzBUO5YrbczTSKzp9i/KaYszB66y8a5aeUw/Vqx9+zVv93GeUQQMej3BqnnRFilFp5A4kxO0kZZykBMVUzKBEsXJDdMDKEe+r905KS39q5ezACC328HALdtYNeklcGOck+/CkRs0ybYnB1OOShvriIANpBA61XkbLNLM08qGJ6Gt/Bh44+A==
Authentication-Results: btinternet.com;
 auth=pass (PLAIN) smtp.auth=richard_c_haines@btinternet.com
X-Originating-IP: [86.146.219.130]
X-OWM-Source-IP: 86.146.219.130 (GB)
X-OWM-Env-Sender: richard_c_haines@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedujedrudekgddutdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptfhitghhrghrugcujfgrihhnvghsuceorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomheqnecuggftrfgrthhtvghrnhepleetffegveevjeehvefhtefgueevudettedutdffvdejkeeiteegheevfeejtdefnecukfhppeekiedrudegiedrvdduledrudeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehlohgtrghlhhhoshhtrdhlohgtrghlughomhgrihhnpdhinhgvthepkeeirddugeeirddvudelrddufedtpdhmrghilhhfrhhomhepoehrihgthhgrrhgupggtpghhrghinhgvshessghtihhnthgvrhhnvghtrdgtohhmqedprhgtphhtthhopeeojhhmohhrrhhishesnhgrmhgvihdrohhrgheqpdhrtghpthhtohepoehlrghfohhrghgvsehgnhhumhhonhhkshdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhsvggtuhhrihhthidqmhhoughulhgvsehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeoohhsmhhotghomhdqnhgvthdqghhprhhssehlihhsthhsrdhoshhmohgtohhmrdhorhhgqedprhgtphhtthhopeeophgr
 sghlohesnhgvthhfihhlthgvrhdrohhrgheqpdhrtghpthhtohepoehprghulhesphgruhhlqdhmohhorhgvrdgtohhmqedprhgtphhtthhopeeorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhequcfqtfevrffvpehrfhgtkedvvdenrhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhdprhgtphhtthhopeeoshgvlhhinhhugiesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehsthgvphhhvghnrdhsmhgrlhhlvgihrdifohhrkhesghhmrghilhdrtghomheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-SNCR-hdrdom: btinternet.com
Received: from localhost.localdomain (86.146.219.130) by
 re-prd-rgout-005.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 richard_c_haines@btinternet.com)
 id 5ED9C74D12798A9F; Thu, 24 Sep 2020 09:53:17 +0100
From: Richard Haines <richard_c_haines@btinternet.com>
To: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org
Cc: stephen.smalley.work@gmail.com, paul@paul-moore.com, pablo@netfilter.org,
 laforge@gnumonks.org, jmorris@namei.org,
 Richard Haines <richard_c_haines@btinternet.com>
Subject: [RFC PATCH 0/1] selinux-testsuite: Add GTP tests
Date: Thu, 24 Sep 2020 09:53:13 +0100
Message-Id: <20200924085314.6120-1-richard_c_haines@btinternet.com>
X-Mailer: git-send-email 2.26.2
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

These tests were performed on Fedora 32 Workstation with the 'targeted'
policy using an updated kernel with the GTP RFC kernel patches.

See the tests/gtp/GTP-README for detailed setup/testing.

The libgtpnl patch is at:
  tests/gtp/Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch

The basic process is:
1) Build kernel with RFC LSM/GTP/SELinux patches (use the
   selinux-testsuite/defconfig file to set correct config if required).
2) Setup the selinux-testsuite and add the GTP test patch.
3) Build/install the libgtpnl library using a patch from the
   selinux-testsuite as this will allow errors to be returned by the
   library functions.
4) Build/run selinux-testsuite for all SELinux tests (sets up the
   environment).
5) Run the GTP tests locally to see more info.
6) Remove the selinux-testsuite policy.

Richard Haines (1):
  selinux-testsuite: Add GTP tests

 defconfig                                     |   4 +
 policy/Makefile                               |   5 +
 policy/test_gtp.cil                           |  18 +
 policy/test_gtp.te                            |  96 +++++
 tests/Makefile                                |   4 +
 tests/gtp/.gitignore                          |   2 +
 tests/gtp/GTP-README                          | 123 ++++++
 tests/gtp/Makefile                            |   8 +
 ...tpnl-for-SELinux-testsuite-GTP-tests.patch | 366 ++++++++++++++++++
 tests/gtp/gtp-link.c                          | 134 +++++++
 tests/gtp/gtp-tunnel.c                        | 263 +++++++++++++
 tests/gtp/test                                | 169 ++++++++
 12 files changed, 1192 insertions(+)
 create mode 100644 policy/test_gtp.cil
 create mode 100644 policy/test_gtp.te
 create mode 100644 tests/gtp/.gitignore
 create mode 100644 tests/gtp/GTP-README
 create mode 100644 tests/gtp/Makefile
 create mode 100644 tests/gtp/Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch
 create mode 100644 tests/gtp/gtp-link.c
 create mode 100644 tests/gtp/gtp-tunnel.c
 create mode 100755 tests/gtp/test

-- 
2.26.2

