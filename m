Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id E2581B51CEB
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 10 Sep 2025 18:05:07 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D51C52B93A7;
	Wed, 10 Sep 2025 16:05:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ko9nJ1vlTF1y; Wed, 10 Sep 2025 16:05:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5DDAC2B9397;
	Wed, 10 Sep 2025 16:05:04 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 486F938ADE98;
	Wed, 10 Sep 2025 16:04:54 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EF67A2B9379;
	Wed, 10 Sep 2025 16:04:53 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 53GkaC9MDTk3; Wed, 10 Sep 2025 16:04:53 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id 335102B9374;
	Wed, 10 Sep 2025 16:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id A3E5CC93FEF;
	Wed, 10 Sep 2025 16:04:52 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9gj45QLXgtF; Wed, 10 Sep 2025 16:04:52 +0000 (UTC)
Received: from [192.168.1.140] (unknown [207.188.175.167])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 29E3CC93FEE;
	Wed, 10 Sep 2025 16:04:52 +0000 (UTC)
Message-ID: <ee78996c-0e62-462b-aa8c-ee554f0b49fd@sysmocom.de>
Date: Wed, 10 Sep 2025 18:04:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Move vlr code from osmo-msc into a own library
To: Neels Hofmeyr <nhofmeyr@sysmocom.de>,
 Alexander 'lynxis' Couzens <lynxis@fe80.eu>
References: <20250828142529.46b616f8@javelin> <aMGT8Peet1LXBUMK@my.box>
Content-Language: en-US
From: Pau Espin Pedrol <pespin@sysmocom.de>
Autocrypt: addr=pespin@sysmocom.de; keydata=
 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
In-Reply-To: <aMGT8Peet1LXBUMK@my.box>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: VMXO7YTUBSLL5YAKTWC454UA5X6T4VMF
X-Message-ID-Hash: VMXO7YTUBSLL5YAKTWC454UA5X6T4VMF
X-MailFrom: pespin@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VMXO7YTUBSLL5YAKTWC454UA5X6T4VMF/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

On 9/10/25 5:06 PM, Neels Hofmeyr wrote:
> So if there is too much complexity in marrying msc and sgsn to a common
> libosmo-vlr, I'd personally agree with adding a copy of the MSC's VLR into the
> SGSN and just make it work from there, without idealistic expectations on
> having a fully independent external library. I myself did once try to create
> libiu-client to share Iu interface handling between SGSN and MSC, which was a
> great idea in my nerdy dreams, but only held us back in practice. We've finally
> recently gotten rid of it.

I also already expressed the same concerns to lynxis in private. So yes, 
agree with keeping a separate copy for now.

> 
> The vlr in osmo-msc does try to do proper layer separation, with those vlr_ops
> callback functions and so on. So the vision *was* to be independent from the
> MSC's code. But did it work out? It would be interesting for me personally to
> take a closer look at the individual places that cause problems, to see the
> places where the MSC's VLR isn't properly separated, after all. Maybe we can
> even resolve those problems, but, I still think just keeping an own VLR copy in
> osmo-sgsn is a very good option, too. If we ever make important fixes to the
> VLR, copying those fixes over between SGSN and MSC, and otherwise allowing them
> to slightly diverge, will very likely be less work than constantly keeping both
> VLRs in sync. The VLR is not libosmocore...

I think sometimes what ends up being a bit convoluted regarding those 
abstractions is that still those are meant to be used as a 
synchronous/blocking API, while the real interface in the end is 
expected to be asynchronous (over the wire). So in the end if we ever 
switch to an external VLR we'd need to change the code quite a lot in 
order to convert those calls to be asynchronous.
In that kind of events where we expect this final asynchronous behavior, 
for the future, we may want to implement an API eg. over libosmo-netif's 
osmo_prim_srv (which uses a unix socket internally) to already make the 
code asyncrhonous from the start.

Regards,
Pau
-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Siemensstr. 26a
* 10551 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte

