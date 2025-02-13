Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 0617DA370AD
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:35:00 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E72011E8BE7;
	Sat, 15 Feb 2025 20:34:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8R0BI97eFc5o; Sat, 15 Feb 2025 20:34:59 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 583B91E8A2E;
	Sat, 15 Feb 2025 20:34:42 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0A9AA38A0A7B
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 09:18:02 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DA0411E5DA6
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 09:18:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3fGs8Hk2XIO for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 13 Feb 2025 09:18:01 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.osmocom.org (Postfix) with ESMTPS id DCADF1E5DA0
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 09:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739438278;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gyhNP3qOlJ39umXMZfckH2nuz/m9WI3f5NG3i+yZUF4=;
	b=PDS3twiUXT7kG3kZRHfQHEf3ZlRWS5CRBFp/KaL629RmVEHFAOi39oMMqTAXw00+/87XkL
	jqd9hb7qGOVUwxhGwFxixjlfibJUbSlaRwFnzlHrHFvDAOXYtlqsyVj5J0uKHYdd9KF4Yy
	6mOD3XvdCz9ORg3DRanl1O0iTpAVirs=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-625-46IiGOKmOlKXKWxD0DWu3Q-1; Thu, 13 Feb 2025 04:17:56 -0500
X-MC-Unique: 46IiGOKmOlKXKWxD0DWu3Q-1
X-Mimecast-MFC-AGG-ID: 46IiGOKmOlKXKWxD0DWu3Q
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38dd1bdf360so270806f8f.3
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 13 Feb 2025 01:17:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739438275; x=1740043075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gyhNP3qOlJ39umXMZfckH2nuz/m9WI3f5NG3i+yZUF4=;
        b=oQQCSnJJooYY86S6S31osS5s44tOIImaqWeYuLiirHl5oFSQqT4zwV2Zkc5OADQB2v
         ZWXx30hi8sNhkFSVIt1bicqFKmweqB03u+Iszu5DQAGYCziKImUZyDLczVhsg5+LwCGK
         Q7yBHxzDcS860ld+yyKD9Q28+O3/Fen1nECpbnqKmqM9YxNq32f5PgHfkA7pb8tamXoB
         o0PJr02vjUHNcBiWpXrxVR8jub/2icuk8d+rNhwGhNd0qMWfoVJPIn6Id5AwxJSbE0C2
         8lsMAdPXxqYUQNWbO5Hp7ur/n8ULQwjBK2T93WYP7Iq7/sMm0ibPcpgyOyBeo6qPwefk
         +OhA==
X-Forwarded-Encrypted: i=1; AJvYcCWnNR+dk0bECFraOZNtfO9bbUJeoRuVqJTni6lF9fiXltOKVLdJOwQvetIqTHxhrEec8mtFLI16CGsuLxOMlTu+@lists.osmocom.org
X-Gm-Message-State: AOJu0Yz9CKxI5/z/OGsLWd9uybbvdNGHLUpLVxTZCE2p8DhG7QZsihq3
	Y3TImYaFEwcQwzLw914dNxuEA8/LVcjn2csO89GtJSG7QyTzP+AWHGLyEaTfUKb/DTe/qIV3whQ
	0DavVXKE7omhTJ3ZEN/1y2uPX/09bxhQxIbGBBQw1x6W9t2Pzp9+mRk41xndgNmV/OALucg==
X-Gm-Gg: ASbGncuM9nytXR/ki0vdItS4jrvXxln5Gtwf0dWqtlauI4wU+tp2a8hIjcyndn07e1d
	97WHMrH9B9i+eI0Bx5Y9yMhy7dT44TSmPl/y4aVqLhBh+hV8O2eQ8/Hsg2jmz46by2zXDyCBFPR
	J/wLgNM06tILBw/tJWFMUZMMucOw1r8VhR+geX2/zz8DYoBNmgm/KV2UW2hvHjqkYJxpAQLpx7y
	H5AxXHevK3VkPXJNmYzCflMmWSnnbw+0Gp/ZfsE42zkXae4qPyXr3xkHvL6ev53+2Xh6gqdm3O8
	IXtq5wmk0xIjku24C1I+HHXdkmNgHuBnzOs=
X-Received: by 2002:a5d:59ad:0:b0:38d:d9bd:18a6 with SMTP id ffacd0b85a97d-38dea2e8252mr5537701f8f.42.1739438275348;
        Thu, 13 Feb 2025 01:17:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvdEpVIGWCwTdkiFI9VeLvCiv6OrrtGDZTcFYpY+kBOdDZTqd8HRvUuOkaOwq9itdXLKF4sg==
X-Received: by 2002:a5d:59ad:0:b0:38d:d9bd:18a6 with SMTP id ffacd0b85a97d-38dea2e8252mr5537666f8f.42.1739438274976;
        Thu, 13 Feb 2025 01:17:54 -0800 (PST)
Received: from [192.168.88.253] (146-241-31-160.dyn.eolo.it. [146.241.31.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258cccdesm1314704f8f.26.2025.02.13.01.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 01:17:54 -0800 (PST)
Message-ID: <2c294c0a-26c4-4ec5-992d-a2fd98829b16@redhat.com>
Date: Thu, 13 Feb 2025 10:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v9 02/11] rtnetlink: Pack newlink() params into
 struct
To: Xiao Liang <shaw.leon@gmail.com>, Kuniyuki Iwashima <kuniyu@amazon.com>
References: <20250210133002.883422-3-shaw.leon@gmail.com>
 <20250213065348.8507-1-kuniyu@amazon.com>
 <CABAhCOTw+CpiwwRGNtDS3gntTQe7XESNzzi6RXd9ju1xO_a5Hw@mail.gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <CABAhCOTw+CpiwwRGNtDS3gntTQe7XESNzzi6RXd9ju1xO_a5Hw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JgFc0ZB8mXCVE9DhZ5xfguGcRqXp27niFMrIjME02_A_1739438275
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MailFrom: pabeni@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZSQHITGFI2SPOVJQHIVWOV4NWH5V65JE
X-Message-ID-Hash: ZSQHITGFI2SPOVJQHIVWOV4NWH5V65JE
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:34:38 +0000
CC: alex.aring@gmail.com, andrew+netdev@lunn.ch, b.a.t.m.a.n@lists.open-mesh.org, bpf@vger.kernel.org, bridge@lists.linux.dev, davem@davemloft.net, donald.hunter@gmail.com, dsahern@kernel.org, edumazet@google.com, herbert@gondor.apana.org.au, horms@kernel.org, kuba@kernel.org, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-ppp@vger.kernel.org, linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org, linux-wpan@vger.kernel.org, miquel.raynal@bootlin.com, netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, shuah@kernel.org, stefan@datenfreihafen.org, steffen.klassert@secunet.com, wireguard@lists.zx2c4.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ZSQHITGFI2SPOVJQHIVWOV4NWH5V65JE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 2/13/25 9:36 AM, Xiao Liang wrote:
> On Thu, Feb 13, 2025 at 2:54=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazo=
n.com> wrote:
> [...]
>>> diff --git a/include/linux/if_macvlan.h b/include/linux/if_macvlan.h
>>> index 523025106a64..0f7281e3e448 100644
>>> --- a/include/linux/if_macvlan.h
>>> +++ b/include/linux/if_macvlan.h
>>> @@ -59,8 +59,10 @@ static inline void macvlan_count_rx(const struct m=
acvlan_dev *vlan,
>>>
>>>  extern void macvlan_common_setup(struct net_device *dev);
>>>
>>> -extern int macvlan_common_newlink(struct net *src_net, struct net_de=
vice *dev,
>>> -                               struct nlattr *tb[], struct nlattr *d=
ata[],
>>> +struct rtnl_newlink_params;
>>
>> You can just include <net/rtnetlink.h> and remove it from .c
>> files, then this forward declaration will be unnecessary.
>=20
> OK. Was not sure if it's desirable to include include/net files from
> include/linux.

I think we are better of with the forward declaration instead of adding
more intra header dependencies, which will slow down the build and will
produces artifacts in the CI runs (increases of reported warning in the
incremental build, as any warns from the included header will be
'propagated' to more files).

>>> +extern int macvlan_common_newlink(struct net_device *dev,
>>> +                               struct rtnl_newlink_params *params,
>>>                                 struct netlink_ext_ack *extack);
>>>
>>>  extern void macvlan_dellink(struct net_device *dev, struct list_head=
 *head);
>>
>>
>> [...]
>>> diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
>>> index bc0069a8b6ea..00c086ca0c11 100644
>>> --- a/include/net/rtnetlink.h
>>> +++ b/include/net/rtnetlink.h
>>> @@ -69,6 +69,42 @@ static inline int rtnl_msg_family(const struct nlm=
sghdr *nlh)
>>>               return AF_UNSPEC;
>>>  }
>>>
>>> +/**
>>> + *   struct rtnl_newlink_params - parameters of rtnl_link_ops::newli=
nk()
>>
>> The '\t' after '*' should be single '\s'.
>>
>> Same for lines below.
>=20
> This is copied from other structs in the same file. Should I change it?

https://elixir.bootlin.com/linux/v6.13.2/source/Documentation/process/mai=
ntainer-netdev.rst#L376

In this series, just use the good formatting for the new code.

Thanks,

Paolo

