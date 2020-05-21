Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 069F21DCE7E
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 21 May 2020 15:47:46 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id AE51A1163BA;
	Thu, 21 May 2020 13:47:39 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=uAJR7L9S
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by lists.osmocom.org (Postfix) with ESMTP id 3B3931163A1
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 13:47:11 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id be9so6699282edb.2
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 06:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=29piTG9yaDWE5ALD1kvlSWGPBHoXNuqYftsFPDjzo1I=;
 b=uAJR7L9SvTcgMcDO16xGvJFf7o+duiJwEzA8FD0FgP1cyu92snqKxU0zpWg7RL1nKd
 +IM2qoe8AyvQjX8hGiDuDsstz9MH+3cqZFQSquBMG8x13pq/yg9KnVhsYKn128qW/C7S
 J6d3hSaW6Ynmzi0Xkq+sFkZoQ43yumAehVwbbUgjSxliIfF7poVABya2ject87fm/RZI
 Hnw5KtpGLcX39Aod2LopWDQSDrFk4xQpWwszkGGA9IRMRltsMwum1fJ9K9i7S5n31z4v
 hLUy4Tq08aU96jYBfu+WgMl8lNQntxb9tUDCYp9BWBo9VtCZTsBHWqsgg1+Oj3tlVVE4
 cx6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=29piTG9yaDWE5ALD1kvlSWGPBHoXNuqYftsFPDjzo1I=;
 b=Etmon6LOmZx7BY7CpCKwVNDHLEWyoryaYpO3kAlMOZK57gd+MyGlWpjI9Ilj/pbuD7
 wVB7NUtrsjtv+L4OvEJHsaldo7VeZdTK+ED1ON3PW/pXeQcgzLk8V9LocnNhc9HJRnZq
 QTe6Vk3Gwsgive1X2OF/wV14SMhFo+DCbozFCOPzQq33PkUwq4+XWTynUQJjsCpj4Ev+
 jcxQA9VFOeoYoLjzKgQ0wNoRL/xWI9vY60xn51hFYOkT73fsUlLlEnaIU/LwW7z2KC+H
 EgnnHle2HnxATs5/Ri7MOFbexNbL78QKCRzH22ewExATwbHqFOzEsTtk2bn39q7uK7r/
 b5Yg==
X-Gm-Message-State: AOAM531ulhaDum2JLVRi8HWbWzS51tirwnM7O1X7A7KMSOPj+Bp8DPWY
 teLnQBnrWNYsVSY1AVSbzSiskBnx3JK9PN+TJyQH6w==
X-Google-Smtp-Source: ABdhPJyU+vKzZsIPMax+XBgusVip/co2i/wnDUTEQluY0WglO8uWW4M2soaujfsn7ET8LSddNXZRehUnsCO5oMuJBGs=
X-Received: by 2002:aa7:c60c:: with SMTP id h12mr7363477edq.243.1590068831239; 
 Thu, 21 May 2020 06:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAMYWRL93tWfcNcw-jO=qRYCE2nZDKRijP+qMbg1UsBLQdwe6cQ@mail.gmail.com>
In-Reply-To: <CAMYWRL93tWfcNcw-jO=qRYCE2nZDKRijP+qMbg1UsBLQdwe6cQ@mail.gmail.com>
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Thu, 21 May 2020 15:47:00 +0200
Message-ID: <CAMYWRL8e-fMNiooHCm22Em-ASdievW1BHZHjBLAwAgRr6KRiOA@mail.gmail.com>
Subject: Re: Compilation of TTCN3 tests for SGSN failed
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="000000000000dad3a905a628bf7b"
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

--000000000000dad3a905a628bf7b
Content-Type: text/plain; charset="UTF-8"

Git checkout to some random commit from April, have solved problem for me.
But in current master branch definitely the is a problem.

Regards.

On Thu, May 21, 2020 at 3:31 PM Mirko Kovacevic <northmirko@gmail.com>
wrote:

> *Hi, Osmocom-SGSN*
>
> I have downloaded latest master branch sources for TTCN3 tests.
>
>
> I followed instructions for  compilations and dependencies.
> In file :
> *regen_makefile.sh *
> If line with
> ../regen-makefile.sh  SGSN_Tests.ttcn $FILES
> is replaced with
> ../regen-makefile.sh  $FILES
> then this warning is not present
> File `SGSN_Tests.ttcn' was given more than once for the Makefile.
>
> Also,
> after command
>
> *make compile *
>
> *(same with *
>
> *make sgsn *
>
> *from upper dir.)*
> I got from output:
>
> ....
>  GSM_RR_Types.ttcn:404.2-408.2: In type definition `SecondPartAssign':
>   GSM_RR_Types.ttcn:409.18-20: error: in variant attribute, at or before
> token `CSN': syntax error, unexpected XIdentifier, expecting $end
>  GSM_RR_Types.ttcn:510.2-512.2: In type definition `IaRestOctLL':
>   GSM_RR_Types.ttcn:513.42-44: error: in variant attribute, at or before
> token `CSN': syntax error, unexpected XIdentifier, expecting $end
>  GSM_RR_Types.ttcn:588.2-594.2: In type definition `IaRestOctets':
>   GSM_RR_Types.ttcn:595.23-25: error: in variant attribute, at or before
> token `CSN': syntax error, unexpected XIdentifier, expecting $end
> ........
> Notify: Errors found in the input modules. Code will not be generated.
> make: *** [Makefile:206: compile] Error 1
>
> Last time in April, I played with TTCN3 for SGSN, everything was good.
>
> Can you help me with this ?
>
>
>
>
>
>

-- 

*Puno pozdrava,Mirko Kovacevic*

--000000000000dad3a905a628bf7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Git checkout to some random commit from April, have s=
olved problem for me.</div><div>But in current master branch definitely the=
 is a problem.<br></div><div><br></div><div>Regards.<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2=
1, 2020 at 3:31 PM Mirko Kovacevic &lt;<a href=3D"mailto:northmirko@gmail.c=
om">northmirko@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div><font face=3D"arial narrow, s=
ans-serif"><i>Hi, Osmocom-SGSN</i></font></div><div><font face=3D"arial nar=
row, sans-serif"><i><br></i></font></div><div><font face=3D"arial narrow, s=
ans-serif">I have downloaded latest master branch sources for TTCN3 tests.<=
/font></div><div><font face=3D"arial narrow, sans-serif"><br></font></div><=
div><font face=3D"arial narrow, sans-serif"><br></font></div><div><font fac=
e=3D"arial narrow, sans-serif">I followed instructions for=C2=A0 compilatio=
ns and dependencies.</font></div><div><font face=3D"arial narrow, sans-seri=
f">In file :<br></font></div><div><font face=3D"arial narrow, sans-serif"><=
b>regen_makefile.sh </b><br></font></div><div><font face=3D"arial narrow, s=
ans-serif">If line with <br></font></div><div><font face=3D"arial narrow, s=
ans-serif">../regen-makefile.sh=C2=A0 SGSN_Tests.ttcn $FILES</font></div><d=
iv><font face=3D"arial narrow, sans-serif">is replaced with<br></font></div=
><div><font face=3D"arial narrow, sans-serif">
../regen-makefile.sh=C2=A0 $FILES <br></font></div><div><font face=3D"arial=
 narrow, sans-serif">then this warning is not present<br></font></div><div>=
<font face=3D"arial narrow, sans-serif">File `SGSN_Tests.ttcn&#39; was give=
n more than once for the Makefile.</font></div><div><font face=3D"arial nar=
row, sans-serif"><br></font></div><div><font face=3D"arial narrow, sans-ser=
if">Also,</font></div><div><font face=3D"arial narrow, sans-serif">after co=
mmand <br></font></div><div><b><font face=3D"arial narrow, sans-serif">make=
 compile <br></font></b></div><div><b><font face=3D"arial narrow, sans-seri=
f">(same with <br></font></b></div><div><b><font face=3D"arial narrow, sans=
-serif">make sgsn <br></font></b></div><div><b><font face=3D"arial narrow, =
sans-serif">from upper dir.)<br></font></b></div><div><font face=3D"arial n=
arrow, sans-serif">I got from output:<br></font></div><div><font face=3D"ar=
ial narrow, sans-serif"><br></font></div><div><font face=3D"arial narrow, s=
ans-serif">....</font></div><div><font face=3D"arial narrow, sans-serif">=
=C2=A0GSM_RR_Types.ttcn:404.2-408.2: In type definition `SecondPartAssign&#=
39;:<br>=C2=A0 GSM_RR_Types.ttcn:409.18-20: error: in variant attribute, at=
 or before token `CSN&#39;: syntax error, unexpected XIdentifier, expecting=
 $end<br>=C2=A0GSM_RR_Types.ttcn:510.2-512.2: In type definition `IaRestOct=
LL&#39;:<br>=C2=A0 GSM_RR_Types.ttcn:513.42-44: error: in variant attribute=
, at or before token `CSN&#39;: syntax error, unexpected XIdentifier, expec=
ting $end<br>=C2=A0GSM_RR_Types.ttcn:588.2-594.2: In type definition `IaRes=
tOctets&#39;:<br>=C2=A0 GSM_RR_Types.ttcn:595.23-25: error: in variant attr=
ibute, at or before token `CSN&#39;: syntax error, unexpected XIdentifier, =
expecting $end</font></div><div><font face=3D"arial narrow, sans-serif">...=
.....</font></div><div><font face=3D"arial narrow, sans-serif">Notify: Erro=
rs found in the input modules. Code will not be generated.<br>make: *** [Ma=
kefile:206: compile] Error 1</font></div><div><font face=3D"arial narrow, s=
ans-serif"><br></font></div><div><font face=3D"arial narrow, sans-serif">La=
st time in April, I played with TTCN3 for SGSN, everything was good.<br></f=
ont></div><div><font face=3D"arial narrow, sans-serif"><br></font></div><di=
v><font face=3D"arial narrow, sans-serif">Can you help me with this ?<br></=
font></div><div><font face=3D"arial narrow, sans-serif"><br></font></div><d=
iv><font face=3D"arial narrow, sans-serif"><br></font></div><div><font face=
=3D"arial narrow, sans-serif"> <br></font></div><div><font face=3D"arial na=
rrow, sans-serif"><br></font></div><div><font face=3D"arial narrow, sans-se=
rif"><i></i></font></div><div><font face=3D"arial narrow, sans-serif"><b><i=
></i></b></font><div dir=3D"ltr"><div dir=3D"ltr"><div><div><font face=3D"a=
rial narrow, sans-serif"><b><i style=3D"background-color:rgb(255,255,255)">=
<br></i></b></font></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font face=3D"arial narrow, sans-serif"><b=
><i style=3D"background-color:rgb(255,255,255)">Puno pozdrava,<br>Mirko Kov=
acevic</i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i><br=
></i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i style=3D=
"background-color:rgb(255,255,255)"><img src=3D"http://cs410319.vk.me/v4103=
19514/4d4a/nv8H7BkYe-w.jpg"><br></i></b></font></div></div></div></div>

--000000000000dad3a905a628bf7b--
