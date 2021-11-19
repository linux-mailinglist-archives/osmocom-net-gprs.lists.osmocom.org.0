Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id B1F7F4571E0
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 19 Nov 2021 16:42:27 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id D9337226DFB;
	Fri, 19 Nov 2021 15:42:25 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=sysmocom.de
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=176.9.212.161;
 helo=mail.sysmocom.de; envelope-from=pespin@sysmocom.de; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=sysmocom.de
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
 by lists.osmocom.org (Postfix) with ESMTP id 78453226DCB;
 Fri, 19 Nov 2021 15:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.sysmocom.de (Postfix) with ESMTP id 9447119803CC;
 Fri, 19 Nov 2021 15:42:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
 by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3wuG9O-ZxE4J; Fri, 19 Nov 2021 15:42:09 +0000 (UTC)
Received: from [192.168.1.138] (unknown [207.188.170.201])
 by mail.sysmocom.de (Postfix) with ESMTPSA id 3D3EF198021D;
 Fri, 19 Nov 2021 15:42:09 +0000 (UTC)
Message-ID: <017f28c3-76e9-aa9f-e701-d746838cabde@sysmocom.de>
Date: Fri, 19 Nov 2021 16:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: OpenBSC <openbsc@lists.osmocom.org>,
 osmocom-net-gprs <osmocom-net-gprs@lists.osmocom.org>
From: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: Osmocom CNI release 202111
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

[1] https://osmocom.org/news/152
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
