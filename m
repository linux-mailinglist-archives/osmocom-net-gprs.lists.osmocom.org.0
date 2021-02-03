Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id B2B0930DC8D
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  3 Feb 2021 15:22:40 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2F77A1A83BF;
	Wed,  3 Feb 2021 14:22:36 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=RrMKtWEQ
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::230; helo=mail-lj1-x230.google.com;
 envelope-from=morteza.ali.ahmadi@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by lists.osmocom.org (Postfix) with ESMTP id 1D86F1A83A1
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  3 Feb 2021 14:22:31 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id t8so28422483ljk.10
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 03 Feb 2021 06:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PMMichRkNwy57MYasnzfNOr4ULvKA+FBzI8yqW57pgU=;
 b=RrMKtWEQsT9pQjEhTQpNvw5996+5S9i2ytvjJR6Icar+u6tiJNEiJ812ScYAjS0D/S
 mYztsRzP3cmqDoEo7mw6cKe11BUd6MIddAZtSBTFKeMyI6xQHoAVKuBTHygbwBx1OTjJ
 997dgvJojHlvkNzdO61OZ1MxEA4xJVbZlqN4fKCSg1TlVijlQSbQTcSso/PlAcNTA7Dn
 QI/Icpr3HZyO0YplbWbRBjbLif9ITerCL6AvJxHvrUjVGlbr6jmo06TXJTd5ejmiU0nn
 HsOzy24gmn6sigEIvrXAxZMxWw0wiQfu3wLVWrqu3f01KdbRE0U/OM8QwCDd0vJkb8Pn
 N9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PMMichRkNwy57MYasnzfNOr4ULvKA+FBzI8yqW57pgU=;
 b=t77F5ZCf/PZDufxQleNXxlLTufppqfKc0UzGm/fzOzvPTW4C7of9Uxus5+hN33Ys1s
 6PKxStxktoeKbq5kmV0ZFH+AERjoKsxduwlHKsezX1O7rRLO4H6n+8yM0d3iJmGW9XtD
 TI9C9AKMBwNdM3MFc+5/1pyc+2l8lQay9d3NuJciAWQY1gXultMBJJ5JEbOloa1oa+Tr
 m/zwNPre7mitaH8O8zNTR/6alw11ldaVX+FCpwHlQjkWQgRTDb6UbvWl1IB3Sl9q4Fvx
 QUPaTh9UW7/9DV7pjjwFbwd3pirLB4/cCIYA7drbqcA4/YcUFj89rCLGOzQHUMADnCba
 En1Q==
X-Gm-Message-State: AOAM532hRXad6qg07Fhfh/13chnQWMvyemOjaUJ18xlHgTmlDmk4L2qe
 oZ2Mpa2sztayc3HEj4AA+jQ/iB1tF2RTDjRMhmvtVFSQuMUKAdbq
X-Google-Smtp-Source: ABdhPJwJlthDigJEz859a+HP+ZWShvvqwCDBYsmAx0c8jSDXDxQfnGtWEV/BQWwGL6RQ6HO0o0PUOifBkfbta7x3kmQ=
X-Received: by 2002:a2e:98ca:: with SMTP id s10mr1936638ljj.283.1612362150737; 
 Wed, 03 Feb 2021 06:22:30 -0800 (PST)
MIME-Version: 1.0
References: <CANPQb9B3OOMb2MbSg84OZN1aQoC420DzjL_aezpqnR2+=WAo2Q@mail.gmail.com>
 <YBkxDJmBrUa6L3b2@nataraja>
In-Reply-To: <YBkxDJmBrUa6L3b2@nataraja>
From: morteza ali Ahmadi <morteza.ali.ahmadi@gmail.com>
Date: Wed, 3 Feb 2021 17:52:19 +0330
Message-ID: <CANPQb9AiGsbWBGg77esg8QXkmc9AJKXBjCoVDDfKK8dLHXnMyA@mail.gmail.com>
Subject: Re: Question about libgtpnl
To: Harald Welte <laforge@osmocom.org>
Cc: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="0000000000003e79a505ba6f51a0"
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

--0000000000003e79a505ba6f51a0
Content-Type: text/plain; charset="UTF-8"

Hi Harald
Thanks for your advice. So, first, We will try to use OsmoGGSN.

Best regards
Morteza Ali Ahmadi


On Tue, Feb 2, 2021 at 2:32 PM Harald Welte <laforge@osmocom.org> wrote:

> On Sun, Jan 31, 2021 at 11:25:25PM +0330, morteza ali Ahmadi wrote:
> > Hi Osmocom team
> > We have a basic question about libgtpnl (Linux Kernel GTP-U).
>
> I would suggest that you start with setting this up using OsmoGGSN.
>
> It has built-in support for kernel GTP (via libgtpnl), see the related
> user manual.
>
> Once that works, you have a "known working" setup and you can start
> comparing
> the differences between how OsmoGGSN uses libgtpnl and how you are using
> it manually.
>
> I have to admit that I never considered using the manual
> gtp-link/gtp-tunnel commands
> in a "real" network.  Those were only ever used in artificial functional
> testing.
>
> Regards,
>         Harald
> --
> - Harald Welte <laforge@osmocom.org>
> http://laforge.gnumonks.org/
>
> ============================================================================
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch.
> A6)
>


-- 
*When there is much light, The shadow is deep...*

--0000000000003e79a505ba6f51a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Harald<font color=3D"#888888"><br></font><div>Thanks fo=
r your advice. So, first, We will try to use OsmoGGSN.</div><div><br></div>=
<div>Best regards</div><div>Morteza Ali Ahmadi<br></div><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Feb 2, 2021 at 2:32 PM Harald Welte &lt;<a href=3D"mailto:laforge@osmoc=
om.org">laforge@osmocom.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Sun, Jan 31, 2021 at 11:25:25PM +0330, mortez=
a ali Ahmadi wrote:<br>
&gt; Hi Osmocom team<br>
&gt; We have a basic question about libgtpnl (Linux Kernel GTP-U).<br>
<br>
I would suggest that you start with setting this up using OsmoGGSN.<br>
<br>
It has built-in support for kernel GTP (via libgtpnl), see the related user=
 manual.<br>
<br>
Once that works, you have a &quot;known working&quot; setup and you can sta=
rt comparing<br>
the differences between how OsmoGGSN uses libgtpnl and how you are using it=
 manually.<br>
<br>
I have to admit that I never considered using the manual gtp-link/gtp-tunne=
l commands<br>
in a &quot;real&quot; network.=C2=A0 Those were only ever used in artificia=
l functional testing.<br>
<br>
Regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Harald<br>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><span style=3D"font-family:courier new,mon=
ospace"><span style=3D"background-color:rgb(255,255,255)"><strong><font siz=
e=3D"3">When there is much light, The shadow is deep...</font></strong></sp=
an></span></div></div>

--0000000000003e79a505ba6f51a0--
