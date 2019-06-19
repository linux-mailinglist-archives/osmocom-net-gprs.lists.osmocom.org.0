Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1D7B84B7A5
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 19 Jun 2019 14:07:52 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 0C2A1C454F;
	Wed, 19 Jun 2019 12:07:41 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=I0KKB5n1
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=chiefy.padua@gmail.com;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=pass header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id 8B59AC4529
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Jun 2019 12:07:36 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id z23so1561117wma.4
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Jun 2019 05:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8IjFNSOFIv7KIZ50qLis1wBh1nEJLY35csOH9DZWAEo=;
 b=I0KKB5n1VhjjZjT8GhxLn8uofQyKpKlQ+nxJ0jSWxoNVkAqZfaGzm+bYrtNuzIrZTN
 QNC0RjwXgDWieTP54Bf5eaLxpslReh1wjDuZ4s3FUVnd4q1+Fdx4b9zMucH29rLOpEJS
 Z75auyt4Nec7b8DBegMy6gDWttIYPaNROhlGn6lLmCyyXAvJyfSncWm+9dLx17cKuyj7
 Tv5DWLqNDwL8sfTtcuTv8NS+U8tB/q5rQ8n7wRzF5FgjVRzMfjV4FEJJEU4eJ1wDn5L6
 xCur6Q3uqfiO7BvszH4IacEBHfB4mfteeje4M0nggMlcUqMsOIaq+kKZcKBu281Xwzi9
 g/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8IjFNSOFIv7KIZ50qLis1wBh1nEJLY35csOH9DZWAEo=;
 b=dPw0oUUR7xAyWlDE1B1xp4j1PlRlSY98PriL4v91jhmHyOO5Ex25O22iunVF1lTxA8
 2cu8AXbJbX6U1ODeKJsOD53mWN2pTGYybDRlozBJSRNMXj/OZRyd54cq1AhTQFkqbkla
 so/aSWddyUx4AIUPdxZuygmxuknQek5p9mpSlkd74povWOKF9aX1AwFyXszRt3fp5t3Q
 fM5pP5Q4eGfphYUBjBc7jHAAhpvxESTGTGYr2aF+TW2pnhD7wbZ+C+uRY4z2Jhkzl2o8
 vEMgVpAleBVSdy+Xku0mDmwzjTwfqwyNzEteFKy6ZO8bBjmTdFWnBOG3/MKFqiFI9fTv
 rQqw==
X-Gm-Message-State: APjAAAW0h71BRDm0LRPqN4B1/Q8x9yGkKn4QyH+dmoxqIybclD8fx6wC
 x5Lpla+cOz9oaKB8ZG9HTXUXJEQFnPV7Yrc0CwVXw55l
X-Google-Smtp-Source: APXvYqw1hcdpPQFutBCrGxhdYTV0T6LU5o2p2eMyBdu35KLEUB0TjMP7txadzSMwAdPGOjzVzd5CXu1zqWDNXXkkILM=
X-Received: by 2002:a1c:6154:: with SMTP id v81mr7935968wmb.92.1560946055769; 
 Wed, 19 Jun 2019 05:07:35 -0700 (PDT)
MIME-Version: 1.0
From: Tony Clark <chiefy.padua@gmail.com>
Date: Wed, 19 Jun 2019 13:07:13 +0100
Message-ID: <CA+dJ=bxPunvB4GOV5gwUdSf+PPkukNkwhVD=NAr5y2i5a4Gj3w@mail.gmail.com>
Subject: high ksoftirqd while using module gtp?
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="0000000000002af202058bac136e"
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

--0000000000002af202058bac136e
Content-Type: text/plain; charset="UTF-8"

Dear All,

I've been using the GTP-U kernel module to communicate with a P-GW.

Running Fedora 29, kernel 4.18.16-300.fc29.x86_64.

At high traffic levels through the GTP-U tunnel I see the performance
degrade as 100% CPU is consumed by a single ksoftirqd process.

It is running on a multi-cpu machine and as far as I can tell the load is
evenly spread across the cpus (ie either manually via smp_affinity, or even
irqbalance, checking /proc/interrupts so forth.).

Has anyone else experienced this?

Is there any particular area you could recommend I investigate to find the
root cause of this bottleneck, as i'm starting to scratch my head where to
look next...

Thanks in advance
Tony

---- FYI

modinfo gtp
filename:
/lib/modules/4.18.16-300.fc29.x86_64/kernel/drivers/net/gtp.ko.xz
alias:          net-pf-16-proto-16-family-gtp
alias:          rtnl-link-gtp
description:    Interface driver for GTP encapsulated traffic
author:         Harald Welte <hwelte@sysmocom.de>
license:        GPL
depends:        udp_tunnel
retpoline:      Y
intree:         Y
name:           gtp
vermagic:       4.18.16-300.fc29.x86_64 SMP mod_unload

modinfo udp_tunnel
filename:
/lib/modules/4.18.16-300.fc29.x86_64/kernel/net/ipv4/udp_tunnel.ko.xz
license:        GPL
depends:
retpoline:      Y
intree:         Y
name:           udp_tunnel
vermagic:       4.18.16-300.fc29.x86_64 SMP mod_unload

--0000000000002af202058bac136e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<br><br>I&#39;ve been using the GTP-U kernel modu=
le to communicate with a P-GW.<br><br>Running Fedora 29, kernel 4.18.16-300=
.fc29.x86_64.<br><br>At high traffic levels through the GTP-U tunnel I see =
the performance degrade as 100% CPU is consumed by a single ksoftirqd proce=
ss.<br><br>It is running on a multi-cpu machine and as far as I can tell th=
e load is evenly spread across the cpus (ie either manually via smp_affinit=
y, or even irqbalance, checking /proc/interrupts so forth.).<br><br>Has any=
one else experienced this?<br><br>Is there any particular area you could re=
commend I investigate to find the root cause of this bottleneck, as i&#39;m=
 starting to scratch my head where to look next...<br><br>Thanks in advance=
<br>Tony<br>=C2=A0<br>---- FYI<br><br>modinfo gtp<br>filename: =C2=A0 =C2=
=A0 =C2=A0 /lib/modules/4.18.16-300.fc29.x86_64/kernel/drivers/net/gtp.ko.x=
z<br>alias: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0net-pf-16-proto-16-family-gtp=
<br>alias: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtnl-link-gtp<br>description: =
=C2=A0 =C2=A0Interface driver for GTP encapsulated traffic<br>author: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Harald Welte &lt;<a href=3D"mailto:hwelte@sysmocom=
.de">hwelte@sysmocom.de</a>&gt;<br>license: =C2=A0 =C2=A0 =C2=A0 =C2=A0GPL<=
br>depends: =C2=A0 =C2=A0 =C2=A0 =C2=A0udp_tunnel<br>retpoline: =C2=A0 =C2=
=A0 =C2=A0Y<br>intree: =C2=A0 =C2=A0 =C2=A0 =C2=A0 Y<br>name: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 gtp<br>vermagic: =C2=A0 =C2=A0 =C2=A0 4.18.16-300.fc2=
9.x86_64 SMP mod_unload <br><br>modinfo udp_tunnel<br>filename: =C2=A0 =C2=
=A0 =C2=A0 /lib/modules/4.18.16-300.fc29.x86_64/kernel/net/ipv4/udp_tunnel.=
ko.xz<br>license: =C2=A0 =C2=A0 =C2=A0 =C2=A0GPL<br>depends: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0<br>retpoline: =C2=A0 =C2=A0 =C2=A0Y<br>intree: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Y<br>name: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 udp_tunnel<br>v=
ermagic: =C2=A0 =C2=A0 =C2=A0 4.18.16-300.fc29.x86_64 SMP mod_unload <br></=
div>

--0000000000002af202058bac136e--
