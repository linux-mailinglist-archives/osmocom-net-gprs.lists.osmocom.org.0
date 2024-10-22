Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 701499AB0D8
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 22 Oct 2024 16:29:39 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id BEBF915ECE1;
	Tue, 22 Oct 2024 14:29:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ba9Bv3KV8bl8; Tue, 22 Oct 2024 14:29:38 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 700BB15ECD7;
	Tue, 22 Oct 2024 14:29:37 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 73EBA38A0EB7
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 14:29:34 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 118FF15ECD5
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 14:29:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zAvtB4st3UuN for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 22 Oct 2024 14:29:32 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id E934A15ECD0
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 14:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 1A952C801E5;
	Tue, 22 Oct 2024 14:29:31 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbiumr8ixXIa; Tue, 22 Oct 2024 14:29:29 +0000 (UTC)
Received: from [192.168.1.140] (unknown [207.188.169.202])
	by mail.sysmocom.de (Postfix) with ESMTPSA id A047AC801D7;
	Tue, 22 Oct 2024 14:29:29 +0000 (UTC)
Message-ID: <6082fdfe-6f8d-4749-8494-cf444cebe7c8@sysmocom.de>
Date: Tue, 22 Oct 2024 16:29:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: libgtp API strategy for Gn (SGSN <> MME)
To: Alexander 'lynxis' Couzens <lynxis@fe80.eu>,
 osmocom-net-gprs@lists.osmocom.org
References: <20241022152218.3907eb4b@javelin>
Content-Language: en-US
From: Pau Espin Pedrol <pespin@sysmocom.de>
Autocrypt: addr=pespin@sysmocom.de; keydata=
 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
In-Reply-To: <20241022152218.3907eb4b@javelin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: OWDDPK6XJ7DQ36SKBCHEWX4DLTHTV2GB
X-Message-ID-Hash: OWDDPK6XJ7DQ36SKBCHEWX4DLTHTV2GB
X-MailFrom: pespin@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/OWDDPK6XJ7DQ36SKBCHEWX4DLTHTV2GB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

On 10/22/24 3:22 PM, Alexander 'lynxis' Couzens wrote:
> So what is the right direction?

IMHO the right direction is to have a libosmo-gtp.git repository which 
contains:
libosmo-gtpv1c.so
libosmo-gtpv2c.so

It should be pretty similar to what nowadays you can find in 
https://github.com/open5gs/open5gs/tree/main/lib/gtp/ .

As in there, I really really vote for generating the TLVs as it's done 
in there, parsing the 3GPP docx (I actually wrote the script to generate 
the v1 subdir structs there iirc). See 
https://github.com/open5gs/open5gs/tree/main/lib/gtp/v1/support/ .

Then, on top/aside of that add some APIs to have some data domain with 
some structs (private structs, public APIs!) to handle peers, 
retransmission state, etc. like done in path.c and xact.c.
Also add some VTY to declare and configure nodes like done in eg. 
libosmo-sigtran.

There's already a ticket to do this btw, see 
https://osmocom.org/issues/6518 .

> Should I create a new high level API, parse only the 3-4 TLVs the SGSN will use into a `struct sgsn_response`?

We should really end up dropping libgtp, that's really a dead end and 
will only cause us many many problems as we try to improve it imho. So 
I'm all in favour of a new libosmo-gtp as mentioned above.

I think it's fine for first develop the library inside a subdir of 
osmo-sgsn.git or osmo-ggsn.git as a independent static library and later 
on once used properly make it a public shared object inside its own git 
repository.

Start by taking the python script, putting it eg. in 
osmo-sgsn.git/libosmo-gtp/support/ and generating code using libosmocore 
dependencies.

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

