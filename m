Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C56AD85FD
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 13 Jun 2025 10:50:39 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 11C97268C4A;
	Fri, 13 Jun 2025 08:50:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tLsnNUj3ce2l; Fri, 13 Jun 2025 08:50:38 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 7E0B9268C38;
	Fri, 13 Jun 2025 08:50:35 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8136F38A1A93
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Jun 2025 06:48:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7A07E26678A
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Jun 2025 06:48:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wfxHyQacvEhx for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  9 Jun 2025 06:47:59 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by mail.osmocom.org (Postfix) with ESMTPS id AFE8F266783
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Jun 2025 06:47:59 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-234d3103237so4720435ad.0
        for <osmocom-net-gprs@lists.osmocom.org>; Sun, 08 Jun 2025 23:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749451677; x=1750056477; darn=lists.osmocom.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U8lOgcmRXog0Ht0H7gLDu2k3KBU9LMySy993WRKpkNo=;
        b=Aff/RsyBBLQ9wrAq2f7jaHZtnxUq8ExgtsXDKOGYi8alSNK0p0WXDiO0RfV6IrNKc1
         lZDmi1w5klfJ5Wm+gxJ1+eGwZuluJirZNqPMXrMUvQnNF0glFChSEAezE3eaMs0jkV07
         7o+ADTdVJpSkaAJmR3GP9Z+UWLislOd7+wCZ4AtZWHh5ay3dJjkdjcZEVuATT2eo8WI/
         G/26JXHR5YOD6jDwCT2BBLKMgMDHEuvVznnQyaKkweja28vAIh/EJGmSrI/w5lKLc0Sh
         /wx06NFUAIPSiEhdNRVw9fjpciYnmPI0nF9DpGCJ5HBajmXDTu+Lqz119bJKp2zqE/ND
         vvzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749451677; x=1750056477;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U8lOgcmRXog0Ht0H7gLDu2k3KBU9LMySy993WRKpkNo=;
        b=IHa90NTsrU91QPytWY45WnMCrlPk2YNyi9KJfcZTRi3oPK2p0bfvKn5/lNBunIoBSW
         08ZPb/oi47T6ueQ34aKrKC4glW0rmgtVHisa+v/VrQGvleFC5XijauVttVZO3ORuYfHO
         i2acta4WfoXy1W28DdPI3rHeMr4tzY0HdX0G3GNdkF6wVkIhHoi/gq42F0vaTrAA1ROs
         H5EDEOpLmvhRyYogsaIQ/zZ7qllgVhQUyImIjm3ZpML1Rwuicb3uKPrc8K00drxvn0Kv
         1aAYjEgZP0mwvh/vubvCYxHp5EM42YljrSV6WkIqX/EItvVmpiHDtKDwLduELAEc2h1J
         W0YA==
X-Gm-Message-State: AOJu0YzkUG5bkcYxzHt6X8PnBNoSpDdzvfBSIYROOXlXnZzofPNUSUb1
	2xtQw0AIRWNd6dBXmvmPQwI1/pPY+vkfeps9wa5aQmWJkgUDjggao2ODbPLtJkNzx8/c8h1c5xx
	K4ewqON67AdQL6jTEjJHZT/Jr4IIIMPPl0d4+
X-Gm-Gg: ASbGncuSyV9Ckpq4k7gFdRGawExT9uWGvZYst+7hUA9r7X68MBfRMOSrsvPXX8bKSfe
	+ZSPv/DZCNIS51AV0Ckk5UrCevzJmiO2znbkM5i3rbVhJYUDFfnwb5v9neIGsBoAJ5LvmunxW+w
	/MTTcBHfAhJwrEUmW06xHiV4ZYQLnTFXOJxF6/MYZWHFI=
X-Google-Smtp-Source: AGHT+IGp08dVf+np1dmGPIAp9K5llevYYN4YjOLpGZ3R/CQLugJvqr86NFaXYXZmo1hpGspSChD6+Ee+xbmTT0HcsuM=
X-Received: by 2002:a17:903:1a67:b0:234:bfe3:c4a3 with SMTP id
 d9443c01a7336-23603fce7aemr60327445ad.0.1749451677183; Sun, 08 Jun 2025
 23:47:57 -0700 (PDT)
MIME-Version: 1.0
From: "M. Suhendy Martondi Nasution" <mudarsun@gmail.com>
Date: Mon, 9 Jun 2025 13:47:44 +0700
X-Gm-Features: AX0GCFtOluCq7qMkXRlOHEBG6oD78Yo7ldY6OzhgVUseAE9l9ol5ekSizrbL1FY
Message-ID: <CADDdCbPeuJuKi7nedp3Fkge5zf-G6sW29rYY1O+-W47qoUaDhw@mail.gmail.com>
Subject: Error in PCU Loopback
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="000000000000c5309d06371df5de"
X-MailFrom: mudarsun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LURVED6HZMIIBQGRR7NSI3SZNO22PMGF
X-Message-ID-Hash: LURVED6HZMIIBQGRR7NSI3SZNO22PMGF
X-Mailman-Approved-At: Fri, 13 Jun 2025 08:50:31 +0000
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LURVED6HZMIIBQGRR7NSI3SZNO22PMGF/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--000000000000c5309d06371df5de
Content-Type: text/plain; charset="UTF-8"

Hello Mr/Mrs,

I am Suhendy, I am master degree student from university of indonesia
I have project to make GPRS private network using OSMOCOM

I have trouble in osmo-pcu which my log said like this

DLNS ERROR
GPRS-NS2-VC(NSE01234-NSVC-UDP-0_0_0_0:23000-127_0_0_1:23000){BLOCKED}:
Event RX-RESET_ACK not permitted (gprs_ns2_vc_fsm.c:937)

my osmo pcu make loop communication so my osmo-pcu and osmo-sgsn cant
connect each other.

this is my osmo-pcu.cfg
log stderr
 logging color 1
 logging print category-hex 0
 logging print category 1
 logging timestamp 0
 logging print file basename last
 logging print level 1

ns
 timer tns-block 10
 timer tns-block-retries 3
 timer tns-reset 10
 timer tns-reset-retries 3
 timer tns-test 60
 timer tns-alive 5
 timer tns-alive-retries 10

pcu
 flow-control-interval 10
 cs 2
 alloc-algorithm dynamic
 alpha 0
 gamma 0

Please help me to solve this problem. Thank you

--000000000000c5309d06371df5de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Mr/Mrs,<div><br>I am Suhendy, I am master degree stu=
dent from university of indonesia<br>I have project to make GPRS private ne=
twork using OSMOCOM<br><br>I have trouble in osmo-pcu which my log said lik=
e this<br><br>DLNS ERROR GPRS-NS2-VC(NSE01234-NSVC-UDP-0_0_0_0:23000-127_0_=
0_1:23000){BLOCKED}: Event RX-RESET_ACK not permitted (gprs_ns2_vc_fsm.c:93=
7)<br><br>my osmo pcu make loop communication so my osmo-pcu and osmo-sgsn =
cant connect each other.=C2=A0<br><br>this is my osmo-pcu.cfg<br>log stderr=
<br>=C2=A0logging color 1<br>=C2=A0logging print category-hex 0<br>=C2=A0lo=
gging print category 1<br>=C2=A0logging timestamp 0<br>=C2=A0logging print =
file basename last<br>=C2=A0logging print level 1<br><br>ns<br>=C2=A0timer =
tns-block 10<br>=C2=A0timer tns-block-retries 3<br>=C2=A0timer tns-reset 10=
<br>=C2=A0timer tns-reset-retries 3<br>=C2=A0timer tns-test 60<br>=C2=A0tim=
er tns-alive 5<br>=C2=A0timer tns-alive-retries 10<br><br>pcu<br>=C2=A0flow=
-control-interval 10<br>=C2=A0cs 2<br>=C2=A0alloc-algorithm dynamic<br>=C2=
=A0alpha 0<br>=C2=A0gamma 0<br><br>Please help me to solve this problem. Th=
ank you<br></div></div>

--000000000000c5309d06371df5de--
