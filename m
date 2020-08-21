Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1D2FF24D6B7
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 21 Aug 2020 15:57:27 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9444114B8F2;
	Fri, 21 Aug 2020 13:57:21 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=pgM0Qi1O
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::233; helo=mail-lj1-x233.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by lists.osmocom.org (Postfix) with ESMTP id 9F2C414B8D0
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Aug 2020 13:57:16 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id g6so1933708ljn.11
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Aug 2020 06:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+lbI1Py8G2bZBlZezEOXOoqNywKTCjpKcgV+5dx5QIk=;
 b=pgM0Qi1ONfLaVjMo+jBZjLO4wtO4wx0ph8uVs9/j/zgEFD9Otok+IA1dRg2fJOkAc8
 0DMXImyKOxvkh2ZhnaQfq/AOgVwRfQvhgkmgHjjNlOpgZNRIinipDLQPaGjJjNg9swSg
 7Xjbqa5nB5ZjgxJgGU7dIlTDzVcYWXfSWMEwuZ702z/719f2PNdhh6m3t/DCv47R7IYK
 1GpgWHuFuLHdoPbqeVCedpqlgSp8hs7oJEsCm5dIa3vqT0kVQ2MaiOVuPJ0W56Yt4hJI
 Qo2MnY2KBFhHp8iiSWYeHDlyh2JSmMLwtqcOplsNwzn/lSMj1QSO39z8QUAYISJtADXc
 eWpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+lbI1Py8G2bZBlZezEOXOoqNywKTCjpKcgV+5dx5QIk=;
 b=J5eyaN3u9ViLohAt1NMuAXcEbEq2D9ZiDLY9HsIsel12nZyznJgyMerotgVVhOFG+o
 xME2hny6/Xe/LuQGOGUQIVqnt0W5jAAi+DKssvJIx9lKSQDyQuhP9LOLr2VpMTd5nMqZ
 j7LdLegEdWxbarS2q5NATwKOArxe7AoGZLvyJJOtvYAfJxdO8PqemD4B5W9E1LoGtxlA
 YN6o/mbA7y0CFMNpX0WErKFwc4tMODq4zWaCzkDcCITLnx1P/JP1jS4hMOjZuhZB7qXa
 uVuql2e8pSCzlpQTuoDNA+cP/0GOVA0lL97wcgodUrTiYNxxZmJ7qeGDCnJfIUDn7dxB
 gWfQ==
X-Gm-Message-State: AOAM530N9+/XW8G2/0s6sINsITM+y23MGUmbHQ134tIFH4fsKarhSKau
 kizX5GrSw8CH6hvzHvH7soIPJYJu39TF+jR0Rw8=
X-Google-Smtp-Source: ABdhPJyjvLwGOOEDd1Iw0Ii7U7S5JdquDvCGAnqf8ZNSlspxX3IGXx7XCizPD1ZLx3FXFVapUqiZeUoUZ74kRRNM814=
X-Received: by 2002:a2e:990c:: with SMTP id v12mr1671438lji.449.1598018235332; 
 Fri, 21 Aug 2020 06:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
 <20200820225145.GL3544863@nataraja>
 <CAGoraXR0kEsONu0KD918mud94ibPYkqyeyMs_KAj=9yTiBeEsw@mail.gmail.com>
 <20200821123438.GO3544863@nataraja>
In-Reply-To: <20200821123438.GO3544863@nataraja>
From: Papa Tana <papa.tana101@gmail.com>
Date: Fri, 21 Aug 2020 16:57:03 +0300
Message-ID: <CAGoraXT6PNFV5JheHqfRxS2MYKmbOt4rDYSzFiMJOqvv+Y=hkA@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: Harald Welte <laforge@gnumonks.org>
Content-Type: multipart/alternative; boundary="00000000000042f9b805ad639dbe"
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

--00000000000042f9b805ad639dbe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> At least earlier versions of ergw had support for the kernel GTP-U plane,
why > not simply use that code?
My experience with erlang is very limited so far, that's why I was
attracted with libgtpnl, because I was able to create a GTP tunnel by
invoking only 2 lines
# ./gtp-link add
# ./gtp-tunnel add

> They created https://github.com/travelping/gen_netlink to talk netlink
from > erlang, including gtpnl support.
Yes, I saw it. but even trying to build it from tetrapak, I have made some
search but I'm struggling:
# tetrapak build check (don't even know what is tetrapak :-) )

The creators of these libraries already answer some questions from me in
the public erlang mailing list, but about general erlang related questions.
I didn't find any public mailing list to these libraries, so I gave up.

> You cannot do that, sorry.
> This will obviously not work.
> You need to manage the socket from your program.
> You are asking for the impossible.

I totally agree with you but I've got some idea this afternoon as a
workaround.
I think I can forward the echo-request that I received on my network
interface (owned by gtpnl at GTP-U) to my Erlang program by using some
Linux helper like
# tcpdump
# replay the traffic by tcpreplay to another interface owned by my Erlang
program
# or I can Write them to a Linux named pipe fifo, and get it from Erlang

By this way, I would be able to craft an echo-response for GTP-U I think.

Those steps are not related to libgtpnl anymore, so would be off-topic.

But Clarifications regarding libgtpnl is very clear for me now.

Thank you,

P.S: I will update here if this echo-response at GTP-U side from my erlang
works for me. Have a nice day.

Le ven. 21 ao=C3=BBt 2020 =C3=A0 15:40, Harald Welte <laforge@gnumonks.org>=
 a =C3=A9crit :

> On Fri, Aug 21, 2020 at 09:53:34AM +0300, Papa Tana wrote:
> > But for GTP-U, I was trying to listen in port 2152 several times, and i=
t
> > yields an error that I cannot listen on it, port 2152 is already used.
>
> You cannot do that, sorry.
>
> > > You manage all your UDP sockets.
> > > your application is responsible for receiving and responding to any
> GTP-U
> > packets there.
> > As I said, I am using Erlang as a userspace program.
> > And when I create a tunnel, I "just" send a basic command exec to the
> Linux
> > by open_port like this:
>
> This will obviously not work.  You need to manage the socket from your
> program.
>
> IF it's erlang, you either have to speak netlink directly from within
> Erlang,
> or you need to add some native functions for calling libgtpnl.
>
> > So I don't have any idea on how to listen to 2152 as my Erlang program =
is
> > forbidden to listen on it when libgtpnl is invoked.
>
> You are asking for the impossible.  You need to open the socket from
> within your
> program. You cannot crate a second socket for what you are trying to do.
>
> At least earlier versions of ergw had support for the kernel GTP-U plane,
> why not simply use that code?
>
> They created https://github.com/travelping/gen_netlink
> to talk netlink from erlang, including gtpnl support.
>
> --
> - Harald Welte <laforge@gnumonks.org>
> http://laforge.gnumonks.org/
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch.
> A6)
>

--00000000000042f9b805ad639dbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">&gt; At least earlier versions of ergw ha=
d support for the kernel GTP-U plane, why &gt; not simply use that code?<br=
>My experience with erlang is very limited so far, that&#39;s why I was att=
racted with libgtpnl, because I was able to create a GTP tunnel by invoking=
 only 2 lines <br>	# ./gtp-link add</div><div dir=3D"ltr"># ./gtp-tunnel ad=
d<br><br>&gt; They created <a href=3D"https://github.com/travelping/gen_net=
link">https://github.com/travelping/gen_netlink</a> to talk netlink from &g=
t; erlang, including gtpnl support.<br>Yes, I saw it. but even trying to bu=
ild it from tetrapak, I have made some search but I&#39;m struggling:<br># =
tetrapak build check (don&#39;t even know what is tetrapak :-) )<br><br>The=
 creators of these libraries already answer some questions from me in the p=
ublic erlang mailing list, but about general erlang related questions. I di=
dn&#39;t find any public mailing list to these libraries, so I gave up.<br>=
<br>&gt; You cannot do that, sorry.<br>&gt; This will obviously not work.=
=C2=A0 <br></div><div dir=3D"ltr">&gt; You need to manage the socket from y=
our program.<br>&gt; You are asking for the impossible.<br><br>I totally ag=
ree with you but I&#39;ve got some idea this afternoon as a workaround.<br>=
I think I can forward the echo-request that I received on my network interf=
ace (owned by gtpnl at GTP-U) to my Erlang program by using some Linux help=
er like <br>	# tcpdump<br>	# replay the traffic by tcpreplay to another int=
erface owned by my Erlang program<br>	# or I can Write them to a Linux name=
d pipe fifo, and get it from Erlang<br>	<br>By this way, I would be able to=
 craft an echo-response for GTP-U I think.</div><div dir=3D"ltr"><br>Those =
steps are not related to libgtpnl anymore, so would be off-topic.<br><br>Bu=
t Clarifications regarding libgtpnl is very clear for me now.<br><br>Thank =
you,</div><div dir=3D"ltr"><br></div><div>P.S: I will update here if this e=
cho-response at GTP-U side from my erlang works for me. Have a nice day.</d=
iv><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">Le=C2=A0ven. 21 ao=C3=BBt 2020 =C3=A0=C2=A015:40, Harald Welte &lt;=
<a href=3D"mailto:laforge@gnumonks.org">laforge@gnumonks.org</a>&gt; a =C3=
=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n Fri, Aug 21, 2020 at 09:53:34AM +0300, Papa Tana wrote:<br>
&gt; But for GTP-U, I was trying to listen in port 2152 several times, and =
it<br>
&gt; yields an error that I cannot listen on it, port 2152 is already used.=
<br>
<br>
You cannot do that, sorry.<br>
<br>
&gt; &gt; You manage all your UDP sockets.<br>
&gt; &gt; your application is responsible for receiving and responding to a=
ny GTP-U<br>
&gt; packets there.<br>
&gt; As I said, I am using Erlang as a userspace program.<br>
&gt; And when I create a tunnel, I &quot;just&quot; send a basic command ex=
ec to the Linux<br>
&gt; by open_port like this:<br>
<br>
This will obviously not work.=C2=A0 You need to manage the socket from your=
 program.<br>
<br>
IF it&#39;s erlang, you either have to speak netlink directly from within E=
rlang,<br>
or you need to add some native functions for calling libgtpnl.<br>
<br>
&gt; So I don&#39;t have any idea on how to listen to 2152 as my Erlang pro=
gram is<br>
&gt; forbidden to listen on it when libgtpnl is invoked.<br>
<br>
You are asking for the impossible.=C2=A0 You need to open the socket from w=
ithin your<br>
program. You cannot crate a second socket for what you are trying to do.<br=
>
<br>
At least earlier versions of ergw had support for the kernel GTP-U plane,<b=
r>
why not simply use that code?<br>
<br>
They created <a href=3D"https://github.com/travelping/gen_netlink" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/travelping/gen_netlink</a><=
br>
to talk netlink from erlang, including gtpnl support.<br>
<br>
-- <br>
- Harald Welte &lt;<a href=3D"mailto:laforge@gnumonks.org" target=3D"_blank=
">laforge@gnumonks.org</a>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a h=
ref=3D"http://laforge.gnumonks.org/" rel=3D"noreferrer" target=3D"_blank">h=
ttp://laforge.gnumonks.org/</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
&quot;Privacy in residential applications is a desirable marketing option.&=
quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (ETSI EN 300 175-7 Ch. A6)<br>
</blockquote></div></div>

--00000000000042f9b805ad639dbe--
