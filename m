Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 3A264326597
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 26 Feb 2021 17:34:44 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 62FE61CA4DE;
	Fri, 26 Feb 2021 16:34:39 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id DD9F21CA4B4;
 Fri, 26 Feb 2021 16:34:19 +0000 (UTC)
Received: from public-mail (mail.sysmocom.de [144.76.43.93])
 by mail.sysmocom.de (Postfix) with ESMTP id 94AA74D08F6;
 Fri, 26 Feb 2021 16:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([144.76.43.93])
 by public-mail (mail.sysmocom.de [144.76.43.93]) (amavisd-new, port 10024)
 with ESMTP id PpMZdN67DB41; Fri, 26 Feb 2021 16:33:48 +0000 (UTC)
Received: from [192.168.1.140] (unknown [213.195.109.89])
 by mail.sysmocom.de (Postfix) with ESMTPSA id 09E594D08E5;
 Fri, 26 Feb 2021 16:33:47 +0000 (UTC)
To: OpenBSC <openbsc@lists.osmocom.org>,
 "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
From: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: Osmocom CNI release 202102
Message-ID: <0c5afc56-951f-c8a5-39fe-5da1a5af46c8@sysmocom.de>
Date: Fri, 26 Feb 2021 17:33:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
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

Dear all,

I am pleased to announce new tagged releases for Osmocom Cellular 
Network Infrastructure components.

Find more information about the release here [1].

Osmocom "Latest" repositories in OBS [2] should already contain packages 
for the new versions.

OpenEmbedded related meta-layers such as meta-telephony usual 
stable/testing branch "201705" [3] have also been updated to build 
recipes for new versions.

Regards,
Pau

[1] https://osmocom.org/news/132
[2] https://osmocom.org/projects/cellular-infrastructure/wiki/Latest_Builds
[3] https://git.osmocom.org/meta-telephony/log/?h=201705

-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
