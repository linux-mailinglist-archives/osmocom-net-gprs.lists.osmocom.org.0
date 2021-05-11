Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 9EAF737AC9A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 11 May 2021 19:02:06 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 100A41B4C5D;
	Tue, 11 May 2021 17:01:58 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=sysmocom.de
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 437 seconds by postgrey-1.37 at lists.osmocom.org;
 Tue, 11 May 2021 17:01:54 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=sysmocom.de
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:13b:828::1:500; helo=mail.sysmocom.de;
 envelope-from=pespin@sysmocom.de; receiver=<UNKNOWN> 
Received: from mail.sysmocom.de (mail.sysmocom.de
 [IPv6:2a01:4f8:13b:828::1:500])
 by lists.osmocom.org (Postfix) with ESMTP id BE7A21B4C44
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 11 May 2021 17:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.sysmocom.de (Postfix) with ESMTP id 942DF1983A98;
 Tue, 11 May 2021 16:54:35 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
 by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJ3GP6HekwCU; Tue, 11 May 2021 16:54:35 +0000 (UTC)
Received: from [192.168.1.140] (unknown [213.195.104.219])
 by mail.sysmocom.de (Postfix) with ESMTPSA id A9F811983A30;
 Tue, 11 May 2021 16:54:34 +0000 (UTC)
To: =?UTF-8?B?5rW36bG8?= <86731050@qq.com>
Cc: osmocom-net-gprs <osmocom-net-gprs@lists.osmocom.org>
References: <tencent_00267C1525CBD7A6CE2A1C38136EBE0BCD06@qq.com>
From: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: =?UTF-8?B?UmU6IOWbnuWkje+8miBvc21vLXBjdSBhbHdheXMgIlQzMTkzIHRpbWVv?=
 =?UTF-8?Q?ut_expired=2c_freeing_TBF=22_when_osmo-sgsn_send_GPRS_ATTACH_ACCE?=
 =?UTF-8?Q?PT?=
Message-ID: <3c8c6184-72fa-895d-536e-8c4979d4c7c7@sysmocom.de>
Date: Tue, 11 May 2021 18:54:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <tencent_00267C1525CBD7A6CE2A1C38136EBE0BCD06@qq.com>
Content-Type: text/plain; charset=gb18030; format=flowed
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

I would say the RLCMAC side looks fine. It looks like the SGSN is 
rejecting the ATTACH REQUEST. You may have a misconfiguration in the 
encryption config of osmo-sgsn?

Unfortuantely, your pcap doesn't contain the contents of the Gb 
interface ("gprs-ns" filter in wireshark), so it's difficult to say 
what's going on.

Please share a pcap containing gprs-ns (PCU<->SGSN) and gtp 
(SGSN<->GGSN) packets in order to find out what's going on. Share also a 
log file of osmo-sgsn (or use gsmtap log) with debug enabled to find out 
why is the SGSN rejecting it.

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
