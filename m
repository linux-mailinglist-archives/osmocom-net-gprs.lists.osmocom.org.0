Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 621CD59B513
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 21 Aug 2022 17:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 84D4E282CD;
	Sun, 21 Aug 2022 15:29:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwtvsW763xz9; Sun, 21 Aug 2022 15:29:55 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8FA60282C9;
	Sun, 21 Aug 2022 15:29:54 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 13B8138A0B0F;
	Fri, 12 Aug 2022 19:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DF9B328190;
	Fri, 12 Aug 2022 19:17:50 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2Sz4N-LDG-F; Fri, 12 Aug 2022 19:17:50 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id 53BDC2812C;
	Fri, 12 Aug 2022 19:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 08B63198049B;
	Fri, 12 Aug 2022 19:17:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gso-R-07sPGa; Fri, 12 Aug 2022 19:17:49 +0000 (UTC)
Received: from [192.168.1.178] (l37-193-174-152.novotelecom.ru [37.193.174.152])
	by mail.sysmocom.de (Postfix) with ESMTPSA id D9E1F1980481;
	Fri, 12 Aug 2022 19:17:48 +0000 (UTC)
Message-ID: <108f5e7c-6356-0d80-1ba2-4fb21aabc5df@sysmocom.de>
Date: Sat, 13 Aug 2022 02:17:47 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: New repository - libosmo-gprs.git
Content-Language: en-US
To: Harald Welte <laforge@gnumonks.org>
References: <7a5b749e-e757-4eca-db6f-8f0fadb6a717@sysmocom.de>
 <YvYLgXeSZu5rW12D@nataraja>
 <825c51a2-6d9a-9622-7bca-3e64c770aa3c@sysmocom.de>
 <YvY49TlVtR2x407r@nataraja>
From: Vadim Yanitskiy <vyanitskiy@sysmocom.de>
In-Reply-To: <YvY49TlVtR2x407r@nataraja>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: vyanitskiy@sysmocom.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IA7VZ5PY27RLGXGBWOA76J5V7H2UOZRB
X-Message-ID-Hash: IA7VZ5PY27RLGXGBWOA76J5V7H2UOZRB
X-Mailman-Approved-At: Sun, 21 Aug 2022 15:29:45 +0000
CC: openbsc <openbsc@lists.osmocom.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/IA7VZ5PY27RLGXGBWOA76J5V7H2UOZRB/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Harald,

On 8/12/22 18:26, Harald Welte wrote:
> On Fri, Aug 12, 2022 at 04:38:42PM +0700, Vadim Yanitskiy wrote:
>> Cloning via https:// works, but doesn't via git://
> some people would consider that a feature... In fact we've even had
> a bug report years ago considering clone possibility via git:// a bug.
> 
> I think a good first step would be to not enable it for new projects,
> to avoid people from creating clones that would break if we eventually
> disable it.

this way we need to invest some additional time into git-to-https 
migration, because, as I mentioned earlier, both Coverity [1] and 
Jenkins [2] are still using git://.  And currently both are failing when 
trying to clone libosmo-gprs.git, see:

[1] https://jenkins.osmocom.org/jenkins/job/osmocom-coverity/1698/
[2] https://jenkins.osmocom.org/jenkins/job/gerrit-osmo-pcu/2430/

The main problem with using Gitea is that all projects are grouped: we 
have 'osmocom', 'cellular-infrastructure', 'phone-side', and more.  This 
is why we cannot simply do s#git://git#https://gitea#.

To overcome this problem, we could clone/pull from Gerrit instead.  But 
this is not going to work for projects not present in Gerrit... :/

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
