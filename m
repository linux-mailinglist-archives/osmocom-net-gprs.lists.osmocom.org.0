Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3969FF141
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:17 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1424C1B67AA;
	Tue, 31 Dec 2024 18:40:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_V5xE1KjclV; Tue, 31 Dec 2024 18:40:16 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5CEA41B6732;
	Tue, 31 Dec 2024 18:40:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 280C038A779A
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 13:06:42 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0E7901A7CB7
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 13:06:42 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2eRsgARcREO1 for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Dec 2024 13:06:40 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by mail.osmocom.org (Postfix) with ESMTPS id E2A1E1A7CB2
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 13:06:40 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-434a852bb6eso5919715e9.3
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 05:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734008800; x=1734613600; darn=lists.osmocom.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqYxTqAiECe9wyyAXaPuVyEXlxRKQjZazVAEQa5Qpbg=;
        b=UJp8gDtLa88vihcf84M8Qqt1AAkhALHHp4MNfDJc3lbmt2P2y9IGpwcgBXNkZjus6n
         xaZy6SSZBnwWzR0o4seZU3Qj/jWHo/4ccHiRLTVcEkIvitG0hJLMNGDe52ZcA4pdDPIJ
         yNKq4Wg8x9Dvv0V9qiDeG+LPN9RWlrstcpVa7v3xTRMryU557AJZPtKrS53lQDv33U1S
         +T/EFckPdOTFaMKtj1gCG5j3Wr70dFH4wMLhWXWWLM/LUyWURwPgoe4NE46Wbd1wxvTt
         CzRXvSyC8TqcJcN8Nczd9dYk9Jq9cF8agrX97g2qAK0Sep6afe4RaqJO+Cua1evtYOWh
         dKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734008800; x=1734613600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqYxTqAiECe9wyyAXaPuVyEXlxRKQjZazVAEQa5Qpbg=;
        b=EcKg8EZeZFYaQuojCcJhZaE2WcJMXCmnm4L9FUn53IBdW7RaJiYi/jDiArseK7BtPR
         tUfmrTPKEAjEAkkyfzwmumUQSJx7YUBLpdT+z8TV75p0jPoLX4ZTR6yGnlpuSG2nHYZs
         Kwjp4CwAT9i4ZW5vPusO5dadXvjoZt3DzcFFmqmVIxGn0Dnasw7ZfpdWDg7nafq41AgL
         4vnTrnuO5V2PBeEEoz5s/bEGM8T/+TZ9jP6szGmJhWpRZCkUZmZYiGYHHzzr++YKZnrI
         vfknSzFBm6SH6T6ns7SmKqXoeH+2BU9P6qpzpAg9wKp3RqKAXHE6g26TvAPHeGtdg4Av
         zVdg==
X-Forwarded-Encrypted: i=1; AJvYcCXzly1IdqzFCtLHZn9ZEPOb+0T9BWXXV/pv64XfvzXvtYD8VaCc2zpKsDl9ERQmVFr7umg0N0cW+YvIOUsiIx1f@lists.osmocom.org
X-Gm-Message-State: AOJu0YyzSysk4N1w1XDMEZ9q9GfC2L/yh3zAox1SwTKSx9IcqyLeRZFo
	CbzIz7WOR15/eDOskMvvW9s1kc96rF8WyWIa0c/mg4RUr5JpspoKj4xNvuRZgKz4AlRWfOA5qdC
	D6TkFYtgSy3U7SdTjheONhju4LJg=
X-Gm-Gg: ASbGnct23lDcfM93EZonZNwnmSi3ttomqqxLFWkJ5ME3khl4ZRxxICkx6UczNouDG8P
	7WgjMqkE8oRWRNFiB7NXZq4QCYpJjtk8tLBVm
X-Google-Smtp-Source: AGHT+IEgToBDxS7Y2rJTQaW+KRxkcbBuEM1S3SQpzBBgB7EfM9NZPQ+SlbrHysoSI6mEreAZ9kYV8K51n0HSyiFVXHg=
X-Received: by 2002:a05:600c:3acf:b0:434:f8a0:9dd8 with SMTP id
 5b1f17b1804b1-4361c345006mr53002405e9.1.1734008799513; Thu, 12 Dec 2024
 05:06:39 -0800 (PST)
MIME-Version: 1.0
References: <20241209140151.231257-1-shaw.leon@gmail.com> <20241209140151.231257-6-shaw.leon@gmail.com>
 <4a2fe99a-772d-4df1-a8ef-14338682b69e@redhat.com>
In-Reply-To: <4a2fe99a-772d-4df1-a8ef-14338682b69e@redhat.com>
From: Xiao Liang <shaw.leon@gmail.com>
Date: Thu, 12 Dec 2024 21:06:01 +0800
Message-ID: <CABAhCOQnMGm8y5bVj_fg5veJqim1PEEa02oZHqFt7ZPEQMpFzw@mail.gmail.com>
Subject: Re: [PATCH net-next v5 5/5] selftests: net: Add two test cases for
 link netns
To: Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FTRBBMI5QTQRGLYV7ASSTOHCVQJ75C3X
X-Message-ID-Hash: FTRBBMI5QTQRGLYV7ASSTOHCVQJ75C3X
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:06 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Jakub Kicinski <kuba@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FTRBBMI5QTQRGLYV7ASSTOHCVQJ75C3X/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Dec 12, 2024 at 5:40=E2=80=AFPM Paolo Abeni <pabeni@redhat.com> wro=
te:
>
> On 12/9/24 15:01, Xiao Liang wrote:
> >  - Add test for creating link in another netns when a link of the same
> >    name and ifindex exists in current netns.
> >  - Add test for link netns atomicity - create link directly in target
> >    netns, and no notifications should be generated in current netns.
> >
> > Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
> > ---
> >  tools/testing/selftests/net/Makefile        |  1 +
> >  tools/testing/selftests/net/netns-name.sh   | 10 ++++++
> >  tools/testing/selftests/net/netns_atomic.py | 39 +++++++++++++++++++++
> >  3 files changed, 50 insertions(+)
> >  create mode 100755 tools/testing/selftests/net/netns_atomic.py
> >
> > diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selft=
ests/net/Makefile
> > index cb2fc601de66..f9f7a765d645 100644
> > --- a/tools/testing/selftests/net/Makefile
> > +++ b/tools/testing/selftests/net/Makefile
> > @@ -34,6 +34,7 @@ TEST_PROGS +=3D gre_gso.sh
> >  TEST_PROGS +=3D cmsg_so_mark.sh
> >  TEST_PROGS +=3D cmsg_time.sh cmsg_ipv6.sh
> >  TEST_PROGS +=3D netns-name.sh
> > +TEST_PROGS +=3D netns_atomic.py
> >  TEST_PROGS +=3D nl_netdev.py
> >  TEST_PROGS +=3D srv6_end_dt46_l3vpn_test.sh
> >  TEST_PROGS +=3D srv6_end_dt4_l3vpn_test.sh
> > diff --git a/tools/testing/selftests/net/netns-name.sh b/tools/testing/=
selftests/net/netns-name.sh
> > index 6974474c26f3..0be1905d1f2f 100755
> > --- a/tools/testing/selftests/net/netns-name.sh
> > +++ b/tools/testing/selftests/net/netns-name.sh
> > @@ -78,6 +78,16 @@ ip -netns $NS link show dev $ALT_NAME 2> /dev/null &=
&
> >      fail "Can still find alt-name after move"
> >  ip -netns $test_ns link del $DEV || fail
> >
> > +#
> > +# Test no conflict of the same name/ifindex in different netns
> > +#
> > +ip -netns $NS link add name $DEV index 100 type dummy || fail
> > +ip -netns $NS link add netns $test_ns name $DEV index 100 type dummy |=
|
> > +    fail "Can create in netns without moving"
> > +ip -netns $test_ns link show dev $DEV >> /dev/null || fail "Device not=
 found"
> > +ip -netns $NS link del $DEV || fail
> > +ip -netns $test_ns link del $DEV || fail
> > +
> >  echo -ne "$(basename $0) \t\t\t\t"
> >  if [ $RET_CODE -eq 0 ]; then
> >      echo "[  OK  ]"
> > diff --git a/tools/testing/selftests/net/netns_atomic.py b/tools/testin=
g/selftests/net/netns_atomic.py
> > new file mode 100755
> > index 000000000000..d350a3fc0a91
> > --- /dev/null
> > +++ b/tools/testing/selftests/net/netns_atomic.py
> > @@ -0,0 +1,39 @@
> > +#!/usr/bin/env python3
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +import time
> > +
> > +from lib.py import ksft_run, ksft_exit, ksft_true
> > +from lib.py import ip
> > +from lib.py import NetNS, NetNSEnter
> > +from lib.py import RtnlFamily
> > +
> > +
> > +def test_event(ns1, ns2) -> None:
> > +    with NetNSEnter(str(ns1)):
> > +        rtnl =3D RtnlFamily()
> > +
> > +    rtnl.ntf_subscribe("rtnlgrp-link")
> > +
> > +    ip(f"netns set {ns1} 0", ns=3Dstr(ns2))
> > +
> > +    ip(f"link add netns {ns2} link-netnsid 0 dummy1 type dummy")
> > +    ip(f"link add netns {ns2} dummy2 type dummy", ns=3Dstr(ns1))
> > +
> > +    ip("link del dummy1", ns=3Dstr(ns2))
> > +    ip("link del dummy2", ns=3Dstr(ns2))
> > +
> > +    time.sleep(1)
> > +    rtnl.check_ntf()
> > +    ksft_true(rtnl.async_msg_queue.empty(),
> > +              "Received unexpected link notification")
>
> I think we need a much larger coverage here, possibly testing all the
> update drivers and more 'netns', 'link-netnsid', 'peer netns'
> permutations for the devices that allow them.

OK, I will add more cases. But I'm afraid I don't know how to build
valid parameters for all of them, and some seem to require hardware.

>
> Thanks,
>
> Paolo
>
