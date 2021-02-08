Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id E406231413A
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  8 Feb 2021 22:05:51 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 1BB5A1C0558;
	Mon,  8 Feb 2021 21:05:43 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=Vrg5stYE
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com;
 envelope-from=morteza.ali.ahmadi@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by lists.osmocom.org (Postfix) with ESMTP id 98EA31C053D
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  8 Feb 2021 21:05:37 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id m22so24675597lfg.5
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 08 Feb 2021 13:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KtsZ7PrcxqfVEcuXzaUSQu1yzao1EujUlFB4/K8uRo4=;
 b=Vrg5stYE14fALXZU9UUSJ0vlUN8+bNu6/eNe3oCdvltjFdvKzzVY6k2QQ8r9mtpStc
 UfM13XO9M0yB6uG33J2pOmXVhw0xnxZA6auaG5IHGPYTaIAbnDUWp6kNEs1Aop/m3Iz3
 Tj5FeIeedsiaHM9dr3VJdTsSeLrvzGGEVmnQ2x+KCFAhS44cxOrsZ/Y46FUizRFHjZ6/
 9d/AP+lPExTm+LOjf2AfuZ5IlDO5x23ZJT/2ycOVh9OFgpF6bQmfrSyeXjxRPlZSgv4q
 9mTOz2twiq659f6Fln9419BmQuprujHMxxQ144kK7Ulq/UvKuWtPb4lywoKpC4ZvmMlI
 0b4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KtsZ7PrcxqfVEcuXzaUSQu1yzao1EujUlFB4/K8uRo4=;
 b=bBVfCtrhhmQJfBgCDXp5N/SIPmzwkT+ywnVewvcFwVVVmlzA2ljVireDo/ZZESacEA
 3ixGoSeA7DBfPpgI9UbguTeCF6NMabKjFOzfegG0bFKyaSyz3qFtwcBWOtkGuDxdRFNj
 4o8pnjWIoJtzjYCnIa7AQ4qMXOQJBaffG54oYRGnbe9lIgNA7oWp3PPe4ffme7h+I9DG
 ZBFMaYqGV5XdgohJ02z5PsYL1iqjkv1eb89V5w0VWBMnxwuzaPYZvywY1TF4QKk7KNs3
 0ogIQ3zw3iyMl6cCPXS+DNa71T5FxRwItgajLN+SFKPEsC/LLyRlGXTFmoFdoNTD+wgs
 O2Hw==
X-Gm-Message-State: AOAM531L69iIoBs+L29JBJugyfFbf/neWv6Bpj6KsuJw+JYg0xHBSntN
 HhuqawdIr6p+tsSfhd/43m9jwE/jj+FzOcBVeuQ=
X-Google-Smtp-Source: ABdhPJx/kg/6dXBIU8e6bTxLvy3poSVaAj7TeJQIH0yO1/R5ntIVPiYhekCmEdqUZKu/96hFS+R6auL62eZbu5MqRg0=
X-Received: by 2002:a19:e93:: with SMTP id 141mr11102264lfo.11.1612818337477; 
 Mon, 08 Feb 2021 13:05:37 -0800 (PST)
MIME-Version: 1.0
References: <CANPQb9D9Vt7BJjyuJ8ZPoVJQbQmZm+Vr+cpxE6sfrpcRhbJZ1w@mail.gmail.com>
 <ed20a5c3-57bf-0a6a-ca1d-f7279a933d8f@sysmocom.de>
In-Reply-To: <ed20a5c3-57bf-0a6a-ca1d-f7279a933d8f@sysmocom.de>
From: morteza ali Ahmadi <morteza.ali.ahmadi@gmail.com>
Date: Tue, 9 Feb 2021 00:35:26 +0330
Message-ID: <CANPQb9DNMErt0+LC2xORH2sOhE98yAUGz1WBoYFzMsX6wGFu3g@mail.gmail.com>
Subject: Re: Question about OsmoGGSN project
To: Pau Espin Pedrol <pespin@sysmocom.de>
Cc: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="00000000000017ba5c05bad98815"
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

--00000000000017ba5c05bad98815
Content-Type: text/plain; charset="UTF-8"

Thanks Pau, I'll check it out and share my results with you.

On Mon, Feb 8, 2021 at 1:05 PM Pau Espin Pedrol <pespin@sysmocom.de> wrote:

> Hi,
>
> you are probably facing a routing issue, and you need to solve it by
> using different network namespaces (netns).
> In your current setup, you probably have routing for those DNS packets
> to go through the sgsnemu iface, and once the ggsn puts them again in
> the network stack after going through GTP, the kernel probably ends up
> dropping the packet because it finds out some sort of loop.
>
> In order to solve it, the easiest is to run sgsnemu under a different
> netns, and set default routing inside that netns to the tun iface
> created by sgsnemu. AFAIR, the netns can take care of creating the netns
> and configuring it for you, check it's man page ("--defaultroute",
> "--netns").
>
> Hope this is useful to you,
> Pau
>
> --
> - Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
> =======================================================================
> * sysmocom - systems for mobile communications GmbH
> * Alt-Moabit 93
> * 10559 Berlin, Germany
> * Sitz / Registered office: Berlin, HRB 134158 B
> * Geschaeftsfuehrer / Managing Director: Harald Welte
>


-- 
*When there is much light, The shadow is deep...*

--00000000000017ba5c05bad98815
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks <span>Pau</span>, I&#39;ll check it out and share m=
y results with you.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Feb 8, 2021 at 1:05 PM Pau Espin Pedrol &lt;=
<a href=3D"mailto:pespin@sysmocom.de">pespin@sysmocom.de</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
you are probably facing a routing issue, and you need to solve it by <br>
using different network namespaces (netns).<br>
In your current setup, you probably have routing for those DNS packets <br>
to go through the sgsnemu iface, and once the ggsn puts them again in <br>
the network stack after going through GTP, the kernel probably ends up <br>
dropping the packet because it finds out some sort of loop.<br>
<br>
In order to solve it, the easiest is to run sgsnemu under a different <br>
netns, and set default routing inside that netns to the tun iface <br>
created by sgsnemu. AFAIR, the netns can take care of creating the netns <b=
r>
and configuring it for you, check it&#39;s man page (&quot;--defaultroute&q=
uot;, <br>
&quot;--netns&quot;).<br>
<br>
Hope this is useful to you,<br>
Pau<br>
<br>
-- <br>
- Pau Espin Pedrol &lt;<a href=3D"mailto:pespin@sysmocom.de" target=3D"_bla=
nk">pespin@sysmocom.de</a>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"=
http://www.sysmocom.de/" rel=3D"noreferrer" target=3D"_blank">http://www.sy=
smocom.de/</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
* sysmocom - systems for mobile communications GmbH<br>
* Alt-Moabit 93<br>
* 10559 Berlin, Germany<br>
* Sitz / Registered office: Berlin, HRB 134158 B<br>
* Geschaeftsfuehrer / Managing Director: Harald Welte<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><span style=3D"font-family:courier new,mon=
ospace"><span style=3D"background-color:rgb(255,255,255)"><strong><font siz=
e=3D"3">When there is much light, The shadow is deep...</font></strong></sp=
an></span></div></div>

--00000000000017ba5c05bad98815--
