Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F337877BFC
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 11 Mar 2024 09:57:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2063C5E6D6;
	Mon, 11 Mar 2024 08:57:14 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TuXj1inG6HNU; Mon, 11 Mar 2024 08:57:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2A3945E6C1;
	Mon, 11 Mar 2024 08:57:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B31F838A7EA4
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  9 Mar 2024 08:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9040B5D558
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  9 Mar 2024 08:55:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WrQ2JtH_T-tR for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  9 Mar 2024 08:55:32 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by mail.osmocom.org (Postfix) with ESMTPS id BD1325D551
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  9 Mar 2024 08:55:32 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-33e6f9ce76aso1168157f8f.3
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 09 Mar 2024 00:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709974532; x=1710579332; darn=lists.osmocom.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0txOYRhBITN4cJ607Y7LvPpJRnE//3kvbAcC/IefGbY=;
        b=h8z6s7AfzcpTciZOcl8yDVJp50qyec5WWGeSJ8mZiQTIT7+kIi+2t0LmQeSRDK2oXE
         tdD3AiS7JfKaopMyOfWNxIPNGJUCvS3JYbCk8kYZhxzXs1MRb9iIgrGjSi9k1OnBs+sK
         8DXTi9C0QOYvqtloBH64dakJEy5Ocq8L4iFi9RJegbsRWCXGEyZgdFqWn7fP74wuH/pY
         Yefdr49NfU25fYctq4msMQzwvgdEW0C9MnUCTcZjPX9ksCy4xyuL8SD7lKTP5u/vplmj
         CiQZdzXWkPvZVeEKiT5AV9k1UKeWVupwdCTDKo0AsJR41Rl9igJ6cXYWefT5SjUxdL+t
         mnDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709974532; x=1710579332;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0txOYRhBITN4cJ607Y7LvPpJRnE//3kvbAcC/IefGbY=;
        b=pIEiSIttBcmahq9dwpiZrY37iTYoamrLnzmA72jjXsBKV9BdcbWfu/pn1oyyv14Wl4
         1ihOaBLKQBMRcICw5VUyfArKLLSFS+Ezk/dkhoSLGubC/GYMZEq2nSfiMlJg4jTiXR0g
         CscRQxHPu58O3yMOQx/oLK6wr+Uo4WWKakYCxyUxxVraY3KrLkQtv/Z7WG4qGQapw/ST
         e13ciKZT4GDMZmspUZW7lKF1yuda+unjrGXK2/pnJNAliqI6ffGTKTz/UmEEOWvfru41
         jiuhQxVww/6FYFydBxZ8hJwiE18BLg/Ahmnpfop6dUtofXzpGWR8PgThBtVdi3zg3kjW
         SBiw==
X-Gm-Message-State: AOJu0YymI5wENQiLkwVGePtZlk+vaS+tw5p8J9/eFD66SOHvGIoqZMUP
	DbP/SOKF1IbQehIpGdjrHd+UauBBmwERd8BSzAKSbI6hQ1B+Q/9mGvrQ64elmOEdscQrL+A6EwW
	MwPXeGkZZvVv72dS1F1MNWR9Z8FEzCOzKDek=
X-Google-Smtp-Source: AGHT+IEOdJkOJ9DV1zThtdxNr7/8qSXRYqgmwovAtyEssbos0RVMKpPLwVmDDGup6extLxFB5xFU2SpPW+WB5QhDar0=
X-Received: by 2002:adf:f68c:0:b0:33e:800d:e87a with SMTP id
 v12-20020adff68c000000b0033e800de87amr687567wrp.34.1709974531670; Sat, 09 Mar
 2024 00:55:31 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Jan_Kosi=C5=84ski?= <jkosinsk85@gmail.com>
Date: Sat, 9 Mar 2024 09:55:20 +0100
Message-ID: <CAAxwsW_k8mR8SW1P7i5t48=fF0Ho05q=-BBcjqTC6n4iHyGSeQ@mail.gmail.com>
Subject: osmoSGSN- "Cannot handle SM for unknown MM CTX"
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="0000000000008909fc06133678b8"
X-MailFrom: jkosinsk85@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OFTRU77FYREDPA27EOFBQMQHWSXA4K4T
X-Message-ID-Hash: OFTRU77FYREDPA27EOFBQMQHWSXA4K4T
X-Mailman-Approved-At: Mon, 11 Mar 2024 08:57:06 +0000
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OFTRU77FYREDPA27EOFBQMQHWSXA4K4T/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--0000000000008909fc06133678b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I got question about this issue.
I updated my comment on this issue here:
https://osmocom.org/issues/6197

Original my post:

I observe same situation in my setup. Cannot activate PDP context because
of missing RA-CAPABILTIY-UPDATE and RA-CAPABILITY-ACK support in osmoSGSN.
My setup is Samsung Galaxy S9 and S23, real BTS/BSC from well-known vendor
and Osmo core (SGSN/GGSN/HLR/MSC/STP) (Important thing that I'm not using
osmo-pcu).

Problem description:
S9 attach procedure (CS+PS):
1.After UE reboot I see MM procedure Location request and Location update
processed good (on DMtool). Then if needed CS calling is working
properly(connection to osmoMSC).
2.After that UE is trying GMM Attach request and it got Attach accept and
attach complete.
3.Then UE send Activate PDP context, but SGSN is reject this with cause:
"Cannot handle SM for unknown MM CTX"
4.After that UE is trying activate PDP context for second time (After timer
expired) and finally it got pdp accept (ping/traffic work) same as in this
thread. After deep inspection I found that reason of first pdp activation
reject is that TLLI is not updated (SGSN dont know it and causing Cannot
handle SM for unknown MM CTX) because when I checked pcap from bssgp I see
that BSC send RA-CAPABILTIY-UPDATE with new tlli and osmoSGSN send response
Unknown PDU with protocol unspecified but should send
RA-CAPABILTIY-UPDATE-ACK. Other thing I dont understand that in msg comes
from bsc on bvci 127 but respond goes to bvci 0 (but I didnt define it as
bsc-sgsn link use only bvci 127 not bvci 0).Also I think sig bvci 0 is not
changeable to bvci 127 on osmoSGSN.
To summarize attach procedure is long it takes 30-50 seconds(because of
this first reject).

S23 attach
Same as S9 but after first fail it not doing second attempt and stuck
without PS forever in CS domain. Its not problem with MS stack.
I tried a lot of workarounds to make s23 attach but no success. Changing to
PSonly not work, AT commands not work. Also tried with Huawei E3372,E3131
but same behaviour.

I connect this setup to other 2Gcore-simulator(not opensource) to compare
and its processed normally for both UEs and modems,it got pdp contexts
after 6-8 seconds. Difference is that here I got message
RA-CAPABILTIY-UPDATE/RA-CAPABILITY-ACK because got real BSC not osmo-pcu.

When I look into code I cannot see RA-CAPABILTIY-UPDATE and
RA-CAPABILITY-ACK support so my questions are:

1.Is this RA-CAPABILTIY-UPDATE and RA-CAPABILITY-ACK supported in osmoSGSN
and is it plan to do that?
2.Is any other workaround (changing timers,tmsi assignment or whatever to
change in bsc) in configuration to make S23/modems attached?Theoretically
if UE can set PSonly and AT command to activate PDP context it should work
but I never make it happened this AT commands on my terminals.
3.I can provide both pcaps and UE logs to see whats missing if it helps to
make add it.
4.Is it possible to add this two messages to support to osmoSGSN code?I can
test patch if you provide it.


Regards,

Jan Kosi=C5=84ski

--0000000000008909fc06133678b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I got question about this issue.</div><div>I up=
dated my comment on this issue here:=C2=A0</div><div><a href=3D"https://osm=
ocom.org/issues/6197">https://osmocom.org/issues/6197</a><br></div><div><br=
></div><div>Original my post:</div><div><p style=3D"color:rgb(51,51,51);fon=
t-family:Verdana,sans-serif;font-size:12px">I observe same situation in my =
setup. Cannot activate PDP context because of missing RA-CAPABILTIY-UPDATE =
and RA-CAPABILITY-ACK support in osmoSGSN.<br>My setup is Samsung Galaxy S9=
 and S23, real BTS/BSC from well-known vendor and Osmo core (SGSN/GGSN/HLR/=
MSC/STP) (Important thing that I&#39;m not using osmo-pcu).</p><p style=3D"=
color:rgb(51,51,51);font-family:Verdana,sans-serif;font-size:12px">Problem =
description:<br>S9 attach procedure (CS+PS):<br>1.After UE reboot I see MM =
procedure Location request and Location update processed good (on DMtool). =
Then if needed CS calling is working properly(connection to osmoMSC).<br>2.=
After that UE is trying GMM Attach request and it got Attach accept and att=
ach complete.<br>3.Then UE send Activate PDP context, but SGSN is reject th=
is with cause:<br>&quot;Cannot handle SM for unknown MM CTX&quot;<br>4.Afte=
r that UE is trying activate PDP context for second time (After timer expir=
ed) and finally it got pdp accept (ping/traffic work) same as in this threa=
d. After deep inspection I found that reason of first pdp activation reject=
 is that TLLI is not updated (SGSN dont know it and causing Cannot handle S=
M for unknown MM CTX) because when I checked pcap from bssgp I see that BSC=
 send RA-CAPABILTIY-UPDATE with new tlli and osmoSGSN send response Unknown=
 PDU with protocol unspecified but should send RA-CAPABILTIY-UPDATE-ACK. Ot=
her thing I dont understand that in msg comes from bsc on bvci 127 but resp=
ond goes to bvci 0 (but I didnt define it as bsc-sgsn link use only bvci 12=
7 not bvci 0).Also I think sig bvci 0 is not changeable to bvci 127 on osmo=
SGSN.<br>To summarize attach procedure is long it takes 30-50 seconds(becau=
se of this first reject).</p><p style=3D"color:rgb(51,51,51);font-family:Ve=
rdana,sans-serif;font-size:12px">S23 attach<br>Same as S9 but after first f=
ail it not doing second attempt and stuck without PS forever in CS domain. =
Its not problem with MS stack.<br>I tried a lot of workarounds to make s23 =
attach but no success. Changing to PSonly not work, AT commands not work. A=
lso tried with Huawei E3372,E3131 but same behaviour.</p><p style=3D"color:=
rgb(51,51,51);font-family:Verdana,sans-serif;font-size:12px">I connect this=
 setup to other 2Gcore-simulator(not opensource) to compare and its process=
ed normally for both UEs and modems,it got pdp contexts after 6-8 seconds. =
Difference is that here I got message RA-CAPABILTIY-UPDATE/RA-CAPABILITY-AC=
K because got real BSC not osmo-pcu.</p><p style=3D"color:rgb(51,51,51);fon=
t-family:Verdana,sans-serif;font-size:12px">When I look into code I cannot =
see RA-CAPABILTIY-UPDATE and RA-CAPABILITY-ACK support so my questions are:=
</p><p style=3D"color:rgb(51,51,51);font-family:Verdana,sans-serif;font-siz=
e:12px">1.Is this RA-CAPABILTIY-UPDATE and RA-CAPABILITY-ACK supported in o=
smoSGSN and is it plan to do that?<br>2.Is any other workaround (changing t=
imers,tmsi assignment or whatever to change in bsc) in configuration to mak=
e S23/modems attached?Theoretically if UE can set PSonly and AT command to =
activate PDP context it should work but I never make it happened this AT co=
mmands on my terminals.<br>3.I can provide both pcaps and UE logs to see wh=
ats missing if it helps to make add it.<br>4.Is it possible to add this two=
 messages to support to osmoSGSN code?I can test patch if you provide it.</=
p><p style=3D"color:rgb(51,51,51);font-family:Verdana,sans-serif;font-size:=
12px"><br></p><p style=3D"color:rgb(51,51,51);font-family:Verdana,sans-seri=
f;font-size:12px">Regards,</p><p style=3D"color:rgb(51,51,51);font-family:V=
erdana,sans-serif;font-size:12px">Jan Kosi=C5=84ski</p></div></div>

--0000000000008909fc06133678b8--
