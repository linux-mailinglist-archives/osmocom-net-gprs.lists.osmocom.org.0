Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AAF755F41
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 17 Jul 2023 11:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D3B1528788;
	Mon, 17 Jul 2023 09:31:09 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ipTihUEaw2Q; Mon, 17 Jul 2023 09:31:09 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 9D07A2878A;
	Mon, 17 Jul 2023 09:31:06 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9F8B738A1084;
	Mon, 17 Jul 2023 09:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 64DE6280E9;
	Mon, 17 Jul 2023 09:30:57 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vGn7fgMJ8e8H; Mon, 17 Jul 2023 09:30:56 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 9BE7427F26;
	Mon, 17 Jul 2023 09:30:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 53D5E19805D0;
	Mon, 17 Jul 2023 09:30:56 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o_U5Yn2_Xshg; Mon, 17 Jul 2023 09:30:56 +0000 (UTC)
Received: from [192.168.1.140] (unknown [207.188.171.64])
	by mail.sysmocom.de (Postfix) with ESMTPSA id D23861980145;
	Mon, 17 Jul 2023 09:30:55 +0000 (UTC)
Message-ID: <f20137e6-00a8-dbc7-5037-b38e7dccec6b@sysmocom.de>
Date: Mon, 17 Jul 2023 11:30:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: Deprecating support for big endian in Osmocom
To: Harald Welte <laforge@gnumonks.org>, openbsc@lists.osmocom.org
References: <ZLTkXpP7ugmztRjI@nataraja>
Content-Language: en-US
From: Pau Espin Pedrol <pespin@sysmocom.de>
In-Reply-To: <ZLTkXpP7ugmztRjI@nataraja>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: V6X75K2ES3HCHWQ2YP2T34NFRSSUD34O
X-Message-ID-Hash: V6X75K2ES3HCHWQ2YP2T34NFRSSUD34O
X-MailFrom: pespin@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/V6X75K2ES3HCHWQ2YP2T34NFRSSUD34O/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

if we want to drop big endian support officially let that be it, but I 
would keep the struct_endianness check since it's not really a lot of 
work running it to generate the structs and it's only seldomly used.

Moreover, I would for sure not spend time in *removing* big endian 
support. Maybe let's simply avoid spending extra time in adding specific 
big endian support in places where it would require some time to 
implement, and leave a FIXME/TODO commit instead, like the patch which 
originated this topic discussion.


Regards,
Pau
-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
