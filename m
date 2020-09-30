Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 18DAB27E682
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 30 Sep 2020 12:24:06 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 6DDB715D13D;
	Wed, 30 Sep 2020 10:24:01 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=netfilter.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 376 seconds by postgrey-1.37 at lists.osmocom.org;
 Wed, 30 Sep 2020 10:23:56 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=netfilter.org
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=193.147.175.20;
 helo=mail.us.es; envelope-from=pablo@netfilter.org; receiver=<UNKNOWN> 
Received: from mail.us.es (correo.us.es [193.147.175.20])
 by lists.osmocom.org (Postfix) with ESMTP id B9D8A15D12A
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 30 Sep 2020 10:23:56 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
 by mail.us.es (Postfix) with ESMTP id A6B0A18D006
 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 30 Sep 2020 12:17:39 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
 by antivirus1-rhel7.int (Postfix) with ESMTP id 95E7BDA901
 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 30 Sep 2020 12:17:39 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
 id 8B520DA8F7; Wed, 30 Sep 2020 12:17:39 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
 SMTPAUTH_US2,USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=disabled
 version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
 by antivirus1-rhel7.int (Postfix) with ESMTP id 20932DA722;
 Wed, 30 Sep 2020 12:17:37 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Wed, 30 Sep 2020 12:17:37 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [90.77.255.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: 1984lsi)
 by entrada.int (Postfix) with ESMTPSA id DFFF742EF9E2;
 Wed, 30 Sep 2020 12:17:36 +0200 (CEST)
Date: Wed, 30 Sep 2020 12:17:36 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Richard Haines <richard_c_haines@btinternet.com>
Cc: selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 stephen.smalley.work@gmail.com, paul@paul-moore.com,
 laforge@gnumonks.org, jmorris@namei.org
Subject: Re: [PATCH 0/3] Add LSM/SELinux support for GPRS Tunneling Protocol
 (GTP)
Message-ID: <20200930101736.GA18687@salvia>
References: <20200930094934.32144-1-richard_c_haines@btinternet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200930094934.32144-1-richard_c_haines@btinternet.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
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

On Wed, Sep 30, 2020 at 10:49:31AM +0100, Richard Haines wrote:
> These patches came about after looking at 5G open source in particular
> the updated 5G GTP driver at [1]. As this driver is still under
> development, added the LSM/SELinux hooks to the current stable GTP
> version in kernel selinux-next [2]. Similar hooks have also been
> implemented in [1] as it uses the same base code as the current 3G
> version (except that it handles different packet types).

Yes, [1] looks like it is based on the existing 3G driver in the Linux
tree.

> To test the 3G GTP driver there is an RFC patch for the selinux-testsuite
> at [3].
> 
> To enable the selinux-testsuite GTP tests, the libgtpnl [4] library and
> tools needed to be modified to:
> Return ERRNO on error to detect EACCES, Add gtp_match_tunnel function,
> Allow gtp-link to specify port numbers for multiple instances to
> run in the same namespace.
> 
> A patch for libgtpnl is supplied in the selinux-testsuite patch as well
> as setup/test instructions (libgtpnl is not packaged by Fedora)
> 
> These patches were tested on Fedora 32 with kernel [2] using the
> 'targeted' policy. Also ran the Linux Kernel GTP-U basic tests [5].

I don't remember to have seen anything similar in the existing tunnel
net_devices.

Why do you need this?

> [1] https://github.com/PrinzOwO/gtp5g
