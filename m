Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 6CFAB1DD83D
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 21 May 2020 22:26:01 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 412A4116929;
	Thu, 21 May 2020 20:25:22 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=SPS5vW0A
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by lists.osmocom.org (Postfix) with ESMTP id 01CCB116914
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 20:25:10 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id d7so10413604eja.7
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 13:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MGGwML0rz9a+FeFboyig8HEi8Hx0lcvSYIM7A79Z8DU=;
 b=SPS5vW0A015oBS+MBZRAFaCBRLSj1lCKrXXuuFJpjS1D+ZjE3jfy/slqj544jVgSoh
 fknhRxpHYR/DBzfZgg1CRXQujP2RPCUJjRdfYS9QI67XGQVCu0fjxV1Yfpp8g9/whcDX
 4GEzou67xYMim7yS/R0mvlS7lt9KQcYhySDEUOkNX1u58YpelyT8STsTpYvsO9pYv9hT
 8bJ+hev7SzxFt691V1MR5T2++FUFyXrbzk58JInd7CaiEaI2x3frw7+/sciz6EXt21yC
 W5FcHi9O3rWLeDJDtJep0jZXvq5reDtZJQnPjdUCmE0PrYHv66lADVXs20I3GrQG8rQg
 PcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MGGwML0rz9a+FeFboyig8HEi8Hx0lcvSYIM7A79Z8DU=;
 b=aZZ1HkY/McaxJJu36haZuV/YLsTIrULzK1K72nVwpKhd354yI3afH9UJh+JF9Jzh0D
 9+3FK3jr943pnaVsnw27WLhLULEmEBf9q10A3Myx0EbmeZonAnDwfq4aRoh8iUx6rgxq
 HsQ3Ny/YrZ2M5ZhoEhKyb+5CoUX9ySZvFWI1oJdevbdYVqKPBHRWq6NdFL3I3vgIOUx+
 2AQ4hFq7DwfnJXX1P0LksYV7yueBfnegNRrSew8eFezqG/Ee4ulzzs8AsQslG9RZxm6r
 PGtQpkSzJs0Hvhx6slDXt7hnt/mtrATPT6FmBPbU5AGtPg35LUJFdKtD4llUx2wqwo4U
 thXQ==
X-Gm-Message-State: AOAM5314MQfGb9ew4vASeSjI4dTMlyw9fvG+mx0YRMT2cDQmP8/B3Qr7
 9EfB9Bj/YnSttcZvhQZ9LL4mnNKzpjiyAI2Hop6+eg==
X-Google-Smtp-Source: ABdhPJyAgoywVoTrME3qmLhPtUoYy6eJV9USkB0koZn9e50V65z717nmJaIxcrcjPNFc7kOqKalLRgdGNZcUAjI7GF0=
X-Received: by 2002:a17:906:1dd1:: with SMTP id
 v17mr5209897ejh.395.1590092710024; 
 Thu, 21 May 2020 13:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAMYWRL93tWfcNcw-jO=qRYCE2nZDKRijP+qMbg1UsBLQdwe6cQ@mail.gmail.com>
 <CAMYWRL8e-fMNiooHCm22Em-ASdievW1BHZHjBLAwAgRr6KRiOA@mail.gmail.com>
 <e1bf2f7d-d337-a825-ac3f-134879268e6b@sysmocom.de>
In-Reply-To: <e1bf2f7d-d337-a825-ac3f-134879268e6b@sysmocom.de>
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Thu, 21 May 2020 22:24:58 +0200
Message-ID: <CAMYWRL9CZmHKCdvReh9UCnsnUYFE7pqNuwVnW4-jBZXD+SFKUQ@mail.gmail.com>
Subject: Re: Compilation of TTCN3 tests for SGSN failed
To: Pau Espin Pedrol <pespin@sysmocom.de>
Content-Type: multipart/alternative; boundary="000000000000241d4d05a62e4f4c"
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
Cc: osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

--000000000000241d4d05a62e4f4c
Content-Type: text/plain; charset="UTF-8"

You are right.
Old version of titan.eclipse.
Wasn't aware of it.

Problem solved,
Thank you.

On Thu, May 21, 2020 at 3:51 PM Pau Espin Pedrol <pespin@sysmocom.de> wrote:

> Hi,
>
> to me it looks like you are using a version of TITAN too old. Support
> for CSN L/H bits was addded recently, and that's why we switched also
> recently to TITAN version 6.6.1 to be able to use it.
>
> Regards,
>
> --
> - Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
> =======================================================================
> * sysmocom - systems for mobile communications GmbH
> * Alt-Moabit 93
> * 10559 Berlin, Germany
> * Sitz / Registered office: Berlin, HRB 134158 B
> * Geschaeftsfuehrer / Managing Director: Harald Welte
>


-- 

*Puno pozdrava,Mirko Kovacevic*

--000000000000241d4d05a62e4f4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You are right.</div><div>Old version of titan.eclipse=
.</div><div>Wasn&#39;t aware of it.</div><div><br></div><div>Problem solved=
,</div><div>Thank you.<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 3:51 PM Pau Espin P=
edrol &lt;<a href=3D"mailto:pespin@sysmocom.de">pespin@sysmocom.de</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
to me it looks like you are using a version of TITAN too old. Support<br>
for CSN L/H bits was addded recently, and that&#39;s why we switched also<b=
r>
recently to TITAN version 6.6.1 to be able to use it.<br>
<br>
Regards,<br>
<br>
-- <br>
- Pau Espin Pedrol &lt;<a href=3D"mailto:pespin@sysmocom.de" target=3D"_bla=
nk">pespin@sysmocom.de</a>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"=
http://www.sysmocom.de/" rel=3D"noreferrer" target=3D"_blank">http://www.sy=
smocom.de/</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
* sysmocom - systems for mobile communications GmbH<br>
* Alt-Moabit 93<br>
* 10559 Berlin, Germany<br>
* Sitz / Registered office: Berlin, HRB 134158 B<br>
* Geschaeftsfuehrer / Managing Director: Harald Welte<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font face=3D"arial narrow, sans-serif"><b=
><i style=3D"background-color:rgb(255,255,255)">Puno pozdrava,<br>Mirko Kov=
acevic</i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i><br=
></i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i style=3D=
"background-color:rgb(255,255,255)"><img src=3D"http://cs410319.vk.me/v4103=
19514/4d4a/nv8H7BkYe-w.jpg"><br></i></b></font></div></div></div></div>

--000000000000241d4d05a62e4f4c--
