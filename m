Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A934B2189
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 11 Feb 2022 10:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2529D283D2;
	Fri, 11 Feb 2022 09:20:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sfq6eocqCrDJ; Fri, 11 Feb 2022 09:20:19 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A925528389;
	Fri, 11 Feb 2022 09:20:16 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 09B3338A29EA
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4C8E7283C1
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:20:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-F-3K216oV1 for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Feb 2022 09:20:11 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
	by mail.osmocom.org (Postfix) with ESMTPS id 67B71282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 09:20:11 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
	(envelope-from <laforge@osmocom.org>)
	id 1nIS60-00GkoZ-MB; Fri, 11 Feb 2022 10:20:04 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.95)
	(envelope-from <laforge@osmocom.org>)
	id 1nIRxv-004xg7-Qx;
	Fri, 11 Feb 2022 10:11:43 +0100
Date: Fri, 11 Feb 2022 10:11:43 +0100
From: Harald Welte <laforge@osmocom.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Message-ID: <YgYoT4UWw0Efq33K@nataraja>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
 <20220127163900.374645-1-marcin.szycik@linux.intel.com>
 <Yf6nBDg/v1zuTf8l@nataraja>
 <fd23700b-4269-a615-a73d-10476ffaf82d@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fd23700b-4269-a615-a73d-10476ffaf82d@linux.intel.com>
Message-ID-Hash: 5PRP32NWKZ63VCR47BDBI3XXFFGPRVFF
X-Message-ID-Hash: 5PRP32NWKZ63VCR47BDBI3XXFFGPRVFF
X-MailFrom: laforge@osmocom.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/5PRP32NWKZ63VCR47BDBI3XXFFGPRVFF/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Marcin,

On Wed, Feb 09, 2022 at 07:04:01PM +0100, Marcin Szycik wrote:
> On 05-Feb-22 17:34, Harald Welte wrote:
> > Hi Marcin, Wojciech,
> > 
> > thanks for the revised patch. In general it looks fine to me.
> > 
> > Do you have a public git tree with your patchset applied?  I'm asking as
> > we do have automatic testing in place at https://jenkins.osmocom.org/ where I
> > just need to specify a remote git repo andit will build this kernel and
> > run the test suite.
> 
> I've created a public fork with our patchset applied, please see [1].

Thanks, I've triggered a build, let's hope it works out.  Results should
be at https://jenkins.osmocom.org/jenkins/job/ttcn3-ggsn-test-kernel-git/20/
and detailed logs at https://jenkins.osmocom.org/jenkins/job/ttcn3-ggsn-test-kernel-git/20/console

The same testsuite executed  against master can be seen at
https://jenkins.osmocom.org/jenkins/job/ttcn3-ggsn-test-kernel-latest-torvalds/
[the high amount of test cases failing is due to the lack of IPv6 support in the kernel GTP].

Let's hope your forked repo renders identical test results to upstream!

Regards,
	Harald
-- 
- Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
