Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 99F8928FB56
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Oct 2020 00:51:47 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 3414B18D0A6;
	Thu, 15 Oct 2020 22:51:40 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=btinternet.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=btinternet.com header.i=@btinternet.com header.b=KkRB04WC
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=213.120.69.96;
 helo=re-prd-fep-040.btinternet.com;
 envelope-from=richard_c_haines@btinternet.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none)
 header.from=btinternet.com
Received: from re-prd-fep-040.btinternet.com (mailomta3-re.btinternet.com
 [213.120.69.96])
 by lists.osmocom.org (Postfix) with ESMTP id 152EC18D08B
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 15 Oct 2020 22:51:30 +0000 (UTC)
Received: from re-prd-rgout-005.btmx-prd.synchronoss.net ([10.2.54.8])
 by re-prd-fep-049.btinternet.com with ESMTP id
 <20200924085318.OXVF4131.re-prd-fep-049.btinternet.com@re-prd-rgout-005.btmx-prd.synchronoss.net>;
 Thu, 24 Sep 2020 09:53:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com;
 s=btmx201904; t=1600937598; 
 bh=xj6OeoOxEvG39CfeVRO9a6MtvFGp7v8vcEh6W1fuiGU=;
 h=From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:References:MIME-Version;
 b=KkRB04WCHO21NwsFeenWUrTOB5/DSQfnJK+mCpTokcjVOQ06WyCS2PxrvfHEx2PWUtEA9CyV3fPMOu8jVI/KKLiQXwGTFvBwr35I4N6DKJNN+YO/gUTs3/m5Jv9rPmvoOzyOhTFmjdcKy0op0dRbsu+I0qSfkaMsfhm92kUHm7SlzrC0xxi+d0rQcXepIL0Ulnj/v2xe5tXMAFzHsz1emfNlLEZQQyEJReSgfLy2TVNygfFShYdhc3aMO1Rf074bLASPt2NiEJUPdz/zlBQp52DWEtlNbd2ZXRC3w0QOa2jNmFomF8UQrVWp1PZl8yTWvZmQJ+Cl57H8V4trZRbGYA==
Authentication-Results: btinternet.com; none
X-Originating-IP: [86.146.219.130]
X-OWM-Source-IP: 86.146.219.130 (GB)
X-OWM-Env-Sender: richard_c_haines@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedujedrudekgddutdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfhitghhrghrugcujfgrihhnvghsuceorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomheqnecuggftrfgrthhtvghrnhepuddtuefgtdffvdelgeeghedvfeetgedtheeiueevteehgeegtdevhfejgeekjeeknecuffhomhgrihhnpehgihhthhhusgdrtghomhdpohhsmhhotghomhdrohhrghdpghhnuhdrohhrghenucfkphepkeeirddugeeirddvudelrddufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplhhotggrlhhhohhsthdrlhhotggrlhguohhmrghinhdpihhnvghtpeekiedrudegiedrvdduledrudeftddpmhgrihhlfhhrohhmpeeorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomheqpdhrtghpthhtohepoehjmhhorhhrihhssehnrghmvghirdhorhhgqedprhgtphhtthhopeeolhgrfhhorhhgvgesghhnuhhmohhnkhhsrdhorhhgqedprhgtphhtthhopeeolhhinhhugidqshgvtghurhhithihqdhmohguuhhlvgesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehoshhmohgt
 ohhmqdhnvghtqdhgphhrsheslhhishhtshdrohhsmhhotghomhdrohhrgheqpdhrtghpthhtohepoehprggslhhosehnvghtfhhilhhtvghrrdhorhhgqedprhgtphhtthhopeeophgruhhlsehprghulhdqmhhoohhrvgdrtghomheqpdhrtghpthhtohepoehrihgthhgrrhgupggtpghhrghinhgvshessghtihhnthgvrhhnvghtrdgtohhmqecuqfftvefrvfeprhhftgekvddvnehrihgthhgrrhgupggtpghhrghinhgvshessghtihhnthgvrhhnvghtrdgtohhmpdhrtghpthhtohepoehsvghlihhnuhigsehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeoshhtvghphhgvnhdrshhmrghllhgvhidrfihorhhksehgmhgrihhlrdgtohhmqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-SNCR-hdrdom: btinternet.com
Received: from localhost.localdomain (86.146.219.130) by
 re-prd-rgout-005.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 richard_c_haines@btinternet.com)
 id 5ED9C74D12798ABB; Thu, 24 Sep 2020 09:53:18 +0100
From: Richard Haines <richard_c_haines@btinternet.com>
To: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org
Cc: stephen.smalley.work@gmail.com, paul@paul-moore.com, pablo@netfilter.org,
 laforge@gnumonks.org, jmorris@namei.org,
 Richard Haines <richard_c_haines@btinternet.com>
Subject: [RFC PATCH 1/1] selinux-testsuite: Add GTP tests
Date: Thu, 24 Sep 2020 09:53:14 +0100
Message-Id: <20200924085314.6120-2-richard_c_haines@btinternet.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200924085314.6120-1-richard_c_haines@btinternet.com>
References: <20200924085314.6120-1-richard_c_haines@btinternet.com>
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

Add tests to support the GTP driver.

Read the selinux-testsuite/tests/gtp/GTP-README for setup details.

Notes:
1) The kernel does not pass back errors on delete link.
Need to check audit log for deny gtp { del }.
2) The kernel or the libgtpnl library does not pass back errors
on gtp { get }. Seems to be bug or as designed !!. Check audit
log for deny.

Signed-off-by: Richard Haines <richard_c_haines@btinternet.com>
---
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

diff --git a/defconfig b/defconfig
index 46eb673..7b82f19 100644
--- a/defconfig
+++ b/defconfig
@@ -117,3 +117,7 @@ CONFIG_VFAT_FS=m
 # They are not required for SELinux operation itself.
 CONFIG_WATCH_QUEUE=y
 CONFIG_KEY_NOTIFICATIONS=y
+
+# GTP module.
+# This is not required for SELinux operation itself.
+CONFIG_GTP=y
diff --git a/policy/Makefile b/policy/Makefile
index 6c49091..01aa63f 100644
--- a/policy/Makefile
+++ b/policy/Makefile
@@ -144,6 +144,11 @@ endif
 endif
 endif
 
+ifeq ($(shell test -e /usr/local/include/libgtpnl/gtpnl.h && echo true),true)
+TARGETS += test_gtp.te
+CIL_TARGETS += test_gtp.cil
+endif
+
 ifeq (x$(DISTRO),$(filter x$(DISTRO),xRHEL4 xRHEL5 xRHEL6))
 TARGETS:=$(filter-out test_overlayfs.te test_mqueue.te test_ibpkey.te, $(TARGETS))
 endif
diff --git a/policy/test_gtp.cil b/policy/test_gtp.cil
new file mode 100644
index 0000000..057bcf2
--- /dev/null
+++ b/policy/test_gtp.cil
@@ -0,0 +1,18 @@
+(class gtp (add del get))
+(classorder (unordered gtp))
+
+(allow test_gtp-1_t self (gtp(add del get)))
+(allow test_gtp-2_t self (gtp(add del get)))
+(allow test_gtp-3_t self (gtp(add del get)))
+
+(allow test_gtp_no_add_pdp_t test_gtp-1_t (gtp(del get)))
+(allow test_gtp_no_del_pdp_t test_gtp-1_t (gtp(add get)))
+(allow test_gtp_no_get_pdp_dump_t test_gtp-1_t (gtp(add del)))
+(allow test_gtp_no_get_pdp_match_t test_gtp-1_t (gtp(add del)))
+
+;; Deny gtp for del_link
+(allow test_gtp_no_del_link_t self (gtp (add)))
+(allow test_gtp-1_t test_gtp_no_del_link_t (gtp (del)))
+
+;; Allow link to be deleted
+(allow test_gtp_no_add_link_t self (gtp (del)))
diff --git a/policy/test_gtp.te b/policy/test_gtp.te
new file mode 100644
index 0000000..611d972
--- /dev/null
+++ b/policy/test_gtp.te
@@ -0,0 +1,96 @@
+#
+########### Test GTP device driver support ##############
+#
+attribute gtpdomain;
+
+# For CONFIG_GTP=m
+kernel_request_load_module(gtpdomain)
+
+################## Create gtp-1 domain ######################
+type test_gtp-1_t;
+domain_type(test_gtp-1_t)
+unconfined_runs_test(test_gtp-1_t)
+typeattribute test_gtp-1_t testdomain;
+typeattribute test_gtp-1_t gtpdomain;
+
+################## Create gtp-2 domain ######################
+type test_gtp-2_t;
+domain_type(test_gtp-2_t)
+unconfined_runs_test(test_gtp-2_t)
+typeattribute test_gtp-2_t testdomain;
+typeattribute test_gtp-2_t gtpdomain;
+
+################## Create gtp-3 domain ######################
+type test_gtp-3_t;
+domain_type(test_gtp-3_t)
+unconfined_runs_test(test_gtp-3_t)
+typeattribute test_gtp-3_t testdomain;
+typeattribute test_gtp-3_t gtpdomain;
+
+# Common gtp rules:
+allow gtpdomain self:capability { net_admin };
+allow gtpdomain self:netlink_generic_socket *;
+allow gtpdomain self:netlink_route_socket *;
+allow gtpdomain self:udp_socket *;
+allow gtpdomain test_file_t:dir read;
+allow gtpdomain user_home_t:file { execute getattr open read };
+corecmd_check_exec_shell(gtpdomain)
+corecmd_exec_bin(gtpdomain)
+corecmd_mmap_bin_files(gtpdomain)
+corecmd_shell_entry_type(gtpdomain)
+corenet_udp_bind_generic_node(gtpdomain)
+corenet_udp_bind_generic_port(gtpdomain)
+kernel_read_network_state(gtpdomain)
+miscfiles_exec_test_files(gtpdomain)
+userdom_list_user_home_dirs(gtpdomain)
+userdom_manage_user_home_content_dirs(gtpdomain)
+userdom_map_user_home_files(gtpdomain)
+userdom_read_user_home_content_symlinks(gtpdomain)
+
+####################### Deny gtp { add_link } ##########################
+type test_gtp_no_add_link_t;
+domain_type(test_gtp_no_add_link_t)
+unconfined_runs_test(test_gtp_no_add_link_t)
+typeattribute test_gtp_no_add_link_t testdomain;
+typeattribute test_gtp_no_add_link_t gtpdomain;
+
+####################### Deny gtp { del_link } ##########################
+type test_gtp_no_del_link_t;
+domain_type(test_gtp_no_del_link_t)
+unconfined_runs_test(test_gtp_no_del_link_t)
+typeattribute test_gtp_no_del_link_t testdomain;
+typeattribute test_gtp_no_del_link_t gtpdomain;
+
+################## Deny gtp { add_pdp } ########################
+type test_gtp_no_add_pdp_t;
+domain_type(test_gtp_no_add_pdp_t)
+unconfined_runs_test(test_gtp_no_add_pdp_t)
+typeattribute test_gtp_no_add_pdp_t testdomain;
+typeattribute test_gtp_no_add_pdp_t gtpdomain;
+
+################## Deny gtp { del_pdp } ########################
+type test_gtp_no_del_pdp_t;
+domain_type(test_gtp_no_del_pdp_t)
+unconfined_runs_test(test_gtp_no_del_pdp_t)
+typeattribute test_gtp_no_del_pdp_t testdomain;
+typeattribute test_gtp_no_del_pdp_t gtpdomain;
+
+################## Deny gtp { get_pdp } ########################
+type test_gtp_no_get_pdp_dump_t;
+domain_type(test_gtp_no_get_pdp_dump_t)
+unconfined_runs_test(test_gtp_no_get_pdp_dump_t)
+typeattribute test_gtp_no_get_pdp_dump_t testdomain;
+typeattribute test_gtp_no_get_pdp_dump_t gtpdomain;
+
+################## Deny gtp { get_pdp } ########################
+type test_gtp_no_get_pdp_match_t;
+domain_type(test_gtp_no_get_pdp_match_t)
+unconfined_runs_test(test_gtp_no_get_pdp_match_t)
+typeattribute test_gtp_no_get_pdp_match_t testdomain;
+typeattribute test_gtp_no_get_pdp_match_t gtpdomain;
+
+#
+########### Allow these domains to be entered from sysadm domain ############
+#
+miscfiles_domain_entry_test_files(gtpdomain)
+userdom_sysadm_entry_spec_domtrans_to(gtpdomain)
diff --git a/tests/Makefile b/tests/Makefile
index 001639b..968f68a 100644
--- a/tests/Makefile
+++ b/tests/Makefile
@@ -129,6 +129,10 @@ SUBDIRS += watchkey
 endif
 endif
 
+ifeq ($(shell test -e /usr/local/include/libgtpnl/gtpnl.h && echo true),true)
+SUBDIRS += gtp
+endif
+
 ifeq ($(DISTRO),RHEL4)
     SUBDIRS:=$(filter-out bounds dyntrace dyntrans inet_socket mmap nnp_nosuid overlay unix_socket, $(SUBDIRS))
 endif
diff --git a/tests/gtp/.gitignore b/tests/gtp/.gitignore
new file mode 100644
index 0000000..decdf8a
--- /dev/null
+++ b/tests/gtp/.gitignore
@@ -0,0 +1,2 @@
+gtp-link
+gtp-tunnel
diff --git a/tests/gtp/GTP-README b/tests/gtp/GTP-README
new file mode 100644
index 0000000..35a4ace
--- /dev/null
+++ b/tests/gtp/GTP-README
@@ -0,0 +1,123 @@
+Testing LSM/SELinux GTP Kernel Hooks
+====================================
+
+These tests were performed on Fedora 32 Workstation with the 'targeted' policy
+using an updated kernel with the GTP RFC kernel patches.
+
+The basic process is:
+1) Build kernel with RFC LSM/GTP/SELinux patches (use the
+   selinux-testsuite/defconfig file to set correct config if required).
+2) Setup the selinux-testsuite and add the GTP test patch.
+3) Build/install the libgtpnl library using a patch from the selinux-testsuite
+   as this will allow errors to be returned by the library functions.
+4) Build/run selinux-testsuite for all SELinux tests (sets up the environment).
+5) Run the GTP tests locally to see more info.
+6) Remove the selinux-testsuite policy.
+
+#
+#### Start #####
+#
+
+Build and install a kernel with the "Add LSM/SELinux support for GPRS
+Tunneling Protocol (GTP)" patch set, [1] was used for these tests.
+
+NOTE: The selinux-testsuite/defconfig file contains kernel config info to
+build a suitable kernel. See selinux-testsuite/README.md
+
+Make a test build directory e.g.:
+mkdir /home/GTP-TEST
+
+#
+#### Setup SELinux-testsuite ######
+#
+cd /home/GTP-TEST
+git clone https://github.com/SELinuxProject/selinux-testsuite.git
+cd selinux-testsuite
+
+Install the testsuite RFC GTP Patch: "selinux-testsuite: Add GTP tests"
+
+This will add the GTP tests. There will be in selinux-testsuite/tests/gtp:
+1) GTP-README - These install/build/run instructions.
+2) Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch - This contains
+   changes required to return ERRNO and add gtp_match_tunnel function to
+   the libgtpnl library and tools.
+3) gtp-link.c and gtp-tunnel.c - These are the modified files from
+   libgtpnl/tools as the local Makefile will build these.
+4) test - A perl test script.
+
+#
+##### Setup and build/install the libgtpnl library ######
+#
+Note: The install process will install the library and include files by
+default in /usr/local/..):
+cd /home/GTP-TEST
+git clone git://git.osmocom.org/libgtpnl.git
+cd libgtpnl
+patch -p1 < ../selinux-testsuite/tests/gtp/Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch
+autoreconf -fi && ./configure && make && make install
+
+Now build and run the SELinux-testsuite:
+cd /home/GTP-TEST/selinux-testsuite
+setenforce 1
+make test
+
+If there is a build error it is most likely to be the 'module_load' test that
+requires the kernel version devel to be installed. If it is not then comment
+out the test in tests/Makefile.
+
+All other tests should run correctly. The GTP test will be last and there
+should be one error reported:
+
+#   Failed test 'FIXME: Fails gtp_list_tunnel() as no callback error.
+Audit log should have: allow test_gtp_no_get_pdp_dump_t test_gtp_t:gtp get;'
+#   at gtp/test line 76.
+
+This happens because the kernel/netlink does not return an error when
+'gtp-tunnel list' is called and the permission is denied, however the audit.log
+indicates the denial. Any idea for a fix ??. Tried various kernel/netlink
+changes to no avail. Netlink documentation seems to imply that it should work.
+
+To run the GTP tests locally and see more information:
+
+cd tests/gtp
+# Clear audit log file:
+> /var/log/audit/audit.log
+# Run tests showing extra info:
+./test
+# Check audit log for denials:
+audit2allow -p /etc/selinux/targeted/policy/policy.32 < /var/log/audit/audit.log
+
+The output should consist of the following entries:
+#============= test_gtp-2_t ==============
+allow test_gtp-2_t test_gtp-1_t:gtp { del get };
+
+#============= test_gtp_no_add_link_t ==============
+allow test_gtp_no_add_link_t self:gtp add;
+
+#============= test_gtp_no_add_pdp_t ==============
+allow test_gtp_no_add_pdp_t test_gtp-1_t:gtp add;
+
+#============= test_gtp_no_del_link_t ==============
+allow test_gtp_no_del_link_t self:gtp del;
+
+#============= test_gtp_no_del_pdp_t ==============
+allow test_gtp_no_del_pdp_t test_gtp-1_t:gtp del;
+
+#============= test_gtp_no_get_pdp_dump_t ==============
+allow test_gtp_no_get_pdp_dump_t test_gtp-1_t:gtp get;
+
+#============= test_gtp_no_get_pdp_match_t ==============
+allow test_gtp_no_get_pdp_match_t test_gtp-1_t:gtp get;
+
+
+IMPORTANT: Remove the selinux-testsuite test policy when finished as it will
+stop any libgtpnl functions from working in other SELinux domains:
+
+cd /home/GTP-TEST/selinux-testsuite
+make -C policy unload
+
+libgtpnl functions should now work in any domain.
+
+The End
+
+[1] https://github.com/SELinuxProject/selinux-kernel
diff --git a/tests/gtp/Makefile b/tests/gtp/Makefile
new file mode 100644
index 0000000..5adc426
--- /dev/null
+++ b/tests/gtp/Makefile
@@ -0,0 +1,8 @@
+TARGETS = gtp-link gtp-tunnel
+CFLAGS ?= -Wall
+LDLIBS += -l mnl -lgtpnl
+
+all: $(TARGETS)
+
+clean:
+	rm -f $(TARGETS)
diff --git a/tests/gtp/Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch b/tests/gtp/Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch
new file mode 100644
index 0000000..3baef1c
--- /dev/null
+++ b/tests/gtp/Update-libgtpnl-for-SELinux-testsuite-GTP-tests.patch
@@ -0,0 +1,366 @@
+libgtpnl: Allow SELinux-testsuite to run tests on GTP
+
+This allows the GTP functions to return errno when running
+test so that EACCES can be detected.
+
+Added 'gtp-tunnel match <device> <ver> <tid>' for testing
+permissions.
+
+Added to gtp-link options to pass port numbers when adding device in
+the same namespace.
+
+NOTE: gtp_list_tunnel() does not return an error when pdp_get denied.
+Could not find reason for this. gtp_match_tunnel() does return error
+when pdp_get denied.
+
+---
+ include/libgtpnl/gtpnl.h |  1 +
+ src/gtp-genl.c           | 47 +++++++++++++++++++++++++----
+ src/libgtpnl.map         |  1 +
+ tools/gtp-link.c         | 37 ++++++++++++++++++-----
+ tools/gtp-tunnel.c       | 64 +++++++++++++++++++++++++++++++++++-----
+ 5 files changed, 130 insertions(+), 20 deletions(-)
+
+diff --git a/include/libgtpnl/gtpnl.h b/include/libgtpnl/gtpnl.h
+index 6cd9f46..1bc427d 100644
+--- a/include/libgtpnl/gtpnl.h
++++ b/include/libgtpnl/gtpnl.h
+@@ -27,5 +27,6 @@ struct gtp_tunnel;
+ int gtp_add_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t);
+ int gtp_del_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t);
+ int gtp_list_tunnel(int genl_id, struct mnl_socket *nl);
++int gtp_match_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t);
+ 
+ #endif
+diff --git a/src/gtp-genl.c b/src/gtp-genl.c
+index f12f872..fe24625 100644
+--- a/src/gtp-genl.c
++++ b/src/gtp-genl.c
+@@ -25,6 +25,7 @@
+ #include <string.h>
+ #include <unistd.h>
+ #include <time.h>
++#include <errno.h>
+ #include <arpa/inet.h>
+ #include <sys/socket.h>
+ #include <netinet/in.h>
+@@ -66,6 +67,7 @@ int gtp_add_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t)
+ 	struct nlmsghdr *nlh;
+ 	char buf[MNL_SOCKET_BUFFER_SIZE];
+ 	uint32_t seq = time(NULL);
++	int ret;
+ 
+ 	if (t->gtp_version > GTP_V1) {
+ 		fprintf(stderr, "wrong GTP version %u, use v0 or v1\n",
+@@ -77,8 +79,12 @@ int gtp_add_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t)
+ 				   GTP_CMD_NEWPDP);
+ 	gtp_build_payload(nlh, t);
+ 
+-	if (genl_socket_talk(nl, nlh, seq, NULL, NULL) < 0)
++	ret = genl_socket_talk(nl, nlh, seq, NULL, NULL);
++	if (ret < 0) {
++		ret = errno;
+ 		perror("genl_socket_talk");
++		return ret;
++	}
+ 
+ 	return 0;
+ }
+@@ -89,13 +95,19 @@ int gtp_del_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t)
+ 	char buf[MNL_SOCKET_BUFFER_SIZE];
+ 	struct nlmsghdr *nlh;
+ 	uint32_t seq = time(NULL);
++	int ret;
+ 
+ 	nlh = genl_nlmsg_build_hdr(buf, genl_id, NLM_F_ACK, ++seq,
+ 				   GTP_CMD_DELPDP);
+ 	gtp_build_payload(nlh, t);
+ 
+-	if (genl_socket_talk(nl, nlh, seq, NULL, NULL) < 0)
++	ret = genl_socket_talk(nl, nlh, seq, NULL, NULL);
++	/* Kernel void gtp_dellink() does not pass errors back to userspace */
++	if (ret < 0) {
++		ret = errno;
+ 		perror("genl_socket_talk");
++		return ret;
++	}
+ 
+ 	return 0;
+ }
+@@ -194,15 +206,40 @@ int gtp_list_tunnel(int genl_id, struct mnl_socket *nl)
+ 	char buf[MNL_SOCKET_BUFFER_SIZE];
+ 	struct nlmsghdr *nlh;
+ 	uint32_t seq = time(NULL);
++	int ret;
+ 
+-	nlh = genl_nlmsg_build_hdr(buf, genl_id, NLM_F_DUMP, 0,
++	nlh = genl_nlmsg_build_hdr(buf, genl_id, NLM_F_DUMP | NLM_F_ACK, ++seq,
+ 				   GTP_CMD_GETPDP);
+ 
+-	if (genl_socket_talk(nl, nlh, seq, genl_gtp_attr_cb, NULL) < 0) {
++	ret = genl_socket_talk(nl, nlh, seq, genl_gtp_attr_cb, NULL);
++	if (ret < 0) {
++		ret = errno;
+ 		perror("genl_socket_talk");
+-		return 0;
++		return ret;
+ 	}
+ 
+ 	return 0;
+ }
+ EXPORT_SYMBOL(gtp_list_tunnel);
++
++int gtp_match_tunnel(int genl_id, struct mnl_socket *nl, struct gtp_tunnel *t)
++{
++	char buf[MNL_SOCKET_BUFFER_SIZE];
++	struct nlmsghdr *nlh;
++	uint32_t seq = time(NULL);
++	int ret;
++
++	nlh = genl_nlmsg_build_hdr(buf, genl_id, NLM_F_MATCH | NLM_F_ACK, ++seq,
++				   GTP_CMD_GETPDP);
++	gtp_build_payload(nlh, t);
++
++	ret = genl_socket_talk(nl, nlh, seq, genl_gtp_attr_cb, NULL);
++	if (ret < 0) {
++		ret = errno;
++		perror("genl_socket_talk");
++		return ret;
++	}
++
++	return 0;
++}
++EXPORT_SYMBOL(gtp_match_tunnel);
+diff --git a/src/libgtpnl.map b/src/libgtpnl.map
+index 804f8b3..4556758 100644
+--- a/src/libgtpnl.map
++++ b/src/libgtpnl.map
+@@ -14,6 +14,7 @@ global:
+   gtp_add_tunnel;
+   gtp_del_tunnel;
+   gtp_list_tunnel;
++  gtp_match_tunnel;
+ 
+   gtp_tunnel_alloc;
+   gtp_tunnel_free;
+diff --git a/tools/gtp-link.c b/tools/gtp-link.c
+index 8367c6e..e88e349 100644
+--- a/tools/gtp-link.c
++++ b/tools/gtp-link.c
+@@ -27,6 +27,7 @@
+ #include <unistd.h>
+ #include <string.h>
+ #include <time.h>
++#include <errno.h>
+ #include <netinet/in.h>
+ #include <arpa/inet.h>
+ 
+@@ -44,35 +45,53 @@ int main(int argc, char *argv[])
+ {
+ 	char buf[MNL_SOCKET_BUFFER_SIZE];
+ 	int ret, sgsn_mode = 0;
++	int port1, port2;
+ 
+ 	if (argc < 3) {
+-		printf("Usage: %s <add|del> <device>\n", argv[0]);
++		printf("Usage: %s <add|del> <device> [--sgsn] [port1] [port2]\n",
++		       argv[0]);
+ 		exit(EXIT_FAILURE);
+ 	}
+ 
+ 	if (!strcmp(argv[1], "del")) {
+ 		printf("destroying gtp interface...\n");
+-		if (gtp_dev_destroy(argv[2]) < 0)
++
++		ret = gtp_dev_destroy(argv[2]);
++		/* Kernel gtp_dellink() does not pass errors back to userspace */
++		if (ret < 0) {
++			ret = errno;
+ 			perror("gtp_dev_destroy");
++		}
+ 
+-		return 0;
++		return ret;
+ 	}
+ 
+-	if (argc > 3 && !strcmp(argv[3], "--sgsn"))
++	port1 = 3386;
++	port2 = 2152;
++
++	if (argc > 3 && !strcmp(argv[3], "--sgsn")) {
+ 		sgsn_mode = 1;
++		if (argc == 6) {
++			port1 = atoi(argv[4]);
++			port2 = atoi(argv[5]);
++		}
++	} else if (argc == 5) {
++		port1 = atoi(argv[3]);
++		port2 = atoi(argv[4]);
++	}
+ 
+ 	int fd1 = socket(AF_INET, SOCK_DGRAM, 0);
+ 	int fd2 = socket(AF_INET, SOCK_DGRAM, 0);
+ 	struct sockaddr_in sockaddr_fd1 = {
+ 		.sin_family	= AF_INET,
+-		.sin_port	= htons(3386),
++		.sin_port	= htons(port1),
+ 		.sin_addr	= {
+ 			.s_addr 	= INADDR_ANY,
+ 		},
+ 	};
+ 	struct sockaddr_in sockaddr_fd2 = {
+ 		.sin_family	= AF_INET,
+-		.sin_port	= htons(2152),
++		.sin_port	= htons(port2),
+ 		.sin_addr	= {
+ 			.s_addr 	= INADDR_ANY,
+ 		},
+@@ -94,13 +113,15 @@ int main(int argc, char *argv[])
+ 	else
+ 		ret = gtp_dev_create(-1, argv[2], fd1, fd2);
+ 	if (ret < 0) {
+-		perror("cannot create GTP device\n");
+-		exit(EXIT_FAILURE);
++		ret = errno;
++		perror("cannot create GTP device");
++		return ret;
+ 	}
+ 
+ 	fprintf(stderr, "WARNING: attaching dummy socket descriptors. Keep "
+ 			"this process running for testing purposes.\n");
+ 
++
+ 	while (1) {
+ 		struct sockaddr_in addr;
+ 		socklen_t len = sizeof(addr);
+diff --git a/tools/gtp-tunnel.c b/tools/gtp-tunnel.c
+index 513ff4a..8fb7fa2 100644
+--- a/tools/gtp-tunnel.c
++++ b/tools/gtp-tunnel.c
+@@ -27,6 +27,7 @@
+ #include <string.h>
+ #include <unistd.h>
+ #include <time.h>
++
+ #include <arpa/inet.h>
+ #include <sys/socket.h>
+ #include <netinet/in.h>
+@@ -56,7 +57,7 @@ add_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+ 	uint32_t gtp_ifidx;
+ 	struct in_addr ms, sgsn;
+ 	uint32_t gtp_version;
+-	int optidx;
++	int optidx, ret;
+ 
+ 	if (argc < 7 || argc > 8) {
+ 		add_usage(argv[0]);
+@@ -107,10 +108,11 @@ add_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+ 	}
+ 	gtp_tunnel_set_sgsn_ip4(t, &sgsn);
+ 
+-	gtp_add_tunnel(genl_id, nl, t);
++	/* Returns 0 or errno */
++	ret = gtp_add_tunnel(genl_id, nl, t);
+ 
+ 	gtp_tunnel_free(t);
+-	return 0;
++	return ret;
+ }
+ 
+ static int
+@@ -118,6 +120,7 @@ del_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+ {
+ 	struct gtp_tunnel *t;
+ 	uint32_t gtp_ifidx;
++	int ret;
+ 
+ 	if (argc != 5) {
+ 		printf("%s add <gtp device> <version> <tid>\n",
+@@ -146,10 +149,11 @@ del_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+ 		return EXIT_FAILURE;
+ 	}
+ 
+-	gtp_del_tunnel(genl_id, nl, t);
++	/* Returns 0 or errno */
++	ret = gtp_del_tunnel(genl_id, nl, t);
+ 
+ 	gtp_tunnel_free(t);
+-	return 0;
++	return ret;
+ }
+ 
+ struct gtp_pdp {
+@@ -170,7 +174,51 @@ struct gtp_pdp {
+ static int
+ list_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+ {
+-	return gtp_list_tunnel(genl_id, nl);
++	int ret;
++
++	ret = gtp_list_tunnel(genl_id, nl);
++	return ret;
++}
++
++static int
++match_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
++{
++	struct gtp_tunnel *t;
++	uint32_t gtp_ifidx;
++	int ret;
++
++	if (argc != 5) {
++		printf("%s match <gtp device> <version> <tid>\n",
++			argv[0]);
++		return EXIT_FAILURE;
++	}
++
++	t = gtp_tunnel_alloc();
++
++	gtp_ifidx = if_nametoindex(argv[2]);
++	if (gtp_ifidx == 0) {
++		fprintf(stderr, "wrong GTP interface %s\n", argv[2]);
++		return EXIT_FAILURE;
++	}
++	gtp_tunnel_set_ifidx(t, gtp_ifidx);
++
++	if (strcmp(argv[3], "v0") == 0) {
++		gtp_tunnel_set_version(t, GTP_V0);
++		gtp_tunnel_set_tid(t, atoi(argv[4]));
++	} else if (strcmp(argv[3], "v1") == 0) {
++		gtp_tunnel_set_version(t, GTP_V1);
++		gtp_tunnel_set_i_tei(t, atoi(argv[4]));
++	} else {
++		fprintf(stderr, "wrong GTP version %s, use v0 or v1\n",
++			argv[3]);
++		return EXIT_FAILURE;
++	}
++
++	/* Returns 0 or errno */
++	ret = gtp_match_tunnel(genl_id, nl, t);
++
++	gtp_tunnel_free(t);
++	return ret;
+ }
+ 
+ int main(int argc, char *argv[])
+@@ -180,7 +228,7 @@ int main(int argc, char *argv[])
+ 	int ret;
+ 
+ 	if (argc < 2) {
+-		printf("%s <add|delete|list> [<options,...>]\n", argv[0]);
++		printf("%s <add|delete|list|match> [<options,...>]\n", argv[0]);
+ 		exit(EXIT_FAILURE);
+ 	}
+ 
+@@ -202,6 +250,8 @@ int main(int argc, char *argv[])
+ 		ret = del_tunnel(argc, argv, genl_id, nl);
+ 	else if (strncmp(argv[1], "list", strlen(argv[1])) == 0)
+ 		ret = list_tunnel(argc, argv, genl_id, nl);
++	else if (strncmp(argv[1], "match", strlen(argv[1])) == 0)
++		ret = match_tunnel(argc, argv, genl_id, nl);
+ 	else {
+ 		printf("Unknown command `%s'\n", argv[1]);
+ 		exit(EXIT_FAILURE);
+-- 
+2.26.2
+
diff --git a/tests/gtp/gtp-link.c b/tests/gtp/gtp-link.c
new file mode 100644
index 0000000..c94a75b
--- /dev/null
+++ b/tests/gtp/gtp-link.c
@@ -0,0 +1,134 @@
+/* Command line utility to create GTP link */
+
+/* (C) 2014 by sysmocom - s.f.m.c. GmbH
+ * (C) 2016 by Pablo Neira Ayuso <pablo@netfilter.org>
+ *
+ * Author: Pablo Neira Ayuso <pablo@gnumonks.org>
+ *
+ * All Rights Reserved
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU Affero General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <string.h>
+#include <time.h>
+#include <errno.h>
+#include <netinet/in.h>
+#include <arpa/inet.h>
+
+#include <libmnl/libmnl.h>
+#include <linux/if.h>
+#include <linux/if_link.h>
+#include <linux/rtnetlink.h>
+
+#include <linux/gtp.h>
+#include <linux/if_link.h>
+
+#include <libgtpnl/gtpnl.h>
+
+int main(int argc, char *argv[])
+{
+	char buf[MNL_SOCKET_BUFFER_SIZE];
+	int ret, sgsn_mode = 0;
+	int port1, port2;
+
+	if (argc < 3) {
+		printf("Usage: %s <add|del> <device> [--sgsn] [port1] [port2]\n",
+		       argv[0]);
+		exit(EXIT_FAILURE);
+	}
+
+	if (!strcmp(argv[1], "del")) {
+		printf("destroying gtp interface...\n");
+
+		ret = gtp_dev_destroy(argv[2]);
+		/* Kernel gtp_dellink() does not pass errors back to userspace */
+		if (ret < 0) {
+			ret = errno;
+			perror("gtp_dev_destroy");
+		}
+
+		return ret;
+	}
+
+	port1 = 3386;
+	port2 = 2152;
+
+	if (argc > 3 && !strcmp(argv[3], "--sgsn")) {
+		sgsn_mode = 1;
+		if (argc == 6) {
+			port1 = atoi(argv[4]);
+			port2 = atoi(argv[5]);
+		}
+	} else if (argc == 5) {
+		port1 = atoi(argv[3]);
+		port2 = atoi(argv[4]);
+	}
+
+	int fd1 = socket(AF_INET, SOCK_DGRAM, 0);
+	int fd2 = socket(AF_INET, SOCK_DGRAM, 0);
+	struct sockaddr_in sockaddr_fd1 = {
+		.sin_family	= AF_INET,
+		.sin_port	= htons(port1),
+		.sin_addr	= {
+			.s_addr		= INADDR_ANY,
+		},
+	};
+	struct sockaddr_in sockaddr_fd2 = {
+		.sin_family	= AF_INET,
+		.sin_port	= htons(port2),
+		.sin_addr	= {
+			.s_addr		= INADDR_ANY,
+		},
+	};
+
+	if (bind(fd1, (struct sockaddr *) &sockaddr_fd1,
+		 sizeof(sockaddr_fd1)) < 0) {
+		perror("bind");
+		exit(EXIT_FAILURE);
+	}
+	if (bind(fd2, (struct sockaddr *) &sockaddr_fd2,
+		 sizeof(sockaddr_fd2)) < 0) {
+		perror("bind");
+		exit(EXIT_FAILURE);
+	}
+
+	if (sgsn_mode)
+		ret = gtp_dev_create_sgsn(-1, argv[2], fd1, fd2);
+	else
+		ret = gtp_dev_create(-1, argv[2], fd1, fd2);
+	if (ret < 0) {
+		ret = errno;
+		perror("cannot create GTP device");
+		return ret;
+	}
+
+	fprintf(stderr, "WARNING: attaching dummy socket descriptors. Keep "
+		"this process running for testing purposes.\n");
+
+	while (1) {
+		struct sockaddr_in addr;
+		socklen_t len = sizeof(addr);
+
+		ret = recvfrom(fd1, buf, sizeof(buf), 0,
+			       (struct sockaddr *)&addr, &len);
+		printf("received %d bytes via UDP socket\n", ret);
+	}
+
+	return 0;
+}
diff --git a/tests/gtp/gtp-tunnel.c b/tests/gtp/gtp-tunnel.c
new file mode 100644
index 0000000..6079028
--- /dev/null
+++ b/tests/gtp/gtp-tunnel.c
@@ -0,0 +1,263 @@
+/* Command line utility to create GTP tunnels (PDP contexts) */
+
+/* (C) 2014 by sysmocom - s.f.m.c. GmbH
+ * (C) 2016 by Pablo Neira Ayuso <pablo@netfilter.org>
+ *
+ * Author: Pablo Neira Ayuso <pablo@gnumonks.org>
+ *
+ * All Rights Reserved
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU Affero General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+#include <time.h>
+
+#include <arpa/inet.h>
+#include <sys/socket.h>
+#include <netinet/in.h>
+#include <net/if.h>
+#include <inttypes.h>
+
+#include <libmnl/libmnl.h>
+#include <linux/genetlink.h>
+
+#include <linux/gtp.h>
+#include <linux/if_link.h>
+#include <libgtpnl/gtp.h>
+#include <libgtpnl/gtpnl.h>
+
+static void add_usage(const char *name)
+{
+	printf("%s add <gtp device> <v0> <tid> <ms-addr> <sgsn-addr>\n",
+	       name);
+	printf("%s add <gtp device> <v1> <i_tei> <o_tei> <ms-addr> <sgsn-addr>\n",
+	       name);
+}
+
+static int
+add_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+{
+	struct gtp_tunnel *t;
+	uint32_t gtp_ifidx;
+	struct in_addr ms, sgsn;
+	uint32_t gtp_version;
+	int optidx, ret;
+
+	if (argc < 7 || argc > 8) {
+		add_usage(argv[0]);
+		return EXIT_FAILURE;
+	}
+
+	t = gtp_tunnel_alloc();
+	optidx = 2;
+
+	gtp_ifidx = if_nametoindex(argv[optidx]);
+	if (gtp_ifidx == 0) {
+		fprintf(stderr, "wrong GTP interface %s\n", argv[optidx]);
+		return EXIT_FAILURE;
+	}
+	gtp_tunnel_set_ifidx(t, gtp_ifidx);
+
+	optidx++;
+
+	if (strcmp(argv[optidx], "v0") == 0)
+		gtp_version = GTP_V0;
+	else if (strcmp(argv[optidx], "v1") == 0)
+		gtp_version = GTP_V1;
+	else {
+		fprintf(stderr, "wrong GTP version %s, use v0 or v1\n",
+			argv[optidx]);
+		return EXIT_FAILURE;
+	}
+	gtp_tunnel_set_version(t, gtp_version);
+
+	optidx++;
+
+	if (gtp_version == GTP_V0)
+		gtp_tunnel_set_tid(t, atoi(argv[optidx++]));
+	else if (gtp_version == GTP_V1) {
+		gtp_tunnel_set_i_tei(t, atoi(argv[optidx++]));
+		gtp_tunnel_set_o_tei(t, atoi(argv[optidx++]));
+	}
+
+	if (inet_aton(argv[optidx++], &ms) < 0) {
+		perror("bad address for ms");
+		exit(EXIT_FAILURE);
+	}
+	gtp_tunnel_set_ms_ip4(t, &ms);
+
+	if (inet_aton(argv[optidx++], &sgsn) < 0) {
+		perror("bad address for sgsn");
+		exit(EXIT_FAILURE);
+	}
+	gtp_tunnel_set_sgsn_ip4(t, &sgsn);
+
+	/* Returns 0 or errno */
+	ret = gtp_add_tunnel(genl_id, nl, t);
+
+	gtp_tunnel_free(t);
+	return ret;
+}
+
+static int
+del_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+{
+	struct gtp_tunnel *t;
+	uint32_t gtp_ifidx;
+	int ret;
+
+	if (argc != 5) {
+		printf("%s add <gtp device> <version> <tid>\n",
+		       argv[0]);
+		return EXIT_FAILURE;
+	}
+
+	t = gtp_tunnel_alloc();
+
+	gtp_ifidx = if_nametoindex(argv[2]);
+	if (gtp_ifidx == 0) {
+		fprintf(stderr, "wrong GTP interface %s\n", argv[2]);
+		return EXIT_FAILURE;
+	}
+	gtp_tunnel_set_ifidx(t, gtp_ifidx);
+
+	if (strcmp(argv[3], "v0") == 0) {
+		gtp_tunnel_set_version(t, GTP_V0);
+		gtp_tunnel_set_tid(t, atoi(argv[4]));
+	} else if (strcmp(argv[3], "v1") == 0) {
+		gtp_tunnel_set_version(t, GTP_V1);
+		gtp_tunnel_set_i_tei(t, atoi(argv[4]));
+	} else {
+		fprintf(stderr, "wrong GTP version %s, use v0 or v1\n",
+			argv[3]);
+		return EXIT_FAILURE;
+	}
+
+	/* Returns 0 or errno */
+	ret = gtp_del_tunnel(genl_id, nl, t);
+
+	gtp_tunnel_free(t);
+	return ret;
+}
+
+struct gtp_pdp {
+	uint32_t	version;
+	union {
+		struct {
+			uint64_t tid;
+		} v0;
+		struct {
+			uint32_t i_tei;
+			uint32_t o_tei;
+		} v1;
+	} u;
+	struct in_addr	sgsn_addr;
+	struct in_addr	ms_addr;
+};
+
+static int
+list_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+{
+	int ret;
+
+	ret = gtp_list_tunnel(genl_id, nl);
+	return ret;
+}
+
+static int
+match_tunnel(int argc, char *argv[], int genl_id, struct mnl_socket *nl)
+{
+	struct gtp_tunnel *t;
+	uint32_t gtp_ifidx;
+	int ret;
+
+	if (argc != 5) {
+		printf("%s match <gtp device> <version> <tid>\n",
+		       argv[0]);
+		return EXIT_FAILURE;
+	}
+
+	t = gtp_tunnel_alloc();
+
+	gtp_ifidx = if_nametoindex(argv[2]);
+	if (gtp_ifidx == 0) {
+		fprintf(stderr, "wrong GTP interface %s\n", argv[2]);
+		return EXIT_FAILURE;
+	}
+	gtp_tunnel_set_ifidx(t, gtp_ifidx);
+
+	if (strcmp(argv[3], "v0") == 0) {
+		gtp_tunnel_set_version(t, GTP_V0);
+		gtp_tunnel_set_tid(t, atoi(argv[4]));
+	} else if (strcmp(argv[3], "v1") == 0) {
+		gtp_tunnel_set_version(t, GTP_V1);
+		gtp_tunnel_set_i_tei(t, atoi(argv[4]));
+	} else {
+		fprintf(stderr, "wrong GTP version %s, use v0 or v1\n",
+			argv[3]);
+		return EXIT_FAILURE;
+	}
+
+	/* Returns 0 or errno */
+	ret = gtp_match_tunnel(genl_id, nl, t);
+
+	gtp_tunnel_free(t);
+	return ret;
+}
+
+int main(int argc, char *argv[])
+{
+	struct mnl_socket *nl;
+	int32_t genl_id;
+	int ret;
+
+	if (argc < 2) {
+		printf("%s <add|delete|list|match> [<options,...>]\n", argv[0]);
+		exit(EXIT_FAILURE);
+	}
+
+	nl = genl_socket_open();
+	if (nl == NULL) {
+		perror("mnl_socket_open");
+		exit(EXIT_FAILURE);
+	}
+
+	genl_id = genl_lookup_family(nl, "gtp");
+	if (genl_id < 0) {
+		printf("not found gtp genl family\n");
+		exit(EXIT_FAILURE);
+	}
+
+	if (strncmp(argv[1], "add", strlen(argv[1])) == 0)
+		ret = add_tunnel(argc, argv, genl_id, nl);
+	else if (strncmp(argv[1], "delete", strlen(argv[1])) == 0)
+		ret = del_tunnel(argc, argv, genl_id, nl);
+	else if (strncmp(argv[1], "list", strlen(argv[1])) == 0)
+		ret = list_tunnel(argc, argv, genl_id, nl);
+	else if (strncmp(argv[1], "match", strlen(argv[1])) == 0)
+		ret = match_tunnel(argc, argv, genl_id, nl);
+	else {
+		printf("Unknown command `%s'\n", argv[1]);
+		exit(EXIT_FAILURE);
+	}
+
+	mnl_socket_close(nl);
+
+	return ret;
+}
diff --git a/tests/gtp/test b/tests/gtp/test
new file mode 100755
index 0000000..cff8eab
--- /dev/null
+++ b/tests/gtp/test
@@ -0,0 +1,169 @@
+#!/usr/bin/perl
+use Test::More;
+
+BEGIN {
+    $basedir = $0;
+    $basedir =~ s|(.*)/[^/]*|$1|;
+
+    plan tests => 20;
+}
+
+sub add_link {
+    my ( $runcon_args, $args ) = @_;
+    my $pid;
+
+    if ( ( $pid = fork() ) == 0 ) {
+        exec "runcon $runcon_args $basedir/gtp-link $args";
+    }
+
+    # Wait for it to initialize.
+    sleep 1;
+    return $pid;
+}
+
+sub del_link {
+    my ($pid) = @_;
+
+    kill KILL, $pid;
+    waitpid $pid, 0;
+}
+
+############ Basic tests for GTP #############
+print "Test GTP device driver support\n";
+$pid = add_link( "-t test_gtp-1_t", "add gtp-1 2>&1" );
+
+print "Test GTP device driver support\n";
+$result = system
+"runcon -t test_gtp-1_t $basedir/gtp-tunnel add gtp-1 v1 100 200 127.0.0.1 127.0.0.1";
+ok( $result eq 0 );
+
+$result = system
+"runcon -t test_gtp-1_t $basedir/gtp-tunnel add gtp-1 v1 200 300 127.0.0.2 127.0.0.2";
+ok( $result eq 0 );
+
+$result = system
+"runcon -t test_gtp-1_t $basedir/gtp-tunnel add gtp-1 v0 300 127.0.0.3 127.0.0.3";
+ok( $result eq 0 );
+
+$result = system "runcon -t test_gtp-1_t $basedir/gtp-tunnel list";
+ok( $result eq 0 );
+
+$result =
+  system "runcon -t test_gtp-1_t $basedir/gtp-tunnel match gtp-1 v1 200";
+ok( $result eq 0 );
+
+########### Test Deny permissions ####################
+print "Test Deny permissions\n";
+
+# Deny gtp { add } - EACCES
+$result = system
+"runcon -t test_gtp_no_add_pdp_t $basedir/gtp-tunnel add gtp-1 v0 400 127.0.0.4 127.0.0.4 2>&1";
+ok( $result >> 8 eq 13 );
+
+# Deny gtp { del } - EACCES
+$result = system
+"runcon -t test_gtp_no_del_pdp_t $basedir/gtp-tunnel delete gtp-1 v1 100 2>&1";
+ok( $result >> 8 eq 13 );
+
+# Deny gtp { get } (gtp-tunnel list) - EACCES
+# Test returns 0 not EACCES as gtp_list_tunnel() with NLM_F_DUMP does
+# not pass errors back via the gtp-genl.c genl_gtp_attr_cb() callback.
+# The documentation found suggests that it should !!!!
+# The audit log will show the denial:
+#     allow test_gtp_no_get_pdp_dump_t test_gtp-1_t:gtp get;
+$result =
+  system "runcon -t test_gtp_no_get_pdp_dump_t $basedir/gtp-tunnel list 2>&1";
+ok(
+    $result >> 8 eq 13,
+"FIXME: Fails gtp_list_tunnel() as no callback error. Audit log should have: allow test_gtp_no_get_pdp_dump_t test_gtp-1_t:gtp get;"
+);
+
+print "Deny gtp { get } (gtp-tunnel match) - EACCES\n";
+$result =
+  system
+"runcon -t test_gtp_no_get_pdp_match_t $basedir/gtp-tunnel match gtp-1 v0 300 2>&1";
+ok( $result >> 8 eq 13 );
+
+# Kill the link.
+$result = system "runcon -t test_gtp-1_t $basedir/gtp-link del gtp-1";
+ok( $result eq 0 );
+del_link($pid);
+
+# Add link to test deny gtp delete link
+$pid = add_link( "-t test_gtp_no_del_link_t", "add gtp-1 2>&1" );
+
+# Test returns 0 not EACCES as kernel void gtp_dellink() does not
+# pass errors back to userspace. The audit log should show
+#    allow test_gtp_no_del_link_t self:gtp del;
+$result =
+  system "runcon -t test_gtp_no_del_link_t $basedir/gtp-link del gtp-1 2>&1";
+ok(
+    $result eq 0,
+"PASS: Kernel void gtp_dellink() does not pass errors back. Audit log should have: allow test_gtp_no_del_link_t self:gtp del;"
+);
+
+# Kill the link.
+$result = system "runcon -t test_gtp-1_t $basedir/gtp-link del gtp-1";
+del_link($pid);
+
+# Deny gtp { add } - EACCES
+$result =
+  system "runcon -t test_gtp_no_add_link_t $basedir/gtp-link add gtp-2 2>&1";
+ok( $result >> 8 eq 13 );
+
+#
+print
+"Create three GTP devices with different security contexts in same namespace\n";
+#
+$port1 = "3386";
+$port2 = "2152";
+
+$pid1 = add_link( "-t test_gtp-1_t", "add gtp-1 $port1 $port2 2>&1" );
+
+$result = system
+"runcon -t test_gtp-1_t $basedir/gtp-tunnel add gtp-1 v1 200 100 172.99.0.1 172.0.0.1";
+ok( $result eq 0 );
+
+$port1++;
+$port2++;
+$pid2   = add_link( "-t test_gtp-2_t", "add gtp-2 $port1 $port2 2>&1" );
+$result = system
+"runcon -t test_gtp-2_t $basedir/gtp-tunnel add gtp-2 v1 200 100 172.99.0.2 172.0.0.2";
+ok( $result eq 0 );
+
+$result = system
+"runcon -t test_gtp-2_t $basedir/gtp-tunnel list gtp-2 v1 200 100 172.99.0.2 172.0.0.2";
+ok( $result eq 0 );
+
+$result =
+  system "runcon -t test_gtp-2_t $basedir/gtp-tunnel match gtp-1 v1 200 2>&1";
+ok( $result >> 8 eq 13 );
+
+$port1++;
+$port2++;
+$pid3 = add_link( "-t test_gtp-3_t", "add gtp-3 $port1 $port2 2>&1" );
+
+# Use test_gtp-2_t to kill link 1.
+$result = system "runcon -t test_gtp-2_t $basedir/gtp-link del gtp-1";
+ok(
+    $result eq 0,
+"PASS: Kernel void gtp_dellink() does not pass errors back. Audit log should have: allow test_gtp-2_t test_gtp-1_t:gtp del;"
+);
+del_link($pid1);
+
+# Kill link 1.
+$result = system "runcon -t test_gtp-1_t $basedir/gtp-link del gtp-1";
+ok( $result eq 0 );
+del_link($pid1);
+
+# Kill link 2.
+$result = system "runcon -t test_gtp-2_t $basedir/gtp-link del gtp-2";
+ok( $result eq 0 );
+del_link($pid2);
+
+# Kill link 3.
+$result = system "runcon -t test_gtp-3_t $basedir/gtp-link del gtp-3";
+ok( $result eq 0 );
+del_link($pid3);
+
+exit;
-- 
2.26.2

