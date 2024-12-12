Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA3E9FF13F
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:13 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DC69C1B6759;
	Tue, 31 Dec 2024 18:40:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id phWiDj0iXwoK; Tue, 31 Dec 2024 18:40:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 409D81B670C;
	Tue, 31 Dec 2024 18:40:09 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D829538A78D1
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 09:41:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B44371A771D
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 09:41:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mwjikQd_a7Ol for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Dec 2024 09:41:01 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.osmocom.org (Postfix) with ESMTPS id B825F1A7718
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 09:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733996458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vO5x2q/Sa0e5fTHlXfwREEvSvA3RWPrUa1t93Ro/NiA=;
	b=UwlDR4wPRD6Eb4DFKgZ9fdxy8jAxr4kXYjZjFN/zmkEFJ9w3k/zX/cLiYvBzK/alfpc/Hb
	rAbdn+t+LjOQXYLJspmbchLoDiRJY7zo3f8HOOTgiYiOc542STFiuYx+glNIYF+rQeeWW0
	vV7y+ITjtmpKvXxrKp2DyZ68bPmzkM0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-449-07mBq1ZwO6Czd-RIPb-zXg-1; Thu, 12 Dec 2024 04:40:57 -0500
X-MC-Unique: 07mBq1ZwO6Czd-RIPb-zXg-1
X-Mimecast-MFC-AGG-ID: 07mBq1ZwO6Czd-RIPb-zXg
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-385e1339790so289102f8f.2
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Dec 2024 01:40:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733996456; x=1734601256;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vO5x2q/Sa0e5fTHlXfwREEvSvA3RWPrUa1t93Ro/NiA=;
        b=TlTUbuSaEonAQ79sdB5FBQiCdDTAc0jdjfN2T5Wh9VMzMsDZxtMfVnvBXeGW0VTND6
         JvkTbGHfNGKlbDeQ2X1F1qCyuDwfWS6qCPETfsDrP70fyWf2WxIN7Z+uLRajDf0WjcJg
         FdjreEfSyWT+klJ6Tge5nb9iyp26QZ3kCpuO8pRx8tTznzFS1GrDir++TFUMYrep2Zeh
         4asqSql/jmW9AnpEuJdkLfTfzlV3fYNBFtJYDrfaxHJAhGEjX6+SzJCNhyeRNu0KjoH9
         Bmgo3DU6YMDc0WnSfHEd7g14vhYXOH6arzYb8OIithM2MBQUlLiWd1IL7nM/hgCiUV36
         1lqw==
X-Forwarded-Encrypted: i=1; AJvYcCWbVAwYusSDFy5K/72VLZLDIDYG5+hZ1ms2x0qfTHlwH+epiEyZQEsCd9nrcYsIqjowE+5rfok00s1vfdip5zWs@lists.osmocom.org
X-Gm-Message-State: AOJu0YwzLbfd0GbWq2lzd+JW41wF0577N9afN6JkTgOs9CesgPihGkP4
	RCMwRI5cZVjRL2MGSNzp9yVvhoP9LMLClL/FdV2Ht3gk0R25vxn++TEAgke4wMkRTfJVZnZ5xE+
	72g4KjfwrRgfJD7i/1x/jaYLBmBPbyMpgS9GkUPeXbncX/rJ4D38ggCkuiR/uT7thN+p8WA==
X-Gm-Gg: ASbGncvZmNGWNa2IJaRWZF4vHah2JFkepfFE1eoBInxmckVzaHlapHQOTqXiPtsfR2P
	WjcTbfrGStYp9i18c0PfCcPcmo6fIlumnYHU9qzKGK1dZyZAcPnLoa7MzPUonIHL3Y8+wfQOiFm
	B+k7pLYm+TQ2lq/Svtc91+Gj9aN2z3GuQmDDtWTKxqyenfZk0vzLDwFJT0ABcIZ5sLiW7qJKFn1
	WQmI93Y7ZaLdU9vtN9tIeNc+lWiAykQCOhxHAgVhbT3DRGW0De2oRCy6BmpeyA5b6S2bwxsVQ7l
	50ck2Os=
X-Received: by 2002:a05:6000:1fa9:b0:385:f23a:2fec with SMTP id ffacd0b85a97d-3864ce88e29mr6040208f8f.11.1733996455835;
        Thu, 12 Dec 2024 01:40:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPT0KYgGEFCZGrqybSALsE3Qqj+pmWswO0HlvX3IBSNS8HmdA5fJvJjIK2Fq1iEV0Tr46sRQ==
X-Received: by 2002:a05:6000:1fa9:b0:385:f23a:2fec with SMTP id ffacd0b85a97d-3864ce88e29mr6040187f8f.11.1733996455462;
        Thu, 12 Dec 2024 01:40:55 -0800 (PST)
Received: from [192.168.88.24] (146-241-48-67.dyn.eolo.it. [146.241.48.67])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362557c462sm11164015e9.14.2024.12.12.01.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 01:40:55 -0800 (PST)
Message-ID: <4a2fe99a-772d-4df1-a8ef-14338682b69e@redhat.com>
Date: Thu, 12 Dec 2024 10:40:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v5 5/5] selftests: net: Add two test cases for
 link netns
To: Xiao Liang <shaw.leon@gmail.com>, netdev@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>,
 Jakub Kicinski <kuba@kernel.org>, Donald Hunter <donald.hunter@gmail.com>
References: <20241209140151.231257-1-shaw.leon@gmail.com>
 <20241209140151.231257-6-shaw.leon@gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20241209140151.231257-6-shaw.leon@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oFZfvcH3h3GFqJ3Nj9Zg-PtOQw1ARiufvo4xzG-gbes_1733996456
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-MailFrom: pabeni@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YBI5EWTNUMSLOJHPJBORRW65X4FJCQWE
X-Message-ID-Hash: YBI5EWTNUMSLOJHPJBORRW65X4FJCQWE
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:06 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/YBI5EWTNUMSLOJHPJBORRW65X4FJCQWE/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 12/9/24 15:01, Xiao Liang wrote:
>  - Add test for creating link in another netns when a link of the same
>    name and ifindex exists in current netns.
>  - Add test for link netns atomicity - create link directly in target
>    netns, and no notifications should be generated in current netns.
> 
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>
> ---
>  tools/testing/selftests/net/Makefile        |  1 +
>  tools/testing/selftests/net/netns-name.sh   | 10 ++++++
>  tools/testing/selftests/net/netns_atomic.py | 39 +++++++++++++++++++++
>  3 files changed, 50 insertions(+)
>  create mode 100755 tools/testing/selftests/net/netns_atomic.py
> 
> diff --git a/tools/testing/selftests/net/Makefile b/tools/testing/selftests/net/Makefile
> index cb2fc601de66..f9f7a765d645 100644
> --- a/tools/testing/selftests/net/Makefile
> +++ b/tools/testing/selftests/net/Makefile
> @@ -34,6 +34,7 @@ TEST_PROGS += gre_gso.sh
>  TEST_PROGS += cmsg_so_mark.sh
>  TEST_PROGS += cmsg_time.sh cmsg_ipv6.sh
>  TEST_PROGS += netns-name.sh
> +TEST_PROGS += netns_atomic.py
>  TEST_PROGS += nl_netdev.py
>  TEST_PROGS += srv6_end_dt46_l3vpn_test.sh
>  TEST_PROGS += srv6_end_dt4_l3vpn_test.sh
> diff --git a/tools/testing/selftests/net/netns-name.sh b/tools/testing/selftests/net/netns-name.sh
> index 6974474c26f3..0be1905d1f2f 100755
> --- a/tools/testing/selftests/net/netns-name.sh
> +++ b/tools/testing/selftests/net/netns-name.sh
> @@ -78,6 +78,16 @@ ip -netns $NS link show dev $ALT_NAME 2> /dev/null &&
>      fail "Can still find alt-name after move"
>  ip -netns $test_ns link del $DEV || fail
>  
> +#
> +# Test no conflict of the same name/ifindex in different netns
> +#
> +ip -netns $NS link add name $DEV index 100 type dummy || fail
> +ip -netns $NS link add netns $test_ns name $DEV index 100 type dummy ||
> +    fail "Can create in netns without moving"
> +ip -netns $test_ns link show dev $DEV >> /dev/null || fail "Device not found"
> +ip -netns $NS link del $DEV || fail
> +ip -netns $test_ns link del $DEV || fail
> +
>  echo -ne "$(basename $0) \t\t\t\t"
>  if [ $RET_CODE -eq 0 ]; then
>      echo "[  OK  ]"
> diff --git a/tools/testing/selftests/net/netns_atomic.py b/tools/testing/selftests/net/netns_atomic.py
> new file mode 100755
> index 000000000000..d350a3fc0a91
> --- /dev/null
> +++ b/tools/testing/selftests/net/netns_atomic.py
> @@ -0,0 +1,39 @@
> +#!/usr/bin/env python3
> +# SPDX-License-Identifier: GPL-2.0
> +
> +import time
> +
> +from lib.py import ksft_run, ksft_exit, ksft_true
> +from lib.py import ip
> +from lib.py import NetNS, NetNSEnter
> +from lib.py import RtnlFamily
> +
> +
> +def test_event(ns1, ns2) -> None:
> +    with NetNSEnter(str(ns1)):
> +        rtnl = RtnlFamily()
> +
> +    rtnl.ntf_subscribe("rtnlgrp-link")
> +
> +    ip(f"netns set {ns1} 0", ns=str(ns2))
> +
> +    ip(f"link add netns {ns2} link-netnsid 0 dummy1 type dummy")
> +    ip(f"link add netns {ns2} dummy2 type dummy", ns=str(ns1))
> +
> +    ip("link del dummy1", ns=str(ns2))
> +    ip("link del dummy2", ns=str(ns2))
> +
> +    time.sleep(1)
> +    rtnl.check_ntf()
> +    ksft_true(rtnl.async_msg_queue.empty(),
> +              "Received unexpected link notification")

I think we need a much larger coverage here, possibly testing all the
update drivers and more 'netns', 'link-netnsid', 'peer netns'
permutations for the devices that allow them.

Thanks,

Paolo

