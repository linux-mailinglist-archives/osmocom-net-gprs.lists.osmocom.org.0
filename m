Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FF27D1F60
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1A14028320;
	Sat, 21 Oct 2023 20:14:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXyIeZeAn471; Sat, 21 Oct 2023 20:14:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2074328324;
	Sat, 21 Oct 2023 20:14:41 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CD6E138A3D35
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 16:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A50FD28158
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 16:20:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZYqTdk2fARA for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 16:20:16 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by mail.osmocom.org (Postfix) with ESMTPS id 4E7ED27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 16:20:15 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d9a7a3e17d1so8218716276.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 09:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697646014; x=1698250814; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5L0ftx8gbLC+xr2pL7y3oGFwZgyV4cm0SgTFI25QzVw=;
        b=F2mUkhjWtIPHRdLwsm2BJs8kJCDcnPSZbdDM3LBH57Cbq1BbjcM/6dKZPE9aWKAmp0
         JvRH7oGEajNyULJ0NavQ+l50IWiYZ0LWDShcCrxxuGRmNTldpLYfFm4IB0YS59/S03Pt
         mM+5p3L5axorC9IdKbGNT4txafC5Uu+TMFlxw8PeUdEHfxBE3w+xsXJElkooizOHGnmL
         GYIBPjk82Af3Ftd1ydkfwEOVjDP+8V35OXKuhOFuBevnWYAMpo08Z8qpL82qniUhKXbA
         o47JQ1Yq6grqtvmJ8BNyVLTGktrMI02XxTN8GBg1gt8aPKPU93vObZHDinxkOljZkLD/
         GCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697646014; x=1698250814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5L0ftx8gbLC+xr2pL7y3oGFwZgyV4cm0SgTFI25QzVw=;
        b=tHSod/CRs/z3nsAHLrRO2OwuaFCrfAEQ3zYdNQCpHhACV21iVvurA7nTWDWGGu0KKQ
         CqSqm0tPwUs5tHYLUvZOKK66FC5G66Oc1iP9sbszpLO3aCV+qKGIvBipfQH+gjaOBLex
         /cmyVo48YYyua98xuJJV5XYfaJsbAk057hIhCnBWPDKFsJ2W95Acw+WDKSTOl6SUPFHa
         6PrTcztyqXJvQYPX1pBz3ZK5uWDA+KxfEcMoV9ii/yZIYyzZEXLl8eWciwZtuxShXBD3
         Sgiiz6rWYrzKOY4ntIOCzhkm2FI7ZHNHF+Ogs6r1d0ktlYgq+jG3Q88sI7+AAvmvzrZx
         xSdA==
X-Gm-Message-State: AOJu0YxYHPS6yxYJ/33Yr7WjRNaYXa1079tlijZ1C/oyJqf+b7Kq5Vdy
	YTK2ER02CkuqoNLc4kFY0ygcNyWGSl8e4I8/h+w=
X-Google-Smtp-Source: AGHT+IFjjYZkrXWdeKcUaLTuaPe4tFQWuJ/yaL9u2gDs+qgC4Ebk83MvyMHkPAPd8vqIYG6js+mqy4mojHTsTM2SKMw=
X-Received: by 2002:a25:f56:0:b0:d9b:90bf:e74b with SMTP id
 83-20020a250f56000000b00d9b90bfe74bmr5775931ybp.7.1697646014247; Wed, 18 Oct
 2023 09:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org> <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com> <ZS-WjVVaoBXqdZgB@nataraja>
In-Reply-To: <ZS-WjVVaoBXqdZgB@nataraja>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Thu, 19 Oct 2023 01:20:03 +0900
Message-ID: <CADFiAcJYEdieGA6gFme26KqZA1A7UhKqDaY-jVDz1QL+gUkXRQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to GTP
 from ethtool
To: Harald Welte <laforge@gnumonks.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: hayatake396@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RKB2X4CHPVR7UCG7EXH7CMEB6YRXDVUR
X-Message-ID-Hash: RKB2X4CHPVR7UCG7EXH7CMEB6YRXDVUR
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jakub Kicinski <kuba@kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/RKB2X4CHPVR7UCG7EXH7CMEB6YRXDVUR/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Harald-san and all.

Thank you for the review and comment!

> So only in case the user intentionally configures their network to use
> the same IP address for GTP-C and GTP-U traffic one will need to start
> distinguishing GTP-C and GTP-U on one host/NIC with the RSS mechanism:
> Steer the GTP-C traffic to the control plane instance on one CPU and
> spread the GTP-U traffic via hash function to multiple other
> queues/CPUs.  I personally think it's short-sighted to use identical IPs
> for control and user plane, as it means you can never scale out to
> multiple machines without introducing some kind of dedicated load
> balancer in front.  But assuming some people still want to do it that
> way: Yes, then you need the feature to split GTP-C form GTP-U via RSS to
> scale well.

I don't deny that using the same IP is short-sighted. However, in
environments such as Private 5G and Private LTE, it is possible that a
small mobile core OSS (e.g., NextEPC, Free5GC, etc.) is placed. Even
if the addresses are separated, processing on the same computer
instance is a possible scenario, so there are practical use cases.

> agreed.  Though I'm not entirely sure one would usually want to treat v4
> different from v6.  I'd assume they would usually both follow the same
> RSS scheme?

Indeed, you might want them to be treated in the same way.
But this follows the existing design of Ethtool.
In fact, formats like tcp4, tcp6, etc... with the L3 version appended,
are given, and the existing implementation of Ethtool is described in
the format of IPv4|6 + L4. I don=E2=80=99t know why the existing
implementation is divided into IPv4 and v6.

> Don't worry, you were very clear in this e-mail.

Thank you for your kind comment :)

> Thanks for taking the time.  As stated, I think it would be best to have
> these or some other some brief comments about the different flow types
> in the source code (and especially the documentation) of ethtool.

Understood. I=E2=80=99m thinking of writing a definition in the Ethtool hea=
der
about this flow in the next version of the patch :)

> Based on your explanation, I agree that indeed those are all different
> flow types that occur in real-life on PGW/UPF and other 3GPP network
> elements/functions.  I can also very well imagine that there are use
> cases to steer all of those separately, including the EH and UL/DL types
> you mentioned.

Thanks. I'm glad you understood. I appreciate your review and comments.

I've been able to organize various comments and I think you've
understood what is operated by the patch I sent.

Now, here, I=E2=80=99d like to propose two policies for the next version of=
 the patch.

1. Keep this patch as is and write the necessary supplementary
comments (of course, nits fix will be done).
The good thing about this is that it can handle detailed use cases (as
Harald-san understood)

There might be something more pleasant than expected use cases. The
bad thing is the multitude of flow formats. Considering 6G, it may
increase a bit more.

2.Limit the rx-flow-hash flow type to gtpu4|6 and gtpc4|6, and rewrite
to implicitly execute the previous function.
we will add comments (There will be fewer comments than plan 1).

In other words, in Intel Ice, the proposal has the following semantics.
gtpu4|6: GTPU_V(4|6)_FLOW + GTPU_EH_V(4|6)_FLOW
gtpc4|6: GTPC_V(4|6)_FLOW + GTPC_TEID_V(4|6)_FLOW

The good thing is that it seems easy for users to use, and the format
of the GTP-related flow is less likely to increase or decrease in the
future.
The bad thing is that it may not be able to handle detailed use cases.

Please let me know which one, 1 or 2, you prefer.
Also, I would be happy if there is any further feedback!

Thanks

2023=E5=B9=B410=E6=9C=8818=E6=97=A5(=E6=B0=B4) 17:26 Harald Welte <laforge@=
gnumonks.org>:
>
> Hi Takeru,
>
> On Wed, Oct 18, 2023 at 01:49:08AM +0900, takeru hayasaka wrote:
> > I'm not very proficient in English, so I'm worried whether I can
> > explain it well.
>
> Don't worry, you were very clear in this e-mail.
>
> > Therefore, I will try to briefly explain the flow and what kind of
> > cases these are in a straightforward manner.
>
> Thanks for taking the time.  As stated, I think it would be best to have
> these or some other some brief comments about the different flow types
> in the source code (and especially the documentation) of ethtool.
>
> Based on your explanation, I agree that indeed those are all different
> flow types that occur in real-life on PGW/UPF and other 3GPP network
> elements/functions.  I can also very well imagine that there are use
> cases to steer all of those separately, including the EH and UL/DL types
> you mentioned.
>
> So I'm supporing your patch with all its many different flow types for RS=
S.
>
> Thanks,
>         Harald
> --
> - Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.o=
rg/
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch. =
A6)
