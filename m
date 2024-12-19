Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE669FF151
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:56 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 634FC1B6ABB;
	Tue, 31 Dec 2024 18:40:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f0OHdVqP6LfS; Tue, 31 Dec 2024 18:40:56 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AE28B1B6918;
	Tue, 31 Dec 2024 18:40:35 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 71C5238A267E
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 19 Dec 2024 05:54:44 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4D5571AE4F6
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 19 Dec 2024 05:54:44 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2EdZPIl7VJkW for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 19 Dec 2024 05:54:43 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by mail.osmocom.org (Postfix) with ESMTPS id 8E2831AE4F1
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 19 Dec 2024 05:54:42 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-434b3e32e9dso4303955e9.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 21:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734587681; x=1735192481; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZfCpfOoSh8ogvEFAzzK5Sh/fDzaPC/IoHjTWRLgy2Xc=;
        b=EdJ6wjC22D/ujANU1MN8Jiq3qcIuKpQgSCQjzzr1530FEUT+4vhmsNsUyVsGn5KL4c
         N1vASi4OaYcBJoLmG8QdXyctrDgfB6SasH2kLU3z4JNbaGTRyPq10X3tsczXGbUoUP9B
         K+2810fpoVrshBXbHEbUSj0FfnfmClDPH690IzC3jt73eRbITcrm8UmEEzRo6wQ54D2w
         bZeil4F9ruI+38JeBES/vMXTXhIpe5/lFgnypLDu3AKoM8f4HKYVKcBgvn61jz2smnrY
         e2tbi6wrMZE/sOYTQf0XiI6dmpR7k/NQhKkKHQdEguPz/i7EoivyOvJ8SlEU8pboGWcV
         XURQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734587681; x=1735192481;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZfCpfOoSh8ogvEFAzzK5Sh/fDzaPC/IoHjTWRLgy2Xc=;
        b=M5snpB7jVubBWOq5QE89dhhxiz+4WN0mj8WME9G+Wh9ydI3ZErQBH7KPFN3Q6IxMNx
         n1TMwgLB7OCzlXqA4UJgpuZhfJjPM+m5MDsK7DQIBlzAfksuDRxb6d5I1x7WV6gnyIcV
         mYx8+ZPMScPkY9cxtnZCQVtxpBwBuxJ/J/HSkIA/408PK86JVX7D3T3amf33ENbqx+gw
         N+pTLbz4/q0ZaqeUZBFP07/joa3FTaPFabLVkY+9E2faHKZ7XNoGGc4QF3WbHL39cKBu
         q9nnMhYg97SXRbjAN20TmGaOSjLPW7NTneRoJeH7bBM4uMEU2zMEquTmcmFQJnTH9wPh
         NB1A==
X-Forwarded-Encrypted: i=1; AJvYcCWRDiBCRAGjNP94Nc5MBSAHV5/i4WbODn/QH0Oso+ibgCUonH+YRTy6vgm3MRg3FOAgTEVxx/5IgJHFavSBSTrw@lists.osmocom.org
X-Gm-Message-State: AOJu0Ywjp4j4EruM/ADp9+XQzdfXNLK9dy27SFNp2hzVDlRapNkeDjok
	EUAyo00MLCzA8nodBHgwcUpDyQZnze5JQJ2wyeuEgq9bENXHhcoKURVUrPKya9T9TDPWYCuPMk6
	RRhKnqXRVAz6XmcHMwIuVUtHCQvg=
X-Gm-Gg: ASbGncvPE9dZwbDeVhBDTCQkWdJpOBVrYzhJfV3s2vg6diB9Cg+WolIKFF5d1e7Ok3T
	vhsZPDAmNZG6f8PQGNIlCo1ObM6UkPqcWv1Nb
X-Google-Smtp-Source: AGHT+IFXswhNY3wf74HiVRQ6mWtI+LQ0dYPzH2WDbrTkg0k3vCjw9PHsmFSj9uux2yKPzKWzDIYRJF3gX8R2i5iXHRM=
X-Received: by 2002:a05:600c:4ed2:b0:434:f7ea:fb44 with SMTP id
 5b1f17b1804b1-4365535c6a3mr52447275e9.14.1734587681279; Wed, 18 Dec 2024
 21:54:41 -0800 (PST)
MIME-Version: 1.0
References: <20241218130909.2173-1-shaw.leon@gmail.com> <20241218130909.2173-12-shaw.leon@gmail.com>
 <20241218153759.672b7014@kernel.org>
In-Reply-To: <20241218153759.672b7014@kernel.org>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 19 Dec 2024 13:54:03 +0800
Message-ID: <CABAhCORszq9ao3OCVW-1EBsxsnLxbQ096eV+cbs12Es2HvCgUA@mail.gmail.com>
Subject: Re: [PATCH net-next v6 11/11] selftests: net: Add test cases for link
 and peer netns
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E62QVSRAUXOYFKEWYK7HN4TS3POFYFTV
X-Message-ID-Hash: E62QVSRAUXOYFKEWYK7HN4TS3POFYFTV
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:30 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/E62QVSRAUXOYFKEWYK7HN4TS3POFYFTV/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Dec 19, 2024 at 7:38=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> wr=
ote:
>
> On Wed, 18 Dec 2024 21:09:09 +0800 Xiao Liang wrote:
> >  - Add test for creating link in another netns when a link of the same
> >    name and ifindex exists in current netns.
> >  - Add test to verify that link is created in target netns directly -
> >    no link new/del events should be generated in link netns or current
> >    netns.
> >  - Add test cases to verify that link-netns is set as expected for
> >    various drivers and combination of namespace-related parameters.
>
> Nice work!
>
> You need to make sure all the drivers the test is using are enabled by
> the selftest kernel config: tools/testing/selftests/net/config
>
> This may be helpful:
> https://github.com/linux-netdev/nipa/wiki/How-to-run-netdev-selftests-CI-=
style#how-to-build

Thanks for pointing it out. And vng is really cool. I will add
the missing config in the next version.

> --
> pw-bot: cr
