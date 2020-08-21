Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 680D724DC8E
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 21 Aug 2020 19:05:20 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2BA7414BFC0;
	Fri, 21 Aug 2020 17:05:13 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=kQ60vNZ6
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::241; helo=mail-lj1-x241.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by lists.osmocom.org (Postfix) with ESMTP id AB8B914BF9F
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Aug 2020 17:05:06 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id t23so2630720ljc.3
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Aug 2020 10:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tbsXSye1gxVB24ZroHXnTA1HwqMEbeE/KcWNNi2NX44=;
 b=kQ60vNZ668GVaTdkvbLT21FMbTqqcY3/q5/sb7zmCZQCSG57cJp1QHcWPD879u7Fsy
 3BI1wyaTu17E2QfRnDsFc7xqCrSMuHXqnKVm6PbMhlwtbNyK71g1uDQkKE+eW+oXr/B5
 XnAd92SjYDKxe86R6IEB2I4JHOI9cNC2HwnoOS11kh4Rib+vDGBJqpWaIpKhX6Mz4U/D
 FKiMoU+G+kXhopdIffTkOIuwETpGb8fmb6EHGYoF1zDBu306LAfn+h6VQihuwj1+HZRC
 jkXA9ikkNkXdl0L3J34ZclPQxHt9+bl9GJlYhPUOuiRg29J9taJrACs32Y6UU1KYahPl
 MhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tbsXSye1gxVB24ZroHXnTA1HwqMEbeE/KcWNNi2NX44=;
 b=lyKCqRumMqmKfNHqyh6h20m+FIsdePC08VXobW/MZapSGtm0Qti0gbao9PcZ9zSBpS
 oXK7jdADoo9Wj/dpuTQy4gaSzq44DFN/sZo4pQzLMWMC4VrtOVc24S8+tJR4a2xDtz7U
 eYwBs1iQe8ZXH71e7tNEQ33rJrMjYsld+1ufyIyMFvGZ2C4EAX3sOaUswe11ha6xp9aX
 Qi8dJZjmvpF6xAWHMKroT0sHypiZfqPOmENqW8ONLZKwaaZMl2Y5rzNDdTstGbWG/iJz
 qbZjoN7Uf6fM6xgryH0bWAaGtmS5j8CFPiQb2QV5ES98aMxRvZi+z6sl7azJza4flt9O
 8oeA==
X-Gm-Message-State: AOAM5307jLtea4DHswigK5AsYHeUXr/sk1/iaOwCBz2GAaV79SkQ3sUS
 B1uUoYcXEA4idbBbbI8a/9Hm2BVH+vrlihn/rivGO299a8XrYA==
X-Google-Smtp-Source: ABdhPJwrnyv+vg051Y4jR3l5XZqxjCsQb/L9DJGUz+8tM5islvS1dNhd5SpGp3szDgbR4kEi+7f2kkynAmamqR4beXs=
X-Received: by 2002:a05:651c:1041:: with SMTP id
 x1mr1821800ljm.169.1598029506034; 
 Fri, 21 Aug 2020 10:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
 <20200820225145.GL3544863@nataraja>
 <CAGoraXR0kEsONu0KD918mud94ibPYkqyeyMs_KAj=9yTiBeEsw@mail.gmail.com>
 <20200821123438.GO3544863@nataraja>
 <CAGoraXT6PNFV5JheHqfRxS2MYKmbOt4rDYSzFiMJOqvv+Y=hkA@mail.gmail.com>
In-Reply-To: <CAGoraXT6PNFV5JheHqfRxS2MYKmbOt4rDYSzFiMJOqvv+Y=hkA@mail.gmail.com>
From: Papa Tana <papa.tana101@gmail.com>
Date: Fri, 21 Aug 2020 20:04:54 +0300
Message-ID: <CAGoraXQTH7rcYpb_g0o6gnXVKPTzcnKZ6HaHYu0hTfMEUK=R=A@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: Harald Welte <laforge@gnumonks.org>
Content-Type: multipart/alternative; boundary="0000000000000c42fe05ad663d66"
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

--0000000000000c42fe05ad663d66
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> As can be seen in gtp1u_udp_encap_recv(), there are multiple situations
where
> GTP-U packets are passed to the socket and not handled in the kernel:
> * any GTP-U version !=3D 1
> * any GTP message types !=3D GTP_TPDU
> * any GTP messages for which the kernel doesn't know the TID
> * any GTP messages whose inner IPv4 destination address doesn't match the
TID

Humm, this answer seems very interesting for me.
While trying to make my ggsn work using some Linux helper as I said
previously, on the other hand, I want to try netlink now after your very
clear explanation.

I found that tetrapak is just a building tool, so I can use gen_netlink
because I understand the concept now.

I will ask them on the mailing list, but "in a more general way" (not
erlang only point of view), I have read on wikipedia and it's similar to
Unix Socket, this I am familiar with, I can manage them in userspace.
I understood that netlink is a bit similar, not using filename but PID
instead (IPC: Inter Process Communication), and *sounds even more great
because thanks to netlink, I would be able to discuss to the kernel level
from user space!!!!*
Even though the source code of libgtpnl is open, I have 0 knowledge in C, I
just know the printf() function.

*So if anyone can give a hint on the Concept by managing the GTP linux
module using netlink, just the Concept, not how to do it by code, would be
really appreciated.*

Best Regards,

Le ven. 21 ao=C3=BBt 2020 =C3=A0 16:57, Papa Tana <papa.tana101@gmail.com> =
a =C3=A9crit :

> > At least earlier versions of ergw had support for the kernel GTP-U
> plane, why > not simply use that code?
> My experience with erlang is very limited so far, that's why I was
> attracted with libgtpnl, because I was able to create a GTP tunnel by
> invoking only 2 lines
> # ./gtp-link add
> # ./gtp-tunnel add
>
> > They created https://github.com/travelping/gen_netlink to talk netlink
> from > erlang, including gtpnl support.
> Yes, I saw it. but even trying to build it from tetrapak, I have made som=
e
> search but I'm struggling:
> # tetrapak build check (don't even know what is tetrapak :-) )
>
> The creators of these libraries already answer some questions from me in
> the public erlang mailing list, but about general erlang related question=
s.
> I didn't find any public mailing list to these libraries, so I gave up.
>
> > You cannot do that, sorry.
> > This will obviously not work.
> > You need to manage the socket from your program.
> > You are asking for the impossible.
>
> I totally agree with you but I've got some idea this afternoon as a
> workaround.
> I think I can forward the echo-request that I received on my network
> interface (owned by gtpnl at GTP-U) to my Erlang program by using some
> Linux helper like
> # tcpdump
> # replay the traffic by tcpreplay to another interface owned by my Erlang
> program
> # or I can Write them to a Linux named pipe fifo, and get it from Erlang
>
> By this way, I would be able to craft an echo-response for GTP-U I think.
>
> Those steps are not related to libgtpnl anymore, so would be off-topic.
>
> But Clarifications regarding libgtpnl is very clear for me now.
>
> Thank you,
>
> P.S: I will update here if this echo-response at GTP-U side from my erlan=
g
> works for me. Have a nice day.
>
> Le ven. 21 ao=C3=BBt 2020 =C3=A0 15:40, Harald Welte <laforge@gnumonks.or=
g> a
> =C3=A9crit :
>
>> On Fri, Aug 21, 2020 at 09:53:34AM +0300, Papa Tana wrote:
>> > But for GTP-U, I was trying to listen in port 2152 several times, and =
it
>> > yields an error that I cannot listen on it, port 2152 is already used.
>>
>> You cannot do that, sorry.
>>
>> > > You manage all your UDP sockets.
>> > > your application is responsible for receiving and responding to any
>> GTP-U
>> > packets there.
>> > As I said, I am using Erlang as a userspace program.
>> > And when I create a tunnel, I "just" send a basic command exec to the
>> Linux
>> > by open_port like this:
>>
>> This will obviously not work.  You need to manage the socket from your
>> program.
>>
>> IF it's erlang, you either have to speak netlink directly from within
>> Erlang,
>> or you need to add some native functions for calling libgtpnl.
>>
>> > So I don't have any idea on how to listen to 2152 as my Erlang program
>> is
>> > forbidden to listen on it when libgtpnl is invoked.
>>
>> You are asking for the impossible.  You need to open the socket from
>> within your
>> program. You cannot crate a second socket for what you are trying to do.
>>
>> At least earlier versions of ergw had support for the kernel GTP-U plane=
,
>> why not simply use that code?
>>
>> They created https://github.com/travelping/gen_netlink
>> to talk netlink from erlang, including gtpnl support.
>>
>> --
>> - Harald Welte <laforge@gnumonks.org>
>> http://laforge.gnumonks.org/
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>> "Privacy in residential applications is a desirable marketing option."
>>                                                   (ETSI EN 300 175-7 Ch.
>> A6)
>>
>

--0000000000000c42fe05ad663d66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; As can be seen in gtp1u_udp_encap_recv(), there are m=
ultiple situations where<br>&gt; GTP-U packets are passed to the socket and=
 not handled in the kernel:<br>&gt; * any GTP-U version !=3D 1<br>&gt; * an=
y GTP message types !=3D GTP_TPDU<br>&gt; * any GTP messages for which the =
kernel doesn&#39;t know the TID<br>&gt; * any GTP messages whose inner IPv4=
 destination address doesn&#39;t match the TID<br><br>Humm, this answer see=
ms very interesting for me.<br>While trying to make my ggsn work using some=
 Linux helper as I said previously, on the other hand, I want to try netlin=
k now after your very clear explanation.<br><br>I found that tetrapak is ju=
st a building tool, so I can use gen_netlink because I understand the conce=
pt now.<br><br>I will ask them on the mailing list, but &quot;in a more gen=
eral way&quot; (not erlang only point of view), I have read on wikipedia an=
d it&#39;s similar to Unix Socket, this I am familiar with, I can manage th=
em in userspace.<br>I understood that netlink is a bit similar, not using f=
ilename but PID instead (IPC: Inter Process Communication), and <b>sounds e=
ven more great because thanks to netlink, I would be able to discuss to the=
 kernel level from user space!!!!</b><br>Even though the source code of lib=
gtpnl is open, I have 0 knowledge in C, I just know the printf() function.<=
br><br><b>So if anyone can give a hint on the Concept by managing the GTP l=
inux module using netlink, just the Concept, not how to do it by code, woul=
d be really appreciated.</b><br><br>Best Regards,</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 21 ao=C3=BBt =
2020 =C3=A0=C2=A016:57, Papa Tana &lt;<a href=3D"mailto:papa.tana101@gmail.=
com">papa.tana101@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">&=
gt; At least earlier versions of ergw had support for the kernel GTP-U plan=
e, why &gt; not simply use that code?<br>My experience with erlang is very =
limited so far, that&#39;s why I was attracted with libgtpnl, because I was=
 able to create a GTP tunnel by invoking only 2 lines <br>	# ./gtp-link add=
</div><div dir=3D"ltr"># ./gtp-tunnel add<br><br>&gt; They created <a href=
=3D"https://github.com/travelping/gen_netlink" target=3D"_blank">https://gi=
thub.com/travelping/gen_netlink</a> to talk netlink from &gt; erlang, inclu=
ding gtpnl support.<br>Yes, I saw it. but even trying to build it from tetr=
apak, I have made some search but I&#39;m struggling:<br># tetrapak build c=
heck (don&#39;t even know what is tetrapak :-) )<br><br>The creators of the=
se libraries already answer some questions from me in the public erlang mai=
ling list, but about general erlang related questions. I didn&#39;t find an=
y public mailing list to these libraries, so I gave up.<br><br>&gt; You can=
not do that, sorry.<br>&gt; This will obviously not work.=C2=A0 <br></div><=
div dir=3D"ltr">&gt; You need to manage the socket from your program.<br>&g=
t; You are asking for the impossible.<br><br>I totally agree with you but I=
&#39;ve got some idea this afternoon as a workaround.<br>I think I can forw=
ard the echo-request that I received on my network interface (owned by gtpn=
l at GTP-U) to my Erlang program by using some Linux helper like <br>	# tcp=
dump<br>	# replay the traffic by tcpreplay to another interface owned by my=
 Erlang program<br>	# or I can Write them to a Linux named pipe fifo, and g=
et it from Erlang<br>	<br>By this way, I would be able to craft an echo-res=
ponse for GTP-U I think.</div><div dir=3D"ltr"><br>Those steps are not rela=
ted to libgtpnl anymore, so would be off-topic.<br><br>But Clarifications r=
egarding libgtpnl is very clear for me now.<br><br>Thank you,</div><div dir=
=3D"ltr"><br></div><div>P.S: I will update here if this echo-response at GT=
P-U side from my erlang works for me. Have a nice day.</div><div><br></div>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ve=
n. 21 ao=C3=BBt 2020 =C3=A0=C2=A015:40, Harald Welte &lt;<a href=3D"mailto:=
laforge@gnumonks.org" target=3D"_blank">laforge@gnumonks.org</a>&gt; a =C3=
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
</blockquote></div>

--0000000000000c42fe05ad663d66--
