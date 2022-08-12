Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C2B591622
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 12 Aug 2022 21:54:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0ED39282AF;
	Fri, 12 Aug 2022 19:54:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Lqne-1Hino6; Fri, 12 Aug 2022 19:53:59 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A4D7F28190;
	Fri, 12 Aug 2022 19:53:58 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 81E5F38A0B0D;
	Fri, 12 Aug 2022 19:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5ECAA28190;
	Fri, 12 Aug 2022 19:53:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ivm_RVzlc20R; Fri, 12 Aug 2022 19:53:49 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 8FEE32812C;
	Fri, 12 Aug 2022 19:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 0C53919804D9;
	Fri, 12 Aug 2022 19:53:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0h99oHJgQmCq; Fri, 12 Aug 2022 19:53:48 +0000 (UTC)
Received: from [192.168.1.178] (l37-193-174-152.novotelecom.ru [37.193.174.152])
	by mail.sysmocom.de (Postfix) with ESMTPSA id AF1A7198049B;
	Fri, 12 Aug 2022 19:53:47 +0000 (UTC)
Message-ID: <8a1ee6c7-b4c6-2e28-e160-df47830455c4@sysmocom.de>
Date: Sat, 13 Aug 2022 02:53:41 +0700
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
In-Reply-To: <108f5e7c-6356-0d80-1ba2-4fb21aabc5df@sysmocom.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: NRSLECB5LH6XPOL5JVY444AWCSWM4CHB
X-Message-ID-Hash: NRSLECB5LH6XPOL5JVY444AWCSWM4CHB
X-MailFrom: vyanitskiy@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NRSLECB5LH6XPOL5JVY444AWCSWM4CHB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 8/13/22 02:17, Vadim Yanitskiy wrote:
> The main problem with using Gitea is that all projects are grouped: we=20
> have 'osmocom', 'cellular-infrastructure', 'phone-side', and more.=C2=A0=
 This=20
> is why we cannot simply do s#git://git#https://gitea#.
>=20
> To overcome this problem, we could clone/pull from Gerrit instead.=C2=A0=
 But=20
> this is not going to work for projects not present in Gerrit... :/

Oh, wait.  I am complicating things for no reason.  Of course we can=20
still clone/pull from git.osmocom.org via https://, so I can simply do=20
s#git://git.osmocom#https://git.osmocom#.  I'll submit patches soon.

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
