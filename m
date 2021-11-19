Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id D241945757E
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Nov 2021 18:30:28 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2F1A7228419;
	Fri, 19 Nov 2021 17:30:28 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=Dsb4Y/he
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by lists.osmocom.org (Postfix) with ESMTP id 02C102283E6;
 Fri, 19 Nov 2021 17:30:18 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id o20so1214853eds.10;
 Fri, 19 Nov 2021 09:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HBzVmq0CsqDGROiKBPz7VQENAIpZUG6jenMVYgMRBxI=;
 b=Dsb4Y/heD9zIbWORjwl0N7fBtKYZ/UuY9BKW+rY5F27iy9S24Tl0c34Rb/1w6ylXnH
 Q+nzUzjKlVcAGCHvn2ZaKxfHZqYhPkUIPLP/5Qpa5TKXFEhd5BvHWcmwvjfVIjVHkjhW
 CxW3K2OSjL+ZEJZEaI+d+IENizJ2+zdyUhE7/EUHQu7n0OxqzO3kggnP2vBIHl53wzvz
 ksm50ufqFbbT3PYcGIRGgzWpoHdAy0p3F6DgqE/Zr7jR3BS+4rD2qkunF8wx+pxxFzRb
 sPePbPvbBYdeRt6vS2vRYlixCYiUwVUnC1Yz9NOs5zrEwNb1s6cz8RPCyQ9vVCXCXpOM
 LW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HBzVmq0CsqDGROiKBPz7VQENAIpZUG6jenMVYgMRBxI=;
 b=Qzl6JG+RbihMkyC0ikkBkhYkNZXZTXYsrC27+rz505tq/KMF3Iq3Hhrf5RkUHbJInA
 JeHDQBtWFViXAROULGZULMn11AboVCX7itiI6GOa1pkDuUOHgeBfvk7hWY8wZWW+LYRp
 8kTzto//8vUqYkJ2ABjQqz7k4ksKhTIohqINUAzg5h8Wr0iyRR/XLzZqvI74MI8rULSa
 92ofVQpvrzCfGQ3h54lzvCHjsviHRGM1Q3qb2H7EjF9X/PDI9bNri+ktGeJsOLekfznF
 sMEsrs8GGModEDhbgwYqBdS9ttRL2Jvm6RE9qn++R6dzbngjejl7l8z1UlDNEc+OpOAv
 EsWQ==
X-Gm-Message-State: AOAM532HK1F/x9mde0HCGNLu8YVCJzlt7V/ztxQyMiumbBVfhZT1rsV0
 7EwFPhsgghHTKA2id3M9upvoN0gCOAxUO1daTloVsfTBVtQ=
X-Google-Smtp-Source: ABdhPJx9utVSCjaD9zfk9j+SeoL+e0NioeBCZ017l5XVcO+l+cWI5eK0JZbndvu0iY4DWc2g1JzhyU0PlCYKoJP2kUM=
X-Received: by 2002:a17:906:f894:: with SMTP id
 lg20mr10009620ejb.33.1637343017382; 
 Fri, 19 Nov 2021 09:30:17 -0800 (PST)
MIME-Version: 1.0
References: <017f28c3-76e9-aa9f-e701-d746838cabde@sysmocom.de>
In-Reply-To: <017f28c3-76e9-aa9f-e701-d746838cabde@sysmocom.de>
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Fri, 19 Nov 2021 18:30:06 +0100
Message-ID: <CAMYWRL93uh4XqqYQ_XLVdq05D3vefV4XAj298YwLLeMn+ci-sA@mail.gmail.com>
Subject: Re: Osmocom CNI release 202111
To: Pau Espin Pedrol <pespin@sysmocom.de>
Cc: OpenBSC <openbsc@lists.osmocom.org>, 
 osmocom-net-gprs <osmocom-net-gprs@lists.osmocom.org>
Content-Type: multipart/alternative; boundary="000000000000ed382d05d127a02e"
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

--000000000000ed382d05d127a02e
Content-Type: text/plain; charset="UTF-8"

Great number of changes. Congrats to Osmocom team.

On Fri, 19 Nov 2021, 16:42 Pau Espin Pedrol, <pespin@sysmocom.de> wrote:

> Dear all,
>
> I am pleased to announce new tagged releases for Osmocom Cellular
> Network Infrastructure components.
>
> Find more information about the release here [1].
>
> Osmocom "Latest" repositories in OBS [2] should already contain packages
> for the new versions.
>
> OpenEmbedded related meta-layers such as meta-telephony usual
> stable/testing branch "201705" [3] have also been updated to build
> recipes for new versions.
>
> Regards,
> Pau
>
> [1] https://osmocom.org/news/152
> [2]
> https://osmocom.org/projects/cellular-infrastructure/wiki/Latest_Builds
> [3] https://git.osmocom.org/meta-telephony/log/?h=201705
> --
> - Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
> =======================================================================
> * sysmocom - systems for mobile communications GmbH
> * Alt-Moabit 93
> * 10559 Berlin, Germany
> * Sitz / Registered office: Berlin, HRB 134158 B
> * Geschaeftsfuehrer / Managing Director: Harald Welte
>

--000000000000ed382d05d127a02e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Great number of changes. Congrats to Osmocom team.<b=
r><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, 19 Nov 2021, 16:42 Pau Espin Pedrol, &lt;<a href=3D"mailto:pespin@sysmo=
com.de">pespin@sysmocom.de</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Dear all,<br>
<br>
I am pleased to announce new tagged releases for Osmocom Cellular <br>
Network Infrastructure components.<br>
<br>
Find more information about the release here [1].<br>
<br>
Osmocom &quot;Latest&quot; repositories in OBS [2] should already contain p=
ackages <br>
for the new versions.<br>
<br>
OpenEmbedded related meta-layers such as meta-telephony usual <br>
stable/testing branch &quot;201705&quot; [3] have also been updated to buil=
d <br>
recipes for new versions.<br>
<br>
Regards,<br>
Pau<br>
<br>
[1] <a href=3D"https://osmocom.org/news/152" rel=3D"noreferrer noreferrer" =
target=3D"_blank">https://osmocom.org/news/152</a><br>
[2] <a href=3D"https://osmocom.org/projects/cellular-infrastructure/wiki/La=
test_Builds" rel=3D"noreferrer noreferrer" target=3D"_blank">https://osmoco=
m.org/projects/cellular-infrastructure/wiki/Latest_Builds</a><br>
[3] <a href=3D"https://git.osmocom.org/meta-telephony/log/?h=3D201705" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://git.osmocom.org/meta-t=
elephony/log/?h=3D201705</a><br>
-- <br>
- Pau Espin Pedrol &lt;<a href=3D"mailto:pespin@sysmocom.de" target=3D"_bla=
nk" rel=3D"noreferrer">pespin@sysmocom.de</a>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<a href=3D"http://www.sysmocom.de/" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">http://www.sysmocom.de/</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
* sysmocom - systems for mobile communications GmbH<br>
* Alt-Moabit 93<br>
* 10559 Berlin, Germany<br>
* Sitz / Registered office: Berlin, HRB 134158 B<br>
* Geschaeftsfuehrer / Managing Director: Harald Welte<br>
</blockquote></div></div></div>

--000000000000ed382d05d127a02e--
