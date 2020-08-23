Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 9B85B24EFC8
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 23 Aug 2020 23:07:17 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 3514914FD92;
	Sun, 23 Aug 2020 21:07:12 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=K6vYfBOK
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22f; helo=mail-lj1-x22f.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by lists.osmocom.org (Postfix) with ESMTP id 43F7814FD7B
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 23 Aug 2020 21:07:06 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id w25so7361382ljo.12
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 23 Aug 2020 14:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6arBl0lPS1hnMkz1vEAq+h7QkdHQGQG8RtgztfsCKzQ=;
 b=K6vYfBOKbLXfoXtjEHKeBFBvhSo689scJYc0J9TZcWih6Rj0nclH+saj36iacF+7v+
 59jIqbE1Hbb6N8dN46TIlDrY7XR1dTmF/rDDWoPKqjDaWqh6h8/R88hns3TvdZ3gFBE2
 wi3/mRMpnh9/LFFyOADz7P0qJ/L3pOz4yGp1n2DzrwXeLqON79BvUNIgWXSYDcd2fQr2
 H23Bb8HccuvPmKSLU8qGsRJMuonjwoDapBu0oVto4mGpci5QF8iihal0kPu0cpoZy3Fl
 9VZNRHN9pl08bwrAdBFubFWFYjWKjiamDeNm5xSGj1f2eLM0hXS81mAopDS2sS78Prw4
 OMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6arBl0lPS1hnMkz1vEAq+h7QkdHQGQG8RtgztfsCKzQ=;
 b=jBv8//xfvnxY1mAkXLbEqlSRWZqx4V50wLnWSPPp+sr+ywjFjc43dwwlqUAO2yCJT9
 gIexvoIVBRSZtXNSs3zJ35PchFEFdeZKV1g13xHsoGCFpZC+iM7fQNGxv5hYap+n7BYU
 REa5Ojy3Ljfz0OC8gQk6B1D4Et7fYe+PZuZ4jaorSQu4V1zXN2MSBv3syqgCOaRQwG3+
 Wi9loC0pA4XnJysUT/COLbNfWTrgl8il2g+VmREbAFLORIGItiz6plbINfLm1zrOwx7b
 n2qfzT1eMhVbB1t3rNLnMgExxsxVFA8LmWxo84Sw5rFddC+vcnX16qxMwt1EwatU1dqs
 HBkQ==
X-Gm-Message-State: AOAM533SdBGjgDvaEQ5Zeed54ylPqfrUMMEgDq31pGO2Li2MhtXYhRhZ
 DywWbGrVKGJVjxm3Kbn4Yqu456Xn67ruWcXUELw=
X-Google-Smtp-Source: ABdhPJzs51j7zhLCkCYvy7JgBAtZKa3zdnnEawMTdQY6Ms2Vb5RCahVWC/pOvd7WZAUphRPDgP8Hv52GR5ZbUdapoxc=
X-Received: by 2002:a2e:7d0b:: with SMTP id y11mr1270350ljc.134.1598216826203; 
 Sun, 23 Aug 2020 14:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
 <20200820225145.GL3544863@nataraja>
 <CAGoraXR0kEsONu0KD918mud94ibPYkqyeyMs_KAj=9yTiBeEsw@mail.gmail.com>
 <20200821123438.GO3544863@nataraja>
 <CAGoraXT6PNFV5JheHqfRxS2MYKmbOt4rDYSzFiMJOqvv+Y=hkA@mail.gmail.com>
 <CAGoraXQTH7rcYpb_g0o6gnXVKPTzcnKZ6HaHYu0hTfMEUK=R=A@mail.gmail.com>
In-Reply-To: <CAGoraXQTH7rcYpb_g0o6gnXVKPTzcnKZ6HaHYu0hTfMEUK=R=A@mail.gmail.com>
From: Papa Tana <papa.tana101@gmail.com>
Date: Mon, 24 Aug 2020 00:06:54 +0300
Message-ID: <CAGoraXRJXL8-omcCrTuBciNTxrcQC6xJVA4hfst5a43aC=HBng@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: Harald Welte <laforge@gnumonks.org>
Content-Type: multipart/alternative; boundary="00000000000033325205ad91da58"
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
Cc: osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

--00000000000033325205ad91da58
Content-Type: text/plain; charset="UTF-8"

Hi,

An update as promised, I tried my workaround:

 - sniff from userspace the echo-request sent by peer SGSN to libgtpnl: OK
 - craft a message (echo-response) and send it to SGSN: OK from another
port, but NOK from 2152
 Whatever I tried (bind to low level socket, Linux helper, etc...), it was
impossible because the SGSN only accepts the message that he recognize that
he has sent, and wait for the exact pair {ip, port} so, it was impossible
for me since it was owned by libgtpnl when I invoke  "gtp-link add".

The previous suggestion is really interesting to me:
* - speak netlink directly to the GTP-U module.*

Yes, there is some library that can speak netlink, but since I want to
learn first how to do it without using a library, I have learned how to
speak netlink to Linux Module (libnl-genl).
I have checked out the message structure(headers, length, type, flags,
sequence number, pid, Command, Data, ....).
I have monitored some stuff by using "nlmon".
And now, I can create a netlink socket as a File Descriptor, craft some
Netlink Message manually, flush it to the kernel and receive some response
from a sample kernel module.

But my question is, and what I need help with, what data does GTP.ko expect
from me when I need to request an add or delete tunnel, since I cannot see
any documentation about Linux GTP module interface.
I'm not requesting a code, but only the message or binary I need to
transport in my netlink socket towards GTP-U Linux module.

Thanks for any help or hint,
Best Regards,

--00000000000033325205ad91da58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>An update as promised, I tried my workaround:<b=
r><br>=C2=A0- sniff from userspace the echo-request sent by peer SGSN to li=
bgtpnl: OK<br>=C2=A0- craft a message (echo-response) and send it to SGSN: =
OK from another port, but NOK from 2152<br>=C2=A0Whatever I tried (bind to =
low level socket, Linux helper, etc...), it was impossible because the SGSN=
 only accepts the message that he recognize that he has sent, and wait for =
the exact pair {ip, port} so, it was impossible for me since it was owned b=
y libgtpnl when I invoke=C2=A0 &quot;gtp-link add&quot;.<br><br>The previou=
s suggestion is really interesting to me:<br><b>=C2=A0- speak netlink direc=
tly to the GTP-U module.</b> <br><br>Yes, there is some library that can sp=
eak netlink, but since I want to learn first how to do it without using a l=
ibrary, I have learned how to speak netlink to Linux Module (libnl-genl).<b=
r>I have checked out the message structure(headers, length, type, flags, se=
quence number, pid, Command, Data, ....).<br>I have monitored some stuff by=
 using &quot;nlmon&quot;.<br>And now, I can create a netlink socket as a Fi=
le Descriptor, craft some Netlink Message manually, flush it to the kernel =
and receive some response from a sample kernel module.<br><br>But my questi=
on is, and what I need help with, what data does GTP.ko expect from me when=
 I need to request an add or delete tunnel, since I cannot see any document=
ation about Linux GTP module interface.<br>I&#39;m not requesting a code, b=
ut only the message or binary I need to transport in my netlink socket towa=
rds GTP-U Linux module.<br><br>Thanks for any help or hint,<br><div>Best Re=
gards,</div><div><br></div></div>

--00000000000033325205ad91da58--
