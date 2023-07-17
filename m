Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E631756B17
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 17 Jul 2023 19:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E419C2879C;
	Mon, 17 Jul 2023 17:58:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bNg9EJD2uG5y; Mon, 17 Jul 2023 17:58:48 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id F3E8228795;
	Mon, 17 Jul 2023 17:58:44 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 605E138A10AD;
	Mon, 17 Jul 2023 17:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0872A280E9;
	Mon, 17 Jul 2023 17:58:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hHStEroPEVoy; Mon, 17 Jul 2023 17:58:33 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 0ADB627F26;
	Mon, 17 Jul 2023 17:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 9E12A19811C7;
	Mon, 17 Jul 2023 17:58:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cv7gnKFSlrmL; Mon, 17 Jul 2023 17:58:31 +0000 (UTC)
Received: from my.box (i59F7ADA9.versanet.de [89.247.173.169])
	by mail.sysmocom.de (Postfix) with ESMTPSA id A4B7819801A2;
	Mon, 17 Jul 2023 17:58:31 +0000 (UTC)
Date: Mon, 17 Jul 2023 19:58:31 +0200
From: Neels Hofmeyr <nhofmeyr@sysmocom.de>
To: Harald Welte <laforge@gnumonks.org>
Subject: Re: Deprecating support for big endian in Osmocom
Message-ID: <ZLWBR2dTdsUJ7jmk@my.box>
References: <ZLTkXpP7ugmztRjI@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <ZLTkXpP7ugmztRjI@nataraja>
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JTTYNPB76VPE7PYA4MN2NLJR4NYIKQ5Q
X-Message-ID-Hash: JTTYNPB76VPE7PYA4MN2NLJR4NYIKQ5Q
X-MailFrom: nhofmeyr@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JTTYNPB76VPE7PYA4MN2NLJR4NYIKQ5Q/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

TLDR; I lean towards dropping BE support.

From my personal, practical POV, I have no need ever of using a BE platfo=
rm.

It's true that running the struct_endianness.py is not much effort, but t=
hat
script is not very intelligent and can only handle very specific cases (I=
IRC
unions don't work, and the data type needs to be <=3D 8bit). I remember t=
hat
recently there was a case of that script not working properly. So there i=
s at
leat *some* quirkiness that remains, even though we have this script.

So my first thought is: yes, let's just drop this ugly stuff that clutter=
s our
source code, may complicate how we lay out our structs, and that literall=
y
no-one is using anywhere. Simplify, simplify.

Another thought is that a good friend of mine likes to operate legacy har=
dware,
and there I've often heard complaints that some upstream X just completel=
y
dropped perfectly good support for hardware Y because they falsely assume=
d
no-one is using it. Now I'm not so sure if that friend of mine is literal=
ly the
only person complaining about it, or if it is a bad thing in general? Tha=
t
would be my only point for keeping big endian support.

My final thought is that I wonder how other projects handle this. Every C=
/C++
code is having this problem. I find it curious that the endianness of pac=
ked
structs is not abstracted away by the *compiler*, where it probably shoul=
d be?

BTW, TIL where the term Endian originated -- despite it seeming so obviou=
s in
hindsight -- and if you don't know yet:
https://en.wikipedia.org/wiki/Endianness#Etymology
"The adjective endian has its origin in the writings of 18th century
Anglo-Irish writer Jonathan Swift. In the 1726 novel Gulliver's Travels, =
he
portrays the conflict between sects of Lilliputians divided into those br=
eaking
the shell of a boiled egg from the big end or from the little end..."

~N

On Mon, Jul 17, 2023 at 08:49:02AM +0200, Harald Welte wrote:
> Hi all,
>=20
> during recent patch review
> (https://gerrit.osmocom.org/c/osmo-trx/+/33737) the topic of continuing
> to maintain support for big endian machines has come up.
>=20
> While traditionally I've always been a strong proponent of writing
> portable code that can run also on big endian systems, it is not the
> year 2003 or 2008 anymore, and PowerPC (the main big endian platform) i=
s
> dead by now, as is SPARC.  Not just in newly-built processors, but also
> in existing and still operating machines, at least of the class that
> would run our code.
>=20
> So unless somebody objects with strong arguments, I'd propose to
> officially and explicitly drop supporting big endian systems from
> osmocom CNI projects. =20
>=20
> From what I can tell, this would primarily mean
> * drop the struct_endianness check from the commit verification
> * removing all our struct_endianness-generated or other code that
>   explicitly adds big endian support
> * adding some kind of #warning or even #error to a common libosmocore
>   header file if anyone tries to build on big endian
>=20
> This obviously doesn't mean we can abandon using [osmo_]{htonl,ntohl},
> as network byte order is still network byte order.
>=20
> Regards,
> 	Harald
> --=20
> - Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks=
.org/
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch=
. A6)

--=20
- Neels Hofmeyr <nhofmeyr@sysmocom.de>          http://www.sysmocom.de/
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Gesch=E4ftsf=FChrer / Managing Directors: Harald Welte
