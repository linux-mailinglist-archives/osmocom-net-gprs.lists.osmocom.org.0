Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id C7E5133DE6E
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 16 Mar 2021 21:08:22 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id A4C6D1B934B;
	Tue, 16 Mar 2021 20:08:13 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=gnumonks.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:780:45:1d:225:90ff:fe52:c662; helo=ganesha.gnumonks.org;
 envelope-from=laforge@gnumonks.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=gnumonks.org
Received: from ganesha.gnumonks.org (unknown
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by lists.osmocom.org (Postfix) with ESMTP id 5D6241B9339
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 16 Mar 2021 20:08:06 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.89)
 (envelope-from <laforge@gnumonks.org>)
 id 1lMFyg-0006zJ-EN; Tue, 16 Mar 2021 21:07:42 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.94)
 (envelope-from <laforge@gnumonks.org>)
 id 1lMFyW-005XoK-8W; Tue, 16 Mar 2021 21:07:32 +0100
Date: Tue, 16 Mar 2021 21:07:32 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Jonas Bonn <jonas@norrbonn.se>
Cc: Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 osmocom-net-gprs@lists.osmocom.org, Oliver Smith <osmith@sysmocom.de>,
 Pravin Shelar <pravin.ovn@gmail.com>
Subject: Automatic testing for kernel GTP tunnel driver
Message-ID: <YFEQBFnqH21kEzeN@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hi all,

in recent months - after many years of no patches at all - the kernel
GTP driver has received significant interest in terms of contributions.

Given the presumed few users of the GTP tunnel driver, as well as the
tendency to use super ancient versions of software in the telecom world,
I think that the usual "let's have the users test -rcX kernels" approach
is unlikely going to work.

Within Osmocom (a group of FOSS projects implementing various cellular
standards, protocol stacks and network elements) we are used to rather
comprehensive functional test suites that we execute automatically
at least once per 24 hours.  That is for the 99% of our software that is
userspace code.

For the kernel GTP code, it's of course not that simple, and we never
had any related testing so far.

In 2021, 5 years after the GTP kernel driver was merged mainline, we now
finally have set up some test jobs for kernel GTP.

Those jobs execute the same GGSN test suite that we run against the userspace
dataplane (handling GTP-U and GTP-C in a userspace program "osmo-ggsn").  The
only difference is that they configure osmo-ggsn to use the kernel GTP driver
for GTP-U.

Those tests are executed by jenkins, in the following jobs:

* ttcn3-ggsn-test-kernel-latest-torvalds
  https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-latest-torvalds/
  runs GGSN test suite against latest released osmo-ggsn version with
  kernel-gtp of torvalds/linux.git test results at
  https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-latest-torvalds/test_results_analyzer/
  (make sure to click "Expand All")

* ttcn3-ggsn-test-kernel-latest-torvalds
  https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-latest-net-next/
  runs GGSN test suite against latest released osmo-ggsn version with
  kernel-gtp of net-next.git
  test results at https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-latest-net-next/test_results_analyzer/ (make sure to click "Expand All")

* ttcn3-ggsn-test-kernel-latest
  https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-latest/
  runs GGSN test suite against latest released osmo-ggsn version with
  kernel-gtp of Debian 10 kernel package
  test results at https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-latest/test_results_analyzer/ (make sure to click "Expand All")

* ttcn3-ggsn-test-latest
  https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-latest/
  runs GGSN test suite against latest released osmo-ggsn version with
  userspace GTP-U, not using any kernel GTP driver
  test results at https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-latest/test_results_analyzer/
  this serves as a base line that shows the test suite can fully pass,
  and any failures in the aove are either bugs or lack of features (like
  IPv6)

Contrary to the above jenkins jobs which all run automatically once
every 24 hours, there is also one jenkins job for manual execution:

* ttcn3-ggsn-test-kernel-git
  https://jenkins.osmocom.org/jenkins/view/TTCN3/job/ttcn3-ggsn-test-kernel-git/
  this is the same test suite and osmo-ggsn as above, but a developer
  can manually trigger the job and specify
  * URL of the kernel git repo to build
  * branch of the kernel git repo to build
  * whether to use osmo-ggsn latest tag or master

If any one is working on the kernel GTP driver and wants to get access
to triggering that jenkins job in order to test your patches/branches
before submission, please register an account at
https://jenkins.osmocom.org/ and contact me privately.

We are always happy about any contributions in terms of extending test
coverage.  This could be done by e.g. adding jobs using other P-GW/GGSN
software than osmo-ggsn, or by extending the coverage of the test cases
of the test suite.

For anyone interested in more details, please see our redmine issue
https://osmocom.org/issues/3208 tracks the development of the tests.

The test suite source code (in TTCN-3) is at
https://git.osmocom.org/osmo-ttcn3-hacks/tree/ggsn_tests
with containerization + configs at
https://git.osmocom.org/docker-playground/tree/ttcn3-ggsn-test

I'd like to thank Oliver Smith <osmith@sysmocom.de> for creating the
above automatic test CI integration.  Development of this was funded
by sysmocom (https://sysmocom.de/)

If you have any questions, please feel free to reach out to Oliver
and/or me.

Regards,
	Harald

-- 
- Harald Welte <laforge@gnumonks.org>           http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
