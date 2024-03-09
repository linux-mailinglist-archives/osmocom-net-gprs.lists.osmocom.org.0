Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 92917877BFE
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 11 Mar 2024 09:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A3EAC5E6F7;
	Mon, 11 Mar 2024 08:57:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qwntrv_O9qa7; Mon, 11 Mar 2024 08:57:17 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1F38C5E6E0;
	Mon, 11 Mar 2024 08:57:15 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1DBC038A82ED
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  9 Mar 2024 09:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EFCFD5D596
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  9 Mar 2024 09:00:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7YPLHCekOHCl for <osmocom-net-gprs@lists.osmocom.org>;
 Sat,  9 Mar 2024 09:00:58 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by mail.osmocom.org (Postfix) with ESMTPS id 3099B5D58C
	for <osmocom-net-gprs@lists.osmocom.org>; Sat,  9 Mar 2024 09:00:57 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-33e82c720f8so326216f8f.3
        for <osmocom-net-gprs@lists.osmocom.org>; Sat, 09 Mar 2024 01:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709974857; x=1710579657; darn=lists.osmocom.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tMLEgW/k9R/2dLcQHagD5mlT5ryFSAABsyo6TjnkadQ=;
        b=aAepdPvVoOmavnRNRlWuHOMSer3hE44mXWbX76kefAB/NJ1i7CWUaa4x+OEyd021Gl
         yAScdBkkvqDyPYxbeY3o9EuCYTrqVM6hxcaz/hzhO/EqF8G83FkcsSkLUUyEyszjkLan
         mTkL5sQc0mScsqReKZPDIjI/+pMqWFaXC/pEfN8v+1KzbIM2o3fdxGqvyOVMShxUAcTO
         43mcXxKXbzGp4Orql+qhRqImnegb4PHKazneJHFTbwiCCd+MoD1lBqYFmg8/L/1V6gON
         s7ENLqAXXx+0ytlQQAFXDnFlUz3LWulfDVt2PWf0lkZbZ4B8qgzSLrZKigxYonBRoMjQ
         9b1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709974857; x=1710579657;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tMLEgW/k9R/2dLcQHagD5mlT5ryFSAABsyo6TjnkadQ=;
        b=cOkAb9dHNmBjzMO0xgQ7zSrxiRmsRK0moezXOhG0tHKPUyPO1UB2RgfKLquwbq1Ud1
         1ForGQHPTTMGdejcHvBCIvnf/pETHt5mf926WR+MdK82TC/l4hiL6xwfvM0pb8T/0MqP
         ol2gCSYtVeuGBRXWCV6TcjOjkLBrYSTX40t7xj3IjkbtqRzci+vdSpRZuU/3wx0QMOnt
         Zuhz4s/Nd9Aw04pDPSxg0GeXnvKkTreUIXlz5DXbM4eDr8PsNzM2DcclNM5PAwk0KiVg
         ow0TuDVl+k+2SY1IRpiwX/u4hcH+e+BMVYNr6xhQ+nQO69qE35BcAaaWE/bqLgHTbwrV
         o5mA==
X-Gm-Message-State: AOJu0YyVRDIxa85klGIxcBQAE92BggIvO7/N/+Z6WSIRgDLRqQlrOTWj
	FEAIJmu98+9VfXnb24/UZD5cNIc6R04M2k0Viz/LZ/MafDHO6rOtDi0iPWLGG0PRG69yCjXkKg7
	bGoPm0ph+io46ZyJi+y+MZuJxNMTjv/zgEaQ=
X-Google-Smtp-Source: AGHT+IHkW4NF4F1Nah3BZFFOIfkP5SgZUWSL7LJ9tL2Yv6cKFKLlgqTcEtPbwBEcl+fzQ01hNHgguyuiho2ITMZ/NTE=
X-Received: by 2002:a05:600c:1d9a:b0:413:1cb9:7b9b with SMTP id
 p26-20020a05600c1d9a00b004131cb97b9bmr1018746wms.28.1709974857049; Sat, 09
 Mar 2024 01:00:57 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Jan_Kosi=C5=84ski?= <jkosinsk85@gmail.com>
Date: Sat, 9 Mar 2024 10:00:46 +0100
Message-ID: <CAAxwsW_JusyRfefQDFEgmr_wLQOJJvW8KONxqdwOkiJ_Tq-FWQ@mail.gmail.com>
Subject: OsmoSGSN - "Cannot handle SM for unknown MM CTX"
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="000000000000edec2b0613368b24"
X-MailFrom: jkosinsk85@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FCDY4TIGZN5BUABGWHHPEOCOQIBQRGRK
X-Message-ID-Hash: FCDY4TIGZN5BUABGWHHPEOCOQIBQRGRK
X-Mailman-Approved-At: Mon, 11 Mar 2024 08:57:06 +0000
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FCDY4TIGZN5BUABGWHHPEOCOQIBQRGRK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--000000000000edec2b0613368b24
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

--000000000000edec2b0613368b24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I got question about this issue.</div><div>I up=
dated my comment on this issue here:=C2=A0</div><div><a href=3D"https://osm=
ocom.org/issues/6197" target=3D"_blank">https://osmocom.org/issues/6197</a>=
<br></div><div><br></div><div>Original my post:</div><div><p style=3D"color=
:rgb(51,51,51);font-family:Verdana,sans-serif;font-size:12px">I observe sam=
e situation in my setup. Cannot activate PDP context because of missing RA-=
CAPABILTIY-UPDATE and RA-CAPABILITY-ACK support in osmoSGSN.<br>My setup is=
 Samsung Galaxy S9 and S23, real BTS/BSC from well-known vendor and Osmo co=
re (SGSN/GGSN/HLR/MSC/STP) (Important thing that I&#39;m not using osmo-pcu=
).</p><p style=3D"color:rgb(51,51,51);font-family:Verdana,sans-serif;font-s=
ize:12px">Problem description:<br>S9 attach procedure (CS+PS):<br>1.After U=
E reboot I see MM procedure Location request and Location update processed =
good (on DMtool). Then if needed CS calling is working properly(connection =
to osmoMSC).<br>2.After that UE is trying GMM Attach request and it got Att=
ach accept and attach complete.<br>3.Then UE send Activate PDP context, but=
 SGSN is reject this with cause:<br>&quot;Cannot handle SM for unknown MM C=
TX&quot;<br>4.After that UE is trying activate PDP context for second time =
(After timer expired) and finally it got pdp accept (ping/traffic work) sam=
e as in this thread. After deep inspection I found that reason of first pdp=
 activation reject is that TLLI is not updated (SGSN dont know it and causi=
ng Cannot handle SM for unknown MM CTX) because when I checked pcap from bs=
sgp I see that BSC send RA-CAPABILTIY-UPDATE with new tlli and osmoSGSN sen=
d response Unknown PDU with protocol unspecified but should send RA-CAPABIL=
TIY-UPDATE-ACK. Other thing I dont understand that in msg comes from bsc on=
 bvci 127 but respond goes to bvci 0 (but I didnt define it as bsc-sgsn lin=
k use only bvci 127 not bvci 0).Also I think sig bvci 0 is not changeable t=
o bvci 127 on osmoSGSN.<br>To summarize attach procedure is long it takes 3=
0-50 seconds(because of this first reject).</p><p style=3D"color:rgb(51,51,=
51);font-family:Verdana,sans-serif;font-size:12px">S23 attach<br>Same as S9=
 but after first fail it not doing second attempt and stuck without PS fore=
ver in CS domain. Its not problem with MS stack.<br>I tried a lot of workar=
ounds to make s23 attach but no success. Changing to PSonly not work, AT co=
mmands not work. Also tried with Huawei E3372,E3131 but same behaviour.</p>=
<p style=3D"color:rgb(51,51,51);font-family:Verdana,sans-serif;font-size:12=
px">I connect this setup to other 2Gcore-simulator(not opensource) to compa=
re and its processed normally for both UEs and modems,it got pdp contexts a=
fter 6-8 seconds. Difference is that here I got message RA-CAPABILTIY-UPDAT=
E/RA-CAPABILITY-ACK because got real BSC not osmo-pcu.</p><p style=3D"color=
:rgb(51,51,51);font-family:Verdana,sans-serif;font-size:12px">When I look i=
nto code I cannot see RA-CAPABILTIY-UPDATE and RA-CAPABILITY-ACK support so=
 my questions are:</p><p style=3D"color:rgb(51,51,51);font-family:Verdana,s=
ans-serif;font-size:12px">1.Is this RA-CAPABILTIY-UPDATE and RA-CAPABILITY-=
ACK supported in osmoSGSN and is it plan to do that?<br>2.Is any other work=
around (changing timers,tmsi assignment or whatever to change in bsc) in co=
nfiguration to make S23/modems attached?Theoretically if UE can set PSonly =
and AT command to activate PDP context it should work but I never make it h=
appened this AT commands on my terminals.<br>3.I can provide both pcaps and=
 UE logs to see whats missing if it helps to make add it.<br>4.Is it possib=
le to add this two messages to support to osmoSGSN code?I can test patch if=
 you provide it.</p><p style=3D"color:rgb(51,51,51);font-family:Verdana,san=
s-serif;font-size:12px"><br></p><p style=3D"color:rgb(51,51,51);font-family=
:Verdana,sans-serif;font-size:12px">Regards,</p><p style=3D"color:rgb(51,51=
,51);font-family:Verdana,sans-serif;font-size:12px">Jan Kosi=C5=84ski</p></=
div></div>

--000000000000edec2b0613368b24--
