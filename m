Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A04EAD9BD7
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 14 Jun 2025 11:39:22 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C3C10269D2A;
	Sat, 14 Jun 2025 09:39:21 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qaMfXwjJu6Yl; Sat, 14 Jun 2025 09:39:21 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 049FA269D1F;
	Sat, 14 Jun 2025 09:39:17 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id AE17438A003B
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 14 Jun 2025 09:39:13 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9296B269D1D
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 14 Jun 2025 09:39:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w9_puwc7Ax9s for <osmocom-net-gprs@lists.osmocom.org>;
 Sat, 14 Jun 2025 09:39:12 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id C2FF1269D14
	for <osmocom-net-gprs@lists.osmocom.org>; Sat, 14 Jun 2025 09:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 391BDC91909;
	Sat, 14 Jun 2025 09:39:12 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vdgkpFKgxkzm; Sat, 14 Jun 2025 09:39:12 +0000 (UTC)
Received: from [127.0.0.1] (unknown [IPv6:2a03:b0c0:3:d0::1afa:1001])
	by mail.sysmocom.de (Postfix) with ESMTPSA id A9EEFC91908;
	Sat, 14 Jun 2025 09:39:11 +0000 (UTC)
Message-ID: <3ba85d0a-1375-4a4f-afe5-7995ebeaa2a2@sysmocom.de>
Date: Sat, 14 Jun 2025 16:39:09 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Error in PCU Loopback
To: osmocom-net-gprs@lists.osmocom.org
References: <CADDdCbPeuJuKi7nedp3Fkge5zf-G6sW29rYY1O+-W47qoUaDhw@mail.gmail.com>
Content-Language: en-US
From: Vadim Yanitskiy <vyanitskiy@sysmocom.de>
In-Reply-To: <CADDdCbPeuJuKi7nedp3Fkge5zf-G6sW29rYY1O+-W47qoUaDhw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: KVTAOFD7DNOG2WAVX7FEYAL4OB4NNBB3
X-Message-ID-Hash: KVTAOFD7DNOG2WAVX7FEYAL4OB4NNBB3
X-MailFrom: vyanitskiy@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mudarsun@gmail.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/KVTAOFD7DNOG2WAVX7FEYAL4OB4NNBB3/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 6/9/25 13:47, M. Suhendy Martondi Nasution wrote:
> this is my osmo-pcu.cfg

Please also provide your osmo-sgsn.cfg and osmo-bsc.cfg.  It might be 
that both osmo-pcu and osmo-sgsn are binding on the same UDP port.

-- 
- Vadim Yanitskiy <vyanitskiy at sysmocom.de>    http://www.sysmocom.de/
========================================================================
* sysmocom - systems for mobile communications GmbH
* Siemensstr. 26a
* 10551 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte

