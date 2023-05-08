Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id C514E709BAA
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 May 2023 17:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A20ED282B0;
	Fri, 19 May 2023 15:51:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z68Jxu2C7eJB; Fri, 19 May 2023 15:51:22 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 52CCB282A7;
	Fri, 19 May 2023 15:51:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E53E838A0ED9;
	Mon,  8 May 2023 12:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B089B2810E;
	Mon,  8 May 2023 12:16:22 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8g9hZ8QbLI8y; Mon,  8 May 2023 12:16:22 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by mail.osmocom.org (Postfix) with ESMTPS id 023D528058;
	Mon,  8 May 2023 12:16:21 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6439f186366so2226828b3a.2;
        Mon, 08 May 2023 05:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683548179; x=1686140179;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sp7oJqkoAxtzuPuCvdpA8lGmaetN6q4F6LHLYdQxIew=;
        b=jYE3U/U0bukAXIQX3Hee7zZ5FT1D9HOoAMabA6zxtTLnIAKeXvRFHeHJcgRro04F7x
         sQJDsrwehpryU5pmi3cqRjUDmKD33ui49gGHR0x9n0wrIuogBu4g0/bvy9j3r5CJ/7f1
         o/ihwRYHB5qJiGSTwDGZPPKUf6ZLx9aK0Ts3xgCjkij4EklJmbeOc8SYH1PS7TGSs/uU
         QzYv91vKH4rpAzaYLOH7j71bv5oJA7NCMoJixDtXtvt+grNV9Hu9NxMoKcwYTU/7pMqj
         HP+CPpCBwUOIuc3H1yGwo1tU+kBzfUwRq5FAogKyVLxkpufHAsd6fJo7yBsASLXKfkpF
         GrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683548179; x=1686140179;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sp7oJqkoAxtzuPuCvdpA8lGmaetN6q4F6LHLYdQxIew=;
        b=SBqDnB1v5HCYPvw4ar6m+pehqeyOxnUWR5mGnCBi3JDQGU91banxtXVw6lR1EKK+XE
         T7LVN4RjPGXBpq1wVLXXB+zDBdxkZn1r2GSeOfWwm3n2rznXLkrKnOmaNL4/RQr2AAMH
         qCZL+k2Uz374SKegCeCabmLXYjPl6s/eHMAgrMnFUKITKsn5ye0DNuPMHj1Givi7QoED
         lJVv59swStkGje5za1oSRGKIr6c4K787KfzdEcYCWRQq1odxg7DsEYM0BUQkUn5ah2Os
         qrFzNDFfk6HGVfuHIdczZGOrPbHcltaaIqSFro6KZ/igzp3zZKihm46VgzRbepc4ajLz
         INLQ==
X-Gm-Message-State: AC+VfDxJWx+91zu6842jyrUvMT8SbwJyvsQSVWQiegQngS8lTgsEeS7J
	gB/kKcND9KH99DFqgUiSBI8tPIdtgwyJgNZc15w/e3+26URLNg==
X-Google-Smtp-Source: ACHHUZ4e5CHLCWDafy4enkDqrn61TUzOe9dMzq+Dgn63s20Nbyi7DjY2MRmrkDmGVFpT0z9Cy5nmtyqU2odoGbFmWTk=
X-Received: by 2002:a05:6a00:23d6:b0:643:53b6:d845 with SMTP id
 g22-20020a056a0023d600b0064353b6d845mr12328883pfc.13.1683548179167; Mon, 08
 May 2023 05:16:19 -0700 (PDT)
MIME-Version: 1.0
From: Ahnaf Tahmid <tahmid.nse@gmail.com>
Date: Mon, 8 May 2023 18:16:07 +0600
Message-ID: <CANV1quToJQtZoQxnJ5uDNh5H43V02oNdQ_GZdKXfNXic8h+vOg@mail.gmail.com>
Subject: Request for Assistance with GPRS Configuration
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/mixed; boundary="0000000000002f1be605fb2d9bca"
X-MailFrom: tahmid.nse@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y4WMYZBJ4DYKRVG6F3DRSMGHKMSZLYJS
X-Message-ID-Hash: Y4WMYZBJ4DYKRVG6F3DRSMGHKMSZLYJS
X-Mailman-Approved-At: Fri, 19 May 2023 15:51:16 +0000
CC: openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/Y4WMYZBJ4DYKRVG6F3DRSMGHKMSZLYJS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--0000000000002f1be605fb2d9bca
Content-Type: multipart/alternative; boundary="0000000000002f1be405fb2d9bc8"

--0000000000002f1be405fb2d9bc8
Content-Type: text/plain; charset="UTF-8"

Dear Osmocom Community,

I have noticed that the wiki page for OpenBSC GPRS at
https://osmocom.org/projects/cellular-infrastructure/wiki/OpenBSC_GPRS has
not been updated for four years, and since then, there have been
significant updates to the software. As a result, the information on the
GPRS/EDGE Setup page may be outdated, and I am struggling to configure GPRS
on my system.

I have attached my configuration files below for your review.

ip address

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group
default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s31f6: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel
state DOWN group default qlen 1000
    link/ether ec:8e:b5:41:cb:90 brd ff:ff:ff:ff:ff:ff
3: wlp1s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state
UP group default qlen 1000
    link/ether b8:8a:60:4f:59:02 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.109/24 brd 192.168.1.255 scope global dynamic
noprefixroute wlp1s0
       valid_lft 7152sec preferred_lft 7152sec
    inet6 fe80::649b:2ab5:6dd3:8779/64 scope link noprefixroute
       valid_lft forever preferred_lft forever

--0000000000002f1be405fb2d9bc8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Osmocom Community,<br><br>I have noticed that the wik=
i page for OpenBSC GPRS at <a href=3D"https://osmocom.org/projects/cellular=
-infrastructure/wiki/OpenBSC_GPRS">https://osmocom.org/projects/cellular-in=
frastructure/wiki/OpenBSC_GPRS</a> has not been updated for four years, and=
 since then, there have been significant updates to the software. As a resu=
lt, the information on the GPRS/EDGE Setup page may be outdated, and I am s=
truggling to configure GPRS on my system.<br><br>I have attached my configu=
ration files below for your review.<br><br>ip address<br><br>1: lo: &lt;LOO=
PBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default q=
len 1000<br>=C2=A0 =C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:0=
0:00<br>=C2=A0 =C2=A0 inet <a href=3D"http://127.0.0.1/8">127.0.0.1/8</a> s=
cope host lo<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft =
forever<br>=C2=A0 =C2=A0 inet6 ::1/128 scope host <br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0valid_lft forever preferred_lft forever<br>2: enp0s31f6: &lt;NO-CARRI=
ER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc fq_codel state DOWN group defa=
ult qlen 1000<br>=C2=A0 =C2=A0 link/ether ec:8e:b5:41:cb:90 brd ff:ff:ff:ff=
:ff:ff<br>3: wlp1s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc=
 noqueue state UP group default qlen 1000<br>=C2=A0 =C2=A0 link/ether b8:8a=
:60:4f:59:02 brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"http://=
192.168.1.109/24">192.168.1.109/24</a> brd 192.168.1.255 scope global dynam=
ic noprefixroute wlp1s0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft 7152sec pre=
ferred_lft 7152sec<br>=C2=A0 =C2=A0 inet6 fe80::649b:2ab5:6dd3:8779/64 scop=
e link noprefixroute <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever prefe=
rred_lft forever<br></div>

--0000000000002f1be405fb2d9bc8--

--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="osmo-bsc.cfg"
Content-Disposition: attachment; filename="osmo-bsc.cfg"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemdb9v0>
X-Attachment-Id: f_lhemdb9v0

ISBvc21vLWJzYyBkZWZhdWx0IGNvbmZpZ3VyYXRpb24KISAoYXNzdW1lcyBTVFAgdG8gcnVuIG9u
IDEyNy4wLjAuMSBhbmQgdXNlcyBkZWZhdWx0IHBvaW50IGNvZGVzKQohCmUxX2lucHV0CiBlMV9s
aW5lIDAgZHJpdmVyIGlwYQpuZXR3b3JrCiBuZXR3b3JrIGNvdW50cnkgY29kZSAxCiBtb2JpbGUg
bmV0d29yayBjb2RlIDEKIGVuY3J5cHRpb24gYTUgMAogbmVjaSAxCiBwYWdpbmcgYW55IHVzZSB0
Y2ggMAogaGFuZG92ZXIgMAogaGFuZG92ZXIgYWxnb3JpdGhtIDEKIGhhbmRvdmVyMSB3aW5kb3cg
cnhsZXYgYXZlcmFnaW5nIDEwCiBoYW5kb3ZlcjEgd2luZG93IHJ4cXVhbCBhdmVyYWdpbmcgMQog
aGFuZG92ZXIxIHdpbmRvdyByeGxldiBuZWlnaGJvciBhdmVyYWdpbmcgMTAKIGhhbmRvdmVyMSBw
b3dlciBidWRnZXQgaW50ZXJ2YWwgNgogaGFuZG92ZXIxIHBvd2VyIGJ1ZGdldCBoeXN0ZXJlc2lz
IDMKIGhhbmRvdmVyMSBtYXhpbXVtIGRpc3RhbmNlIDk5OTkKICEgVDMyMTIgaXMgaW4gdW5pdHMg
b2YgNm1pbiwgc28gYmVsb3cgd2Ugc2V0IDUgKiA2ID0gMzBtaW4KIHRpbWVyIG5ldCBUMzIxMiA1
CiBtZ3cgMAogIHJlbW90ZS1pcCAxMjcuMC4wLjEKICByZW1vdGUtcG9ydCAyNDI3CiAgbG9jYWwt
cG9ydCAyNzI3CiBidHMgMAogIHR5cGUgb3Ntby1idHMKICBiYW5kIERDUzE4MDAKICBjZWxsX2lk
ZW50aXR5IDY5NjkKICBsb2NhdGlvbl9hcmVhX2NvZGUgMHgwMDAxCiAgYmFzZV9zdGF0aW9uX2lk
X2NvZGUgNjMKICBtcyBtYXggcG93ZXIgMTUKICBjZWxsIHJlc2VsZWN0aW9uIGh5c3RlcmVzaXMg
NAogIHJ4bGV2IGFjY2VzcyBtaW4gMAogIHJhZGlvLWxpbmstdGltZW91dCAzMgogIGNoYW5uZWwg
YWxsb2NhdG9yIG1vZGUgc2V0LWFsbCBhc2NlbmRpbmcKICByYWNoIHR4IGludGVnZXIgOQogIHJh
Y2ggbWF4IHRyYW5zbWlzc2lvbiA3CiAgY2hhbm5lbC1kZXNjcmlwdGlvbiBhdHRhY2ggMQogIGNo
YW5uZWwtZGVzY3JpcHRpb24gYnMtcGEtbWZybXMgNQogIGNoYW5uZWwtZGVzY3JpcHRpb24gYnMt
YWctYmxrcy1yZXMgMQogIGVhcmx5LWNsYXNzbWFyay1zZW5kaW5nIGZvcmJpZGRlbgogIGlwYSB1
bml0LWlkIDY5NjkgMAogIG9tbCBpcGEgc3RyZWFtLWlkIDI1NSBsaW5lIDAKICBjb2RlYy1zdXBw
b3J0IGZyCiAgZ3BycyBtb2RlIGdwcnMKICBncHJzIHJvdXRpbmcgYXJlYSAwCiAgZ3BycyBjZWxs
IGJ2Y2kgMgogIGdwcnMgbnNlaSAxMDEKICBncHJzIG5zdmMgMCBuc3ZjaSAxMDEKICBncHJzIG5z
dmMgMCByZW1vdGUgaXAgMTI3LjAuMC4yCiAgdHJ4IDAKICAgcmZfbG9ja2VkIDAKICAgYXJmY24g
ODcxCiAgIG5vbWluYWwgcG93ZXIgMjMKICAgISB0byB1c2UgZnVsbCBUUlggcG93ZXIsIHNldCBt
YXhfcG93ZXJfcmVkIDAKICAgbWF4X3Bvd2VyX3JlZCAyMAogICByc2wgZTEgdGVpIDAKICAgdGlt
ZXNsb3QgMAogICAgcGh5c19jaGFuX2NvbmZpZyBDQ0NIK1NEQ0NINAogICAgaG9wcGluZyBlbmFi
bGVkIDAKICAgdGltZXNsb3QgMQogICAgcGh5c19jaGFuX2NvbmZpZyBTRENDSDgKICAgIGhvcHBp
bmcgZW5hYmxlZCAwCiAgIHRpbWVzbG90IDIKICAgIHBoeXNfY2hhbl9jb25maWcgVENIL0YKICAg
IGhvcHBpbmcgZW5hYmxlZCAwCiAgIHRpbWVzbG90IDMKICAgIHBoeXNfY2hhbl9jb25maWcgVENI
L0YKICAgIGhvcHBpbmcgZW5hYmxlZCAwCiAgIHRpbWVzbG90IDQKICAgIHBoeXNfY2hhbl9jb25m
aWcgVENIL0YKICAgIGhvcHBpbmcgZW5hYmxlZCAwCiAgIHRpbWVzbG90IDUKICAgIHBoeXNfY2hh
bl9jb25maWcgVENIL0YKICAgIGhvcHBpbmcgZW5hYmxlZCAwCiAgIHRpbWVzbG90IDYKICAgIHBo
eXNfY2hhbl9jb25maWcgUERDSAogICAgaG9wcGluZyBlbmFibGVkIDAKICAgdGltZXNsb3QgNwog
ICAgcGh5c19jaGFuX2NvbmZpZyBQRENICiAgICBob3BwaW5nIGVuYWJsZWQgMAptc2MgMAogYWxs
b3ctZW1lcmdlbmN5IGFsbG93CiBhbXItY29uZmlnIDEyXzJrIGZvcmJpZGRlbgogYW1yLWNvbmZp
ZyAxMF8yayBmb3JiaWRkZW4KIGFtci1jb25maWcgN185NWsgZm9yYmlkZGVuCiBhbXItY29uZmln
IDdfNDBrIGZvcmJpZGRlbgogYW1yLWNvbmZpZyA2XzcwayBmb3JiaWRkZW4KIGFtci1jb25maWcg
NV85MGsgYWxsb3dlZAogYW1yLWNvbmZpZyA1XzE1ayBmb3JiaWRkZW4KIGFtci1jb25maWcgNF83
NWsgZm9yYmlkZGVuCmJzYwogbWlkLWNhbGwtdGltZW91dCAwCg==
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="osmo-pcu.cfg"
Content-Disposition: attachment; filename="osmo-pcu.cfg"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemdwph1>
X-Attachment-Id: f_lhemdwph1

cGN1CiBmbG93LWNvbnRyb2wtaW50ZXJ2YWwgMTAKIGNzIDIKIGFsbG9jLWFsZ29yaXRobSBkeW5h
bWljCiBhbHBoYSAwCiBnYW1tYSAwCg==
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="osmo-ggsn.cfg"
Content-Disposition: attachment; filename="osmo-ggsn.cfg"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemei452>
X-Attachment-Id: f_lhemei452

Z2dzbiBnZ3NuMAogZ3RwIHN0YXRlLWRpciAvdG1wCiBndHAgYmluZC1pcCAxMjcuMC4wLjIKIGFw
biBpbnRlcm5ldAogIGd0cHUtbW9kZSBrZXJuZWwtZ3RwCiAgdHVuLWRldmljZSB0dW40CiAgdHlw
ZS1zdXBwb3J0IHY0CiAgaXAgcHJlZml4IGR5bmFtaWMgMTcyLjE2LjIyMi4wLzI0CiAgaXAgZG5z
IDAgOC44LjguOAogIGlwIGRucyAxIDguOC40LjQKICBpcCBpZmNvbmZpZyAxNzIuMTYuMjIyLjAv
MjQKICBubyBzaHV0ZG93bgo=
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="osmo-msc.cfg"
Content-Disposition: attachment; filename="osmo-msc.cfg"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemfl6y3>
X-Attachment-Id: f_lhemfl6y3

IQohIE9zbW9NU0MgY29uZmlndXJhdGlvbiBzYXZlZCBmcm9tIHZ0eQohCmxpbmUgdnR5CiBubyBs
b2dpbgohCm5ldHdvcmsKIG5ldHdvcmsgY291bnRyeSBjb2RlIDEKIG1vYmlsZSBuZXR3b3JrIGNv
ZGUgMQogc2hvcnQgbmFtZSBPc21vTVNDCiBsb25nIG5hbWUgT3Ntb01TQwogZW5jcnlwdGlvbiBh
NSAwCiBycmxwIG1vZGUgbm9uZQogbW0gaW5mbyAxCiBtZ3cgMAogIHJlbW90ZS1pcCAxMjcuMC4w
LjEKICByZW1vdGUtcG9ydCAyNDI3CiAgbG9jYWwtcG9ydCAyNzI4Cm1zYwogYXNzaWduLXRtc2kK
IGF1dGgtdHVwbGUtbWF4LXJldXNlLWNvdW50IDMKIGF1dGgtdHVwbGUtcmV1c2Utb24tZXJyb3Ig
MQogbW5jYyBleHRlcm5hbCAvdG1wL21zY19tbmNjCg==
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="osmo-sgsn.cfg"
Content-Disposition: attachment; filename="osmo-sgsn.cfg"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemg80t4>
X-Attachment-Id: f_lhemg80t4

IQohIE9zbW9jb20gU0dTTiBjb25maWd1cmF0aW9uCiEKIQpsaW5lIHZ0eQogbm8gbG9naW4KIQpz
Z3NuCiBndHAgbG9jYWwtaXAgMTI3LjAuMC4xCiBnZ3NuIDAgcmVtb3RlLWlwIDEyNy4wLjAuMgog
Z2dzbiAwIGd0cC12ZXJzaW9uIDEKIGdnc24gMCBlY2hvLWludGVydmFsIDYwCiBhdXRoZW50aWNh
dGlvbiByZXF1aXJlZAogYXV0aC1wb2xpY3kgcmVtb3RlCiBnc3VwIHJlbW90ZS1pcCAxMjcuMC4w
LjEKIGdzdXAgcmVtb3RlLXBvcnQgNDIyMgohCm5zCiB0aW1lciB0bnMtYmxvY2sgMwogdGltZXIg
dG5zLWJsb2NrLXJldHJpZXMgMwogdGltZXIgdG5zLXJlc2V0IDMKIHRpbWVyIHRucy1yZXNldC1y
ZXRyaWVzIDMKIHRpbWVyIHRucy10ZXN0IDMwCiB0aW1lciB0bnMtYWxpdmUgMwogdGltZXIgdG5z
LWFsaXZlLXJldHJpZXMgMTAKIGJpbmQgdWRwIGxvY2FsCiAgbGlzdGVuIDEyNy4wLjAuMSAyMzAw
MAogIGFjY2VwdC1pcGFjY2VzcwohCmJzc2dwCiEK
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="tun.network"
Content-Disposition: attachment; filename="tun.network"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemitfv5>
X-Attachment-Id: f_lhemitfv5

W01hdGNoXQpOYW1lPXR1bjAKCltOZXR3b3JrXQpBZGRyZXNzPTEyNy4wLjAuMgpJUE1hc3F1ZXJh
ZGU9eWVzCg==
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="wired.network"
Content-Disposition: attachment; filename="wired.network"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemj0yc6>
X-Attachment-Id: f_lhemj0yc6

W01hdGNoXQpOYW1lPXdscDFzMAoKW05ldHdvcmtdCkRIQ1A9aXB2NApJUE1hc3F1ZXJhZGU9eWVz
Cg==
--0000000000002f1be605fb2d9bca
Content-Type: application/octet-stream; name="osmo-bts-trx.cfg"
Content-Disposition: attachment; filename="osmo-bts-trx.cfg"
Content-Transfer-Encoding: base64
Content-ID: <f_lhemkr757>
X-Attachment-Id: f_lhemkr757

IQohIE9zbW9CVFMgKCkgY29uZmlndXJhdGlvbiBzYXZlZCBmcm9tIHZ0eQohIQohCmxvZyBzdGRl
cnIKIGxvZ2dpbmcgY29sb3IgMQogbG9nZ2luZyB0aW1lc3RhbXAgMAogbG9nZ2luZyBsZXZlbCBy
c2wgbm90aWNlCiBsb2dnaW5nIGxldmVsIG9tbCBub3RpY2UKIGxvZ2dpbmcgbGV2ZWwgcmxsIG5v
dGljZQogbG9nZ2luZyBsZXZlbCByciBub3RpY2UKIGxvZ2dpbmcgbGV2ZWwgbWVhcyBlcnJvcgog
bG9nZ2luZyBsZXZlbCBwYWcgZXJyb3IKIGxvZ2dpbmcgbGV2ZWwgbDFjIGVycm9yCiBsb2dnaW5n
IGxldmVsIGwxcCBlcnJvcgogbG9nZ2luZyBsZXZlbCBkc3AgZXJyb3IKIGxvZ2dpbmcgbGV2ZWwg
YWJpcyBlcnJvcgohCmxpbmUgdnR5CiBubyBsb2dpbgohCnBoeSAwCiBpbnN0YW5jZSAwCiBvc21v
dHJ4IGlwIGxvY2FsIDEyNy4wLjAuMQogb3Ntb3RyeCBpcCByZW1vdGUgMTI3LjAuMC4xCmJ0cyAw
CiBiYW5kIEdTTTg1MAogaXBhIHVuaXQtaWQgNjk2OSAwCiBvbWwgcmVtb3RlLWlwIDEyNy4wLjAu
MQogZ3NtdGFwLXNhcGkgY2NjaAogZ3NtdGFwLXNhcGkgcGR0Y2gKIHRyeCAwCiAgcGh5IDAgaW5z
dGFuY2UgMAo=
--0000000000002f1be605fb2d9bca--
