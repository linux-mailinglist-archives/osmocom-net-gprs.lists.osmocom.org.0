Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6E4A60BDA
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 14 Mar 2025 09:37:24 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B95B320D002;
	Fri, 14 Mar 2025 08:37:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyndMdEMwyhM; Fri, 14 Mar 2025 08:37:23 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BAF5320CFEF;
	Fri, 14 Mar 2025 08:37:19 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id AEF0838A1964;
	Thu, 27 Feb 2025 19:24:17 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 93B331F85A1;
	Thu, 27 Feb 2025 19:24:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sjwRcTa1asRj; Thu, 27 Feb 2025 19:24:16 +0000 (UTC)
Received: from freecalypso.org (freecalypso.org [195.154.163.71])
	by mail.osmocom.org (Postfix) with ESMTPS id CF31D1F859C;
	Thu, 27 Feb 2025 19:24:16 +0000 (UTC)
Received: by freecalypso.org (Postfix, from userid 1001)
	id 6286337403CF; Thu, 27 Feb 2025 19:23:45 +0000 (UTC)
Date: Thu, 27 Feb 2025 11:23:38 -0800
From: Mychaela Falconia <falcon@freecalypso.org>
To: nhofmeyr@sysmocom.de, lynxis@fe80.eu
Subject: Re: Adding doxygen style comments to header files
References: <20250225145748.28479793@javelin> <Z8C3nwdC2h8jfQXt@my.box>
In-Reply-To: <Z8C3nwdC2h8jfQXt@my.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20250227192345.6286337403CF@freecalypso.org>
X-MailFrom: falcon@freecalypso.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: THLQSRVJSX4YJSLHFKMZBXDBVJKU5A23
X-Message-ID-Hash: THLQSRVJSX4YJSLHFKMZBXDBVJKU5A23
X-Mailman-Approved-At: Fri, 14 Mar 2025 08:37:13 +0000
CC: osmocom-net-gprs@lists.osmocom.org, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/THLQSRVJSX4YJSLHFKMZBXDBVJKU5A23/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Neels wrote:

> BTW, for me, the argument isn't so much doxygen. I never use that HTML and if
> anyone does, please raise your hand. For me it's about reading the source tree.
> (I would very much enjoy dropping the weird doxygen syntax and markers)

Me too!  I agree with every word Neels said in those 3 lines, that's
exactly how I feel about those comments.  Life would be so much easier
if I could write simple comments without all that weird doxygen-ese.

M~
