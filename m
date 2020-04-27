Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 178A41BA154
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 27 Apr 2020 12:32:50 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 961FE124152;
	Mon, 27 Apr 2020 10:32:31 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=BNHofljb
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::244; helo=mail-lj1-x244.google.com;
 envelope-from=ahochauwaaaaa@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by lists.osmocom.org (Postfix) with ESMTP id B29AB12413B
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 27 Apr 2020 10:32:23 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id b2so16969747ljp.4
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 27 Apr 2020 03:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BKNc/3TplWvoBD2/aAQTmbqywzfmckKf75wRdrnKAMc=;
 b=BNHofljbnK9vENeH4j26c9djt6K5q7YdUY5LcwzCEfEUXBD4DJ2tQh2jyzVovKaz1M
 GWULFIA4jCORDoLUeLJnOMa+dEKfRRE1pvXnufvhpzBam1k+hTaGnNbqNdDusq9+81cV
 pOQKfv/qcrvcw9wi3a/L98OASNWX/bqTzGWKf55IHZUuGFcJ2zyAKs7DZnknTsrEUN0a
 0WHM6/zUawheLJVqXy2qGYNrIfq6Rc987OgT0g02XvD94b7R5JD4NjlFU1ovUq5OqE2I
 TfBI8DA/mtQxfVsnewlZ6lExPIBn9Nj9meZdU/s5JPQ9ZR/YnmtgNE/8zzVhA155HqZp
 VeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BKNc/3TplWvoBD2/aAQTmbqywzfmckKf75wRdrnKAMc=;
 b=lbSlma+dleoummcghqtK1OvbYCpeI9fdTrc6yBKLtdDU/iYjAbBgfip/mXwCTF/gZl
 dFERKsQ59C21Gu+/9BHxoWkF8E9dr971q61M9V7hn0R7uRWL4hASYZybnL8nKwXJ4CQa
 T7yW5txeHkd5y6gC/fE+URGeBiJmn430eV44hl3uR5kGny1NCmjzL2thM4WhbAPweXVM
 PmXukv1YjL/Q4tTdeTKE+iRpt5dkU8EzqaYdEvcVHidmZhKB42L3YRvH2YQNT2Uw8SXQ
 o5jNAPED54eaqqiRm+4eyyKeSJAmFOQHoSGgG/V+pEjbKYr/eunKQmlrLbgWMmi8fKGv
 PIFw==
X-Gm-Message-State: AGi0PuanNpUrVQflwKcNLTbHu8dNHrxZ8A4OXlFV7ruH5w3AGuJSwthg
 BOyAvx8J3N9tfr7j3tMY54dxbyvTDi3wJMpH09BdLEro7LU=
X-Google-Smtp-Source: APiQypJ1ODgYOaF5Q7JKFVdpoXvRRbjEOhQxuYF7ltPpVkBx35AafXmme7LiQNTqza2eLM4l1u99Uv6jH8lQLQu7HDQ=
X-Received: by 2002:a2e:888f:: with SMTP id k15mr13327188lji.198.1587983542430; 
 Mon, 27 Apr 2020 03:32:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200422144211.28756-1-ahochauwaaaaa@gmail.com>
 <20200426102955.GA16734@salvia>
In-Reply-To: <20200426102955.GA16734@salvia>
From: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
Date: Mon, 27 Apr 2020 19:32:10 +0900
Message-ID: <CALJqYvWW4BAu1GgrR1s+j4dWBjOYLs0ex2gVjh3vPNJpRSKqrQ@mail.gmail.com>
Subject: Re: [PATCH] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
To: Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: multipart/alternative; boundary="000000000000f4b22f05a4433a42"
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
Cc: osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

--000000000000f4b22f05a4433a42
Content-Type: text/plain; charset="UTF-8"

Hi,

> This should be 0 instead, not sure why using info->nlhdr->nlmsg_flags
> for this netlink GET operation.

That's just my mistake, thank you for your review.
I'll send a revised patch again later today.

BR,
Yoshiyuki

On Sun, Apr 26, 2020 at 7:29 PM Pablo Neira Ayuso <pablo@netfilter.org>
wrote:

> Hi,
>
> On Wed, Apr 22, 2020 at 11:42:11PM +0900, Yoshiyuki Kurauchi wrote:
> > In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
> > flag since it returns multipart message.
> > This patch adds a new arg "flags" in gtp_genl_fill_info() so that
> > flags can be set by the callers.
> >
> > Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
> > ---
> >  drivers/net/gtp.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> > index 672cd2caf2fb..10fa731bae6d 100644
> > --- a/drivers/net/gtp.c
> > +++ b/drivers/net/gtp.c
> > @@ -1097,7 +1097,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb,
> struct genl_info *info)
> >  }
> >
> >  static struct pdp_ctx *gtp_find_pdp_by_link(struct net *net,
> > -                                         struct nlattr *nla[])
> > +                                             struct nlattr *nla[])
> >  {
> >       struct gtp_dev *gtp;
> >
> > @@ -1169,11 +1169,11 @@ static int gtp_genl_del_pdp(struct sk_buff *skb,
> struct genl_info *info)
> >  static struct genl_family gtp_genl_family;
> >
> >  static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32
> snd_seq,
> > -                           u32 type, struct pdp_ctx *pctx)
> > +                           int flags, u32 type, struct pdp_ctx *pctx)
> >  {
> >       void *genlh;
> >
> > -     genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, 0,
> > +     genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family,
> flags,
> >                           type);
> >       if (genlh == NULL)
> >               goto nlmsg_failure;
> > @@ -1227,8 +1227,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb,
> struct genl_info *info)
> >               goto err_unlock;
> >       }
> >
> > -     err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
> > -                              info->snd_seq, info->nlhdr->nlmsg_type,
> pctx);
> > +     err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
> info->snd_seq,
> > +                             info->nlhdr->nlmsg_flags,
> info->nlhdr->nlmsg_type, pctx);
>
> This should be 0 instead, not sure why using info->nlhdr->nlmsg_flags
> for this netlink GET operation.
>
> >       if (err < 0)
> >               goto err_unlock_free;
> >
> > @@ -1271,6 +1271,7 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
> >                                   gtp_genl_fill_info(skb,
> >                                           NETLINK_CB(cb->skb).portid,
> >                                           cb->nlh->nlmsg_seq,
> > +                                         NLM_F_MULTI,
>
> This one looks fine to me.
>
> >                                           cb->nlh->nlmsg_type, pctx)) {
> >                                       cb->args[0] = i;
> >                                       cb->args[1] = j;
> > --
> > 2.17.1
> >
>

--000000000000f4b22f05a4433a42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>&gt; This should be 0 in=
stead, not sure why using info-&gt;nlhdr-&gt;nlmsg_flags<br>
&gt; for this netlink GET operation.<span class=3D"gmail-im"><br></span></d=
iv><div><br></div><div>That&#39;s just my mistake, thank you for your revie=
w.</div><div>I&#39;ll send a revised patch again later today.<br></div><div=
><br></div><div>BR,</div><div>Yoshiyuki<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 26, 2020 at 7:=
29 PM Pablo Neira Ayuso &lt;<a href=3D"mailto:pablo@netfilter.org">pablo@ne=
tfilter.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi,<br>
<br>
On Wed, Apr 22, 2020 at 11:42:11PM +0900, Yoshiyuki Kurauchi wrote:<br>
&gt; In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI<br>
&gt; flag since it returns multipart message.<br>
&gt; This patch adds a new arg &quot;flags&quot; in gtp_genl_fill_info() so=
 that<br>
&gt; flags can be set by the callers.<br>
&gt; <br>
&gt; Signed-off-by: Yoshiyuki Kurauchi &lt;<a href=3D"mailto:ahochauwaaaaa@=
gmail.com" target=3D"_blank">ahochauwaaaaa@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/gtp.c | 11 ++++++-----<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 5 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c<br>
&gt; index 672cd2caf2fb..10fa731bae6d 100644<br>
&gt; --- a/drivers/net/gtp.c<br>
&gt; +++ b/drivers/net/gtp.c<br>
&gt; @@ -1097,7 +1097,7 @@ static int gtp_genl_new_pdp(struct sk_buff *skb,=
 struct genl_info *info)<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static struct pdp_ctx *gtp_find_pdp_by_link(struct net *net,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0struct nlattr *nla[])<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0struct nlattr *nla[])<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct gtp_dev *gtp;<br>
&gt;=C2=A0 <br>
&gt; @@ -1169,11 +1169,11 @@ static int gtp_genl_del_pdp(struct sk_buff *sk=
b, struct genl_info *info)<br>
&gt;=C2=A0 static struct genl_family gtp_genl_family;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_porti=
d, u32 snd_seq,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 type, struct pdp_ctx *pctx)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0int flags, u32 type, struct pdp_ctx *pctx)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0void *genlh;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0genlh =3D genlmsg_put(skb, snd_portid, snd_seq, &=
amp;gtp_genl_family, 0,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0genlh =3D genlmsg_put(skb, snd_portid, snd_seq, &=
amp;gtp_genl_family, flags,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0type);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (genlh =3D=3D NULL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto nlmsg_failu=
re;<br>
&gt; @@ -1227,8 +1227,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb,=
 struct genl_info *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_unlock;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0err =3D gtp_genl_fill_info(skb2, NETLINK_CB(skb).=
portid,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 info-&gt;snd_seq, info-&gt;nlhdr-&gt;nl=
msg_type, pctx);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0err =3D gtp_genl_fill_info(skb2, NETLINK_CB(skb).=
portid, info-&gt;snd_seq,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0info-&gt;nlhdr-&gt;nlmsg_flags, info-&gt=
;nlhdr-&gt;nlmsg_type, pctx);<br>
<br>
This should be 0 instead, not sure why using info-&gt;nlhdr-&gt;nlmsg_flags=
<br>
for this netlink GET operation.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err &lt; 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_unlock_=
free;<br>
&gt;=C2=A0 <br>
&gt; @@ -1271,6 +1271,7 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gtp_genl_fill_info(s=
kb,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0NETLINK_CB(cb-&gt;skb).portid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0cb-&gt;nlh-&gt;nlmsg_seq,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0NLM_F_MULTI,<br>
<br>
This one looks fine to me.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0cb-&gt;nlh-&gt;nlmsg_type, pctx)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cb-&gt=
;args[0] =3D i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cb-&gt=
;args[1] =3D j;<br>
&gt; -- <br>
&gt; 2.17.1<br>
&gt; <br>
</blockquote></div>

--000000000000f4b22f05a4433a42--
