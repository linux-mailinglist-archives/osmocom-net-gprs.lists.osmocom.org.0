Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 1E11427FBA2
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  1 Oct 2020 10:40:19 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id DE41F16061B;
	Thu,  1 Oct 2020 08:40:04 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=btinternet.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=btinternet.com header.i=@btinternet.com header.b=ONV17LLn
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 9065 seconds by postgrey-1.37 at lists.osmocom.org;
 Wed, 30 Sep 2020 12:20:44 UTC
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none)
 header.from=btinternet.com
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=213.120.69.35;
 helo=sa-prd-fep-049.btinternet.com;
 envelope-from=richard_c_haines@btinternet.com; receiver=<UNKNOWN> 
Received: from sa-prd-fep-049.btinternet.com (mailomta29-sa.btinternet.com
 [213.120.69.35])
 by lists.osmocom.org (Postfix) with ESMTP id A27D515D534
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 30 Sep 2020 12:20:42 +0000 (UTC)
Received: from sa-prd-rgout-001.btmx-prd.synchronoss.net ([10.2.38.4])
 by sa-prd-fep-049.btinternet.com with ESMTP id
 <20200930122042.JNQP4195.sa-prd-fep-049.btinternet.com@sa-prd-rgout-001.btmx-prd.synchronoss.net>;
 Wed, 30 Sep 2020 13:20:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=btinternet.com;
 s=btmx201904; t=1601468442; 
 bh=N2PlVmDmQq+mimAvy1l4FC9v2FD6b1mekfDBGXdjrRw=;
 h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:MIME-Version;
 b=ONV17LLnDd9uTfWDWzzPPDMfwOcx1Edn+BRlkh/TPvl14XPepJ//qj9e4Wvyj7hDB3JVMREbKqbTjDau+Lac0ixEd2sYJwju6u/jcT4UOslSrmHRPmkEDgJy9dc5sLLeOgIfbCFvxCzsVrGdPVoNXOytPXvI1ssDV3bPyEPPY9j7BxM8I83DUGuHmgaKAmWbl7o5/CNjoG8zEtg9nv7THua5N/Y+FodaTqmRj8XFH6ynXLlht2yIoySzHeUh7aPhZnIugAD9UVBmT/hyJ+aD313K0ZUzzE2PdLj60Ls9prsYwlUEaZ4fdeIH6kIynfnRYQikY68ckAKeCAGr7Q/hfA==
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=richard_c_haines@btinternet.com
X-Originating-IP: [81.141.56.129]
X-OWM-Source-IP: 81.141.56.129 (GB)
X-OWM-Env-Sender: richard_c_haines@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedujedrfedvgdegkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkffuhffvffgjfhgtfggggfesthejredttderjeenucfhrhhomheptfhitghhrghrugcujfgrihhnvghsuceorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomheqnecuggftrfgrthhtvghrnhepteetveegheevieeifeekvdeiheejvedtieelfffffeevleeijeevvdejvdduudegnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepkedurddugedurdehiedruddvleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehlohgtrghlhhhoshhtrdhlohgtrghlughomhgrihhnpdhinhgvthepkedurddugedurdehiedruddvledpmhgrihhlfhhrohhmpeeorhhitghhrghruggptggphhgrihhnvghssegsthhinhhtvghrnhgvthdrtghomhequceuqfffjgepkeeukffvoffkoffgpdhrtghpthhtohepoehjmhhorhhrihhssehnrghmvghirdhorhhgqedprhgtphhtthhopeeolhgrfhhorhhgvgesghhnuhhmohhnkhhsrdhorhhgqedprhgtphhtthhopeeolhhinhhugidqshgvtghurhhithihqdhmohguuhhlvgesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhr
 tghpthhtohepoehnvghtuggvvhesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehoshhmohgtohhmqdhnvghtqdhgphhrsheslhhishhtshdrohhsmhhotghomhdrohhrgheqpdhrtghpthhtohepoehprggslhhosehnvghtfhhilhhtvghrrdhorhhgqedprhgtphhtthhopeeophgruhhlsehprghulhdqmhhoohhrvgdrtghomheqpdhrtghpthhtohepoehsvghlihhnuhigsehvghgvrhdrkhgvrhhnvghlrdhorhhgqedprhgtphhtthhopeeoshhtvghphhgvnhdrshhmrghllhgvhidrfihorhhksehgmhgrihhlrdgtohhmqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-SNCR-hdrdom: btinternet.com
Received: from localhost.localdomain (81.141.56.129) by
 sa-prd-rgout-001.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 richard_c_haines@btinternet.com)
 id 5ED99EC9137BA842; Wed, 30 Sep 2020 13:20:42 +0100
Message-ID: <0a5e4f19d7bb5c61985dece7614dc33329858f36.camel@btinternet.com>
Subject: Re: [PATCH 0/3] Add LSM/SELinux support for GPRS Tunneling Protocol
 (GTP)
From: Richard Haines <richard_c_haines@btinternet.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: selinux@vger.kernel.org, linux-security-module@vger.kernel.org, 
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, 
 stephen.smalley.work@gmail.com, paul@paul-moore.com, laforge@gnumonks.org, 
 jmorris@namei.org
Date: Wed, 30 Sep 2020 13:20:41 +0100
In-Reply-To: <20200930101736.GA18687@salvia>
References: <20200930094934.32144-1-richard_c_haines@btinternet.com>
 <20200930101736.GA18687@salvia>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 01 Oct 2020 08:39:59 +0000
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

On Wed, 2020-09-30 at 12:17 +0200, Pablo Neira Ayuso wrote:
> On Wed, Sep 30, 2020 at 10:49:31AM +0100, Richard Haines wrote:
> > These patches came about after looking at 5G open source in
> > particular
> > the updated 5G GTP driver at [1]. As this driver is still under
> > development, added the LSM/SELinux hooks to the current stable GTP
> > version in kernel selinux-next [2]. Similar hooks have also been
> > implemented in [1] as it uses the same base code as the current 3G
> > version (except that it handles different packet types).
> 
> Yes, [1] looks like it is based on the existing 3G driver in the
> Linux
> tree.

After a few fixes to [1], I now have the gtp5g version driver running
on 5.9 with security hooks and passing their couple of tests.

> 
> > To test the 3G GTP driver there is an RFC patch for the selinux-
> > testsuite
> > at [3].
> > 
> > To enable the selinux-testsuite GTP tests, the libgtpnl [4] library
> > and
> > tools needed to be modified to:
> > Return ERRNO on error to detect EACCES, Add gtp_match_tunnel
> > function,
> > Allow gtp-link to specify port numbers for multiple instances to
> > run in the same namespace.
> > 
> > A patch for libgtpnl is supplied in the selinux-testsuite patch as
> > well
> > as setup/test instructions (libgtpnl is not packaged by Fedora)
> > 
> > These patches were tested on Fedora 32 with kernel [2] using the
> > 'targeted' policy. Also ran the Linux Kernel GTP-U basic tests [5].
> 
> I don't remember to have seen anything similar in the existing tunnel
> net_devices.
> 
> Why do you need this?

I don't actually have a use for this, I only did it out of idle
curiosity. If it is useful to the community then okay. Given the
attemped move to Open 5G I thought adding MAC support might be useful
somewhere along the line.

> 
> > [1] https://github.com/PrinzOwO/gtp5g

