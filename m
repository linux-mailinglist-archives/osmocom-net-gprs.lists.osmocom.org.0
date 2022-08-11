Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC0959B511
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 21 Aug 2022 17:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 28ABD282BE;
	Sun, 21 Aug 2022 15:29:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9YRS_zaolcw2; Sun, 21 Aug 2022 15:29:49 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A33FF282BA;
	Sun, 21 Aug 2022 15:29:48 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C35F538A17D5;
	Thu, 11 Aug 2022 20:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9E2F828196;
	Thu, 11 Aug 2022 20:32:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziyFtCNxu7T7; Thu, 11 Aug 2022 20:32:52 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id F07312812C;
	Thu, 11 Aug 2022 20:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 7004519804EE;
	Thu, 11 Aug 2022 20:32:51 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpY_jKBoEEcu; Thu, 11 Aug 2022 20:32:50 +0000 (UTC)
Received: from [192.168.1.178] (l37-193-174-152.novotelecom.ru [37.193.174.152])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 6C85E19804BE;
	Thu, 11 Aug 2022 20:32:50 +0000 (UTC)
Message-ID: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
Date: Fri, 12 Aug 2022 03:32:48 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
From: Vadim Yanitskiy <vyanitskiy@sysmocom.de>
Subject: New repository - libosmo-gprs.git
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: vyanitskiy@sysmocom.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L4QADAQME5WKAT3TLWT7NERCTKVYUE76
X-Message-ID-Hash: L4QADAQME5WKAT3TLWT7NERCTKVYUE76
X-Mailman-Approved-At: Sun, 21 Aug 2022 15:29:45 +0000
CC: Harald Welte <laforge@osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/L4QADAQME5WKAT3TLWT7NERCTKVYUE76/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi all,

as some of you may know, I am working on the MS side implementation of 
GPRS protocol stack.  The end goal is to have something similar to srsUE 
(part of srsRAN, former srsLTE), but for GPRS.

In order to reduce code duplication it was decided to move some stuff 
from both osmo-pcu.git and osmo-sgsn.git into shared libraries, so that 
we could re-use existing code in the upcoming MS side implementation.

== What is already done

* Redmine: https://osmocom.org/projects/libosmo-gprs
* Gerrit: https://gerrit.osmocom.org/q/libosmo-gprs
* Gitea: https://gitea.osmocom.org/osmocom/libosmo-gprs
* osmo-ci.git: https://gerrit.osmocom.org/c/osmo-ci/+/29019

== What is missing

* GitHub: https://github.com/osmocom/libosmo-gprs
* cgit: https://cgit.osmocom.org/libosmo-gprs/
** Coverity pulls from this mirror
** Jenkins build verification uses this mirror

I will need some help with both GitHub and cgit, as I don't have admin 
permissions.  Please also let me know if I missed something.

Best regards,
Vadim.

-- 
- Vadim Yanitskiy <vyanitskiy at sysmocom.de>    http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
