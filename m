Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB411DCE0E
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 21 May 2020 15:33:07 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 788E5116361;
	Thu, 21 May 2020 13:32:02 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=l93ZVpyU
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by lists.osmocom.org (Postfix) with ESMTP id B7B5511633A
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 13:31:57 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id i16so6672628edv.1
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 06:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n1KtvHOv/pvxhEqwEct3cDFlYBxFPsK/5+qepACRPoQ=;
 b=l93ZVpyUj0OB5XOWdw5C12hmh145xWg7Snd+nahaFH5lqmAZPMzSwpQ4Et/nNbtoE4
 ekUVhm8+F/yO9lAWpVFFBjyaRVhjd1qHCuqbcq5MU+b7qB5VPvtfdDqK4OcgLRs0xwHU
 x/FmrBSSUWeaGqRewoZ3J0Eyakumcgi4yd6OFbbH79EihyxMeoO2j5/Hftf79cLhY/9d
 ZMqqoXvMWHJazGxtSAmKl3bAOCeEIdi48gUL9xs/KnJtLxJx/4h7ismxET/G+f1A0bgr
 LedyDv57kLANB+FUVXQlueSApxInHwwn+BFcNxQzEyl4KnLjbMOXTa1FuBFeNN4svwUQ
 aEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n1KtvHOv/pvxhEqwEct3cDFlYBxFPsK/5+qepACRPoQ=;
 b=S0g/3lvlWJvvHrfonqnUcY8yxPUf7dJuUbWzm4oCbDjLWNGispKw8u/VtF6VHEu21L
 N1Ke7knJGJitHt9eMmElO8TZUKU/a3nldQ27sNAXWBpT5ZFWfdUPRrZZUI03+sDaY6uJ
 MLggasrdHgcPchN9tgsaYDDaebCFz28Fx2dL6dY5XUQjLPZeD29icTgolFayeLXCiKfX
 XdZZgg4fpwf0MV+0CJpYA4ikMh5+pbYyv9uByKKYf1dUp6b3N3CdMnLSIRUPmRyXWrUu
 VHnujMZ6Yd7p9uAVf8lhfJtOwMGT3OLtghCK1vFlekI5KNKk6XRSymd9FsiDboUknbRu
 YXWQ==
X-Gm-Message-State: AOAM533SJaVb9civgX9eFOCkYAD8Kd9z+dPUtmHlzD/av5nLqIATpkfu
 +kkBjornsvTinEJpiRI8YgKwtK2+MQFR+T4kKhgr54RR
X-Google-Smtp-Source: ABdhPJyxDvHEUJ4pITkfpsDa3s3/jN/PwEgbKiYBpp6eMbX1fAfQ6ivPhIovy5twg6tA9EBFUT8ryum60J380Yu+j40=
X-Received: by 2002:a05:6402:74b:: with SMTP id
 p11mr7837245edy.229.1590067916799; 
 Thu, 21 May 2020 06:31:56 -0700 (PDT)
MIME-Version: 1.0
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Thu, 21 May 2020 15:31:45 +0200
Message-ID: <CAMYWRL93tWfcNcw-jO=qRYCE2nZDKRijP+qMbg1UsBLQdwe6cQ@mail.gmail.com>
Subject: Compilation of TTCN3 tests for SGSN failed
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="000000000000598a8605a628896e"
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

--000000000000598a8605a628896e
Content-Type: text/plain; charset="UTF-8"

*Hi, Osmocom-SGSN*

I have downloaded latest master branch sources for TTCN3 tests.


I followed instructions for  compilations and dependencies.
In file :
*regen_makefile.sh *
If line with
../regen-makefile.sh  SGSN_Tests.ttcn $FILES
is replaced with
../regen-makefile.sh  $FILES
then this warning is not present
File `SGSN_Tests.ttcn' was given more than once for the Makefile.

Also,
after command

*make compile *

*(same with *

*make sgsn *

*from upper dir.)*
I got from output:

....
 GSM_RR_Types.ttcn:404.2-408.2: In type definition `SecondPartAssign':
  GSM_RR_Types.ttcn:409.18-20: error: in variant attribute, at or before
token `CSN': syntax error, unexpected XIdentifier, expecting $end
 GSM_RR_Types.ttcn:510.2-512.2: In type definition `IaRestOctLL':
  GSM_RR_Types.ttcn:513.42-44: error: in variant attribute, at or before
token `CSN': syntax error, unexpected XIdentifier, expecting $end
 GSM_RR_Types.ttcn:588.2-594.2: In type definition `IaRestOctets':
  GSM_RR_Types.ttcn:595.23-25: error: in variant attribute, at or before
token `CSN': syntax error, unexpected XIdentifier, expecting $end
........
Notify: Errors found in the input modules. Code will not be generated.
make: *** [Makefile:206: compile] Error 1

Last time in April, I played with TTCN3 for SGSN, everything was good.

Can you help me with this ?

--000000000000598a8605a628896e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font face=3D"arial narrow, sans-serif"><i>Hi, Osmoco=
m-SGSN</i></font></div><div><font face=3D"arial narrow, sans-serif"><i><br>=
</i></font></div><div><font face=3D"arial narrow, sans-serif">I have downlo=
aded latest master branch sources for TTCN3 tests.</font></div><div><font f=
ace=3D"arial narrow, sans-serif"><br></font></div><div><font face=3D"arial =
narrow, sans-serif"><br></font></div><div><font face=3D"arial narrow, sans-=
serif">I followed instructions for=C2=A0 compilations and dependencies.</fo=
nt></div><div><font face=3D"arial narrow, sans-serif">In file :<br></font><=
/div><div><font face=3D"arial narrow, sans-serif"><b>regen_makefile.sh </b>=
<br></font></div><div><font face=3D"arial narrow, sans-serif">If line with =
<br></font></div><div><font face=3D"arial narrow, sans-serif">../regen-make=
file.sh=C2=A0 SGSN_Tests.ttcn $FILES</font></div><div><font face=3D"arial n=
arrow, sans-serif">is replaced with<br></font></div><div><font face=3D"aria=
l narrow, sans-serif">
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
></i></b></font><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div><font face=3D"arial narrow,=
 sans-serif"><b><i style=3D"background-color:rgb(255,255,255)"><br></i></b>=
</font></div></div></div></div></div></div>

--000000000000598a8605a628896e--
