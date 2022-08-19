Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D324B599852
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Aug 2022 11:09:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5F2A9282A7;
	Fri, 19 Aug 2022 09:09:41 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nMOp9PWBqgt3; Fri, 19 Aug 2022 09:09:41 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id E72472812C;
	Fri, 19 Aug 2022 09:09:36 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9B40438A0B2B
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 19 Aug 2022 09:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 76A4E2812C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 19 Aug 2022 09:09:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfjh3U4kYxpY for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 19 Aug 2022 09:09:32 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id D8F8D28024
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 19 Aug 2022 09:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 38576198042C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 19 Aug 2022 09:09:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YvbTNqkaxFt9; Fri, 19 Aug 2022 09:09:31 +0000 (UTC)
Received: from [192.168.1.15] (dynamic-095-115-048-231.95.115.pool.telefonica.de [95.115.48.231])
	by mail.sysmocom.de (Postfix) with ESMTPSA id C6D9019802B6;
	Fri, 19 Aug 2022 09:09:31 +0000 (UTC)
Message-ID: <783d0587-d639-b7d8-b351-7e7517603040@sysmocom.de>
Date: Fri, 19 Aug 2022 11:09:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: New repository - libosmo-gprs.git
Content-Language: en-US
To: Neels Hofmeyr <nhofmeyr@sysmocom.de>
References: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
 <YvYLgXeSZu5rW12D@nataraja>
 <825c51a2-6d9a-9622-7bca-3e64c770aa3c@sysmocom.de>
 <YvY49TlVtR2x407r@nataraja>
 <108f5e7c-6356-0d80-1ba2-4fb21aabc5df@sysmocom.de>
 <8a1ee6c7-b4c6-2e28-e160-df47830455c4@sysmocom.de>
 <ea5f1997-a822-285e-ac64-98825a9c50ab@sysmocom.de>
 <e42ab573-6c40-f0e8-f811-66cfe8ae59c1@sysmocom.de> <Yv5Imp3qjPaTFogf@my.box>
From: Oliver Smith <osmith@sysmocom.de>
In-Reply-To: <Yv5Imp3qjPaTFogf@my.box>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: PAK5ZM534IYEG7U54PN5GFNHIDAFCN6A
X-Message-ID-Hash: PAK5ZM534IYEG7U54PN5GFNHIDAFCN6A
X-MailFrom: osmith@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PAK5ZM534IYEG7U54PN5GFNHIDAFCN6A/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 8/18/22 16:11, Neels Hofmeyr wrote:
> On Thu, Aug 18, 2022 at 11:48:05AM +0200, Oliver Smith wrote:
>> I propose we clone from gerrit for now:
>> https://gerrit.osmocom.org/c/osmo-ci/+/29153
> 
> Cloning from gerrit also makes sense because there is no delay between
> pushing/merging and the repos being updated.
> 
> But, I understand the idea behind gitea was that users can create their own
> repositories. If we use gerrit as the git source for CI, we deny all user
> created repositories the possibility of using osmo-ci infrastructire.

Please review the patch, repositories only on gitea are cloned from gitea.


-- 
- Oliver Smith <osmith@sysmocom.de>            https://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
