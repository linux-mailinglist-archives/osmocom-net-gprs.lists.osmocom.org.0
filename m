Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 9170F1DCED8
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 21 May 2020 16:02:32 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 3CAAE1163EF;
	Thu, 21 May 2020 14:02:26 +0000 (UTC)
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
 by lists.osmocom.org (Postfix) with ESMTP id 560FF1163DA
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 14:02:23 +0000 (UTC)
Received: from public-mail (mail.sysmocom.de [144.76.43.93])
 by mail.sysmocom.de (Postfix) with ESMTP id 97587634B1F
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 13:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([144.76.43.93])
 by public-mail (mail.sysmocom.de [144.76.43.93]) (amavisd-new, port 10024)
 with ESMTP id rFQrjwvRekUi for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 21 May 2020 13:55:40 +0000 (UTC)
Received: from [192.168.1.135] (unknown [93.176.188.130])
 by mail.sysmocom.de (Postfix) with ESMTPSA id E3E32634B0A
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 May 2020 13:55:39 +0000 (UTC)
Subject: Re: Compilation of TTCN3 tests for SGSN failed
To: osmocom-net-gprs@lists.osmocom.org
References: <CAMYWRL93tWfcNcw-jO=qRYCE2nZDKRijP+qMbg1UsBLQdwe6cQ@mail.gmail.com>
From: Pau Espin Pedrol <pespin@sysmocom.de>
Autocrypt: addr=pespin@sysmocom.de; keydata=
 mQENBEyY/q8BCAC5xl9nRLQTspgT1rZAvcDYJXLbXdYvJ54bqKns0wv8akF0OyWuhT+me4bV
 LnksGhhHWKmCJgprDlt9XZ/jPUKwBX9vX48B+XxSmQ3HvFJE67HFJAtj7CIK81+BuV5YoPNJ
 h6XiIqiv3BCrsvQg0pnP4GWlaA+DC818vk61WzekOJxx7voi7UOZIgyQ8zXkRKHygfQ+6myk
 jqY0/v7bvAy9bg3zyYI9MgXnLJ+9e7XJ1zmtdwAoU9ks0KVcpKi2uMd+ctcRGEhUI4kPR2BO
 WpvQwy8gAUoVXO6+T+aK/4DK+MmGbgEfiVro1tjnpIdeGkVIcic9L9peVSq0gPsEc1CXABEB
 AAG0MVBhdSBFc3BpbiBQZWRyb2wgKHBlc3BpbikgPHBlc3Bpbi5zaGFyQGdtYWlsLmNvbT6J
 ATgEEwECACIFAkyY/q8CGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEOpAdL3zrPYP
 hn0H/25exWBCI7ziVDKdrosWgSsTFfgA0GhLl4nD16Bg7ou685yYqqRNyczu1Lj+50f9/aMG
 1yHhKOhHD/CmwviQDGejqksUnQojfBJnyfZE+jIz9RPm60PwYaukL9E8lhbWJagunGHq2+Xl
 6DmoFEYBDZ77jkZ/xviLTUof/9/KAK+7PldCsVJ/Z9RINBDKobXPnaISUYsf29b9Gwc0QVdW
 nUt6tLSrMIi+8Q7qZIALuVTZIfLbK0//wX9YzTKxxm0xZKs0dyCSxwcRK3Ru3z72/diBs1jy
 n9sPX4hKJWMNkqX1f675n9CV5yh1l1WjoUeWHLqu87a6VVTuNVTTGnD8sQK5AQ0ETJj+rwEI
 AMMFhCM2ACj0DVFYl3npR6fbzTFgetO5nYOOh+YGD+Fjj5GZ3XxdJvv0k3fZRsFnc1CYNnuB
 SdI21WlTrzrK8+dqOn8N83aq5y/vezha9kZU0shuA0LKFJMROCGfkSCXsmvrWiCjA7goyHOE
 pHeOZcBq93crGgoiCMiAN0ToAb88LWtWg5IxcfdhtVdfWnzSAQVoLbdIVth7xueLRF/oRPe7
 T/sUUjMORvHF+S0L2D9Rc7MQTApNRwUrlWPz5+gEtZDJ+WMC0QOpACofCWQ0CWBmUft0c8hh
 Ar9JT5j4fI3DCDdM4cWNI9FTYaWwkcjlK+OajrJxTLnXt7S7n5/ihLkAEQEAAYkBHwQYAQIA
 CQUCTJj+rwIbDAAKCRDqQHS986z2D1FeB/9stgex4eBqf7D+8a3I7UkpwaIsaeRCdJf8VAvS
 fMB7Z+ez3UTr7IAql24/tgcTy2ofrdsiS88BCGRBM0eC2tTyH8hHWVN6wcB7DF8HXv4PhL1O
 TKmgSm5YiEDpxzZMd2cNH0onjHg4fSJue7C6bsGGQYMre7Akaze6gMaO7qLeIhsduDPwrwwi
 soOHxc/G4ZEdrEsV5Dopx4UJeOmmywFpVstcvB7EctQb8nk+PEV1wtUwGSp7M9gf4lCeSPle
 XC9SENRy7pFmoRtE6o4LBFmrWSBsrwM2izP3KNtw5M56zUVpLQC0mwgjFySwKFh8ryURkBI1
 Sqp+/hKID+0ivlyS
Message-ID: <e4646377-af68-82dd-d4a0-5fa66021bbe1@sysmocom.de>
Date: Thu, 21 May 2020 15:55:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAMYWRL93tWfcNcw-jO=qRYCE2nZDKRijP+qMbg1UsBLQdwe6cQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
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

Forgot to mention your comments regarding build:

* I think we add SGSN_Tests.ttcn first explicitly because it is relevant
for some reason I forgot. Maybe to generate correct binary file name?

* If you want to build the SGSN, simply run "make sgsn" from the topdir
of the git repo and you should be done.

* Have a look at docker-playground.git in git.osmocom.org for already
prepared containerized setup to run it (ttcn3-sgsn-tests/jenkins.sh).

-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
