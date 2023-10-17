Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1700E7D1F59
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B6CF92830D;
	Sat, 21 Oct 2023 20:10:14 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m_vbxYZSSK0h; Sat, 21 Oct 2023 20:10:14 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A926D28314;
	Sat, 21 Oct 2023 20:10:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id AAFB538A004A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 14:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 74E1D27F3C
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 14:18:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D8i_mHwu8ZbN for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 17 Oct 2023 14:18:25 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by mail.osmocom.org (Postfix) with ESMTPS id C77EE27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 14:18:24 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d849df4f1ffso6533120276.0
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 07:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697552302; x=1698157102; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NI422ZwFC+FZy06/SEvrLc/oafnXORoAgmBSlqnJCBc=;
        b=Z9yhwfg90u07u4FLbCidrtHONskI1gwX3b5V6yqMUAnIKZZLaTTfnxmYHLnV0DF0/K
         wXkU0Pb1O4GrT6HXAm5hhOXQRaaZxnhiL7ztySVv45LuFDsxQ0P9yJuq/jqCItpu11l0
         phgIBmGsrhgGpUGOOIg6Lbd9hCUf7x55gn8HHlcy1EFN5NkKrWZNvVgxUoAuHLgi9uAm
         C1PShkjtYyCAboDugFRgXDmsh8TuznZ0/9CL/GfPgeqjdirzK1tbnH9okfePz6PWBURH
         zqvw8QPzXRUf2SOGBtZVJ3r7MpvJRuVLi+WnzCHmazBTViOrfpRZ8dwLoIu7y8gMRb84
         C2Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697552302; x=1698157102;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NI422ZwFC+FZy06/SEvrLc/oafnXORoAgmBSlqnJCBc=;
        b=hReZugeoEkxYjJZ5ckmm5X8Zv1V5wjWMgDmmYTxecqn4wmYdEWTtd1AXgQGltN3Mm4
         ngksf/CajP3quLAEI4PI0Xfn07GuziwjjBPJJBod5KlwJai7Lg1nAM2jwjuQzLlQV8/Q
         1DsLbpCgeOGwogvINvrIMrdxHqSlJhxCxg6EX20b+GANKDwm9QwGRdtVoeXAkxffGcpd
         aXWBKmxkuWgiBSjHGPRKu+zGrO9YovZHRoiakAWQj7vXKhz2172JoElIR0NsYt3AsyeO
         jcI4UwJqE7m2sJ6SEl1aRnZeir+hBhzjzQVWEeJv/U90zXb2G6LcZDULHJ1VY7DLkfwT
         yQwQ==
X-Gm-Message-State: AOJu0YxelN+mNlhhtBdmxUX94m5ITENhLtgLBGGuILbPav+Jq7mmwgU4
	BqI2LpKdB36vmohqVCNEZpl0L36ojPp157qswys=
X-Google-Smtp-Source: AGHT+IGV/cNOijgcyX6YbdaC3gix3tYgeDlyLmcozvJjGQPyfoC73JRgCPVyHX5pMQVaZ6seRvCciLzWohic8S0Q594=
X-Received: by 2002:a25:e689:0:b0:d9b:df08:811d with SMTP id
 d131-20020a25e689000000b00d9bdf08811dmr2272203ybh.32.1697552301876; Tue, 17
 Oct 2023 07:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com> <20231016152343.1fc7c7be@kernel.org>
In-Reply-To: <20231016152343.1fc7c7be@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Tue, 17 Oct 2023 23:18:10 +0900
Message-ID: <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to GTP
 from ethtool
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: hayatake396@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VB3GQGVYONVF7OFISNQVTBAG7GO6QLSC
X-Message-ID-Hash: VB3GQGVYONVF7OFISNQVTBAG7GO6QLSC
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Harald Welte <laforge@gnumonks.org>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VB3GQGVYONVF7OFISNQVTBAG7GO6QLSC/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Jakub-san and Simon-san
Thank you for reviewing again!

> Reviewed-by: Simon Horman <horms@kernel.org>
Thanks;)

> Adding Willem, Pablo, and Harald to CC (please CC them on future
versions).

of course.  thanks!

> nit: please note that these are hex numbers,
     next value after 0x19 is 0x1a, not 0x20.

!!!!! I'm so embarrassed.... I will next version fix

> What gives me pause here is the number of flow sub-types we define
> for GTP hashing.
>
> My understanding of GTP is limited to what I just read on Wikipedia.
>
> IIUC the GTPC vs GTPU distinction comes down to the UDP port on
> which the protocol runs? Are the frames also different?
>
> I'm guessing UL/DL are uplink/downlink but what's EH?
>
> How do GTPU_V4_FLOW, GTPU_EH_V4_FLOW, GTPU_UL_V4_FLOW, and
> GTPU_DL_V4_FLOW differ?
>
> Key question is - are there reasonable use cases that you can think of
> for enabling GTP hashing for each one of those bits individually or can
> we combine some of them?

Firstly, what I want to convey is that the structure of each of these
packets is entirely different. Therefore, in terms of ethtool, since
packets with the same structure are considered a flow, I understand
that it is necessary to define such different things (I actually think
that the people at Intel are doing it that way).

Let me first explain the difference between GTPC and GTPU.
The UDP ports are different in GTPC and GTPU.
What's further different is that in the case of GTPC, GTPv2-C is used,
and in the case of GTPU, GTPv1-U is used, which are mainstream in
current mobile communications.

Especially the uniqueness of GTPC communication varies according to
the processing phase.
CSR (Create Session Request) starts processing from a state where TEID
is not included. Therefore, it is separated into cases where packets
have TEID and where they don=E2=80=99t.
Of course, there are cases where we want to specially process only the
communication without TEID, and just creating a session is one of the
more vulnerable parts of the mobile network.

EH stands for Extension Header.
This is the case with GTPU packets compatible with 5G. If it=E2=80=99s the
Flow Director, it reads a parameter related to QoS called QFI.
Without this, it is impossible to process GTPv1 packets compatible with 5G.
Furthermore, this Extension Header has parts where the shape differs
depending on UL/DL, which is called the PDU Session Container.

Specific use cases basically apply to services that terminate GTP itself.

The structure of processing in RSS with ethtool until now was to
select a fixed shape of packets and parameters of those packets to
perform RSS.
Conforming to this format is why it becomes so numerous.


2023=E5=B9=B410=E6=9C=8817=E6=97=A5(=E7=81=AB) 7:23 Jakub Kicinski <kuba@ke=
rnel.org>:

>
> Thanks for the v2!
>
> Adding Willem, Pablo, and Harald to CC (please CC them on future
> versions).
>
> On Thu, 12 Oct 2023 06:01:15 +0000 Takeru Hayasaka wrote:
> > diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.=
h
> > index f7fba0dc87e5..a2d4f2081cf3 100644
> > --- a/include/uapi/linux/ethtool.h
> > +++ b/include/uapi/linux/ethtool.h
> > @@ -2011,6 +2011,18 @@ static inline int ethtool_validate_duplex(__u8 d=
uplex)
> >  #define      IPV4_FLOW       0x10    /* hash only */
> >  #define      IPV6_FLOW       0x11    /* hash only */
> >  #define      ETHER_FLOW      0x12    /* spec only (ether_spec) */
> > +#define GTPU_V4_FLOW 0x13    /* hash only */
> > +#define GTPU_V6_FLOW 0x14    /* hash only */
> > +#define GTPC_V4_FLOW 0x15    /* hash only */
> > +#define GTPC_V6_FLOW 0x16    /* hash only */
> > +#define GTPC_TEID_V4_FLOW 0x17       /* hash only */
> > +#define GTPC_TEID_V6_FLOW 0x18       /* hash only */
> > +#define GTPU_EH_V4_FLOW 0x19 /* hash only */
> > +#define GTPU_EH_V6_FLOW 0x20 /* hash only */
>
> nit: please note that these are hex numbers,
>      next value after 0x19 is 0x1a, not 0x20.
>
> > +#define GTPU_UL_V4_FLOW 0x21 /* hash only */
> > +#define GTPU_UL_V6_FLOW 0x22 /* hash only */
> > +#define GTPU_DL_V4_FLOW 0x23 /* hash only */
> > +#define GTPU_DL_V6_FLOW 0x24 /* hash only */
> >  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
> >  #define      FLOW_EXT        0x80000000
> >  #define      FLOW_MAC_EXT    0x40000000
>
> What gives me pause here is the number of flow sub-types we define
> for GTP hashing.
>
> My understanding of GTP is limited to what I just read on Wikipedia.
>
> IIUC the GTPC vs GTPU distinction comes down to the UDP port on
> which the protocol runs? Are the frames also different?
>
> I'm guessing UL/DL are uplink/downlink but what's EH?
>
> How do GTPU_V4_FLOW, GTPU_EH_V4_FLOW, GTPU_UL_V4_FLOW, and
> GTPU_DL_V4_FLOW differ?
>
> Key question is - are there reasonable use cases that you can think of
> for enabling GTP hashing for each one of those bits individually or can
> we combine some of them?
>
> > @@ -2025,6 +2037,7 @@ static inline int ethtool_validate_duplex(__u8 du=
plex)
> >  #define      RXH_IP_DST      (1 << 5)
> >  #define      RXH_L4_B_0_1    (1 << 6) /* src port in case of TCP/UDP/S=
CTP */
> >  #define      RXH_L4_B_2_3    (1 << 7) /* dst port in case of TCP/UDP/S=
CTP */
> > +#define      RXH_GTP_TEID    (1 << 8) /* teid in case of GTP */
> >  #define      RXH_DISCARD     (1 << 31)
