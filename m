Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 1505A312D58
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  8 Feb 2021 10:35:23 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9BCF11BCB8E;
	Mon,  8 Feb 2021 09:35:20 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=sysmocom.de
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:191:444c::2:4; helo=mail.sysmocom.de;
 envelope-from=pespin@sysmocom.de; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=sysmocom.de
Received: from mail.sysmocom.de (mail.sysmocom.de
 [IPv6:2a01:4f8:191:444c::2:4])
 by lists.osmocom.org (Postfix) with ESMTP id 76CDF1BCB78
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  8 Feb 2021 09:35:15 +0000 (UTC)
Received: from public-mail (mail.sysmocom.de [144.76.43.93])
 by mail.sysmocom.de (Postfix) with ESMTP id 550AB4245F2;
 Mon,  8 Feb 2021 09:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([144.76.43.93])
 by public-mail (mail.sysmocom.de [144.76.43.93]) (amavisd-new, port 10024)
 with ESMTP id T9DuySf6gyKd; Mon,  8 Feb 2021 09:35:04 +0000 (UTC)
Received: from [192.168.1.140] (unknown [213.195.98.58])
 by mail.sysmocom.de (Postfix) with ESMTPSA id CF0C24245D6;
 Mon,  8 Feb 2021 09:35:03 +0000 (UTC)
To: morteza ali Ahmadi <morteza.ali.ahmadi@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org
References: <CANPQb9D9Vt7BJjyuJ8ZPoVJQbQmZm+Vr+cpxE6sfrpcRhbJZ1w@mail.gmail.com>
From: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: Re: Question about OsmoGGSN project
Message-ID: <ed20a5c3-57bf-0a6a-ca1d-f7279a933d8f@sysmocom.de>
Date: Mon, 8 Feb 2021 10:35:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CANPQb9D9Vt7BJjyuJ8ZPoVJQbQmZm+Vr+cpxE6sfrpcRhbJZ1w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi,

you are probably facing a routing issue, and you need to solve it by 
using different network namespaces (netns).
In your current setup, you probably have routing for those DNS packets 
to go through the sgsnemu iface, and once the ggsn puts them again in 
the network stack after going through GTP, the kernel probably ends up 
dropping the packet because it finds out some sort of loop.

In order to solve it, the easiest is to run sgsnemu under a different 
netns, and set default routing inside that netns to the tun iface 
created by sgsnemu. AFAIR, the netns can take care of creating the netns 
and configuring it for you, check it's man page ("--defaultroute", 
"--netns").

Hope this is useful to you,
Pau

-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
