Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB2D577D17
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Jul 2022 10:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 241972812E;
	Mon, 18 Jul 2022 08:04:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAUrTIYuiXnK; Mon, 18 Jul 2022 08:04:56 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 75F0528040;
	Mon, 18 Jul 2022 08:04:53 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CD17438A17D5
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 17 Jul 2022 12:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AC1B928040
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 17 Jul 2022 12:36:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hpk-ktgo0DRX for <osmocom-net-gprs@lists.osmocom.org>;
	Sun, 17 Jul 2022 12:36:19 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by mail.osmocom.org (Postfix) with ESMTPS id D10CC28024
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 17 Jul 2022 12:36:18 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id x91so11946059ede.1
        for <osmocom-net-gprs@lists.osmocom.org>; Sun, 17 Jul 2022 05:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=4ZljV7t9FwAtUPr4uRzoDAr0872e6YAQ/qabZnRMn6w=;
        b=ZCyf61gnbtJD6TpvkGYRRvCdmeDQimzdQkOqTIhYTLxbT5GnEUhWqqVxtacnDvlPNu
         hQiXSfkIFGED8G9lNUoHaWclpRjBNw5VFgXwF1DPi+xeG7LsFR+Z8uft6pWiBQR+x8bQ
         9r4juBXhvnPlhLk2YdCo+6q/4AhmDPmd4I+adZFfn8sXdRPcRtbB07EPjx/cBXnbJ7o7
         j1dH0j3PXWsMBI/AnJ+nvRsTkXxp6edkNwRGEan/T0kwMldlR9Qm19Y773MFaRMZTrXy
         jP5PR2yTI9Q7QgWzavzWBcNbmOGgSKmke3dFAtr7VMFJu3PTxBFO3fYWTNd9IIvCNDzF
         bBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4ZljV7t9FwAtUPr4uRzoDAr0872e6YAQ/qabZnRMn6w=;
        b=Q4dVj7625YgIQk6oDmTfb4UDIpYDY04KU03mwaHd6ify8L5641pEprShwtWmpP/kLT
         REiSTY729Oi/37mLP0ldIvAvIBpAmpIBAkBb3gMhvwSx86LFrckxXoWQTF0J99/qJBWF
         5AMxWEmx6b7OBqQxeZkxglTLfnsDKGJKFwF0FCBkjVDg/jHdKQOa6Tmt6t6GDPlnoe+j
         +TrO06wknzM6g8ja26oEyw1Vkvm/hOnwxpAVebvymfjUX1VNLAp14l7qF91o65SRElfK
         5Zf9+D/Ft6tfLfs2eJuKU9DqhyE7Sx+iupQ4BVP2S/qQ5iS2HE10+9imx9IaU9RlKIG1
         2CQw==
X-Gm-Message-State: AJIora84F0ubYd46FDM/rmZg8YMGSfUivIEyZQ2HojpdLvTPFWs2IGhI
	WQoLLxl0TxF+HNR3pBdQ3S9zSaotLZKknYRBgN/fYVOBQ3pnGg==
X-Google-Smtp-Source: AGRyM1sS9QlUKIIKHGXPH8eeBzdZSegK16y+rEN4dnrQt1jQhxYdeQfmXjPZNVeLfgL9iSUd8W3vI7eU5TZ+8+hv7ng=
X-Received: by 2002:a05:6402:26c3:b0:43a:a846:b2c1 with SMTP id
 x3-20020a05640226c300b0043aa846b2c1mr31414623edd.133.1658061377526; Sun, 17
 Jul 2022 05:36:17 -0700 (PDT)
MIME-Version: 1.0
From: gang chen <thornton.chen247@gmail.com>
Date: Sun, 17 Jul 2022 20:36:06 +0800
Message-ID: <CADKBCPiG1LhtQr9DZjq-67f10bByG32-_0Pui+ayzudwNZ+MMg@mail.gmail.com>
Subject: encapsulation cmd missed in OsmoSGSN 1.9.0
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="0000000000006c5f1c05e3ff7f2d"
X-MailFrom: thornton.chen247@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WKDX4D7VZFCKTSGWUDGVI2HYJC3PPXAE
X-Message-ID-Hash: WKDX4D7VZFCKTSGWUDGVI2HYJC3PPXAE
X-Mailman-Approved-At: Mon, 18 Jul 2022 08:04:51 +0000
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/WKDX4D7VZFCKTSGWUDGVI2HYJC3PPXAE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--0000000000006c5f1c05e3ff7f2d
Content-Type: text/plain; charset="UTF-8"

hi.
i just installed the system followed the instructions on
https://security-bits.de/research/cellular/lab_setup.
but it looks the gb(ns) configuration.command encapsulation  missed in this
version.
 OsmoSGSN(config-ns)# list
  help
  list [with-flags]
  show vty-attributes
  show vty-attributes (application|library|global)
  write terminal
  write file [PATH]
  write memory
  write
  show running-config
  exit
  end
  timer
(tns-block|tns-block-retries|tns-reset|tns-reset-retries|tns-test|tns-alive|tns-alive-retries|tsns-prov|tsns-size-retries|tsns-config-retries|tsns-procedures-retries)
<0-65535>
  nse <0-65535> [ip-sns-role-sgsn]
  no nse <0-65535>
  bind (fr|udp) ID
  no bind ID
  ip-sns-default bind ID
  no ip-sns-default bind ID
OsmoSGSN(config-ns)#

libosmocore/bionic 0.9.0-7 amd64
libosmocore-dbg/bionic 0.9.0-7 amd64
libosmocore-dev/bionic 0.9.0-7 amd64

br,thornton.

--0000000000006c5f1c05e3ff7f2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi.<div>i just installed the system followed the instructi=
ons on=C2=A0<a href=3D"https://security-bits.de/research/cellular/lab_setup=
">https://security-bits.de/research/cellular/lab_setup</a>.</div><div>but i=
t looks the gb(ns) configuration.command encapsulation=C2=A0 missed in this=
 version.</div><div>=C2=A0OsmoSGSN(config-ns)# list</div>=C2=A0 help<br>=C2=
=A0 list [with-flags]<br>=C2=A0 show vty-attributes<br>=C2=A0 show vty-attr=
ibutes (application|library|global)<br>=C2=A0 write terminal<br>=C2=A0 writ=
e file [PATH]<br>=C2=A0 write memory<br>=C2=A0 write<br>=C2=A0 show running=
-config<br>=C2=A0 exit<br>=C2=A0 end<br>=C2=A0 timer (tns-block|tns-block-r=
etries|tns-reset|tns-reset-retries|tns-test|tns-alive|tns-alive-retries|tsn=
s-prov|tsns-size-retries|tsns-config-retries|tsns-procedures-retries) &lt;0=
-65535&gt;<br>=C2=A0 nse &lt;0-65535&gt; [ip-sns-role-sgsn]<br>=C2=A0 no ns=
e &lt;0-65535&gt;<br>=C2=A0 bind (fr|udp) ID<br>=C2=A0 no bind ID<br>=C2=A0=
 ip-sns-default bind ID<br>=C2=A0 no ip-sns-default bind ID<br>OsmoSGSN(con=
fig-ns)#=C2=A0<div><br></div><div>libosmocore/bionic 0.9.0-7 amd64<br>libos=
mocore-dbg/bionic 0.9.0-7 amd64<br>libosmocore-dev/bionic 0.9.0-7 amd64<br>=
</div><div><br></div><div>br,thornton.</div></div>

--0000000000006c5f1c05e3ff7f2d--
