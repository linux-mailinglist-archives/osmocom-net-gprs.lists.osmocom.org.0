Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id A06B2A370AF
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:35:02 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 175251E8C2C;
	Sat, 15 Feb 2025 20:35:02 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o-SQw0gQRTpJ; Sat, 15 Feb 2025 20:35:01 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1464F1E8A6D;
	Sat, 15 Feb 2025 20:34:44 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C92C838A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 10:01:39 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id A91A11E5E3C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 10:01:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WsP9GXTHJQMa for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 10:01:39 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by mail.osmocom.org (Postfix) with ESMTPS id 01E781E5E37
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 10:01:38 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-38dc5764fc0so564732f8f.3
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 02:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739440897; x=1740045697; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QzLT98ZLU5P2fWKiTUzwgsTrlPg66ER6fTAj9aLF8fM=;
        b=S8CPfbtbi4Dhwc9waHVA3mDqYlBCNcdAKgtlLCF36rkU1uMUi4X6J+j4JT21upZSOl
         DHARZ6SpCkAkWOOxtZpkMSZY1NqdPwit4VD18mS9NXk5VtZya97tuv0iTRnG5gxmMjqN
         E8zIVUz1ZU4kiWoyrfJLe+BR/weE+dxPZXNfoW0O+6vhdvym9kCjrq/orYjcRiSxbLWP
         hbE7Zg74F7so9o8W2aTFpzFeaiXgmkoj7liEPeRwAsvx6XSxACY/BEIGU08G9507tBZL
         0B5MFfF+GRko7ts4skn/YUXmm47Sov5Y6OkTQUhodrcvK8XdJVC9L5/cUGxS9BKLxqYR
         VO7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739440897; x=1740045697;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QzLT98ZLU5P2fWKiTUzwgsTrlPg66ER6fTAj9aLF8fM=;
        b=PBjS1BmG+mEx184RnzV5Vq7WIwaHZmO1jh8kStFXYFatk17jFfHWHNbhs6CofjieKY
         7ATkSYb26N28gOc5uoIN/Xx9pz9QrFm7L6kX8j6XF6PPEt6rbOzkYshQfPYlqUE9gL/G
         Fo0ZSqFVUR/JIwId3AXufo57xodm+z4DrMtTE1RDs3pbEo/xNGAn3PDPVgafiqjhCL54
         V5CxgLR/rQD57IswG3HFmLG4GqhrYlLuK19faCh5tmnb2ghn34AKkWrJ9/DW9s8ZVN6l
         yz0d+ncnpR5fMLuNV++lVuwuExJw9Wfm08npYC1EZ4ap0w0sCPyLQfLvjn0Vo+wI/c3U
         2usw==
X-Forwarded-Encrypted: i=1; AJvYcCWJYq++klk2LE4X1DhUBtJYqO1K1xt/iHk2YE9f1kXqfAx7iQMOIv2czOQ6kvujPC10HQ4gHt9DczxgZ9IMEYTA@lists.osmocom.org
X-Gm-Message-State: AOJu0YxOGze05+bJ8YaKZ98OxnBNcLTIc36tS2nkUxL+0FnI4EqFH5oe
	CR4BxfjRwLaRGvCpQ3BI1EWMpnCadgLrHd0b1D2QsG9hOhmFwaWmg+oOgr+U5FK1Xcp9955zAEr
	08OKdOKQ88grzy9T9p8h7puxbdJA=
X-Gm-Gg: ASbGncuygZ+3ULAMDrunLgtPBwB973QB3LVX0mlYONO2C2OlNhoVdceCifNhdOUHhXj
	OJZttq1+FDbAglTekpVqRcrPkcmNALlCdUB6H47nf6JNWtxJ1juC1cloWoP5t6IlHKlOLuAI=
X-Google-Smtp-Source: AGHT+IGNZlywLnJxQSbfEuVU5lxBk1mvVT9ugQLIpGpywWHBNNSM0YY4phrOkk812RGul4zBJlRkLm/hRcXNfYkCEHg=
X-Received: by 2002:a5d:64e2:0:b0:38f:21eb:5d02 with SMTP id
 ffacd0b85a97d-38f21eb5f2dmr4477949f8f.22.1739440897336; Thu, 13 Feb 2025
 02:01:37 -0800 (PST)
MIME-Version: 1.0
References: <20250210133002.883422-3-shaw.leon@gmail.com> <20250213065348.8507-1-kuniyu@amazon.com>
 <CABAhCOTw+CpiwwRGNtDS3gntTQe7XESNzzi6RXd9ju1xO_a5Hw@mail.gmail.com> <2c294c0a-26c4-4ec5-992d-a2fd98829b16@redhat.com>
In-Reply-To: <2c294c0a-26c4-4ec5-992d-a2fd98829b16@redhat.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 13 Feb 2025 18:01:00 +0800
X-Gm-Features: AWEUYZkc6f7IS5VLx0dDxpZ4gB9UzsINfw32PuUeMd1tOC9C9cBZAvSRCBGNkQM
Message-ID: <CABAhCOQLHgiwkydm9vQAkVYZRyrCCu=E9Nh=wwkWFXox0x5uvQ@mail.gmail.com>
Subject: Re: [PATCH net-next v9 02/11] rtnetlink: Pack newlink() params into struct
To: Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LRQISXGMITDC5VOEZXDUMIIMXKI5ZRI7
X-Message-ID-Hash: LRQISXGMITDC5VOEZXDUMIIMXKI5ZRI7
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:38 +0000
CC: Kuniyuki Iwashima <kuniyu@amazon.com>, alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LRQISXGMITDC5VOEZXDUMIIMXKI5ZRI7/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Feb 13, 2025 at 5:17=E2=80=AFPM Paolo Abeni <pabeni@redhat.com> wro=
te:
>
> On 2/13/25 9:36 AM, Xiao Liang wrote:
> > On Thu, Feb 13, 2025 at 2:54=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazo=
n.com> wrote:
> > [...]
> >>> diff --git a/include/linux/if_macvlan.h b/include/linux/if_macvlan.h
> >>> index 523025106a64..0f7281e3e448 100644
> >>> --- a/include/linux/if_macvlan.h
> >>> +++ b/include/linux/if_macvlan.h
> >>> @@ -59,8 +59,10 @@ static inline void macvlan_count_rx(const struct m=
acvlan_dev *vlan,
> >>>
> >>>  extern void macvlan_common_setup(struct net_device *dev);
> >>>
> >>> -extern int macvlan_common_newlink(struct net *src_net, struct net_de=
vice *dev,
> >>> -                               struct nlattr *tb[], struct nlattr *d=
ata[],
> >>> +struct rtnl_newlink_params;
> >>
> >> You can just include <net/rtnetlink.h> and remove it from .c
> >> files, then this forward declaration will be unnecessary.
> >
> > OK. Was not sure if it's desirable to include include/net files from
> > include/linux.
>
> I think we are better of with the forward declaration instead of adding
> more intra header dependencies, which will slow down the build and will
> produces artifacts in the CI runs (increases of reported warning in the
> incremental build, as any warns from the included header will be
> 'propagated' to more files).
>
> >>> +extern int macvlan_common_newlink(struct net_device *dev,
> >>> +                               struct rtnl_newlink_params *params,
> >>>                                 struct netlink_ext_ack *extack);
> >>>
> >>>  extern void macvlan_dellink(struct net_device *dev, struct list_head=
 *head);
> >>
> >>
> >> [...]
> >>> diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
> >>> index bc0069a8b6ea..00c086ca0c11 100644
> >>> --- a/include/net/rtnetlink.h
> >>> +++ b/include/net/rtnetlink.h
> >>> @@ -69,6 +69,42 @@ static inline int rtnl_msg_family(const struct nlm=
sghdr *nlh)
> >>>               return AF_UNSPEC;
> >>>  }
> >>>
> >>> +/**
> >>> + *   struct rtnl_newlink_params - parameters of rtnl_link_ops::newli=
nk()
> >>
> >> The '\t' after '*' should be single '\s'.
> >>
> >> Same for lines below.
> >
> > This is copied from other structs in the same file. Should I change it?
>
> https://elixir.bootlin.com/linux/v6.13.2/source/Documentation/process/mai=
ntainer-netdev.rst#L376
>
> In this series, just use the good formatting for the new code.

Got it. Thanks.

>
> Thanks,
>
> Paolo
>
