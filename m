Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id EABCD43F7B5
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 29 Oct 2021 09:13:51 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 59B24216333;
	Fri, 29 Oct 2021 07:13:48 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=PwMnjdeA
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by lists.osmocom.org (Postfix) with ESMTP id 5C27521631C
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 29 Oct 2021 07:13:37 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id z20so35655641edc.13
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 29 Oct 2021 00:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6T0r+lMyuI8OByQ9guJd/zfmXskinuejtOMC2Z2Z3m8=;
 b=PwMnjdeAca51izRg1qKemn8wj+kCXAPy3QsYf7NzZMgzDzPhuUrpuSRpgRbz/Sh13F
 SkmgghFCjqikr5VKZZljCTphbUeeRB2sjOKaqz3oHog8JcijPwhdA96fqiva/EZP2eGk
 Ulgg5lrXt+TD7Rn5SxuLwQzT99inDrvJ3Uhb7kVY7VBGFxvstdaxfPQu85Adzj7OQSOX
 zCamHJ8Ahy5s01SxDbwUpAkGtJMYC2QztnfKl3pZXiAgqLgpEIUxVQ/NRacpdh5uQBLP
 x/2QVb5wxPjCIMMfgaW+CamK1Lrb608vbFzDCGe/OeDUdyLVaH7MRplZjH8UL0axq05l
 xX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6T0r+lMyuI8OByQ9guJd/zfmXskinuejtOMC2Z2Z3m8=;
 b=BY9YOrrp5r08Lj60i4eWAUZsVnf5pazB58SpdNr5rZxkPS7mFCB4riOBgBYiA/CpIE
 mysDwyoQEvqBQtuBMyMgIco/nawzARZ5ZI8syCwhH4GXos5KpPx0SBhvGxvlfC/hGLMG
 sfzlh9rZaBQvMtc1/VWp4JJAcodnzklvsabgXPWwNdvcT0bhkv290pKXOMha1NxBxcu3
 Ux6toqnLXlC4vbJLi7Fo9hH89JMC1t+YIIOK5RBvDR0S0Pxs9FYr7v20kGz1nDROBmUP
 fp9NWmboFEUWC7ry/Mn7QBB/U8SSMpMubxwsPnYyBcxHmzx7//3gdkakSu60v7vmEYrQ
 7Dlg==
X-Gm-Message-State: AOAM532XKSnDXpRLY49CLYdDUwir+Q4qOn+rIezWn+K3Tvj7u5Oc23ea
 KVB3MowVZcVsS6xPctuYoWUKqpyYHIjcTKkr9teBfESa27s=
X-Google-Smtp-Source: ABdhPJzUARohSiASp+YnPHJcT9iYJJJKPqiiUROQtowwmdEEi2SIpJuuKT3xB4W3XAiArXkf1zvebJJLgEK9m7Dqqw8=
X-Received: by 2002:a50:ab44:: with SMTP id t4mr3740308edc.105.1635491617203; 
 Fri, 29 Oct 2021 00:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
 <CAMYWRL_ibx+Z-CrV2vqytLEuU5PWfLr7yDkG54OnBNkbmWahyQ@mail.gmail.com>
 <YXbRYNTFS+5z8Tyi@nataraja>
 <CAMYWRL8w3Zhdg4E=-JrdGNMHrH86OtMjdErt8s_92086Fk=iUw@mail.gmail.com>
In-Reply-To: <CAMYWRL8w3Zhdg4E=-JrdGNMHrH86OtMjdErt8s_92086Fk=iUw@mail.gmail.com>
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Fri, 29 Oct 2021 09:13:25 +0200
Message-ID: <CAMYWRL-rZN7G9F1pH854pTUcvpZ-GfSHT99g2pLr+6aCM2dY2Q@mail.gmail.com>
Subject: Re: TTCN-3 tests for MME
To: Harald Welte <laforge@osmocom.org>
Cc: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="000000000000e06b6f05cf789043"
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
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

--000000000000e06b6f05cf789043
Content-Type: text/plain; charset="UTF-8"

But don't bother with this small defect, we can live without MMEname,
ENBname, they are optional in many production systems, too.
S1 handover would be a very good case to write.



On Wed, Oct 27, 2021 at 10:43 PM Mirko Kovacevic <northmirko@gmail.com>
wrote:

> Thank you for your kind suggestions.
> I made a simple test with code snippet (lines):
>
>     1. var S1AP_PDU ber_pdu_to_log :=
>
> valueof(ts_S1AP_SetupReq(g_enb_pars[idx].global_enb_id,g_enb_pars[idx].supported_tas,
> v32));
>     2. log(ber_pdu_to_log);
>     3. var charstring  pdu_to_send_to_ip_layer :=
> enc_S1AP_PDU(ber_pdu_to_log);
>     4. log(pdu_to_send_to_ip_layer);
>
>
>
> RESULT from line 2.
>  { initiatingMessage := { procedureCode := 17, criticality := reject
> (0), value_ := { s1SetupRequest := { protocolIEs := { { id := 59,
> criticality := ignore (1), value_ := { global_ENB_ID := { pLMNidentity
> := '62F224'O, eNB_ID := { macroENB_ID := '00000001010110110011'B },
> iE_Extensions := omit } } }, { id := 60, criticality := ignore (1),
> value_ := { eNBname := "Ksenija" } }, { id := 64, criticality :=
> reject (0), value_ := { supportedTAs := { { tAC := '3039'O ("09"),
> broadcastPLMNs := { '62F224'O }, iE_Extensions := omit } } } } } } } }
> }
> #################################
> RESULT from line 3.  ASN.1 (A)PER S1AP
> '00110020000003003B40080062F22400015B30003C4002030000400007000C0E4062F224'O
> #################################
>
>
> I checked encoded ASN.1 message with publicly available decoders.
> Error is thrown whenever decoder tries to decode ENBname.
> I can conclude that libfftranscode API is the source of the problem.
>
> On Mon, Oct 25, 2021 at 5:50 PM Harald Welte <laforge@osmocom.org> wrote:
> >
> > On Fri, Oct 22, 2021 at 02:12:03PM +0200, Mirko Kovacevic wrote:
> > > Protocol-IEs, MMEname and ENBname, cant be decoded\encoded properly,
> > > definitely.
> >
> > one would have to check if the encoding problem already exists in the
> BER version
> > (as generated by TITAN natively) or if it happens at the BER <-> PER
> transcoding
> > inside the [unfortunately] non-public libfftranscode, generated by
> ffasn1c.
> >
> > I you can build a small, self contained test case that shows a problem in
> > BER <-> PER transcoding using the libfftranscode API directly (removing
> all of TITAN, etc.)
> > then we may have a chance of either solving it at sysmocom or by asking
> > the ffasn1c author to have a look
> >
> > > Amazing progress with S1AP emulation, congrats.
> >
> > thanks.  Please keep us posted about any progress.  We're happy to merge
> any
> > related patches  you may have for adding more test cases, fixing bugs,
> etc.
> >
> > I never found the time for it, but the general idea always was to
> automatically
> > run this testsuite in jenkins.osmocom.org against the open5gs-mme, like
> we do
> > for or own osmocom software.
> >
> > Regards,
> >         Harald
> > --
> > - Harald Welte <laforge@osmocom.org>
> http://laforge.gnumonks.org/
> >
> ============================================================================
> > "Privacy in residential applications is a desirable marketing option."
> >                                                   (ETSI EN 300 175-7 Ch.
> A6)
>
>
>
> --
> Puno pozdrava,
> Mirko Kovacevic
>


-- 

*Puno pozdrava,Mirko Kovacevic*

--000000000000e06b6f05cf789043
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>But don&#39;t bother with this small defect, we can l=
ive without MMEname, ENBname, they are optional in many production systems,=
 too.</div><div>S1 handover would be a very good case to write.<br></div><d=
iv><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 27, 2021 at 10:43 PM Mirko Kovace=
vic &lt;<a href=3D"mailto:northmirko@gmail.com">northmirko@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thank y=
ou for your kind suggestions.<br>
I made a simple test with code snippet (lines):<br>
<br>
=C2=A0 =C2=A0 1. var S1AP_PDU ber_pdu_to_log :=3D<br>
valueof(ts_S1AP_SetupReq(g_enb_pars[idx].global_enb_id,g_enb_pars[idx].supp=
orted_tas,<br>
v32));<br>
=C2=A0 =C2=A0 2. log(ber_pdu_to_log);<br>
=C2=A0 =C2=A0 3. var charstring=C2=A0 pdu_to_send_to_ip_layer :=3D enc_S1AP=
_PDU(ber_pdu_to_log);<br>
=C2=A0 =C2=A0 4. log(pdu_to_send_to_ip_layer);<br>
<br>
<br>
<br>
RESULT from line 2.<br>
=C2=A0{ initiatingMessage :=3D { procedureCode :=3D 17, criticality :=3D re=
ject<br>
(0), value_ :=3D { s1SetupRequest :=3D { protocolIEs :=3D { { id :=3D 59,<b=
r>
criticality :=3D ignore (1), value_ :=3D { global_ENB_ID :=3D { pLMNidentit=
y<br>
:=3D &#39;62F224&#39;O, eNB_ID :=3D { macroENB_ID :=3D &#39;000000010101101=
10011&#39;B },<br>
iE_Extensions :=3D omit } } }, { id :=3D 60, criticality :=3D ignore (1),<b=
r>
value_ :=3D { eNBname :=3D &quot;Ksenija&quot; } }, { id :=3D 64, criticali=
ty :=3D<br>
reject (0), value_ :=3D { supportedTAs :=3D { { tAC :=3D &#39;3039&#39;O (&=
quot;09&quot;),<br>
broadcastPLMNs :=3D { &#39;62F224&#39;O }, iE_Extensions :=3D omit } } } } =
} } } }<br>
}<br>
#################################<br>
RESULT from line 3.=C2=A0 ASN.1 (A)PER S1AP<br>
&#39;00110020000003003B40080062F22400015B30003C4002030000400007000C0E4062F2=
24&#39;O<br>
#################################<br>
<br>
<br>
I checked encoded ASN.1 message with publicly available decoders.<br>
Error is thrown whenever decoder tries to decode ENBname.<br>
I can conclude that libfftranscode API is the source of the problem.<br>
<br>
On Mon, Oct 25, 2021 at 5:50 PM Harald Welte &lt;<a href=3D"mailto:laforge@=
osmocom.org" target=3D"_blank">laforge@osmocom.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Oct 22, 2021 at 02:12:03PM +0200, Mirko Kovacevic wrote:<br>
&gt; &gt; Protocol-IEs, MMEname and ENBname, cant be decoded\encoded proper=
ly,<br>
&gt; &gt; definitely.<br>
&gt;<br>
&gt; one would have to check if the encoding problem already exists in the =
BER version<br>
&gt; (as generated by TITAN natively) or if it happens at the BER &lt;-&gt;=
 PER transcoding<br>
&gt; inside the [unfortunately] non-public libfftranscode, generated by ffa=
sn1c.<br>
&gt;<br>
&gt; I you can build a small, self contained test case that shows a problem=
 in<br>
&gt; BER &lt;-&gt; PER transcoding using the libfftranscode API directly (r=
emoving all of TITAN, etc.)<br>
&gt; then we may have a chance of either solving it at sysmocom or by askin=
g<br>
&gt; the ffasn1c author to have a look<br>
&gt;<br>
&gt; &gt; Amazing progress with S1AP emulation, congrats.<br>
&gt;<br>
&gt; thanks.=C2=A0 Please keep us posted about any progress.=C2=A0 We&#39;r=
e happy to merge any<br>
&gt; related patches=C2=A0 you may have for adding more test cases, fixing =
bugs, etc.<br>
&gt;<br>
&gt; I never found the time for it, but the general idea always was to auto=
matically<br>
&gt; run this testsuite in <a href=3D"http://jenkins.osmocom.org" rel=3D"no=
referrer" target=3D"_blank">jenkins.osmocom.org</a> against the open5gs-mme=
, like we do<br>
&gt; for or own osmocom software.<br>
&gt;<br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Harald<br>
&gt; --<br>
&gt; - Harald Welte &lt;<a href=3D"mailto:laforge@osmocom.org" target=3D"_b=
lank">laforge@osmocom.org</a>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
<a href=3D"http://laforge.gnumonks.org/" rel=3D"noreferrer" target=3D"_blan=
k">http://laforge.gnumonks.org/</a><br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>
&gt; &quot;Privacy in residential applications is a desirable marketing opt=
ion.&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ETSI EN 300 175-7 Ch. A6)<br>
<br>
<br>
<br>
-- <br>
Puno pozdrava,<br>
Mirko Kovacevic<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font face=3D"arial narrow, sans-serif"><b=
><i style=3D"background-color:rgb(255,255,255)">Puno pozdrava,<br>Mirko Kov=
acevic</i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i><br=
></i></b></font><div><font face=3D"arial narrow, sans-serif"><b><i style=3D=
"background-color:rgb(255,255,255)"><img src=3D"http://cs410319.vk.me/v4103=
19514/4d4a/nv8H7BkYe-w.jpg"><br></i></b></font></div></div></div></div>

--000000000000e06b6f05cf789043--
