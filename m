Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id B36DC1B479E
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Apr 2020 16:45:35 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5669E1201C4;
	Wed, 22 Apr 2020 14:45:35 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=fS7XS6lq
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::144; helo=mail-lf1-x144.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by lists.osmocom.org (Postfix) with ESMTP id DE8521201A3
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 22 Apr 2020 14:45:31 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id k28so1878127lfe.10
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 22 Apr 2020 07:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=a3opq+DOkH6D+JjmVZpIaIkpwaP1tzv7+j3X83C6yAw=;
 b=fS7XS6lqWRuKzehXi2o2q14lNv+3ClxBqwZdG2OWtnz1bBlM0j8P0W9SURGipaJGlM
 HETgm6y9gY2v4gelxLwYXvYiCuQ3w9Lw4R8e8O4OR+BThEP5me58r7dZnPFOjHmsU8BE
 3bDKAdRm3msfn1al+DifLbP4WfXrCg1HjLwiQR2chmfEIMFpENdhG+bKVrlcyTDXZWve
 JO9po+fA9/qYdvVQlBwETwWTamDjGD8Mgjqwg09CyM+RvqhN1SypFhNOQkvLjx/4G9cM
 SicHp26Nq4G7snkGmP2AdNLwIaEFn9gwuKOfOdRp+2KuSZkO6zoXikmQz9ERYTmCBOM9
 FWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=a3opq+DOkH6D+JjmVZpIaIkpwaP1tzv7+j3X83C6yAw=;
 b=eesPq8HqhVEiZtbb1wS4KYkGuqWSOZv3t2HYW7RFafjM2Dgr3+UGdKULEwvGCtdXSC
 IfK0i6mMLArF/Q7NVgOy6+j0lQGychMqOXpejPq+sJqd+MzcffTLU99ggeZUIccTU7jz
 HB5oAiDiGi03njHkNNxBiXk//r/uks6lRcJ/9NTM8qgLZOl0FpVFYCJ1mVeRivdNW8tx
 GRbRhld4YDPiSBXJv0oJJhD+8ac/5YoSf7g0/M/TwH0eUqtM/b2vZG/8MnjRIApDUn2J
 LMnMypImzpAObINXw0BLA1ytQXSIedMc3+WNx9DpJLWOxUj56e3MBbEfdk7dpLJoWkvN
 qq0g==
X-Gm-Message-State: AGi0PuafSFGRyrTMZNXVoEAQ4hE0/sSKmBEtSZu3ENgbnrrXkQlCq7NQ
 xseMd4o3woERGx+iEjTf4PONx4Ka+TdBNsH6R2RVCVM7
X-Google-Smtp-Source: APiQypJobOpb59JSUmFab9gN+IwLpxfRb9mC6bhSYmFitsnSuX1IL6jAqUO3IMftTRtXE884Uf1uOhsI5lVavdezBaY=
X-Received: by 2002:a05:6512:1111:: with SMTP id
 l17mr17142510lfg.206.1587566730409; 
 Wed, 22 Apr 2020 07:45:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200422144211.28756-1-ahochauwaaaaa@gmail.com>
In-Reply-To: <20200422144211.28756-1-ahochauwaaaaa@gmail.com>
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
Date: Wed, 22 Apr 2020 23:45:18 +0900
Message-ID: <CALJqYvXWCaYojA3_YTN+cpnXvsqNkxojdkBNTQUNLDRx-c2V-Q@mail.gmail.com>
Subject: Re: [PATCH] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
Cc: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="00000000000005fced05a3e22f8a"
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

--00000000000005fced05a3e22f8a
Content-Type: text/plain; charset="UTF-8"

Hi,

Could anyone review this change?
This is the same one I sent in February except the prefix of commit
message(net: => gtp:).

BR,
Yoshiyuki

On Wed, Apr 22, 2020 at 11:42 PM Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
wrote:

> In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
> flag since it returns multipart message.
> This patch adds a new arg "flags" in gtp_genl_fill_info() so that
> flags can be set by the callers.
>
> Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
> ---
>  drivers/net/gtp.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 672cd2caf2fb..10fa731bae6d 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -1097,7 +1097,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb,
> struct genl_info *info)
>  }
>
>  static struct pdp_ctx *gtp_find_pdp_by_link(struct net *net,
> -                                           struct nlattr *nla[])
> +                                               struct nlattr *nla[])
>  {
>         struct gtp_dev *gtp;
>
> @@ -1169,11 +1169,11 @@ static int gtp_genl_del_pdp(struct sk_buff *skb,
> struct genl_info *info)
>  static struct genl_family gtp_genl_family;
>
>  static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32
> snd_seq,
> -                             u32 type, struct pdp_ctx *pctx)
> +                             int flags, u32 type, struct pdp_ctx *pctx)
>  {
>         void *genlh;
>
> -       genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, 0,
> +       genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family,
> flags,
>                             type);
>         if (genlh == NULL)
>                 goto nlmsg_failure;
> @@ -1227,8 +1227,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb,
> struct genl_info *info)
>                 goto err_unlock;
>         }
>
> -       err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
> -                                info->snd_seq, info->nlhdr->nlmsg_type,
> pctx);
> +       err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
> info->snd_seq,
> +                               info->nlhdr->nlmsg_flags,
> info->nlhdr->nlmsg_type, pctx);
>         if (err < 0)
>                 goto err_unlock_free;
>
> @@ -1271,6 +1271,7 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
>                                     gtp_genl_fill_info(skb,
>                                             NETLINK_CB(cb->skb).portid,
>                                             cb->nlh->nlmsg_seq,
> +                                           NLM_F_MULTI,
>                                             cb->nlh->nlmsg_type, pctx)) {
>                                         cb->args[0] = i;
>                                         cb->args[1] = j;
> --
> 2.17.1
>
>

--00000000000005fced05a3e22f8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Could anyone review this=
 change?</div><div>This is the same one I sent in February except the prefi=
x of commit message(net: =3D&gt; gtp:).<br></div><div><br></div><div>BR,</d=
iv><div>Yoshiyuki<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Apr 22, 2020 at 11:42 PM Yoshiyuki Kurau=
chi &lt;<a href=3D"mailto:ahochauwaaaaa@gmail.com">ahochauwaaaaa@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I=
n drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI<br>
flag since it returns multipart message.<br>
This patch adds a new arg &quot;flags&quot; in gtp_genl_fill_info() so that=
<br>
flags can be set by the callers.<br>
<br>
Signed-off-by: Yoshiyuki Kurauchi &lt;<a href=3D"mailto:ahochauwaaaaa@gmail=
.com" target=3D"_blank">ahochauwaaaaa@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/net/gtp.c | 11 ++++++-----<br>
=C2=A01 file changed, 6 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c<br>
index 672cd2caf2fb..10fa731bae6d 100644<br>
--- a/drivers/net/gtp.c<br>
+++ b/drivers/net/gtp.c<br>
@@ -1097,7 +1097,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb, stru=
ct genl_info *info)<br>
=C2=A0}<br>
<br>
=C2=A0static struct pdp_ctx *gtp_find_pdp_by_link(struct net *net,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0struct nlattr *nla[])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0struct nlattr *nla[])<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct gtp_dev *gtp;<br>
<br>
@@ -1169,11 +1169,11 @@ static int gtp_genl_del_pdp(struct sk_buff *skb, st=
ruct genl_info *info)<br>
=C2=A0static struct genl_family gtp_genl_family;<br>
<br>
=C2=A0static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u3=
2 snd_seq,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 type, struct pdp_ctx *pctx)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int flags, u32 type, struct pdp_ctx *pctx)<b=
r>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 void *genlh;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0genlh =3D genlmsg_put(skb, snd_portid, snd_seq,=
 &amp;gtp_genl_family, 0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0genlh =3D genlmsg_put(skb, snd_portid, snd_seq,=
 &amp;gtp_genl_family, flags,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 type);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (genlh =3D=3D NULL)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto nlmsg_failure;=
<br>
@@ -1227,8 +1227,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb, stru=
ct genl_info *info)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err_unlock;<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D gtp_genl_fill_info(skb2, NETLINK_CB(skb=
).portid,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;snd_seq, info-&gt;nlhdr-&gt=
;nlmsg_type, pctx);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D gtp_genl_fill_info(skb2, NETLINK_CB(skb=
).portid, info-&gt;snd_seq,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;nlhdr-&gt;nlmsg_flags, info-=
&gt;nlhdr-&gt;nlmsg_type, pctx);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (err &lt; 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err_unlock_fre=
e;<br>
<br>
@@ -1271,6 +1271,7 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtp_genl_fill_info(skb=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 NETLINK_CB(cb-&gt;skb).portid,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 cb-&gt;nlh-&gt;nlmsg_seq,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0NLM_F_MULTI,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 cb-&gt;nlh-&gt;nlmsg_type, pctx)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cb-&gt;a=
rgs[0] =3D i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cb-&gt;a=
rgs[1] =3D j;<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div>

--00000000000005fced05a3e22f8a--
