Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 5071519B780
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  1 Apr 2020 23:21:05 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 67DD81084C5;
	Wed,  1 Apr 2020 21:21:00 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=kt40aLLR
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by lists.osmocom.org (Postfix) with ESMTP id C9E11108490
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  1 Apr 2020 21:20:50 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id i7so1665881edq.3
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 01 Apr 2020 14:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Z3g2Jcw8Upv91R4OpWH2pGPSG1E6Bf9M5XsrHYQwQBM=;
 b=kt40aLLRKm2drAm+OwvgXd9fI7+CJV9vvMiS0bnICGYSGQixnxFiqbys/kLMsbuk0c
 rDas/P3TsAuVlI67dcrusX5KKtqCxBnY/7C/VCNcqxBMYvelqY+sNnuucZSE/atB20OG
 afXik4hiQRAu2z6pSq4OjhZr4OyHY4FX4tvgr5wknw8dh8WVOyRwo07sZtp1/aONnqoW
 HUTsn+unbL/FZeedb8f6419FoGKcvJ5bZZr26IJJ7cKAUAPUqEOXa5NymI4nJCNEY3m7
 5iRfc5CJ+kDBtkKBgH4gp1ufQnOlAZgBR7mKOwE7AT/ItLf6NxitZ+IVdW0SYVFWX8Rn
 r/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Z3g2Jcw8Upv91R4OpWH2pGPSG1E6Bf9M5XsrHYQwQBM=;
 b=TbQ3ZH5d1jAiw/uU6TyWncrEMB+cRrMCXW9bb5QGyrucJbbzmJInUWCFSyyJICDnba
 0Q6KGbIRiVf278xcOhn/Oo48f+m576Q3WU3aIhtNIXeHHzFg9UQ04bhdi4BYKIvIMbVT
 S5k0z2GdpBbAjHkwwIixWzaAV1Z+QaiBBO4JmR2BDv6RHyEWoUUz/6LBlsFJJaq8tBud
 2EOGF+K2qUCq4zwahLOgA3vHgPSXRhmXuqK1HKxbtrGE04s4WsCPjrb6Ok1tWcdkOIo1
 vqfvkPS+aEkb1U0fUW6w43WWwB3oBVRYP/NGnh9zZ832MgPBFbPyZ9hCaQFkB07IKjKK
 ZvdA==
X-Gm-Message-State: ANhLgQ1pJgOB88UhOH7AbLXqQ9KO06KRXM8+NyDp8flcC1lA1SX6e6n2
 U5zOruC3V91A02zb58geMPdmDBxf+lfz3Ch9VTEdIh1Mbm0=
X-Google-Smtp-Source: ADFU+vvQ3iQ94xMao9CZT03eDv3etigaTCFEtQhhiu1QvPbyM7HFPsmyDD/3qV2EXsVINr81Zcs7C7x94gkR15q2usA=
X-Received: by 2002:aa7:cd65:: with SMTP id ca5mr23428508edb.283.1585776049742; 
 Wed, 01 Apr 2020 14:20:49 -0700 (PDT)
MIME-Version: 1.0
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Wed, 1 Apr 2020 23:20:38 +0200
Message-ID: <CAMYWRL8ObijbKULOVspvvUSqwwhzgOAymN7S1qsfGTDZ0qUyxA@mail.gmail.com>
Subject: TTCN3 3G/2G Authentication using SIM card/SIM card reader
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="00000000000023679205a241426c"
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
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

--00000000000023679205a241426c
Content-Type: text/plain; charset="UTF-8"

HI, Osmo Packet Core Guys,

I am working from home nowadays, testing commercial packet core equipment
(Ericsson).
I have already listen/read about using TTCN3 in all your famous products.
But never get a try.
I am interesting to deploy similar tests for production systems like yours
for OsmoSGSN, due to lack of test radio equipment from home and also to
make some sort of automation.

I ran your TTCN3 tests for OsmoSGSN and get loved on a first sight.
You did amazing job and made countless possibilities. Thank for that.

I know you have C code support in libosmocore library for 3g/2g auth.
*Can we use SIM card reader in TTCN3 as an option to evaluate
authentication ?!*
*Did you ever tried?!*

Best regards,
Mirko K.

--00000000000023679205a241426c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div><div>HI, Osmo Packet Core Guy=
s,</div><div><br></div><div>I am working from home nowadays, testing commer=
cial packet core equipment (Ericsson).</div><div>I have already listen/read=
 about using TTCN3 in all your famous products.</div><div>But never get a t=
ry.</div><div>I am interesting to deploy similar tests for production syste=
ms like yours for OsmoSGSN, due to lack of test radio equipment from home a=
nd also to make some sort of automation.</div><div><br></div><div>I ran you=
r TTCN3 tests for OsmoSGSN and get loved on a first sight.</div><div>You di=
d amazing job and made countless possibilities. Thank for that.</div><div><=
br></div><div>I know you have C code support in libosmocore library for 3g/=
2g auth.</div><div><b>Can we use SIM card reader in TTCN3 as an option to e=
valuate authentication ?!</b></div><div><b>Did you ever tried?!</b><br></di=
v><div><br></div><div>Best regards,</div><div>Mirko K.<br></div><div><br></=
div><div><br></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><font face=
=3D"arial narrow, sans-serif"><b><i><br></i></b></font><div><font face=3D"a=
rial narrow, sans-serif"><b><i style=3D"background-color:rgb(255,255,255)">=
<br></i></b></font></div></div></div></div></div></div>

--00000000000023679205a241426c--
