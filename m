Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1F60534AB51
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 26 Mar 2021 16:19:38 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 02AA91CF182;
	Fri, 26 Mar 2021 15:19:32 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=QHlBUZl/
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::234; helo=mail-lj1-x234.google.com;
 envelope-from=morteza.ali.ahmadi@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by lists.osmocom.org (Postfix) with ESMTP id 6958C1CF16B
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 26 Mar 2021 15:19:24 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id u20so7744394lja.13
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 26 Mar 2021 08:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=s1qfsjg6NrdJWSI5GKd48EXJbZMQ/xAHM+NXc5BXsfI=;
 b=QHlBUZl/1Gw5q2P7+RyKFeIBk5Y8r/OkOVP19VVGDVg6tvu8opJIG2G3KrqBLEypTO
 7lX0yvtjGo7Wp2Vbe+Df+qK6Y4RPqjTjM5PVgR0QuZw4vXF9BgV6XYBwCEMHy+HJjt+w
 Ly3OuSgR4JX10DhxgkXB4uny3LY0slgWK/Y4bN3vRbQbVZrIyui88wJoMXK84mamJDzX
 X7b4r+9d5/1KBReKW5Ghb/q4odQo8e2heZdE9v+ssQMDV4LkDsDk2/Qi32NZYobvDX1D
 QDPCxd1NVJksZ094R68HU57uvYQJNPyhDKyvfUpPBbXLq74o9rRTGx/0BjuKuAK9sIhj
 R5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=s1qfsjg6NrdJWSI5GKd48EXJbZMQ/xAHM+NXc5BXsfI=;
 b=C7Nm2H5kiX7U+sxQpIss3JIRhZE9BDMOVgdondJ5cJuaULO9x76ZegmeFe05DknPfZ
 HUmYIl6C/dwFatzBCIDxU++HXI4dFyxzvgtZ9K9l6nAvyDNouidjDHXEo/CHSYndv0In
 Z6HsVzaVIuh7YmZ0UUkhWgBw11kljFeENEokfLCx/d+dhLjYUkPi7wY8frT1DAhmUJcH
 J8KNpbCjqGoTVbbRj8vfKqA0muZtQxsOdDeoxZu52ed7Hk5D1ikLA/fhiyEO6yaQRlsZ
 iwQS94b3FOtiOpn46+wMX7vJCn4L87zlX7qsKbG53juh4pAcYZKacJ4sARsu0JyvZibO
 FWTQ==
X-Gm-Message-State: AOAM530G1prwmiLY2gr+5nS6NIX8Ov30laWE0WlKXPY91HT178JaqiTQ
 iuLKSyyqDNvgrhnjbN0DI+JAxzU9tptlI+hJudtl5xSBWQaYTg9e
X-Google-Smtp-Source: ABdhPJzCkRN928x++3HYrj9Xq8KddfXm5USdHwLlZHzQl8aJePStXL/x9GjAkJm4ciXcZtITjEwiDnJ5unV7hnC+9VI=
X-Received: by 2002:a05:651c:1022:: with SMTP id
 w2mr8795495ljm.455.1616771964142; 
 Fri, 26 Mar 2021 08:19:24 -0700 (PDT)
MIME-Version: 1.0
From: morteza ali Ahmadi <morteza.ali.ahmadi@gmail.com>
Date: Fri, 26 Mar 2021 19:49:13 +0430
Message-ID: <CANPQb9A3t1Uz3N6dUtUGep74OV+43ZxprtiKDqyfg3d0xi68yg@mail.gmail.com>
Subject: Question about establishing stable internet link between UE and HNB
 connected to our developed network core.
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="0000000000009b08e605be720e69"
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

--0000000000009b08e605be720e69
Content-Type: text/plain; charset="UTF-8"

Hi, osmocom team members.

In order to have an internet connection in UE, we have run OsmoGGSN project
to set up GGSN. Also, SGSN is developed in our system.

At this step, UE connects to our network core and we can query to an
arbitrary site in the UE browser and we see the answer of the query without
any problem and everything is OK. But after about 30 or 40 seconds, UE
sends "Deactivate PDP Context Request" with SM Cause "SM Cause: Protocol
error, unspecified (111)" and the connection is reset and a new "Activate
PDP Context Request" is required. What is the reason and how can we solve
it?

-- 
*When there is much light, The shadow is deep...*

--0000000000009b08e605be720e69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, osmocom team members.<br><div><br></div><div>In order =
to have an internet connection in UE, we have run OsmoGGSN project to set u=
p GGSN. Also, SGSN is developed in our system.<br></div><br>At this step, U=
E connects to our network core and we can query to an arbitrary site in the=
 UE browser and we see the answer of the query without any problem and ever=
ything is OK. But after about 30 or 40 seconds, UE sends &quot;Deactivate P=
DP Context Request&quot; with SM Cause &quot;SM Cause: Protocol error, unsp=
ecified (111)&quot; and the connection is reset and a new &quot;Activate PD=
P Context Request&quot; is required. What is the reason and how can we solv=
e it?<br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"font-f=
amily:courier new,monospace"><span style=3D"background-color:rgb(255,255,25=
5)"><b><font size=3D"3">When there is much light, The shadow is deep...</fo=
nt></b></span></span></div></div></div>

--0000000000009b08e605be720e69--
