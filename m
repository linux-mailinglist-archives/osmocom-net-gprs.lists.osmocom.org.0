Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3789D7D1F5B
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:11:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1685828315;
	Sat, 21 Oct 2023 20:11:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jft9I5sXyGNO; Sat, 21 Oct 2023 20:11:45 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5E53E2831A;
	Sat, 21 Oct 2023 20:11:39 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 969BF38A004F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 16:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 729ED27F3C
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 16:49:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8yt--NFUsD-7 for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 17 Oct 2023 16:49:22 +0000 (UTC)
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
	by mail.osmocom.org (Postfix) with ESMTPS id E78C327F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 16:49:21 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-d9a3d737d66so6255180276.2
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 17 Oct 2023 09:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697561360; x=1698166160; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/IeJ1quEEo+PU8MAFfTtxQFJhzxtcsergsMnGbzvTg=;
        b=Uc4WB551V+Elp0C1gVMPtaTi3JjXkynjulmR9Lzzu7EznAoHSkrTUB7VPborX3FXpy
         aTA5Y+HXpkySbXHmLyHGjoiz4R64cbwtLZ/yllZ90lBdXr+sC3QQ/lHnyGhkiF59LmSu
         KMcAvAvg03YISkYZftOt36aG10SSDRkdZ6oso5uBH7ElkSYgdAoGakf4JBVMLWRYqIQZ
         q8KTO40hYnvtKw1XWwc3HHGMWCLomqmVDTZDcOGZigbnTYBnisnLD2blIhdk+4mCEjiL
         VYzEZS9JqiDHO7PdVAlkvPLXgflDvBjyE//B/SDwgj+NowmuSYwooCm4Lo6igYXnJFhd
         nF+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697561360; x=1698166160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/IeJ1quEEo+PU8MAFfTtxQFJhzxtcsergsMnGbzvTg=;
        b=pS90A8Tl+rE6OjftFtduGpV+MJvhRZWjBz6/W4pTSIPzwTZ38A1UZKef2ezqtD1ghg
         mJIHxBMVyT9CRq5g8EPLGzirx1XM04qE+J823YmgCRnRJanlheDUtmi30WbS4J+7lrD+
         9gHjTuj+o74kvYZALBZCl364ensQ6VZJ9lL+NoRTubzziDOdLTU56PT7X6YD56IpZbhP
         miQALch5i2DaZZMOSXmo1+6dkNXUavKqYKG4/SLGWypvcSD4FCLetxhgnGc7GuHQ+ya4
         n1kRzUbcQXaxByg4tJMBTnvC0fTU0SkCXJsFJCJdoxP2FztuPXQaOcyOlpoloK8koSON
         +42Q==
X-Gm-Message-State: AOJu0YyU/zz7qwbfJlGJPVMM9YeMIuQoifrlL9Sq0FfeUV0RdmOMNJnD
	+7LJ6uGuJoRlOvHWU1fDl9pbsr4Muc8ER7ARV64=
X-Google-Smtp-Source: AGHT+IEiQn/zbKdPMRTxURXz52F367KaaKK1aeWWkhuklEiJTzkYdLjtdrMAxfeCCrP7CSMs8e/5cfSwwFKz+OtxKZk=
X-Received: by 2002:a05:6902:528:b0:d9a:6374:532a with SMTP id
 y8-20020a056902052800b00d9a6374532amr2473855ybs.30.1697561360211; Tue, 17 Oct
 2023 09:49:20 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org> <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
In-Reply-To: <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 18 Oct 2023 01:49:08 +0900
Message-ID: <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to GTP
 from ethtool
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: hayatake396@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7BXPRCJGWT5DX3DQTGQRQ4T7B44Q4U5H
X-Message-ID-Hash: 7BXPRCJGWT5DX3DQTGQRQ4T7B44Q4U5H
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Harald Welte <laforge@gnumonks.org>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7BXPRCJGWT5DX3DQTGQRQ4T7B44Q4U5H/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

I'm not very proficient in English, so I'm worried whether I can
explain it well.
Therefore, I will try to briefly explain the flow and what kind of
cases these are in a straightforward manner.

> +#define GTPU_V4_FLOW 0x13 /* hash only /
> +#define GTPU_V6_FLOW 0x14 / hash only */

These are the cases for GTPv1-U IPv4 and v6. The format of the GTP
packets only includes elements like TEID and GTP version. They are
mainly expected to be used for UE data communication.

> +#define GTPC_V4_FLOW 0x15 /* hash only /
> +#define GTPC_V6_FLOW 0x16 / hash only */

These are the cases for GTPv2-C IPv4 and v6. The format of these GTP
packets does not include TEID. They are mainly expected to be used for
communication for generating sessions for UE data communication,
commonly referred to as CSR.

> +#define GTPC_TEID_V4_FLOW 0x17 /* hash only /
> +#define GTPC_TEID_V6_FLOW 0x18 / hash only */

These are the cases for GTPv2-C IPv4 and v6. Unlike before, the format
of these GTP packets includes TEID. After session creation, it becomes
this packet. It is mainly used for requests to achieve UE handovers.

> +#define GTPU_EH_V4_FLOW 0x19 /* hash only /
> +#define GTPU_EH_V6_FLOW 0x20 / hash only */

These are cases of GTPv1-U and Extension Header for the PDU Session
Container for IPv4 and v6. The format of these GTP packets includes
TEID and QFI. In 5G communication using UPF and others, data
communication using this extended header will be conducted.

> +#define GTPU_UL_V4_FLOW 0x21 /* hash only /
> +#define GTPU_UL_V6_FLOW 0x22 / hash only /
> +#define GTPU_DL_V4_FLOW 0x23 / hash only /
> +#define GTPU_DL_V6_FLOW 0x24 / hash only */

These packets are cases of GTPv1-U and Extension Header for the PDU
Session Container of IPv4 and v6. The difference from before is
distinguishing by looking at the PDU Session Container. There is also
a difference in the data contained based on DL/UL, which can be used
to distinguish packets.

All these functionalities explained up to this point are useful when
you want to process data communication from the mobile network at UPF,
PGW, etc.

Jakub-san might be concerned because there are many flows. If the
number of these flows seems too much, it might be good to reduce the
cases of EH_UL/DL and GTPC only.
I made this implementation to fully utilize the GTP features in Intel
ICE for RSS, so there are many flows.
The reason is that UL/DL can be substituted with EH (looking at the
implementation in Intel ICE, both UL/DL seem to be dont care), and for
GTPC without TEID, originally it should be hashed with IMSI etc. when
doing RSS, but it doesn=E2=80=99t seem to be done right now.

In other words, if it seems better to reduce them, it might be good to
only incorporate gtp4|6, gtpc4|6, gtpue4|6.

I would be happy to receive your feedback :)

2023=E5=B9=B410=E6=9C=8817=E6=97=A5(=E7=81=AB) 23:37 takeru hayasaka <hayat=
ake396@gmail.com>:

>
> Hi Harald-san
>
> Thanks for your review!
>
> > so if I'm guessing correctly, those would be hashing only on the V4/V6
> destination address?  Why would that be GTP specific?  The IPv4/v6
> header in front of the GTP header is a normal IP header.
>
> This is not correct. The TEID and the src port/dst port of the inner
> packet are also included.
>
> > Are there really deployments where the *very limited* GTP-C control
> I also think that it should not be limited to GTP-C. However, as I
> wrote in the email earlier, all the flows written are different in
> packet structure, including GTP-C. In the semantics of ethtool, I
> thought it was correct to pass a fixed packet structure and the
> controllable parameters for it. At least, the Intel ice driver that I
> modified is already like that.
>
> > IMHO that kind of explanation should be in the comment next to the
> > #define (for all of them) rather than "hash only".  That way it's
> > obvious to the reader what they do, rather than having to guess.
>
> Regarding what should be hashed, this is a complex case. It will also
> answer other questions, but for example, if you read this Intel ice
> driver, there are cases where you can manipulate the port of the Inter
> packet. I think this varies depending on the driver to be implemented.
>
> Note that these comments follow the existing code of ethtool.
>
> FYI: I think it will be helpful for you!
> https://www.intel.com/content/www/us/en/content-details/617015/intel-ethe=
rnet-controller-e810-dynamic-device-personalization-ddp-technology-guide.ht=
ml
> (cf. Table 8. Patterns and Input Sets for iavf RSS)
>
> 2023=E5=B9=B410=E6=9C=8817=E6=97=A5(=E7=81=AB) 23:18 takeru hayasaka <hay=
atake396@gmail.com>:
> >
> > Hi Jakub-san and Simon-san
> > Thank you for reviewing again!
> >
> > > Reviewed-by: Simon Horman <horms@kernel.org>
> > Thanks;)
> >
> > > Adding Willem, Pablo, and Harald to CC (please CC them on future
> > versions).
> >
> > of course.  thanks!
> >
> > > nit: please note that these are hex numbers,
> >      next value after 0x19 is 0x1a, not 0x20.
> >
> > !!!!! I'm so embarrassed.... I will next version fix
> >
> > > What gives me pause here is the number of flow sub-types we define
> > > for GTP hashing.
> > >
> > > My understanding of GTP is limited to what I just read on Wikipedia.
> > >
> > > IIUC the GTPC vs GTPU distinction comes down to the UDP port on
> > > which the protocol runs? Are the frames also different?
> > >
> > > I'm guessing UL/DL are uplink/downlink but what's EH?
> > >
> > > How do GTPU_V4_FLOW, GTPU_EH_V4_FLOW, GTPU_UL_V4_FLOW, and
> > > GTPU_DL_V4_FLOW differ?
> > >
> > > Key question is - are there reasonable use cases that you can think o=
f
> > > for enabling GTP hashing for each one of those bits individually or c=
an
> > > we combine some of them?
> >
> > Firstly, what I want to convey is that the structure of each of these
> > packets is entirely different. Therefore, in terms of ethtool, since
> > packets with the same structure are considered a flow, I understand
> > that it is necessary to define such different things (I actually think
> > that the people at Intel are doing it that way).
> >
> > Let me first explain the difference between GTPC and GTPU.
> > The UDP ports are different in GTPC and GTPU.
> > What's further different is that in the case of GTPC, GTPv2-C is used,
> > and in the case of GTPU, GTPv1-U is used, which are mainstream in
> > current mobile communications.
> >
> > Especially the uniqueness of GTPC communication varies according to
> > the processing phase.
> > CSR (Create Session Request) starts processing from a state where TEID
> > is not included. Therefore, it is separated into cases where packets
> > have TEID and where they don=E2=80=99t.
> > Of course, there are cases where we want to specially process only the
> > communication without TEID, and just creating a session is one of the
> > more vulnerable parts of the mobile network.
> >
> > EH stands for Extension Header.
> > This is the case with GTPU packets compatible with 5G. If it=E2=80=99s =
the
> > Flow Director, it reads a parameter related to QoS called QFI.
> > Without this, it is impossible to process GTPv1 packets compatible with=
 5G.
> > Furthermore, this Extension Header has parts where the shape differs
> > depending on UL/DL, which is called the PDU Session Container.
> >
> > Specific use cases basically apply to services that terminate GTP itsel=
f.
> >
> > The structure of processing in RSS with ethtool until now was to
> > select a fixed shape of packets and parameters of those packets to
> > perform RSS.
> > Conforming to this format is why it becomes so numerous.
> >
> >
> > 2023=E5=B9=B410=E6=9C=8817=E6=97=A5(=E7=81=AB) 7:23 Jakub Kicinski <kub=
a@kernel.org>:
> >
> > >
> > > Thanks for the v2!
> > >
> > > Adding Willem, Pablo, and Harald to CC (please CC them on future
> > > versions).
> > >
> > > On Thu, 12 Oct 2023 06:01:15 +0000 Takeru Hayasaka wrote:
> > > > diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/etht=
ool.h
> > > > index f7fba0dc87e5..a2d4f2081cf3 100644
> > > > --- a/include/uapi/linux/ethtool.h
> > > > +++ b/include/uapi/linux/ethtool.h
> > > > @@ -2011,6 +2011,18 @@ static inline int ethtool_validate_duplex(__=
u8 duplex)
> > > >  #define      IPV4_FLOW       0x10    /* hash only */
> > > >  #define      IPV6_FLOW       0x11    /* hash only */
> > > >  #define      ETHER_FLOW      0x12    /* spec only (ether_spec) */
> > > > +#define GTPU_V4_FLOW 0x13    /* hash only */
> > > > +#define GTPU_V6_FLOW 0x14    /* hash only */
> > > > +#define GTPC_V4_FLOW 0x15    /* hash only */
> > > > +#define GTPC_V6_FLOW 0x16    /* hash only */
> > > > +#define GTPC_TEID_V4_FLOW 0x17       /* hash only */
> > > > +#define GTPC_TEID_V6_FLOW 0x18       /* hash only */
> > > > +#define GTPU_EH_V4_FLOW 0x19 /* hash only */
> > > > +#define GTPU_EH_V6_FLOW 0x20 /* hash only */
> > >
> > > nit: please note that these are hex numbers,
> > >      next value after 0x19 is 0x1a, not 0x20.
> > >
> > > > +#define GTPU_UL_V4_FLOW 0x21 /* hash only */
> > > > +#define GTPU_UL_V6_FLOW 0x22 /* hash only */
> > > > +#define GTPU_DL_V4_FLOW 0x23 /* hash only */
> > > > +#define GTPU_DL_V6_FLOW 0x24 /* hash only */
> > > >  /* Flag to enable additional fields in struct ethtool_rx_flow_spec=
 */
> > > >  #define      FLOW_EXT        0x80000000
> > > >  #define      FLOW_MAC_EXT    0x40000000
> > >
> > > What gives me pause here is the number of flow sub-types we define
> > > for GTP hashing.
> > >
> > > My understanding of GTP is limited to what I just read on Wikipedia.
> > >
> > > IIUC the GTPC vs GTPU distinction comes down to the UDP port on
> > > which the protocol runs? Are the frames also different?
> > >
> > > I'm guessing UL/DL are uplink/downlink but what's EH?
> > >
> > > How do GTPU_V4_FLOW, GTPU_EH_V4_FLOW, GTPU_UL_V4_FLOW, and
> > > GTPU_DL_V4_FLOW differ?
> > >
> > > Key question is - are there reasonable use cases that you can think o=
f
> > > for enabling GTP hashing for each one of those bits individually or c=
an
> > > we combine some of them?
> > >
> > > > @@ -2025,6 +2037,7 @@ static inline int ethtool_validate_duplex(__u=
8 duplex)
> > > >  #define      RXH_IP_DST      (1 << 5)
> > > >  #define      RXH_L4_B_0_1    (1 << 6) /* src port in case of TCP/U=
DP/SCTP */
> > > >  #define      RXH_L4_B_2_3    (1 << 7) /* dst port in case of TCP/U=
DP/SCTP */
> > > > +#define      RXH_GTP_TEID    (1 << 8) /* teid in case of GTP */
> > > >  #define      RXH_DISCARD     (1 << 31)
