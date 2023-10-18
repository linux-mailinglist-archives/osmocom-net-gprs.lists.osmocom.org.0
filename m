Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id D383C7D1F5D
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:13:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4F92D2831E;
	Sat, 21 Oct 2023 20:13:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3hPXpmAKHY5i; Sat, 21 Oct 2023 20:13:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5E1882831A;
	Sat, 21 Oct 2023 20:13:12 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 6ECA138A004F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 01:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3EFFB28134
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 01:53:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XZCDFTwgXXHB for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Oct 2023 01:53:15 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by mail.osmocom.org (Postfix) with ESMTPS id 61F7127F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Oct 2023 01:53:15 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d852b28ec3bso7163867276.2
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 18:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697593994; x=1698198794; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmlrBpe9ja03gtHjG3w9pmjyrdRPZCOV3DdXdWIw+HI=;
        b=XIU8LLvx4NrTadWHtdRsXaWJPOF/NvLNsNylfOWIpKkoY1Sz0UylwB5Q9KZfrdgt4f
         zGzEbu70gdSuhR6JHbPeMNieVIk6A6EsVm9mTU4ejC6bJKiLxecR6mCuqSmJPWDYppdw
         34A/Dm6EXj+eyEiu3cJf88d3Zhcj8J55MRcDd60VKuyI9l181VCoxJUcYMPm69Z95q6P
         Kc50EbG+5P9caDDwvk6foTKE2C2VQNBqFwUzVhZG1kKfKk3i3G27oo0JJuJAkyog05/J
         S1sXGNIVTv3LLrJlk0LbmVNOz1BL3bL625j8XlYNbQNiw+q8kcM2PTAPeYoJmDQmJg4L
         x1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697593994; x=1698198794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmlrBpe9ja03gtHjG3w9pmjyrdRPZCOV3DdXdWIw+HI=;
        b=aC6UFm4+5SKwuQk/GBGNW2vhfCB6m/RDdfOV8pNMttxch35I3EhsxTT2yPNz0iMgBJ
         romKu8u6aobvRjogRAJGsE32tWQizAg4QF2e7PzKTViz+8A569W+ZDxrwYqAOKHkDby9
         ujp6JdWsaLH4KQ9wCjS9oA+VYY1mQ0hFmLvobE2xSe8g6mMgEuAn/cfHWszEtnHs+WLu
         ofdg2nqY1XJnHuXBdEOjDHG8C6hHes0p3keGWQfYOeHbTBOWRB/qI59i6T3bZ4dyFylX
         4qkppizltd+4prbIm77Xnwb433Ym6w1GxBAvRiTxMhpPewEKKpTy7M/QAgKomO4mIBiB
         6MtA==
X-Gm-Message-State: AOJu0YyCZdKgxysec/pePfX3dorlYD1l0v8awbRu0KAh9+ntx66Sga+o
	9TT0kug/DqH+r1D/BxUGozFZ4FjYvWQuWUJl8uQ=
X-Google-Smtp-Source: AGHT+IHsZJ7wGCRzt9Djq/g4QJsVfvZdmXlQJIIyKW6pnkW6E35wuoGTDrDDWXdZqnDJq3ZDx7ObAekxxiZAN55LiUc=
X-Received: by 2002:a25:df09:0:b0:d9a:c56f:a46e with SMTP id
 w9-20020a25df09000000b00d9ac56fa46emr4086505ybg.56.1697593993635; Tue, 17 Oct
 2023 18:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org> <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com> <20231017164915.23757eed@kernel.org>
In-Reply-To: <20231017164915.23757eed@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 18 Oct 2023 10:53:02 +0900
Message-ID: <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to GTP
 from ethtool
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: hayatake396@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FLQT7CY7OQN3AMMAREA5SWRZ6YAZ4BTN
X-Message-ID-Hash: FLQT7CY7OQN3AMMAREA5SWRZ6YAZ4BTN
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Harald Welte <laforge@gnumonks.org>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FLQT7CY7OQN3AMMAREA5SWRZ6YAZ4BTN/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Jakub san

Thank you for your continued review!

> I may be wrong (this API predates my involvement in Linux by a decade)
> but I think that the current ethtool API is not all that precise in
> terms of exact packet headers.
>
> For example the TCPv6 flow includes IPv6 and TCP headers, but the
> packet may or may not have any number of encapsulation headers in place.
> VLAN, VXLAN, GENEVE etc. If the NIC can parse them - it will extract
> the inner-most IPv6 and TCP src/dst and hash on that.
>
> In a way TCP or IP headers may also differ by e.g. including options.
> But as long as the fields we care about (source / dst) are in place,
> we treat all variants of the header the same.
>
> The question really is how much we should extend this sort of thinking
> to GTP and say - we treat all GTP flows with extractable TEID the same;
> and how much the user can actually benefit from controlling particular
> sub-category of GTP flows. Or knowing that NIC supports a particular
> sub-category.
>
> Let's forget about capabilities of Intel NICs for now - can you as a
> user think of practical use cases where we'd want to turn on hashing
> based on TEID for, e.g. gtpu6 and not gtpc6?

of course!
There are clearly cases where we would want to use gtpu4|6 instead of gtpc4=
|6.

For instance, there are PGWs that have the capability to separate the
termination of communication of 4G LTE users into Control and User
planes (C/U).
This is quite convenient from a scalability perspective. In fact, in
5G UPF, the communication is explicitly only on the User plane
(Uplane).

Therefore, services are expected to receive only GTPU traffic (e.g.,
PGW-U, UPF) or only GTPC traffic (e.g., PGW-C). Hence, there arises a
necessity to use only GTPU.

If we do not distinguish packets into Control/User (C/U) with options
like gtp4|6, I can conceive scenarios where performance tuning becomes
challenging.
For example, in cases where we want to process only the control
communication (GTPC) using Flow Director on specific CPUs, while
processing GTPU on the remaining cores.
In scenarios like IoT, where user communication is minimal but the
volume of devices is vast, the control traffic could substantially
increase. Thus, this might also be possible in reverse.
In short, this pertains to being mindful of CPU core affinity.

If we were to propose again, setting aside considerations specific to
Intel, I believe, considering the users of ethtool, the smallest units
should be gtpu4|6 and gtpc4|6.
Regarding Extension Headers and such, I think it would be more
straightforward to handle them implicitly.

What does everyone else think?

2023=E5=B9=B410=E6=9C=8818=E6=97=A5(=E6=B0=B4) 8:49 Jakub Kicinski <kuba@ke=
rnel.org>:
>
> On Tue, 17 Oct 2023 23:37:57 +0900 takeru hayasaka wrote:
> > > Are there really deployments where the *very limited* GTP-C control
> > I also think that it should not be limited to GTP-C. However, as I
> > wrote in the email earlier, all the flows written are different in
> > packet structure, including GTP-C. In the semantics of ethtool, I
> > thought it was correct to pass a fixed packet structure and the
> > controllable parameters for it. At least, the Intel ice driver that I
> > modified is already like that.
>
> I may be wrong (this API predates my involvement in Linux by a decade)
> but I think that the current ethtool API is not all that precise in
> terms of exact packet headers.
>
> For example the TCPv6 flow includes IPv6 and TCP headers, but the
> packet may or may not have any number of encapsulation headers in place.
> VLAN, VXLAN, GENEVE etc. If the NIC can parse them - it will extract
> the inner-most IPv6 and TCP src/dst and hash on that.
>
> In a way TCP or IP headers may also differ by e.g. including options.
> But as long as the fields we care about (source / dst) are in place,
> we treat all variants of the header the same.
>
> The question really is how much we should extend this sort of thinking
> to GTP and say - we treat all GTP flows with extractable TEID the same;
> and how much the user can actually benefit from controlling particular
> sub-category of GTP flows. Or knowing that NIC supports a particular
> sub-category.
>
> Let's forget about capabilities of Intel NICs for now - can you as a
> user think of practical use cases where we'd want to turn on hashing
> based on TEID for, e.g. gtpu6 and not gtpc6?
