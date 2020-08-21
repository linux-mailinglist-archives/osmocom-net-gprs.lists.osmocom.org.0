Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 2892624CE4A
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 21 Aug 2020 08:53:56 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 1FF6214A67B;
	Fri, 21 Aug 2020 06:53:53 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=JVQuCyXY
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::230; helo=mail-lj1-x230.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by lists.osmocom.org (Postfix) with ESMTP id 05B3814A659
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Aug 2020 06:53:46 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id h19so682645ljg.13
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 23:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q7IxOl4X0cT3wtb34Z2DD5b/TWlEqpGqzSziSlL62Uc=;
 b=JVQuCyXYyQx8i6F36ph5vpqRmaOZl+uCsx+d5oCMf/UY5nEetzLYEg7xqS8AAulX8s
 2Ysd7lc2sULGRyAMXuz4omzSD1dF1W88NVLYK34p5O6jmecmR770N9Xb0DiSQ6S/RQcV
 +nKbGuNMjEZB1NpSHyNJCnPuDkkZstaUxtx/aB6pW8+sBzJm9ehlpm7adgOl+zsN7zqg
 Huwsxb1HP8gEpy0rqI29RhiPbGY0sadgVL1vPqlBjm0AjR3je8owp5mrDhL3PGKdAZ2p
 Ymx9IBjDrWX4QMmdzSLAMiJhKsvzp1PVvyjSkRb0aUkJmJgm7y4J+E00Pjci8NeVas4m
 8cXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q7IxOl4X0cT3wtb34Z2DD5b/TWlEqpGqzSziSlL62Uc=;
 b=ca7NNkDRZ4ogrwoazI1faanu8moR0OsfyqGL6LPAPnNS1+vK7Dz0tEujzHoyz1Bi/w
 VLsVTU4aa76JTEnCPmNe27d0glFQsya8x5HBm3CTAmAjyW8CJ87WZZu2BxZ1/anAYc0b
 6gHmlXa1jjwKg8MelnP4vtQF1yr9d5FL3UsLr06AnK0pzt5CZUl8qRW47zGlGUyXj20E
 vSaCLWvmk5CSxRzdzQDRo2FuWcartgNs09EmDbfS23baeJlfZoq6+oeRmOeTSUzNBT//
 r2L5ZARnCS0rWQ/Ni3MelAYBhx79vzmTJhZdXR8Ucg3RkhDdmGQmL1prfR/ygz0lLFY9
 2PDw==
X-Gm-Message-State: AOAM533061kj4c24cT/NWPGgYqqUsU6cmTWyV4bp4qydU8pGwnwd2Z3U
 B0bzQyJ14NkPJXkWA0eVr+yGMkdAF1BMuyfCsWM=
X-Google-Smtp-Source: ABdhPJxbMo6TP3feX0T80+Jl2xgABivKB9Dsrthmw2wAlPNT0UneGHS2b2Nea4d6acHc/PaMyKkQMUeCMb0DqH9f/4c=
X-Received: by 2002:a2e:b5c3:: with SMTP id g3mr917404ljn.63.1597992826134;
 Thu, 20 Aug 2020 23:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
 <20200820225145.GL3544863@nataraja>
In-Reply-To: <20200820225145.GL3544863@nataraja>
From: Papa Tana <papa.tana101@gmail.com>
Date: Fri, 21 Aug 2020 09:53:34 +0300
Message-ID: <CAGoraXR0kEsONu0KD918mud94ibPYkqyeyMs_KAj=9yTiBeEsw@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: Harald Welte <laforge@gnumonks.org>
Content-Type: multipart/alternative; boundary="000000000000c163c305ad5db21f"
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

--000000000000c163c305ad5db21f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> It would be great if you could share your GGSN code base with the
community,
> like we share the kernel GTP-U and all of Osmocom with you.

Sure, as for now, I' am still in the early stage, and the code is pretty
dirty as I just wanted to make it work first. I'm not really a true
programmer, but I was amazed by OSMOGGSN years ago, and I wanted to
understand how it is working, so I learned Erlang by June 2020, and this is
my first real project. It's a draft yet.

> it is very likely your lack of sending any GTP echo responses.
Yes, this is what I was saying.
Look, for GTP-C, I am listening in Port 2123. it's free for my userspace
program.
But for GTP-U, I was trying to listen in port 2152 several times, and it
yields an error that I cannot listen on it, port 2152 is already used.

> You manage all your UDP sockets.
> your application is responsible for receiving and responding to any GTP-U
packets there.
As I said, I am using Erlang as a userspace program.
And when I create a tunnel, I "just" send a basic command exec to the Linux
by open_port like this:

Gtp_Tunnel_add =3D "gtp-tunnel add gtp1 v1 " ++ integer_to_list(Tei_u_peer)
++ " "++ integer_to_list(Tei_u_local) ++" " ++ Pdp_ms_address ++ " " ++
Sgsn_addr,
=3D=3D> it gives me a string something like "gtp-tunnel add gt1 v1 123456
654321 192.168.1.82 172.23.0.1"
then, I execute it
io:fwrite("~p~n", [osexec:cmd(Gtp_Tunnel_add)])

The same when deleting the tunnel.
So I don't have any idea on how to listen to 2152 as my Erlang program is
forbidden to listen on it when libgtpnl is invoked.


> I don't really understand what you are trying to say here.  OsmoSGSN is
> a "real" SGSN and it speaks exactly the same 3GPP protocols like other
SGSNs.
> The kernel GTP-U plane doesn't care about what your SGSN is, or what your
GGSN is.
Allow me to give a short explanation.
Between 2 lInux, I create some pair like this:
Linux A: gtp-tunnel add gtpa v1 200 100 172.99.0.2 172.0.0.2
Linux B: gtp-tunnel add gtpb v1 100 200 172.99.0.1 172.0.0.1
Now, when Linux A ping 172.99.0.1, packet is encapsulated with
sgsn_addr_src =3D 172.0.0.1 and sgsn_addr_dest =3D 172.0.0.2

But with my linux ggsn and a real SGSN:
Linux A ggsn: gtp-tunnel add gtpa v1 200 100 172.99.0.2 172.0.0.2
Real SGSN: Is the SGSN doing something like this? gtp-tunnel add gtpb v1
100 200 **172.99.0.1**** 172.0.0.1 <<< this part, I was wondering.
Because when the MS wants to send traffic, e.g browse to youtube, the
packet from MS has the IP of youtube as destination.
So, I assume it needs to match to the "ms_addr" parameter in some kind of
gtp-tunnel parameter at SGSN side.
I know SGSN is not using libgtpnl, but I want to make sure that is it okay
if I just create the gtp-tunnel on ggsn side, and I don't care about what
SGSN is doing.
like this:
"gtp-tunnel add gtpa v1 200 100 ms_addr sgsn_addr"
And with this, is my tunnel UP? Because as I said, the SGSN is saying he
detects that the path on GGSN was down.

Best Regards,

Le ven. 21 ao=C3=BBt 2020 =C3=A0 02:00, Harald Welte <laforge@gnumonks.org>=
 a =C3=A9crit :

> On Thu, Aug 20, 2020 at 12:49:20PM +0300, Papa Tana wrote:
> >  - upon receipt of my creade_pdp_context_response accepted, the SGSN no=
w
> > try to establish a Tunnel with the given TEID towards my GGSN
> >  - but I cannot see anything on my GTPU-side in ggsn, apart of several
> > echo-request message from SGSN
> >  - Sure, SGSN try to test connectivity to my ggsn GTPU by using
> > echo-request, but no response
> >  - I don't know maybe because of no response, or because of SGSN alert =
me
> > with an error gtpu-sm-cause-update-ggsn-path-failure, the SGSN decide t=
o
> > send a delete request
>
> it is very likely your lack of sending any GTP echo responses.
>
> >  - 1) At GTP-C, I can implement all messages(echo-response,
> > create-response, delete-response) but at GTPU-side, as the port is used
> by
> > libgtpnl, I cannot implement an echo-response at all
>
> Why would you make such an assumption?  The UDP socket for GTPU is opened
> by your application in userspace.  You own it.  The fact that you passed
> into
> libgtpnl as an argument to gtp_dev_create() doesn't mean you shouldn't us=
e
> that
> socket.  To the contrary, your application is responsible for receiving a=
nd
> responding to any GTP-U packets there.
>
> > =3D=3D> So, do libgtpnl is
> > supposed to answer or not to an echo-response received from a SGSN at
> > GTPU-level?
>
> libgtpnl is (as the 'nl' in the name applies) a library to help you use
> the netlink
> interface to configure the GTP-U infrastructure in the kernel.  It doesn'=
t
> ever
> implement or touch any GTP-U itself.
>
> >  - 2) When I tried a Linux-to-Linux setup, it worked because I specifie=
d
> > the ms_addr and sgsn_addr in the 02 Linux Host.
> >  But as I cannot configure anything about the tunnel at SGSN-side(done
> > automatically by SGSN), I can only create the tunnel at ggsn-side thank=
s
> to
> > my user space program, by passing the TEID and ms_addr input to libgtpn=
l.
> > Does it mean that libgtpnl only complies with OpenGGSN, ergw, and
> > OpenAirInterface but not intended to ber used with a real SGSN?
>
> I don't really understand what you are trying to say here.  OsmoSGSN is
> a "real" SGSN and it speaks excatly the same 3GPP protocols like other
> SGSNs.
> The kernel GTP-U plane doesn't care about what your SGSN is, or what your
> GGSN is.
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

--000000000000c163c305ad5db21f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br><br>&gt; It would be great if you =
could share your GGSN code base with the community,<br>&gt; like we share t=
he kernel GTP-U and all of Osmocom with you.<br><br>Sure, as for now, I&#39=
; am still in the early stage, and the code is pretty dirty as I just wante=
d to make it work first. I&#39;m not really a true programmer, but I was am=
azed by OSMOGGSN years ago, and I wanted to understand how it is working, s=
o I learned Erlang by June 2020, and this is my first real project. It&#39;=
s a draft yet.<br><br>&gt; it is very likely your lack of sending any GTP e=
cho responses.<br>Yes, this is what I was saying.<br>Look, for GTP-C, I am =
listening in Port 2123. it&#39;s free for my userspace program.<br>But for =
GTP-U, I was trying to listen in port 2152 several times, and it yields an =
error that I cannot listen on it, port 2152 is already used.<br><br>&gt; Yo=
u manage all your UDP sockets.<br>&gt; your application is responsible for =
receiving and responding to any GTP-U packets there.<br>As I said, I am usi=
ng Erlang as a userspace program.<br>And when I create a tunnel, I &quot;ju=
st&quot; send a basic command exec to the Linux by open_port like this:<br>=
<br>	Gtp_Tunnel_add =3D &quot;gtp-tunnel add gtp1 v1 &quot; ++ integer_to_l=
ist(Tei_u_peer) ++ &quot; &quot;++ integer_to_list(Tei_u_local) ++&quot; &q=
uot; ++ Pdp_ms_address ++ &quot; &quot; ++ Sgsn_addr,<br>	=3D=3D&gt; it giv=
es me a string something like &quot;gtp-tunnel add gt1 v1 123456 654321 192=
.168.1.82 172.23.0.1&quot;<br>	then, I execute it<br>	io:fwrite(&quot;~p~n&=
quot;, [osexec:cmd(Gtp_Tunnel_add)])<br><br>The same when deleting the tunn=
el.<br>So I don&#39;t have any idea on how to listen to 2152 as my Erlang p=
rogram is forbidden to listen on it when libgtpnl is invoked.<br><br><br>&g=
t; I don&#39;t really understand what you are trying to say here.=C2=A0 Osm=
oSGSN is<br>&gt; a &quot;real&quot; SGSN and it speaks exactly the same 3GP=
P protocols like other SGSNs.<br>&gt; The kernel GTP-U plane doesn&#39;t ca=
re about what your SGSN is, or what your GGSN is.<br>Allow me to give a sho=
rt explanation.<br>Between 2 lInux, I create some pair like this:<br>Linux =
A: gtp-tunnel add gtpa v1 200 100 172.99.0.2 172.0.0.2<br>Linux B: gtp-tunn=
el add gtpb v1 100 200 172.99.0.1 172.0.0.1<br>Now, when Linux A ping 172.9=
9.0.1, packet is encapsulated with sgsn_addr_src =3D 172.0.0.1 and sgsn_add=
r_dest =3D 172.0.0.2<br><br>But with my linux ggsn and a real SGSN:<br>Linu=
x A ggsn: gtp-tunnel add gtpa v1 200 100 172.99.0.2 172.0.0.2<br>Real SGSN:=
 Is the SGSN doing something like this? gtp-tunnel add gtpb v1 100 200 **17=
2.99.0.1**** 172.0.0.1 &lt;&lt;&lt; this part, I was wondering.<br>Because =
when the MS wants to send traffic, e.g browse to youtube, the packet from M=
S has the IP of youtube as destination.<br>So, I assume it needs to match t=
o the &quot;ms_addr&quot; parameter in some kind of gtp-tunnel parameter at=
 SGSN side.<br>I know SGSN is not using libgtpnl, but I want to make sure t=
hat is it okay if I just create the gtp-tunnel on ggsn side, and I don&#39;=
t care about what SGSN is doing.<br>like this:<br>&quot;gtp-tunnel add gtpa=
 v1 200 100 ms_addr sgsn_addr&quot;<br>And with this, is my tunnel UP? Beca=
use as I said, the SGSN is saying he detects that the path on GGSN was down=
.<br><br>Best Regards,<br></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Le=C2=A0ven. 21 ao=C3=BBt 2020 =C3=A0=C2=A002:00,=
 Harald Welte &lt;<a href=3D"mailto:laforge@gnumonks.org">laforge@gnumonks.=
org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Thu, Aug 20, 2020 at 12:49:20PM +0300, Papa Tana wrote:<=
br>
&gt;=C2=A0 - upon receipt of my creade_pdp_context_response accepted, the S=
GSN now<br>
&gt; try to establish a Tunnel with the given TEID towards my GGSN<br>
&gt;=C2=A0 - but I cannot see anything on my GTPU-side in ggsn, apart of se=
veral<br>
&gt; echo-request message from SGSN<br>
&gt;=C2=A0 - Sure, SGSN try to test connectivity to my ggsn GTPU by using<b=
r>
&gt; echo-request, but no response<br>
&gt;=C2=A0 - I don&#39;t know maybe because of no response, or because of S=
GSN alert me<br>
&gt; with an error gtpu-sm-cause-update-ggsn-path-failure, the SGSN decide =
to<br>
&gt; send a delete request<br>
<br>
it is very likely your lack of sending any GTP echo responses.<br>
<br>
&gt;=C2=A0 - 1) At GTP-C, I can implement all messages(echo-response,<br>
&gt; create-response, delete-response) but at GTPU-side, as the port is use=
d by<br>
&gt; libgtpnl, I cannot implement an echo-response at all <br>
<br>
Why would you make such an assumption?=C2=A0 The UDP socket for GTPU is ope=
ned<br>
by your application in userspace.=C2=A0 You own it.=C2=A0 The fact that you=
 passed into<br>
libgtpnl as an argument to gtp_dev_create() doesn&#39;t mean you shouldn&#3=
9;t use that<br>
socket.=C2=A0 To the contrary, your application is responsible for receivin=
g and<br>
responding to any GTP-U packets there.<br>
<br>
&gt; =3D=3D&gt; So, do libgtpnl is<br>
&gt; supposed to answer or not to an echo-response received from a SGSN at<=
br>
&gt; GTPU-level?<br>
<br>
libgtpnl is (as the &#39;nl&#39; in the name applies) a library to help you=
 use the netlink<br>
interface to configure the GTP-U infrastructure in the kernel.=C2=A0 It doe=
sn&#39;t ever<br>
implement or touch any GTP-U itself.<br>
<br>
&gt;=C2=A0 - 2) When I tried a Linux-to-Linux setup, it worked because I sp=
ecified<br>
&gt; the ms_addr and sgsn_addr in the 02 Linux Host.<br>
&gt;=C2=A0 But as I cannot configure anything about the tunnel at SGSN-side=
(done<br>
&gt; automatically by SGSN), I can only create the tunnel at ggsn-side than=
ks to<br>
&gt; my user space program, by passing the TEID and ms_addr input to libgtp=
nl.<br>
&gt; Does it mean that libgtpnl only complies with OpenGGSN, ergw, and<br>
&gt; OpenAirInterface but not intended to ber used with a real SGSN?<br>
<br>
I don&#39;t really understand what you are trying to say here.=C2=A0 OsmoSG=
SN is<br>
a &quot;real&quot; SGSN and it speaks excatly the same 3GPP protocols like =
other SGSNs.<br>
The kernel GTP-U plane doesn&#39;t care about what your SGSN is, or what yo=
ur GGSN is.<br>
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

--000000000000c163c305ad5db21f--
