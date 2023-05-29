Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 51718714645
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 29 May 2023 10:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2610B28176;
	Mon, 29 May 2023 08:27:41 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JMm-XmGceaL; Mon, 29 May 2023 08:27:40 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id CA81F282AD;
	Mon, 29 May 2023 08:27:35 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 443D838A0FDB;
	Mon, 29 May 2023 08:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 17BE92812F;
	Mon, 29 May 2023 08:27:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wol7aPhrEd6; Mon, 29 May 2023 08:27:26 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 1E44C2812E;
	Mon, 29 May 2023 08:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 7143A1980578;
	Mon, 29 May 2023 08:27:25 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hqHqdsIAaEh; Mon, 29 May 2023 08:27:25 +0000 (UTC)
Received: from [192.168.1.140] (unknown [207.188.174.104])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 0E44F198014B;
	Mon, 29 May 2023 08:27:24 +0000 (UTC)
Message-ID: <cd70b4a5-1356-015c-2622-ffe8b2393c1a@sysmocom.de>
Date: Mon, 29 May 2023 10:27:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.1
Subject: Re: Request for Assistance with GPRS Configuration
Content-Language: en-US
To: Ahnaf Tahmid <tahmid.nse@gmail.com>
References: <CANV1quToJQtZoQxnJ5uDNh5H43V02oNdQ_GZdKXfNXic8h+vOg@mail.gmail.com>
 <20230520134206.37988d79@javelin>
 <CANV1quQ_SDL7uWD7ZApGe9OOjUiO1pZfcYwAs++6mcRvu0gTKw@mail.gmail.com>
 <20230521122619.093fa1ad@javelin>
 <CANV1quTj5ExzvK2gs1H1OiU=T1J_47dj8L7R8QKz-DPngcwDcA@mail.gmail.com>
From: Pau Espin Pedrol <pespin@sysmocom.de>
In-Reply-To: <CANV1quTj5ExzvK2gs1H1OiU=T1J_47dj8L7R8QKz-DPngcwDcA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: O4DBHZCOOYG53OO3CS53C32PTLWDPRZP
X-Message-ID-Hash: O4DBHZCOOYG53OO3CS53C32PTLWDPRZP
X-MailFrom: pespin@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/O4DBHZCOOYG53OO3CS53C32PTLWDPRZP/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

On 5/21/23 16:17, Ahnaf Tahmid wrote:
 > 20230521195557391 DGGSN INFO PDP(901550000123457:5): Successful PDP
 > Context Creation: APN=internet(internet), TEIC=1, IPv4=127.0.42.13,
 > IPv6=none (ggsn.c:569)
The problem is most probably that osmo-ggsn is assigning to the MS an Ip 
address from the 12.0.42.0-255 range, which is iirC of local host scope.

Try changing the address pool in the APN config in osmo-ggsn.cfg to 
provide a local area network range, such as 192.168.40.100-200. Also 
update accordingly the IP address set on the related tun device.

-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
