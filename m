Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4BDA05DEF
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:33 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AE0821BD1D6;
	Wed,  8 Jan 2025 14:04:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVY5DbEeRLvt; Wed,  8 Jan 2025 14:04:33 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B5F731BD0DB;
	Wed,  8 Jan 2025 14:04:23 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id BA92038A2780
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 10:47:18 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 93DB11BB3A4
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 10:47:18 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svO-b6ysuivJ for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  7 Jan 2025 10:47:17 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by mail.osmocom.org (Postfix) with ESMTPS id C9DB51BB39F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 10:47:16 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso109895375e9.1
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 07 Jan 2025 02:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736246836; x=1736851636; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fh0AFKuAKxAUWXpt7kGI1qVooHVbo7SNiy/9flSEnaA=;
        b=WmTn5YPWoU76onGjYam2XAp8xBQunizEV27UO8UklWw8xXav6lesmZnrfz3vziXcTS
         1B5H8DF/Yrkc5EI4+hool7PNBl/VcnGFgXZbWY1rxHyclv4hbLGtNu++EJqZszJ+kMeA
         PBdpLIZ9LsCS3+E5V/M9AdxJzwbtg6tD1kq8HYqSDQhZ/1uvBBmm1XQ3q+xkP3W4mZ8o
         F8IE8GoIgBgQVZ+/yNbeOUYEOQhhHYA57Gw2wDcKInxmP8PEgu6lKQi6wf6q52nydFDW
         ZyYGlatYfb75dZ0GysB3oosAJaFCavnZQMNHH2RmtKQ7wsqX4L7Il8jlfFNTgtA5YZez
         boPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736246836; x=1736851636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fh0AFKuAKxAUWXpt7kGI1qVooHVbo7SNiy/9flSEnaA=;
        b=hFxWQkPOu1cRbxgHlWcTLcTVL2S0fSTeSuVDaE/52VI+jOPlJV1T7HyD6Rfz+ZS3TU
         12ErmDFW6/g8/IrQAtJtVu4tzIOjRWERljLayz6FjmFKLjbeLILCjC+5sakAOwz4mv5A
         A2NP9/+TlGMV1S8+QXROtTOvbkKMCgHXPaxacSHnqx6HXllhgWeH3jqD7vGSt0RCrCCl
         ryBinHVZTOdKHGVBqHGufav2O9K1uwRZY9DpJdDd1qr95cpEJW1GGzBMwDtOy4XXB6k6
         Pbgrt0l/tH5J8rbhNrDKqeDynZJLOE4xl3VKGJFBgRn9S2pniq04WsW0CLOfKsfxFpDO
         fj9g==
X-Forwarded-Encrypted: i=1; AJvYcCUfIoaa10/yFYHGMr4e9twNboVZ9YDZHoqc6y7G7j4wBaGwUC8gB/lvSxVRtwaukvECyXmyu+CdF0QmWBoLS+Rg@lists.osmocom.org
X-Gm-Message-State: AOJu0YynopmUHf45nSY8On908Au2nl4/psO29RJPXFHWxIp06yFLTk1o
	t8hnzauT4CmmA6s2UuNZKhjQ24PajntrIp2FtEFfrf2EsJ5UnDZVRTePlrIcszPVCzvH+rjzLQm
	Pjpqb1J+1ZWBBA//7S6nupVl2BVs=
X-Gm-Gg: ASbGncsotzrizIkCyvQBjtrbMwO/aCqucdbxQR3j8pTqEu2+QK+vHXAg7wH3QPGk9qV
	ZDSLpX0iMAeBDj8fIwCkZzTLUslijVlTm99Oa
X-Google-Smtp-Source: AGHT+IHp1K2L48YKiIQv0pwnQlZPYX8cMCBbRBU/fwg+IEmnnlA8QF5/odQWLMrNcSpCZK0F/LO3cHqTWVNEZ39orXM=
X-Received: by 2002:a05:6000:480a:b0:386:1cd3:89fa with SMTP id
 ffacd0b85a97d-38a221fa8c6mr57843141f8f.33.1736246835555; Tue, 07 Jan 2025
 02:47:15 -0800 (PST)
MIME-Version: 1.0
References: <20250104125732.17335-1-shaw.leon@gmail.com> <20250107085646.42302-1-kuniyu@amazon.com>
In-Reply-To: <20250107085646.42302-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Tue, 7 Jan 2025 18:46:38 +0800
Message-ID: <CABAhCOQAqspiaFO-486UtZpEWsua51f+1f6-LocNhHVfAqW=NQ@mail.gmail.com>
Subject: Re: [PATCH net-next v7 00/11] net: Improve netns handling in rtnetlink
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4ZPU37TID4HPDHRMCMINPGCRYJ5GW7CT
X-Message-ID-Hash: 4ZPU37TID4HPDHRMCMINPGCRYJ5GW7CT
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:07 +0000
CC: andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, horms@kernel.org, idosch@nvidia.com, jiri@resnulli.us, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, liuhangbin@gmail.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/4ZPU37TID4HPDHRMCMINPGCRYJ5GW7CT/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, Jan 7, 2025 at 4:57=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.com=
> wrote:
>
> From: Xiao Liang <shaw.leon@gmail.com>
> Date: Sat,  4 Jan 2025 20:57:21 +0800
[...]
> > - In amt_newlink() drivers/net/amt.c:
> >
> >     amt->net =3D net;
> >     ...
> >     amt->stream_dev =3D dev_get_by_index(net, ...
> >
> >   Uses net, but amt_lookup_upper_dev() only searches in dev_net.
> >   So the AMT device may not be properly deleted if it's in a different
> >   netns from lower dev.
>
> I think you are right, and the upper device will be leaked
> and UAF will happen.
>
> amt must manage a list linked to a lower dev.
>
> Given no one has reported the issue, another option would be
> drop cross netns support in a short period.

Yes. I also noticed AMT sets dev->netns_local to prevent netns
change. Probably it also assumes the same netns during creation.

[...]
> >
> > - In gtp_newlink() in drivers/net/gtp.c:
> >
> >     gtp->net =3D src_net;
> >     ...
> >     gn =3D net_generic(dev_net(dev), gtp_net_id);
> >     list_add_rcu(&gtp->list, &gn->gtp_dev_list);
> >
> >   Uses src_net, but priv is linked to list in dev_net. So it may not be
> >   properly deleted on removal of link netns.
>
> The device is linked to a list in the same netns, so the
> device will not be leaked.  See gtp_net_exit_batch_rtnl().
>
> Rather, the problem is the udp tunnel socket netns could be
> freed earlier than the dev netns.

Yes, you're right. Actually I mean the netns of the socket by "link netns"
(there's some clarification about this in patch 02).

[...]
> >
> > - In pfcp_newlink() in drivers/net/pfcp.c:
> >
> >     pfcp->net =3D net;
> >     ...
> >     pn =3D net_generic(dev_net(dev), pfcp_net_id);
> >     list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);
> >
> >   Same as above.
>
> I haven't tested pfcp but it seems to have the same problem.
>
> I'll post patches for gtp and pfcp.
>

It would be nice.

>
> >
> > - In lowpan_newlink() in net/ieee802154/6lowpan/core.c:
> >
> >     wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK])=
);
> >
> >   Looks for IFLA_LINK in dev_net, but in theory the ifindex is defined
> >   in link netns.
>
> I guess you mean the ifindex is defined in src_net instead.
> Not sure if it's too late to change the behaviour.

Yes, it's source net for lowpan. I think it depends on whether
the interpretation of IFLA_LINK should be considered as part API
provided by rtnetlink core, or something customizable by driver.
In the former case, this can be considered as a bug.

Thanks.
