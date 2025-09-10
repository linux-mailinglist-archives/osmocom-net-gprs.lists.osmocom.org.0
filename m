Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3088BB51AD9
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 10 Sep 2025 17:07:14 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B257C2B926F;
	Wed, 10 Sep 2025 15:07:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AOhCIDOjvQyN; Wed, 10 Sep 2025 15:07:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B89C02B9260;
	Wed, 10 Sep 2025 15:07:10 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A02F138ADEF7;
	Wed, 10 Sep 2025 15:06:26 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7CF1D2B9244;
	Wed, 10 Sep 2025 15:06:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gwiPr7uTSst5; Wed, 10 Sep 2025 15:06:25 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [176.9.212.161])
	by mail.osmocom.org (Postfix) with ESMTPS id BE26F2B923F;
	Wed, 10 Sep 2025 15:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 32336C93FEE;
	Wed, 10 Sep 2025 15:06:25 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ggQSOxWxjeUm; Wed, 10 Sep 2025 15:06:25 +0000 (UTC)
Received: from my.box (p54a4fa5a.dip0.t-ipconnect.de [84.164.250.90])
	by mail.sysmocom.de (Postfix) with ESMTPSA id D7EE9C9386F;
	Wed, 10 Sep 2025 15:06:24 +0000 (UTC)
Date: Wed, 10 Sep 2025 17:06:24 +0200
From: Neels Hofmeyr <nhofmeyr@sysmocom.de>
To: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
Subject: Re: Move vlr code from osmo-msc into a own library
Message-ID: <aMGT8Peet1LXBUMK@my.box>
References: <20250828142529.46b616f8@javelin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250828142529.46b616f8@javelin>
Message-ID-Hash: 6HLZALIRE5ZOQG5BJBD3JACEJ4NM3LKK
X-Message-ID-Hash: 6HLZALIRE5ZOQG5BJBD3JACEJ4NM3LKK
X-MailFrom: nhofmeyr@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6HLZALIRE5ZOQG5BJBD3JACEJ4NM3LKK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Thu, Aug 28, 2025 at 02:25:29PM +0200, Alexander 'lynxis' Couzens wrote:
> a couple month ago I proposed to make the VLR code of the osmo-msc independent of the osmo-msc
> and create a new library called libosmo-vlr. Later use the libosmo-vlr code to integrate it into
> osmo-sgsn.

A separate libosmo-vlr would be the idealistic optimum. But I think the most
important part is that, instead of starting a new VLR implementation from
scratch, to use what we learned in osmo-msc and use that in osmo-sgsn.

So if there is too much complexity in marrying msc and sgsn to a common
libosmo-vlr, I'd personally agree with adding a copy of the MSC's VLR into the
SGSN and just make it work from there, without idealistic expectations on
having a fully independent external library. I myself did once try to create
libiu-client to share Iu interface handling between SGSN and MSC, which was a
great idea in my nerdy dreams, but only held us back in practice. We've finally
recently gotten rid of it.

The vlr in osmo-msc does try to do proper layer separation, with those vlr_ops
callback functions and so on. So the vision *was* to be independent from the
MSC's code. But did it work out? It would be interesting for me personally to
take a closer look at the individual places that cause problems, to see the
places where the MSC's VLR isn't properly separated, after all. Maybe we can
even resolve those problems, but, I still think just keeping an own VLR copy in
osmo-sgsn is a very good option, too. If we ever make important fixes to the
VLR, copying those fixes over between SGSN and MSC, and otherwise allowing them
to slightly diverge, will very likely be less work than constantly keeping both
VLRs in sync. The VLR is not libosmocore...

> PS. The current concept (because of time pressure) is to keep 2 copies of
> libosmo-vlr in the code base of osmo-msc and osmo-sgsn and to move it later
> out of it into an own library.

(...and i would also be fine with not bothering to move it out later.)

> I would rather guarantee runtime stability within a library version, but not
> at build time. The strategy would be increasing the library major version
> more often.

(I don't understand this paragraph, I hope I gave a sufficient answer above)

~N
