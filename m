Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 7269243768E
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 22 Oct 2021 14:12:25 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 1375D223DEC;
	Fri, 22 Oct 2021 12:12:23 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=N1TV9xib
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by lists.osmocom.org (Postfix) with ESMTP id 2C218223DD5
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 22 Oct 2021 12:12:17 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id ec8so901534edb.6
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 22 Oct 2021 05:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=rlMHnvevcosPxpm6lfqJQ3C0Dsf1iBKECX5nujP42xI=;
 b=N1TV9xibS2SsO830syhXzJkE6vupCReE5SMeqxEeOQ6qOuUSNzCZPDbBEnV80Rg4nD
 +t3zIC5H690AW40F8ddavmtmca0QKiMOeccV02asL+o12DDCHpKRKFc9L8+/qybsXDuA
 pIR6yGX4lTn6AYKjwvmJtQ7dkSar+9xIT1txDAcdiJ0WXbuqstlblqNAEGCTUrZiltAB
 feg4GbhUfPWSpuscJKviYVkUzqGwPe684+oYOfHbCKcr0NgNDhQh6eHjlf+xX6EmVeKp
 v2caIN2AHGtx3yBp4IP0Rju5yI5LFpKVgyYodlPDvQcaP6X8AlXUJmziGIkWn0MLwbFE
 I2yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=rlMHnvevcosPxpm6lfqJQ3C0Dsf1iBKECX5nujP42xI=;
 b=61Qwd2eiSDFXc1UVm9FYXnhqzLwDucepWSUQysYIjYKnOgzceLIWp+EZZOX9EuSPXh
 wRHX4oN/TZGY/5luCQ1o4/lyBwGDV7Z0WkAePUT03CqmiGK7yKbmWibGK7SvoPMjTnep
 i4fUoyn1aRfm919Ve5GfYOQFikYihrmmoK4khshMfOwldn0SpQmJRdo815PP8Wn/M5Wu
 mH1dVFbu/ClqJaytlx7vsXJf5axIN3m3jHh5UiU/a6Dgz8lyAdcS3WIH/RmBicfUzkp3
 c8G+EYWWzzfJrxdwNTihU29Y30dbzTcFcVjR4dySwLLRBk8qTeaHLYyFbV7sTVQ5dQxK
 6hxA==
X-Gm-Message-State: AOAM533SkGI/AdvcJJ9K4gJuVKQlKG9dy2GFm7s4gFBnHXqCYYAZuJnC
 fT+09VcqlGT81EZHWjdj8agjz9kCkTqsIm1P6E1GxExuTpM=
X-Google-Smtp-Source: ABdhPJwQ8JPovfOMoXeNTrSgpGspxWF4aV9D9SewqVOXQbHUaTYnKbfFXpgY8S7EHI1ywXRmZOha7nzf0Rr0rrKi3D8=
X-Received: by 2002:a17:906:cb84:: with SMTP id
 mf4mr2609049ejb.33.1634904734561; 
 Fri, 22 Oct 2021 05:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
In-Reply-To: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Fri, 22 Oct 2021 14:12:03 +0200
Message-ID: <CAMYWRL_ibx+Z-CrV2vqytLEuU5PWfLr7yDkG54OnBNkbmWahyQ@mail.gmail.com>
Subject: Re: TTCN-3 tests for MME
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="000000000000f2048605ceefeb92"
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

--000000000000f2048605ceefeb92
Content-Type: text/plain; charset="UTF-8"

Hi,
Protocol-IEs, MMEname and ENBname, cant be decoded\encoded properly,
definitely.
I am using open5g-mme. When IE=MMEname is turned off, test can pass or used
till the end.

Amazing progress with S1AP emulation, congrats.

If I misuse this group with the topic, be free to tell me.


On Tue, Oct 19, 2021 at 3:59 PM Mirko Kovacevic <northmirko@gmail.com>
wrote:

> Hi, Osmonians,
> I don't know where to write for MME TTCN-3, so I chose to write to it
> closet relative - SGSN.
>
> I was trying to do slight modification to TTCN-3 code, modifing
> S1AP_Templates.ttcn.
>
> I embedded enodeb name for all tests with new protoc-IE = id-eNBname :
> ##################################
> template (value) S1AP_PDU
> ts_S1AP_SetupReq(template (value) Global_ENB_ID p_global_ENB_ID,
>          template (value) SupportedTAs p_supportedTAs,
>          template (value) PagingDRX p_pagingDRXs) := {
>     initiatingMessage := {
>         procedureCode := id_S1Setup,
>         criticality := reject,
>         value_ := {
>             S1SetupRequest := {
>                 protocolIEs := {
>                     {
>                         id := S1AP_Constants.id_Global_ENB_ID,
>                         criticality := ignore,
>                         value_ := { Global_ENB_ID := p_global_ENB_ID }
>                     },
>                     {
>                         id := S1AP_Constants.id_SupportedTAs,
>                         criticality := reject,
>                         value_ := {SupportedTAs := p_supportedTAs}
>                     },
>                     {
>                         id := S1AP_Constants.id_eNBname,//id-eNBname
>                         criticality := ignore,
>                         value_ := {ENBname := "OsmoEnodeb"}
>                     } /* HACK: work around nextepc bug
>                       , {
>                         id := S1AP_Constants.id_pagingDRX,
>                         criticality := ignore,
>                         value_ := {PagingDRX := p_pagingDRXs}
>                             } */
>                 }
>             }
>         }
>     }
> }
> ########################
>
> Code compiles, but PDU is not encoded well.
> I attached Wireshark preview.
>
> Can you help me with this issue ?
>
>
>
> --
> Puno pozdrava,
> Mirko Kovacevic
>


-- 

*Puno pozdrava,Mirko Kovacevic*

--000000000000f2048605ceefeb92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div>Protocol-IEs, MMEname and ENBname,=
 cant be decoded\encoded properly, definitely.</div><div>I am using open5g-=
mme. When IE=3DMMEname is turned off, test can pass or used till the end.<b=
r></div><div><br></div><div>Amazing progress with S1AP emulation, congrats.=
<br></div><div><br></div><div>If I misuse this group with the topic, be fre=
e to tell me.<br></div><div><br> </div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 19, 2021 at 3:59 PM Mirk=
o Kovacevic &lt;<a href=3D"mailto:northmirko@gmail.com">northmirko@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Hi, Osmonians,<br>
I don&#39;t know where to write for MME TTCN-3, so I chose to write to it<b=
r>
closet relative - SGSN.<br>
<br>
I was trying to do slight modification to TTCN-3 code, modifing<br>
S1AP_Templates.ttcn.<br>
<br>
I embedded enodeb name for all tests with new protoc-IE =3D id-eNBname :<br=
>
##################################<br>
template (value) S1AP_PDU<br>
ts_S1AP_SetupReq(template (value) Global_ENB_ID p_global_ENB_ID,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0template (value) SupportedTAs p_supported=
TAs,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0template (value) PagingDRX p_pagingDRXs) =
:=3D {<br>
=C2=A0 =C2=A0 initiatingMessage :=3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 procedureCode :=3D id_S1Setup,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 criticality :=3D reject,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 value_ :=3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 S1SetupRequest :=3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 protocolIEs :=3D {<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 id :=3D S1AP_Constants.id_Global_ENB_ID,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 criticality :=3D ignore,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 value_ :=3D { Global_ENB_ID :=3D p_global_ENB_ID }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 id :=3D S1AP_Constants.id_SupportedTAs,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 criticality :=3D reject,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 value_ :=3D {SupportedTAs :=3D p_supportedTAs}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 id :=3D S1AP_Constants.id_eNBname,//id-eNBname<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 criticality :=3D ignore,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 value_ :=3D {ENBname :=3D &quot;OsmoEnodeb&quot;}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } /* =
HACK: work around nextepc bug<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 , {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 id :=3D S1AP_Constants.id_pagingDRX,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 criticality :=3D ignore,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 value_ :=3D {PagingDRX :=3D p_pagingDRXs}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 } */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 }<br>
}<br>
########################<br>
<br>
Code compiles, but PDU is not encoded well.<br>
I attached Wireshark preview.<br>
<br>
Can you help me with this issue ?<br>
<br>
<br>
<br>
-- <br>
Puno pozdrava,<br>
Mirko Kovacevic<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font face=3D"arial narrow, sans-serif"><b=
><i style=3D"background-color:rgb(255,255,255)">Puno pozdrava,<br>Mirko Kov=
acevic</i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i><br=
></i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i style=3D=
"background-color:rgb(255,255,255)"><img src=3D"http://cs410319.vk.me/v4103=
19514/4d4a/nv8H7BkYe-w.jpg"><br></i></b></font></div></div></div></div>

--000000000000f2048605ceefeb92--
