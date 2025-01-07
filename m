Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id AB690A05DF1
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:38 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9744E1BD229;
	Wed,  8 Jan 2025 14:04:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LkwNK5KnDdf5; Wed,  8 Jan 2025 14:04:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A529E1BD0F2;
	Wed,  8 Jan 2025 14:04:24 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id EB5E438A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 12:53:58 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CB6301BB88D
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 12:53:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZSKVal4A6IIX for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  7 Jan 2025 12:53:58 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by mail.osmocom.org (Postfix) with ESMTPS id 1059A1BB888
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 12:53:57 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-385e3621518so7253427f8f.1
        for <osmocom-net-gprs@lists.osmocom.org>; Tue, 07 Jan 2025 04:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736254437; x=1736859237; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F66Eu0GAg36EcgkwSAQsoLttohjhJJSzBhrgfuDrfa8=;
        b=Njj96fbgS34bDkgWujsucOlkNkicsSrsTF9NYiOud9TZudlTL44rB/rWUgoLgkeOOY
         jA347C3Em4G4P8hPWiMwzCr5hAZUkK2w1uQMrqqAcj/0pptvAvxp7Q+vXRF3h7l/X+4s
         zxsVzCn+Pn/I6RSeCmGvyK5VpwD3Bky9/Le7u09anUKs4rapDM4J02pwdC7lsXei/Rx4
         ruO7fhAiniAf+qtM6HRyFAzS+qT955YsrqGFQlB5kWa6rBgJbbKCkz2DkZ3NTjZrLDYd
         fFqNVr/afSShViBxKEcmGoJqS8/EwOrNUdiG5+obC66S+uptrdCq1BEwhFAEgTnzMeKZ
         kd8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254437; x=1736859237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F66Eu0GAg36EcgkwSAQsoLttohjhJJSzBhrgfuDrfa8=;
        b=Mr+dPEWF0AQa4S3ExmGehau4J8aP9owJStVsIZWw8Pzto4AE6LFhZNTfd5E8GIIaRu
         AJy0wRDekba7+i/PfBGtxqPvHXN9jqCPb7G2OwkboZrEgmApLfiZgbe9PMX7RYp7tsiH
         KbtKXPnPQB91oviJM6PfYpDyQRH2gmnb+lvPe9/6sWNdUMqtx69RmSdP2ESjhiLoqMLM
         Y+MM5TAo2EUkpJOa5sCx74NBExMcbTW5o6neiyiKXfGy419fDwEfOCNH3pzEwCCLeWqc
         PjOar38sAcrKYsp6dcbe13Q+fjkJG0bAVAWG9ztAitsRO9HYarDCD6tvg1XoskmU38XW
         xWIA==
X-Forwarded-Encrypted: i=1; AJvYcCXxljjCUsNQQln4LBCVZ9b5FTlYhuL6X4r8Cy2X2oiLVvBoYuV6Iiae2H+qtyHq/xp7r6VdK3NUsI6d/ipRH+tD@lists.osmocom.org
X-Gm-Message-State: AOJu0Ywh+1v1+t4cHjts6yIEARruucSlynr5RmL5Fmr2w0qJFuUi7yJe
	Rj1fZ7lyky24/A8gZnNn0emajKNueMmWb09jmKuNkIs54OAO9lYcCWtvZYMU4GdSByihVG1mm6b
	a4L+2P7IPbBaVq54R0Ijx20GQluc=
X-Gm-Gg: ASbGnctW3ujK8Dgfz28kzQ64sBwPfXIuQWoNGbS04XszCR8Nq42M/4Z0viQT2ay/uox
	chXdwHnYuLPR7mDkEr1n0tbJbkNYMiXSCgjVW
X-Google-Smtp-Source: AGHT+IHLmQYT6Nfe/TxqetejkNmjRWULhNkXti9Y+FoSO0oNz6JKWmwppacRVdUE20hj8uvdZwuWTQu822tlGBPGUFc=
X-Received: by 2002:adf:a15d:0:b0:38a:615c:8222 with SMTP id
 ffacd0b85a97d-38a615c828emr14509037f8f.4.1736254436561; Tue, 07 Jan 2025
 04:53:56 -0800 (PST)
MIME-Version: 1.0
References: <20250104125732.17335-1-shaw.leon@gmail.com> <20250107085646.42302-1-kuniyu@amazon.com>
In-Reply-To: <20250107085646.42302-1-kuniyu@amazon.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Tue, 7 Jan 2025 20:53:19 +0800
Message-ID: <CABAhCOQdBL6h9M2C+kd+bGivRJ9Q72JUxW+-gur0nub_=PmFPA@mail.gmail.com>
Subject: Re: [PATCH net-next v7 00/11] net: Improve netns handling in rtnetlink
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 66NFHEEEMZF6PZSO77LPYCCSDOK2GVYW
X-Message-ID-Hash: 66NFHEEEMZF6PZSO77LPYCCSDOK2GVYW
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:07 +0000
CC: andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, horms@kernel.org, idosch@nvidia.com, jiri@resnulli.us, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, liuhangbin@gmail.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, pabeni@redhat.com, shuah@kernel.org, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/66NFHEEEMZF6PZSO77LPYCCSDOK2GVYW/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, Jan 7, 2025 at 4:57=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.com=
> wrote:
[...]
>
> We can fix this by linking the dev to the socket's netns and
> clean them up in __net_exit hook as done in bareudp and geneve.
>
> ---8<---
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 89a996ad8cd0..77638a815873 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -70,6 +70,7 @@ struct pdp_ctx {
>  /* One instance of the GTP device. */
>  struct gtp_dev {
>         struct list_head        list;
> +       struct list_head        sock_list;
>
>         struct sock             *sk0;
>         struct sock             *sk1u;
> @@ -102,6 +103,7 @@ static unsigned int gtp_net_id __read_mostly;
>
>  struct gtp_net {
>         struct list_head gtp_dev_list;
> +       struct list_head gtp_sock_list;

After a closer look at the GTP driver, I'm confused about
the gtp_dev_list here. GTP device is linked to this list at
creation time, but netns can be changed afterwards.
The list is used in gtp_net_exit_batch_rtnl(), but to my
understanding net devices can already be deleted in
default_device_exit_batch() by default.
And I wonder if the use in gtp_genl_dump_pdp() can be
replaced by something like for_each_netdev_rcu().


>  };
>
>  static u32 gtp_h_initval;
> @@ -1526,6 +1528,10 @@ static int gtp_newlink(struct net *src_net, struct=
 net_device *dev,
>
>         gn =3D net_generic(dev_net(dev), gtp_net_id);
>         list_add_rcu(&gtp->list, &gn->gtp_dev_list);
> +
> +       gn =3D net_generic(src_net, gtp_net_id);
> +       list_add(&gtp->sock_list, &gn->gtp_sock_list);
> +
>         dev->priv_destructor =3D gtp_destructor;
>
>         netdev_dbg(dev, "registered new GTP interface\n");
> @@ -1552,6 +1558,7 @@ static void gtp_dellink(struct net_device *dev, str=
uct list_head *head)
>                         pdp_context_delete(pctx);
>
>         list_del_rcu(&gtp->list);
> +       list_del(&gtp->sock_list);
>         unregister_netdevice_queue(dev, head);
>  }
>
> @@ -2465,6 +2472,8 @@ static int __net_init gtp_net_init(struct net *net)
>         struct gtp_net *gn =3D net_generic(net, gtp_net_id);
>
>         INIT_LIST_HEAD(&gn->gtp_dev_list);
> +       INIT_LIST_HEAD(&gn->gtp_sock_list);
> +
>         return 0;
>  }
>
> @@ -2475,9 +2484,12 @@ static void __net_exit gtp_net_exit_batch_rtnl(str=
uct list_head *net_list,
>
>         list_for_each_entry(net, net_list, exit_list) {
>                 struct gtp_net *gn =3D net_generic(net, gtp_net_id);
> -               struct gtp_dev *gtp;
> +               struct gtp_dev *gtp, *next;
> +
> +               list_for_each_entry_safe(gtp, next, &gn->gtp_dev_list, li=
st)
> +                       gtp_dellink(gtp->dev, dev_to_kill);
>
> -               list_for_each_entry(gtp, &gn->gtp_dev_list, list)
> +               list_for_each_entry_safe(gtp, next, &gn->gtp_sock_list, s=
ock_list)
>                         gtp_dellink(gtp->dev, dev_to_kill);
>         }
>  }
> ---8<---
