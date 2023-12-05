Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD1F8058C3
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  5 Dec 2023 16:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 192E128322;
	Tue,  5 Dec 2023 15:32:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rn4RlVTGRGt2; Tue,  5 Dec 2023 15:32:20 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 809962831C;
	Tue,  5 Dec 2023 15:32:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 558DA38A0074;
	Tue,  5 Dec 2023 15:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2B7E92812D;
	Tue,  5 Dec 2023 15:32:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UPezSGCWT540; Tue,  5 Dec 2023 15:32:04 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id 4A33B280E9;
	Tue,  5 Dec 2023 15:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id DFB2319801F5;
	Tue,  5 Dec 2023 15:32:03 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKS1VpLbYUjA; Tue,  5 Dec 2023 15:32:03 +0000 (UTC)
Message-ID: <de9dadd0-6380-42b4-8241-7c2c78b0e343@sysmocom.de>
Date: Tue, 5 Dec 2023 16:32:03 +0100
MIME-Version: 1.0
Content-Language: en-US
To: osmocom-announce@lists.osmocom.org,
 OpenBSC Mailing List <openbsc@lists.osmocom.org>,
 osmocom-net-gprs@lists.osmocom.org, osmocom-sdr@lists.osmocom.org
From: Oliver Smith <osmith@sysmocom.de>
Subject: Binary packages: changes in supported distributions
Autocrypt: addr=osmith@sysmocom.de; keydata=
 xjMEXqaMvBYJKwYBBAHaRw8BAQdAKlLfpb/UKvlUjGFwzzkDBT1fXdlqg+MaEG2+hTXDYUrN
 IU9saXZlciBTbWl0aCA8b3NtaXRoQHN5c21vY29tLmRlPsKWBBMWCAA+AhsDBQsJCAcCBhUK
 CQgLAgQWAgMBAh4BAheAFiEECfuANpg5IsWyQFcH6+DRJFm2BMUFAmDG9VIFCRTsa5YACgkQ
 6+DRJFm2BMUJ0wD+L0gpHABtBfkNQ7i0/qtMs5thoqt2yldxao6q31BBLAAA/iXUDIEYjQ0L
 wsZRtiSdXNjbBfdT9boLdh4CY+TKwuYPzjgEXqaMvBIKKwYBBAGXVQEFAQEHQPGmG2/uQrDy
 xalQoBnT1zdIbeg/xWLjl1AnOYGITnpEAwEIB8J4BBgWCAAgFiEECfuANpg5IsWyQFcH6+DR
 JFm2BMUFAl6mjLwCGwwACgkQ6+DRJFm2BMXSRgD/f8twzpyQfpE+viVjtlOxsq0HCavXZqbW
 VvIuvbyfSWQBAJhEIFF/fxmksu9r3FzixNQMOLc3EJgSwqvEYA28Db8O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: KSSJ6IIW3CPEJ4Y6ZXKLLMLK33HHQZG2
X-Message-ID-Hash: KSSJ6IIW3CPEJ4Y6ZXKLLMLK33HHQZG2
X-MailFrom: osmith@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/KSSJ6IIW3CPEJ4Y6ZXKLLMLK33HHQZG2/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello various Osmocom mailing lists,

the official Osmocom binary packages will not be built anymore for the
following distributions starting at 2024-02:

* Raspberry Pi OS 64-bit (use Debian_12 etc. instead)
* Ubuntu 23.04 (Ubuntu 23.10 and LTS 20.04/22.04 feeds are available)
* openSUSE 15.4 (openSUSE Tumbleweed feed is available)
* Debian Testing (Debian Unstable and 12-10 feeds are available)

For Raspberry Pi OS 64-bit users, make sure to adjust your
/etc/apt/sources.list.d as described here to switch to a Debian
aarch64 feed:
https://osmocom.org/projects/cellular-infrastructure/wiki/Latest_Builds

See the new linux distributions article for information on how long we
plan to keep building packages for each distribution:
https://osmocom.org/projects/cellular-infrastructure/wiki/Linux_distributions

Let me know if you have questions.

Best regards,
Oliver

-- 
- Oliver Smith <osmith@sysmocom.de>            https://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
