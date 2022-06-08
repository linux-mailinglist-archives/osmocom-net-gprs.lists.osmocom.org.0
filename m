Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA00542E43
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jun 2022 12:48:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 013FE28052;
	Wed,  8 Jun 2022 10:48:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d_FnWr5Uw5SK; Wed,  8 Jun 2022 10:48:23 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3E92228024;
	Wed,  8 Jun 2022 10:48:20 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B528738A0AEA
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jun 2022 10:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8F26B28024
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jun 2022 10:48:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsPc6JZd8wFS for <osmocom-net-gprs@lists.osmocom.org>;
	Wed,  8 Jun 2022 10:48:17 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id 08FFF27EC9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jun 2022 10:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 9F68F1980A4B
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jun 2022 10:48:16 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J5_r8EXdDyby for <osmocom-net-gprs@lists.osmocom.org>;
	Wed,  8 Jun 2022 10:48:16 +0000 (UTC)
Received: from [192.168.1.140] (unknown [139.47.40.14])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 2A933198015C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  8 Jun 2022 10:48:16 +0000 (UTC)
Message-ID: <da13716e-92aa-17c0-38d3-86736d384baf@sysmocom.de>
Date: Wed, 8 Jun 2022 12:48:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: Not able to make PS calls using SGSN
Content-Language: en-US
To: osmocom-net-gprs@lists.osmocom.org
References: <CACK+Z_Cep9tu9DC=62QF_QYWW093qTR0bc-N52X0p+1x3+XwWA@mail.gmail.com>
 <CACK+Z_CY1bXibk-j=mcC06QtGonO+awzxXR8vn8b2D6=TqO7cQ@mail.gmail.com>
From: Pau Espin Pedrol <pespin@sysmocom.de>
In-Reply-To: <CACK+Z_CY1bXibk-j=mcC06QtGonO+awzxXR8vn8b2D6=TqO7cQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: I5XGM6JRP43ZEZ2IVSE55AL5FKT5NN5L
X-Message-ID-Hash: I5XGM6JRP43ZEZ2IVSE55AL5FKT5NN5L
X-MailFrom: pespin@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/I5XGM6JRP43ZEZ2IVSE55AL5FKT5NN5L/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

I guess you mean OsmoSGSN?

What are you connecting OsmoSGSN again? OsmoGGSN? which versions?
Unless you provide a pcap file it's difficult to get a picture on what's 
going wrong.

-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
