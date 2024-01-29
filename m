Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBE7853A6A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Feb 2024 19:58:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4D824426D8;
	Tue, 13 Feb 2024 18:58:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AX21QNlP2CRc; Tue, 13 Feb 2024 18:58:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C2435426CA;
	Tue, 13 Feb 2024 18:58:06 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 62EF338A0F10
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Jan 2024 16:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1EB1A315B3
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Jan 2024 16:53:54 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nto73wh734Ko for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 29 Jan 2024 16:53:53 +0000 (UTC)
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	by mail.osmocom.org (Postfix) with ESMTPS id 5487D315AB
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Jan 2024 16:53:52 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
	id 2E9922F2023D; Mon, 29 Jan 2024 16:53:52 +0000 (UTC)
Received: from [10.88.144.178] (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id 160432F2023F;
	Mon, 29 Jan 2024 16:53:50 +0000 (UTC)
Message-ID: <f0e01978-cd8b-3670-2b31-fd39f90a92fb@basealt.ru>
Date: Mon, 29 Jan 2024 19:53:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/1] gtp: fix use-after-free and null-ptr-deref in
 gtp_genl_dump_pdp()
Content-Language: en-US
To: Pablo Neira Ayuso <pablo@netfilter.org>
References: <20240124101404.161655-1-kovalev@altlinux.org>
 <20240124101404.161655-2-kovalev@altlinux.org>
 <CANn89iLKc8-hwvSBE=aSTRg=52Pn9B0HmFDneGCe6PMawPFCnQ@mail.gmail.com>
 <1144600e-52f1-4c1a-4854-c53e05af5b45@basealt.ru>
 <ZbeT31rUh0h3CctO@calendula>
From: kovalev@altlinux.org
In-Reply-To: <ZbeT31rUh0h3CctO@calendula>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: kovalev@altlinux.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VXXKOTT2MFM66F4Q5VNC5KJH3SVNBOUL
X-Message-ID-Hash: VXXKOTT2MFM66F4Q5VNC5KJH3SVNBOUL
X-Mailman-Approved-At: Tue, 13 Feb 2024 18:58:04 +0000
CC: Eric Dumazet <edumazet@google.com>, laforge@gnumonks.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, nickel@altlinux.org, oficerovas@altlinux.org, dutyrok@altlinux.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VXXKOTT2MFM66F4Q5VNC5KJH3SVNBOUL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

29.01.2024 15:02, Pablo Neira Ayuso wrote:
> __netlink_dump_start() is called at the beginning of the dump, which is
> grabbing a reference on this module.
>
> do you have a reproducer?
Hi, yes, in the cover letter [PATCH 0/1] 
https://lore.kernel.org/all/20240124101404.161655-1-kovalev@altlinux.org/

-- 
Regards,
Vasiliy Kovalev

