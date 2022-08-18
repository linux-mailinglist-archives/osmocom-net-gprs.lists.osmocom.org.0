Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AEA597F59
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 18 Aug 2022 09:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D9B6728196;
	Thu, 18 Aug 2022 07:40:02 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZxaMqLxYDyLn; Thu, 18 Aug 2022 07:40:02 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 85F012812C;
	Thu, 18 Aug 2022 07:39:58 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 378DD38A0B0F;
	Thu, 18 Aug 2022 07:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0EC572812C;
	Thu, 18 Aug 2022 07:39:47 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhxabOscalO9; Thu, 18 Aug 2022 07:39:46 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 6460728024;
	Thu, 18 Aug 2022 07:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 088771980533;
	Thu, 18 Aug 2022 07:39:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8F-maexwj-bW; Thu, 18 Aug 2022 07:39:45 +0000 (UTC)
Received: from [192.168.1.178] (l37-193-174-152.novotelecom.ru [37.193.174.152])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 7216319804EF;
	Thu, 18 Aug 2022 07:39:43 +0000 (UTC)
Message-ID: <ea5f1997-a822-285e-ac64-98825a9c50ab@sysmocom.de>
Date: Thu, 18 Aug 2022 14:39:41 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: New repository - libosmo-gprs.git
Content-Language: en-US
From: Vadim Yanitskiy <vyanitskiy@sysmocom.de>
To: Harald Welte <laforge@gnumonks.org>
References: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
 <YvYLgXeSZu5rW12D@nataraja>
 <825c51a2-6d9a-9622-7bca-3e64c770aa3c@sysmocom.de>
 <YvY49TlVtR2x407r@nataraja>
 <108f5e7c-6356-0d80-1ba2-4fb21aabc5df@sysmocom.de>
 <8a1ee6c7-b4c6-2e28-e160-df47830455c4@sysmocom.de>
In-Reply-To: <8a1ee6c7-b4c6-2e28-e160-df47830455c4@sysmocom.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: YVYMAC423OJ3FNP52YAX55RDUQXV6FZ2
X-Message-ID-Hash: YVYMAC423OJ3FNP52YAX55RDUQXV6FZ2
X-MailFrom: vyanitskiy@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/YVYMAC423OJ3FNP52YAX55RDUQXV6FZ2/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Harald,

On 8/13/22 02:53, Vadim Yanitskiy wrote:
> Oh, wait.=C2=A0 I am complicating things for no reason.=C2=A0 Of course=
 we can=20
> still clone/pull from git.osmocom.org via https://, so I can simply do=20
> s#git://git.osmocom#https://git.osmocom#.=C2=A0 I'll submit patches soo=
n.

I found your https://gerrit.osmocom.org/c/osmo-ci/+/28349 and fixed=20
problems found during code review.  Oliver gave CR+2, so I merged it.

Now osmo-ci.git is using https:// instead of git://, so libosmo-gprs.git=20
is now accessible by Jenkins jobs.  But we're not doing good yet.

=3D=3D cgit is out of sync

Today I noticed that cgit mirror of libosmo-gprs.git is out of sync with=20
Gerrit/Gitea:

$ git ls-remote https://git.osmocom.org/libosmo-gprs HEAD
11cbba9d9dd3423959adc6cd9200fe1ce9afd227        HEAD

$ git ls-remote https://gerrit.osmocom.org/libosmo-gprs HEAD
147c95f09f5c222d8e1384d131781d8ae4cbd3d8        HEAD

git ls-remote https://gitea.osmocom.org/osmocom/libosmo-gprs HEAD
147c95f09f5c222d8e1384d131781d8ae4cbd3d8        HEAD

The sync worked until recently: I merged several changes via Gerrit, and=20
they do appear at https://cgit.osmocom.org/libosmo-gprs/log/.

Is there anything I could do to troubleshoot this?

=3D=3D Sporadic git-clone failures on Jenkins

Another problem is that after the git-to-https migration, I started to=20
observe sporadic git-clone failures in master Jenkins jobs like:

+ git clone https://git.osmocom.org/libosmo-abis libosmo-abis
Cloning into 'libosmo-abis'...
error:  (curl_result =3D 56, http_code =3D 200, sha1 =3D=20
6498826eae07a02be1afc8e4f161bd1caa626e7d)
error: Unable to find 6498826eae07a02be1afc8e4f161bd1caa626e7d under=20
https://git.osmocom.org/libosmo-abis
Cannot obtain needed tree 6498826eae07a02be1afc8e4f161bd1caa626e7d
while processing commit e58d33153dd2bed3629b9a09fd6add58f296bd6a.
error: fetch failed.

+ git clone https://git.osmocom.org/libosmo-sccp libosmo-sccp
Cloning into 'libosmo-sccp'...
error: HTTP/2 stream 0 was closed cleanly, but before getting  all=20
response header fields, treated as error (curl_result =3D 92, http_code =3D=
=20
0, sha1 =3D 80f1e4bfb9c161c76f04443bd03b8a2c3ce7dbd5)
error: HTTP/2 stream 0 was closed cleanly, but before getting  all=20
response header fields, treated as error (curl_result =3D 92, http_code =3D=
=20
0, sha1 =3D 7be9bdd1632efe63b9af2d42dd355eda7883747c)
error: Unable to find 7be9bdd1632efe63b9af2d42dd355eda7883747c under=20
https://git.osmocom.org/libosmo-sccp
Cannot obtain needed blob 7be9bdd1632efe63b9af2d42dd355eda7883747c
while processing commit e7c8067df026fd294af2c95fbd2ceb16eeab7d74.
error: fetch failed.

Looks like our cgit instance is unreliable when accessed via https://.

Best regards,
Vadim.

--=20
- Vadim Yanitskiy <vyanitskiy at sysmocom.de>    http://www.sysmocom.de/
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
