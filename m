Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF7724C2EB
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 20 Aug 2020 18:06:26 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id DD6291487F4;
	Thu, 20 Aug 2020 16:06:17 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=SOfFjPED
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::130; helo=mail-lf1-x130.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by lists.osmocom.org (Postfix) with ESMTP id 8CBD21487DE
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 16:06:11 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id d2so1220628lfj.1
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 09:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=41ac95HCTPNffD95/RkDyNvE+Mjr5I4xk/Y1UnaS0rY=;
 b=SOfFjPEDmLtFFTZiegQEN6CbRgyl8aMyiYPEUcXOV6a8aIWxLQG4YRLJ5xKIHGrAiE
 htyKrzVBMSHq8ZrJfr7Lcp3O7DjHameL0hvEMPVu2/F7x5aR+1AxwrRgxrbypRAt8O0V
 czqQ5xeESweJEYnuoJ1ZKc+NVQBlLvze9MGDbV4pLVg9bLf/CEFhxphzAPU2BcX0vbem
 MgXrBrxm7toFnF3cqMFLxA4+sjbUgw8jbfq3iiVku88HzuGNoma1b6aFkg2JV0BwrWhB
 zSJsMc40IhR5eGd8RTOkPDIHENsjFtjwvnDAuT5oGW4e/wEPOHNRSQ0UZ1ctK98kzj1+
 F3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=41ac95HCTPNffD95/RkDyNvE+Mjr5I4xk/Y1UnaS0rY=;
 b=p2WFF2ZKACeBkoSV2jlXMDTq8KOpI71hoEYHGYG/E7q5bNJr84oLXs3lNqzvOUz990
 AI0PLzxl+Cy47IFn+F3PICsQ/LyVh92IekVyWngMxRbk4Mnam4W6BW/fz0srOG/arDnW
 xPHYw2fiDgzn2EGfFd0xyYeeUT98JcHfBj/yrsORW10FtZvmC3vf+wne7KC6uNaLm3Da
 EmOqyJaMzseCOSGkm69smoQTZ2U9PdrIia8WtyLzxVZgcsuLPB3flyrLLpjZZiA2rDtw
 GryT/7zId4U8HNIf3yK1qcn1RqwYvkS1ezKcjdjuXd4mkIBv0EcTWRiwz3r7AuAslqKl
 ohGw==
X-Gm-Message-State: AOAM533X4vvtIcACx6aKW8qu1vwV5oS9fS9cT3x4t/S1a+jlw7t7f6l6
 FgXSyaY6ydCXzs/hYRNELs9vpcl1WvmRDeSi8k9Hw6HJ6u5LAw==
X-Google-Smtp-Source: ABdhPJySbLeR00lh9A3ssfQRwiRMJyzL4Vxdn8U8UcBDTRFW2akpcoUN5Giv33HYWgyqEg0hCDHrRk+EnkkRVwiidbU=
X-Received: by 2002:a19:654c:: with SMTP id c12mr1958947lfj.132.1597939570106; 
 Thu, 20 Aug 2020 09:06:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
 <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
In-Reply-To: <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
From: Papa Tana <papa.tana101@gmail.com>
Date: Thu, 20 Aug 2020 19:05:58 +0300
Message-ID: <CAGoraXQs44ecPvQPWtdZkkCPPq5GbR4ppMYM7KN6exRwK-scdQ@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="00000000000072e63a05ad514c6a"
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

--00000000000072e63a05ad514c6a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, After debugging, it is more likely to have some bug in my code
because finally, it works after several scenario, but for some reason I
don't understand so far, after a moment, the SGSN requests to delete the
pdp context.

So, I was connected with a real sim card for around 1 minute, great!

But I still need a clarification about what to do about echo-response at
GTP-U because I can only handle echo-response at GTP-C because my ggsn
listen in 2123, but I cannot add any message at all like echo-response in
2152 because libgtpnl manage it.

Best Regards,

Le jeu. 20 ao=C3=BBt 2020 =C3=A0 12:49, Papa Tana <papa.tana101@gmail.com> =
a =C3=A9crit :

> Hi,
>
> After successfully making libgtpnl works between 02 Linux Host, now I am
> in the step of connecting one Linux Host to a real live SGSN this morning=
.
>
> I don't have any particular issue at GTP-C side:
>
>  - the Mobile Station registered on 3G network, requests one activate PDP
> context to the SGSN
>  - the SGSN sends to my ggsn a create PDP context
>  - my ggsn accepts it, and answers with all the needed information, such
> as MS_Address, DNS Address 1, DNS address 2, IP of GGSN-C, IP of GGSN-U,
> TEID Control Plane, TEID user plane, .... everything should be OK.
>  - upon receipt of my creade_pdp_context_response accepted, the SGSN now
> try to establish a Tunnel with the given TEID towards my GGSN
>  - but I cannot see anything on my GTPU-side in ggsn, apart of several
> echo-request message from SGSN
>  - Sure, SGSN try to test connectivity to my ggsn GTPU by using
> echo-request, but no response
>  - I don't know maybe because of no response, or because of SGSN alert me
> with an error gtpu-sm-cause-update-ggsn-path-failure, the SGSN decide to
> send a delete request
>
> So I have 02 questions please:
>
>  - 1) At GTP-C, I can implement all messages(echo-response,
> create-response, delete-response) but at GTPU-side, as the port is used b=
y
> libgtpnl, I cannot implement an echo-response at all =3D=3D> So, do libgt=
pnl is
> supposed to answer or not to an echo-response received from a SGSN at
> GTPU-level?
>
>  - 2) When I tried a Linux-to-Linux setup, it worked because I specified
> the ms_addr and sgsn_addr in the 02 Linux Host.
>  But as I cannot configure anything about the tunnel at SGSN-side(done
> automatically by SGSN), I can only create the tunnel at ggsn-side thanks =
to
> my user space program, by passing the TEID and ms_addr input to libgtpnl.
> Does it mean that libgtpnl only complies with OpenGGSN, ergw, and
> OpenAirInterface but not intended to ber used with a real SGSN?
>
> Thanks for clarifying me,
> Best Regards,
>
>
> Le lun. 10 ao=C3=BBt 2020 =C3=A0 23:00, Harald Welte <laforge@osmocom.org=
> a =C3=A9crit :
>
>> Hi Papa,
>>
>> On Sat, Aug 08, 2020 at 10:59:24AM +0300, Papa Tana wrote:
>> > It is working now.
>> > Very simple and stupid mistake from my side at network namespace
>> configuration.
>>
>> I'm very happy to hear it's working successfully.  Sometimes I start to
>> doubt
>> if there are problems in the codebase, but the fact that you report you
>> got it
>> to work is a relief in that regard :)
>> --
>> - Harald Welte <laforge@osmocom.org>
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

--00000000000072e63a05ad514c6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, After debugging, it is more likely to have some bug =
in my code because finally, it works after several scenario, but for some r=
eason I don&#39;t understand so far, after a moment, the SGSN requests to d=
elete the pdp context.<br><div><br></div><div>So, I was connected with a re=
al sim card for around 1 minute, great!</div><div><br></div><div>But I stil=
l need a clarification about what to do about echo-response at GTP-U becaus=
e I can only handle echo-response at GTP-C because my ggsn listen in 2123, =
but I cannot add any message at all like echo-response in 2152 because libg=
tpnl manage it.</div><div><br></div><div>Best Regards,</div><br>Le=C2=A0jeu=
. 20 ao=C3=BBt 2020 =C3=A0=C2=A012:49, Papa Tana &lt;<a href=3D"mailto:papa=
.tana101@gmail.com">papa.tana101@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr">Hi,<br><br>After successfully making lib=
gtpnl works between 02 Linux Host, now I am in the step of connecting one L=
inux Host to a real live SGSN this morning.<br><br>I don&#39;t have any par=
ticular issue at GTP-C side:<br><br>=C2=A0- the Mobile Station registered o=
n 3G network, requests one activate PDP context to the SGSN<br>=C2=A0- the =
SGSN sends to my ggsn a create PDP context<br>=C2=A0- my ggsn accepts it, a=
nd answers with all the needed information, such as MS_Address, DNS Address=
 1, DNS address 2, IP of GGSN-C, IP of GGSN-U, TEID Control Plane, TEID use=
r plane, .... everything should be OK.<br>=C2=A0- upon receipt of my creade=
_pdp_context_response accepted, the SGSN now try to establish a Tunnel with=
 the given TEID towards my GGSN<br>=C2=A0- but I cannot see anything on my =
GTPU-side in ggsn, apart of several echo-request message from SGSN<br>=C2=
=A0- Sure, SGSN try to test connectivity to my ggsn GTPU by using echo-requ=
est, but no response<br>=C2=A0- I don&#39;t know maybe because of no respon=
se, or because of SGSN alert me with an error gtpu-sm-cause-update-ggsn-pat=
h-failure, the SGSN decide to send a delete request<br><br>So I have 02 que=
stions please:<br><br>=C2=A0- 1) At GTP-C, I can implement all messages(ech=
o-response, create-response, delete-response) but at GTPU-side, as the port=
 is used by libgtpnl, I cannot implement an echo-response at all =3D=3D&gt;=
 So, do libgtpnl is supposed to answer or not to an echo-response received =
from a SGSN at GTPU-level?<br><br>=C2=A0- 2) When I tried a Linux-to-Linux =
setup, it worked because I specified the ms_addr and sgsn_addr in the 02 Li=
nux Host.<br>=C2=A0But as I cannot configure anything about the tunnel at S=
GSN-side(done automatically by SGSN), I can only create the tunnel at ggsn-=
side thanks to my user space program, by passing the TEID and ms_addr input=
 to libgtpnl. Does it mean that libgtpnl only complies with OpenGGSN, ergw,=
 and OpenAirInterface but not intended to ber used with a real SGSN?<br><br=
>Thanks for clarifying me,<br>Best Regards,<br><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 10 ao=
=C3=BBt 2020 =C3=A0=C2=A023:00, Harald Welte &lt;<a href=3D"mailto:laforge@=
osmocom.org" target=3D"_blank">laforge@osmocom.org</a>&gt; a =C3=A9crit=C2=
=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Papa,<br=
>
<br>
On Sat, Aug 08, 2020 at 10:59:24AM +0300, Papa Tana wrote:<br>
&gt; It is working now.<br>
&gt; Very simple and stupid mistake from my side at network namespace confi=
guration.<br>
<br>
I&#39;m very happy to hear it&#39;s working successfully.=C2=A0 Sometimes I=
 start to doubt<br>
if there are problems in the codebase, but the fact that you report you got=
 it<br>
to work is a relief in that regard :)<br>
-- <br>
- Harald Welte &lt;<a href=3D"mailto:laforge@osmocom.org" target=3D"_blank"=
>laforge@osmocom.org</a>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a hr=
ef=3D"http://laforge.gnumonks.org/" rel=3D"noreferrer" target=3D"_blank">ht=
tp://laforge.gnumonks.org/</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
&quot;Privacy in residential applications is a desirable marketing option.&=
quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (ETSI EN 300 175-7 Ch. A6)<br>
</blockquote></div>
</blockquote></div></div>

--00000000000072e63a05ad514c6a--
