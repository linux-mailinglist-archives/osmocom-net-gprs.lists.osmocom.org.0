Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8AEA48888
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Feb 2025 20:06:38 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C56D21F8564;
	Thu, 27 Feb 2025 19:06:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pkkcOoJ_6rU0; Thu, 27 Feb 2025 19:06:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 094501F8552;
	Thu, 27 Feb 2025 19:06:32 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 256DD38A1964;
	Thu, 27 Feb 2025 19:06:11 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 004EE1F852F;
	Thu, 27 Feb 2025 19:06:11 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sddHAb4fcw9v; Thu, 27 Feb 2025 19:06:10 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id 394F51F852A;
	Thu, 27 Feb 2025 19:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 72260C8A706;
	Thu, 27 Feb 2025 19:06:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P8mbKHYLomML; Thu, 27 Feb 2025 19:06:09 +0000 (UTC)
Received: from my.box (ip-109-40-242-243.web.vodafone.de [109.40.242.243])
	by mail.sysmocom.de (Postfix) with ESMTPSA id F1BC9C8A701;
	Thu, 27 Feb 2025 19:06:08 +0000 (UTC)
Date: Thu, 27 Feb 2025 20:06:07 +0100
From: Neels Hofmeyr <nhofmeyr@sysmocom.de>
To: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
Subject: Re: Adding doxygen style comments to header files
Message-ID: <Z8C3nwdC2h8jfQXt@my.box>
References: <20250225145748.28479793@javelin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225145748.28479793@javelin>
Message-ID-Hash: EFP2GFSXOKOYFNWJNMQGJGLWIBZAWRLL
X-Message-ID-Hash: EFP2GFSXOKOYFNWJNMQGJGLWIBZAWRLL
X-MailFrom: nhofmeyr@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc@lists.osmocom.org, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EFP2GFSXOKOYFNWJNMQGJGLWIBZAWRLL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

BTW, for me, the argument isn't so much doxygen. I never use that HTML and if
anyone does, please raise your hand. For me it's about reading the source tree.
(I would very much enjoy dropping the weird doxygen syntax and markers)

There may also be the aspect of the license applying only to the .c files. IIUC
.h files are considered flat compiling necessity, not substance of a project.
I'm not sure about this / don't feel strong about that aspect.

My two main strong opinions are opposing each other:

1. when hacking on our code, i enjoy that a .h has only the terse list of
actual API without long comments in-between. It makes it easy to get a good big
picture of the API very rapidly. The doc is just one ctags jump away.

2. when using other libraries, i enjoy when the .h file already explains
everything i need to know about the function arguments. Because I don't have
the .c file anywhere near.

A good example for both is talloc. Very useful to read the .h for docs. But it
also took me a very long time to get a big picture of the API. Years later I
was still finding functions i wished i had known about sooner.

My preference for either is not strong enough to want to change how we're doing
it in osmocom.

~N
