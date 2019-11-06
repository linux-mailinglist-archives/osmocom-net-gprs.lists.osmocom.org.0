Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 968D1F0C4D
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  6 Nov 2019 04:02:30 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2515CEFA44;
	Wed,  6 Nov 2019 03:02:29 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=tutanota.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=tutanota.com header.i=@tutanota.com header.b=m6aw0xpm
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=81.3.6.162; helo=w1.tutanota.de; envelope-from=ghiturbe@tutanota.com;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=tutanota.com
Received: from w1.tutanota.de (w1.tutanota.de [81.3.6.162])
 by lists.osmocom.org (Postfix) with ESMTP id B6D44EFA2B
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  6 Nov 2019 03:02:24 +0000 (UTC)
Received: from w2.tutanota.de (unknown [192.168.1.163])
 by w1.tutanota.de (Postfix) with ESMTP id 2E05FFBF3B2
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  6 Nov 2019 03:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1573009344; 
 s=s1; d=tutanota.com;
 h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type;
 bh=xA+YiX4uXruoGzDNT7ttitanoKjont90lb95FoUasxg=;
 b=m6aw0xpm8NZwIeYUJsc6cDqzddqaY8duuukQ+OrXDUaFEgsbSRc//CQjZp9kYj4G
 /qSPzjoyw9dPObG48v4cclzfJMHXbD60H5FUs5q2QY8eGtVViUNZ9U6ce83HDWYb5bE
 vJTR+tk6wbkSHStuX32phFpEFIXMEAGpUpKqQkMwC0JLAHyaVPmF1rcNbqgXRSlsU9y
 FXEMXFOVrormwIW1MshzwBwQ9fcjiXvAgE9HG+/0ICWt0JLHlnrilB+SN1U3mc2Hd7Q
 6W2RVC9G5kD0wc/DFahNdwufAJPOMYAyvduCt3pgf5O4SZBvxmGBSKTmY5EXeHKJTVV
 tGW96sFMiA==
Date: Wed, 6 Nov 2019 04:02:24 +0100 (CET)
From: <ghiturbe@tutanota.com>
To: Osmocom Net Gprs <osmocom-net-gprs@lists.osmocom.org>
Message-ID: <LsyeR9E--3-1@tutanota.com>
Subject: EDGE MCS not stable
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_6214_1110084292.1573009344179"
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

------=_Part_6214_1110084292.1573009344179
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear all,

Please do not consider the last message.

First I want to introduce myslef, I'm Gael and few months ago I bought=C2=
=A0a Lime-Mini to use as BTS with EDGE. I have spent some time working in t=
hat and it is doing it but I have noticed that the UP LINK MCS is not stabl=
e, it changes very much with the mobile near the board. I have read that th=
is issue was solved in the ticket 1833 but it is not working for me, I hope=
 that this not about my board. Do you have any suggest for this behavior?

To solve that issue, I force as I read in another post, setting the minimum=
 an maximum values to zero till the MCS to be used. It works fine setting t=
he pcu-cfg file like: ... mcs7 0 35 mcs8 35 35.
It works but it does not look well and if I change by VTY to use mcs 9 it w=
orks too but is not posible to start the system with this configuration, so=
 I have to start it using mcs7.

With this cfg I can reach 130kbps using a mobile class 12 ( 4TS RX + TX), a=
nyway I have 6 TS configured for PDCH. I guess =C2=A0this mobile should rea=
ch almost 200 kbps (4TS * 54Kbps). What is the maximum speed=C2=A0 reached?

Thanks in advance for your support.

Best regards.

--=20
 Securely sent with Tutanota. Get your own encrypted, ad-free mailbox:=20
 https://tutanota.com

------=_Part_6214_1110084292.1573009344179
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
<div style="16px">Dear all,<br></div><div style="16px"><br></div><div style="16px">Please do not consider the last message.<br></div><div style="16px" text-align="left"><br></div><div style="16px">First
 I want to introduce myslef, I'm Gael and few months ago I bought&nbsp;a 
Lime-Mini to use as BTS with EDGE. I have spent some time working in 
that and it is doing it but I have noticed that the UP LINK MCS is not 
stable, it changes very much with the mobile near the board. I have read
 that this issue was solved in the ticket 1833 but it is not working for
 me, I hope that this not about my board. Do you have any suggest for 
this behavior?<br></div><div style="16px"><br></div><div style="16px">To
 solve that issue, I force as I read in another post, setting the 
minimum an maximum values to zero till the MCS to be used. It works fine
 setting the pcu-cfg file like: ... mcs7 0 35 mcs8 35 35.<br></div><div style="16px">It
 works but it does not look well and if I change by VTY to use mcs 9 it 
works too but is not posible to start the system with this 
configuration, so I have to start it using mcs7.<br></div><div style="16px"><br></div><div style="16px">With
 this cfg I can reach 130kbps using a mobile class 12 ( 4TS RX + TX), 
anyway I have 6 TS configured for PDCH. I guess &nbsp;this mobile should 
reach almost 200 kbps (4TS * 54Kbps). What is the maximum speed&nbsp; 
reached?<br></div><div style="16px"><br></div><div style="16px">Thanks in advance for your support.<br></div><div style="16px"><br></div><div style="16px">Best regards.<br></div><div style="16px" text-align="left"><br></div><div style="16px" text-align="left">-- <br></div><div style="16px" text-align="left"> Securely sent with Tutanota. Get your own encrypted, ad-free mailbox: <br></div><div style="16px" text-align="left"> https://tutanota.com<br></div>  </body>
</html>

------=_Part_6214_1110084292.1573009344179--
