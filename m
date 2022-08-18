Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F7F598574
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 18 Aug 2022 16:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E3802282B0;
	Thu, 18 Aug 2022 14:11:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGtze93rVjUH; Thu, 18 Aug 2022 14:11:52 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 872E82812C;
	Thu, 18 Aug 2022 14:11:49 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A211F38A0B3F;
	Thu, 18 Aug 2022 14:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 847092812C;
	Thu, 18 Aug 2022 14:11:40 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQrAptExQTUA; Thu, 18 Aug 2022 14:11:40 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 3C74F28024;
	Thu, 18 Aug 2022 14:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id E7CD81980577;
	Thu, 18 Aug 2022 14:11:39 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgcQdPwQwsVi; Thu, 18 Aug 2022 14:11:39 +0000 (UTC)
Received: from my.box (i59F7ADB4.versanet.de [89.247.173.180])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 664A0198013D;
	Thu, 18 Aug 2022 14:11:39 +0000 (UTC)
Date: Thu, 18 Aug 2022 16:11:38 +0200
From: Neels Hofmeyr <nhofmeyr@sysmocom.de>
To: Oliver Smith <osmith@sysmocom.de>
Subject: Re: New repository - libosmo-gprs.git
Message-ID: <Yv5Imp3qjPaTFogf@my.box>
References: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
 <YvYLgXeSZu5rW12D@nataraja>
 <825c51a2-6d9a-9622-7bca-3e64c770aa3c@sysmocom.de>
 <YvY49TlVtR2x407r@nataraja>
 <108f5e7c-6356-0d80-1ba2-4fb21aabc5df@sysmocom.de>
 <8a1ee6c7-b4c6-2e28-e160-df47830455c4@sysmocom.de>
 <ea5f1997-a822-285e-ac64-98825a9c50ab@sysmocom.de>
 <e42ab573-6c40-f0e8-f811-66cfe8ae59c1@sysmocom.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e42ab573-6c40-f0e8-f811-66cfe8ae59c1@sysmocom.de>
Message-ID-Hash: ZTQEDUVOEBIUFMMCYELQY2EMJB3VA2HO
X-Message-ID-Hash: ZTQEDUVOEBIUFMMCYELQY2EMJB3VA2HO
X-MailFrom: nhofmeyr@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vadim Yanitskiy <vyanitskiy@sysmocom.de>, openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ZTQEDUVOEBIUFMMCYELQY2EMJB3VA2HO/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Aug 18, 2022 at 11:48:05AM +0200, Oliver Smith wrote:
> I propose we clone from gerrit for now:
> https://gerrit.osmocom.org/c/osmo-ci/+/29153

Cloning from gerrit also makes sense because there is no delay between
pushing/merging and the repos being updated.

But, I understand the idea behind gitea was that users can create their own
repositories. If we use gerrit as the git source for CI, we deny all user
created repositories the possibility of using osmo-ci infrastructire.

So I'm not sure that we want gerrit to be regarded as the primary repository;
though it de-facto already is for most active projects. (I have nostalgia for
the times when git.osmocom.org was the only place for repositories.)

I'm not sure what the intention is at the moment,
i.e. which is the one definitive primary git:

Is it gitea.osmocom.org?
Those are mostly mirrors of gerrit.
There is often a delay between merging patches (gerrit) and seeing them here.

Is it git.osmocom.org?
Served by cgit and labeled "Legacy mirror"
There is often a delay between merging patches (gerrit) and seeing them here.

Is it gerrit.osmocom.org?
Not all projects are there.
Weird Java implementation of git, though works for all intents and purposes.

Definitely not github/gitlab.

~N
