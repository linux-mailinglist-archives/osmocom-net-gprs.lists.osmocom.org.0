Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 536B560CB0A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Oct 2022 13:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AEC40282C4;
	Tue, 25 Oct 2022 11:38:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hFhG_fQwuENf; Tue, 25 Oct 2022 11:38:49 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 75B05282BA;
	Tue, 25 Oct 2022 11:38:46 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CD45E3981664;
	Tue, 25 Oct 2022 11:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AA1122812E;
	Tue, 25 Oct 2022 11:38:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p9ztNH4W6O_f; Tue, 25 Oct 2022 11:38:31 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id EB6A628049;
	Tue, 25 Oct 2022 11:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 7BC951980254;
	Tue, 25 Oct 2022 11:38:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZzydTqjWr7v; Tue, 25 Oct 2022 11:38:30 +0000 (UTC)
Received: from [IPV6:2a01:c22:771e:1600:c1c:7906:1fe9:3663] (dynamic-2a01-0c22-771e-1600-0c1c-7906-1fe9-3663.c22.pool.telefonica.de [IPv6:2a01:c22:771e:1600:c1c:7906:1fe9:3663])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 037451980058;
	Tue, 25 Oct 2022 11:38:29 +0000 (UTC)
Message-ID: <3b875dba-6c79-a09a-fe20-4d5c7e398390@sysmocom.de>
Date: Tue, 25 Oct 2022 13:38:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
From: Oliver Smith <osmith@sysmocom.de>
To: osmocom-announce@lists.osmocom.org,
 OpenBSC Mailing List <openbsc@lists.osmocom.org>,
 osmocom-net-gprs@lists.osmocom.org, osmocom-sdr@lists.osmocom.org
Subject: Osmocom binary package repository URLs have changed
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: VM7KEM35KAJAZGJMFM2GR5KCYEQGECTS
X-Message-ID-Hash: VM7KEM35KAJAZGJMFM2GR5KCYEQGECTS
X-MailFrom: osmith@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VM7KEM35KAJAZGJMFM2GR5KCYEQGECTS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello various Osmocom mailing lists,

as previously announced (https://osmocom.org/news/191):
* The binary packages are being built on Osmocom's own OBS server now.
* We will stop pushing packages to the openSUSE OBS server at the end of
   October (in one week).

If you are using Osmocom binary packages, please make sure that you have
configured the new repository URLs.

See the wiki for details:
https://osmocom.org/projects/cellular-infrastructure/wiki/Binary_Packages

Best,
Oliver

-- 
- Oliver Smith <osmith@sysmocom.de>            https://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
