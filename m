Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 0309724B397
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 20 Aug 2020 11:49:46 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id D1D0F147AF4;
	Thu, 20 Aug 2020 09:49:37 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=HWXOwqfy
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::130; helo=mail-lf1-x130.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by lists.osmocom.org (Postfix) with ESMTP id 4F94C147AD1
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 09:49:31 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id r25so611821lfe.5
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 20 Aug 2020 02:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LT1+NdOHQTDXUkEg/nsfuv3iVxm/LjRlTJE6QSVRcq4=;
 b=HWXOwqfyRB6+z0N/vbnk6OYcPN18oF2pLMWupfC1O35D3dV7cuqtoa4+gGfhMrm4Y8
 ZaYqSpFJbhBDGNPFvi+Jc9uGB+5/LuEzA6v/XMjPCQmHRnTKLm+2L2r3xIbApeEmQsx0
 G6CZfoZzGs9DWwFPBjyS+HeCRZkfkqZr1wneiOT1Ljjb/Smbq7mcj2Zf5g67ouBvNHAH
 Qre3rfhB1LGIAIZynOD4jMFaUQw0YDmyodyf5Uq3YoBTSLSP+1N9KI7gqsj20//wvtbj
 oN2PaMiSosEnlwNgN0IzpunLSZNJs3xF7Ev1jZDGbMvQhYEbUOOSw8pcCPfO1dXc7VyZ
 Q+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LT1+NdOHQTDXUkEg/nsfuv3iVxm/LjRlTJE6QSVRcq4=;
 b=q15waoXGigNhwv/rBVt8ljLH4IuZvlqQWCQuaXz6KaFwa4xK9URXY8p23dBd5u59xj
 ynaF4U7Cs0RmzRxuW32ADStHaeHO1BkXSttZ4VLv2ykTJOzWJSgIFuN5VUTfoOxVhyQm
 EBbZsRTV03C7YkztgcELNq3LTHDl+S3L47M2YyiG6qAnWSYYQknOHVtpQsU7/EZ16UPO
 7MmyKsW5P79FYuocg+dNeDeP63yyi3HPnRX0H5JWVAVIddXujLOeFyt9er6ZhcjiOMGl
 pgkxaqHjmIpLX1W7t68kF0+dDnwRAv36Rn6glmcXX1dlB3i490A9F9la8Qusi1iw7uGU
 EYpA==
X-Gm-Message-State: AOAM530sIRYMoLgYCE59kroSd+Fpk26LPX0vBarQQb81LPqAf1OqO/Tb
 ynUuQ45DlOM/ivsxGCBKkuERA8YgJdw+3RBfyr1uL+rB+FZUOA==
X-Google-Smtp-Source: ABdhPJyVftpO17X+Mvd5VL5xY594NpRiX0VqVrpaSXGwyRRYEhzWltqjvd13SCKKK6QvQmwFYZfUD5Z4Js70H3A/OQc=
X-Received: by 2002:a19:cf:: with SMTP id 198mr892735lfa.34.1597916971211;
 Thu, 20 Aug 2020 02:49:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
 <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
 <20200810195854.GK2338189@nataraja>
In-Reply-To: <20200810195854.GK2338189@nataraja>
From: Papa Tana <papa.tana101@gmail.com>
Date: Thu, 20 Aug 2020 12:49:20 +0300
Message-ID: <CAGoraXSsk90OXqaLWva4p9d55wei4_syeZWV_TaQHhf8swq5YA@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: Harald Welte <laforge@osmocom.org>
Content-Type: multipart/alternative; boundary="000000000000731feb05ad4c09b5"
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

--000000000000731feb05ad4c09b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

After successfully making libgtpnl works between 02 Linux Host, now I am in
the step of connecting one Linux Host to a real live SGSN this morning.

I don't have any particular issue at GTP-C side:

 - the Mobile Station registered on 3G network, requests one activate PDP
context to the SGSN
 - the SGSN sends to my ggsn a create PDP context
 - my ggsn accepts it, and answers with all the needed information, such as
MS_Address, DNS Address 1, DNS address 2, IP of GGSN-C, IP of GGSN-U, TEID
Control Plane, TEID user plane, .... everything should be OK.
 - upon receipt of my creade_pdp_context_response accepted, the SGSN now
try to establish a Tunnel with the given TEID towards my GGSN
 - but I cannot see anything on my GTPU-side in ggsn, apart of several
echo-request message from SGSN
 - Sure, SGSN try to test connectivity to my ggsn GTPU by using
echo-request, but no response
 - I don't know maybe because of no response, or because of SGSN alert me
with an error gtpu-sm-cause-update-ggsn-path-failure, the SGSN decide to
send a delete request

So I have 02 questions please:

 - 1) At GTP-C, I can implement all messages(echo-response,
create-response, delete-response) but at GTPU-side, as the port is used by
libgtpnl, I cannot implement an echo-response at all =3D=3D> So, do libgtpn=
l is
supposed to answer or not to an echo-response received from a SGSN at
GTPU-level?

 - 2) When I tried a Linux-to-Linux setup, it worked because I specified
the ms_addr and sgsn_addr in the 02 Linux Host.
 But as I cannot configure anything about the tunnel at SGSN-side(done
automatically by SGSN), I can only create the tunnel at ggsn-side thanks to
my user space program, by passing the TEID and ms_addr input to libgtpnl.
Does it mean that libgtpnl only complies with OpenGGSN, ergw, and
OpenAirInterface but not intended to ber used with a real SGSN?

Thanks for clarifying me,
Best Regards,


Le lun. 10 ao=C3=BBt 2020 =C3=A0 23:00, Harald Welte <laforge@osmocom.org> =
a =C3=A9crit :

> Hi Papa,
>
> On Sat, Aug 08, 2020 at 10:59:24AM +0300, Papa Tana wrote:
> > It is working now.
> > Very simple and stupid mistake from my side at network namespace
> configuration.
>
> I'm very happy to hear it's working successfully.  Sometimes I start to
> doubt
> if there are problems in the codebase, but the fact that you report you
> got it
> to work is a relief in that regard :)
> --
> - Harald Welte <laforge@osmocom.org>
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

--000000000000731feb05ad4c09b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br><br>After successfully making libg=
tpnl works between 02 Linux Host, now I am in the step of connecting one Li=
nux Host to a real live SGSN this morning.<br><br>I don&#39;t have any part=
icular issue at GTP-C side:<br><br>=C2=A0- the Mobile Station registered on=
 3G network, requests one activate PDP context to the SGSN<br>=C2=A0- the S=
GSN sends to my ggsn a create PDP context<br>=C2=A0- my ggsn accepts it, an=
d answers with all the needed information, such as MS_Address, DNS Address =
1, DNS address 2, IP of GGSN-C, IP of GGSN-U, TEID Control Plane, TEID user=
 plane, .... everything should be OK.<br>=C2=A0- upon receipt of my creade_=
pdp_context_response accepted, the SGSN now try to establish a Tunnel with =
the given TEID towards my GGSN<br>=C2=A0- but I cannot see anything on my G=
TPU-side in ggsn, apart of several echo-request message from SGSN<br>=C2=A0=
- Sure, SGSN try to test connectivity to my ggsn GTPU by using echo-request=
, but no response<br>=C2=A0- I don&#39;t know maybe because of no response,=
 or because of SGSN alert me with an error gtpu-sm-cause-update-ggsn-path-f=
ailure, the SGSN decide to send a delete request<br><br>So I have 02 questi=
ons please:<br><br>=C2=A0- 1) At GTP-C, I can implement all messages(echo-r=
esponse, create-response, delete-response) but at GTPU-side, as the port is=
 used by libgtpnl, I cannot implement an echo-response at all =3D=3D&gt; So=
, do libgtpnl is supposed to answer or not to an echo-response received fro=
m a SGSN at GTPU-level?<br><br>=C2=A0- 2) When I tried a Linux-to-Linux set=
up, it worked because I specified the ms_addr and sgsn_addr in the 02 Linux=
 Host.<br>=C2=A0But as I cannot configure anything about the tunnel at SGSN=
-side(done automatically by SGSN), I can only create the tunnel at ggsn-sid=
e thanks to my user space program, by passing the TEID and ms_addr input to=
 libgtpnl. Does it mean that libgtpnl only complies with OpenGGSN, ergw, an=
d OpenAirInterface but not intended to ber used with a real SGSN?<br><br>Th=
anks for clarifying me,<br>Best Regards,<br><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 10 ao=
=C3=BBt 2020 =C3=A0=C2=A023:00, Harald Welte &lt;<a href=3D"mailto:laforge@=
osmocom.org">laforge@osmocom.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi Papa,<br>
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

--000000000000731feb05ad4c09b5--
