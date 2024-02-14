Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7542F857A8C
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 16 Feb 2024 11:44:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 69E7944E1C;
	Fri, 16 Feb 2024 10:44:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NhzxyQxDMK2E; Fri, 16 Feb 2024 10:44:01 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 16D7A44E11;
	Fri, 16 Feb 2024 10:44:00 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8EC1238A0FAC
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 14 Feb 2024 16:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 49AE0433A6
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 14 Feb 2024 16:50:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MOmuKlNI_q6A for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 14 Feb 2024 16:50:55 +0000 (UTC)
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	by mail.osmocom.org (Postfix) with ESMTPS id 7DC56433A1
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 14 Feb 2024 16:50:55 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
	id A3C842F20258; Wed, 14 Feb 2024 16:50:54 +0000 (UTC)
Received: from [192.168.0.103] (unknown [178.76.204.78])
	by air.basealt.ru (Postfix) with ESMTPSA id 0D23F2F20256;
	Wed, 14 Feb 2024 16:50:52 +0000 (UTC)
Message-ID: <6cbbecf1-eba1-f3e1-259a-24df71f44785@basealt.ru>
Date: Wed, 14 Feb 2024 19:50:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in
 gtp_genl_dump_pdp()
Content-Language: en-US
To: Eric Dumazet <edumazet@google.com>
References: <20240124101404.161655-1-kovalev@altlinux.org>
 <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
 <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
 <CANn89iKb+NQPOuZ9wdovQYVOwC=1fUMMdWd5VrEU=EsxTH7nFg@mail.gmail.com>
 <d602ebc3-f0e7-171c-7d76-e2f9bb4c2db6@basealt.ru>
 <CANn89iJ4hVyRHiZXWTiW9ftyN8PFDaWiZnzE7GVAzu1dT78Daw@mail.gmail.com>
From: kovalev@altlinux.org
In-Reply-To: <CANn89iJ4hVyRHiZXWTiW9ftyN8PFDaWiZnzE7GVAzu1dT78Daw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: kovalev@altlinux.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JIHZOTGZHBN4WVRLCZAUINLQMQZFLH7U
X-Message-ID-Hash: JIHZOTGZHBN4WVRLCZAUINLQMQZFLH7U
X-Mailman-Approved-At: Fri, 16 Feb 2024 10:43:57 +0000
CC: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/JIHZOTGZHBN4WVRLCZAUINLQMQZFLH7U/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

09.02.2024 22:21, Eric Dumazet wrote:

> Maybe, but the patch is not good, I think I and Pablo gave feedback on this ?
>
> Please trace __netlink_dump_start() content of control->module
>
> gtp_genl_family.module should be set, and we should get it.
>
> Otherwise, if the bug is in the core, we would need a dozen of 'work
> arounds because it is better than nothing'
>
> Thank you.

Thanks.

I tracked the moment when the __netlink_dump_start() function was 
called, it turned out that in the gtp_init() initialization function 
before registering pernet subsystem (gtp_net_ops), therefore, outdated 
data is used, which leads to a crash.

The documentation says that ops structure must be assigned before 
registering a generic netlink family [1].

I have fixed and sent a new patch [2].

[1] 
https://elixir.bootlin.com/linux/v6.8-rc4/source/net/netlink/genetlink.c#L773

[2] 
https://lore.kernel.org/netdev/20240214162733.34214-1-kovalev@altlinux.org/T/#u

-- 
Regards,
Vasiliy Kovalev

