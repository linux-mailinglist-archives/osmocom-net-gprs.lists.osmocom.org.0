Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1135C446774
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  5 Nov 2021 17:59:12 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 8F58A21766A;
	Fri,  5 Nov 2021 16:59:07 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=mail.tsaitgaist.info
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=tsaitgaist.info header.i=@tsaitgaist.info header.b=TLORY/O6
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 376 seconds by postgrey-1.37 at lists.osmocom.org;
 Fri, 05 Nov 2021 13:24:35 UTC
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=mail.tsaitgaist.info
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=37.187.20.133;
 helo=ns3078383.ip-37-187-20.eu; envelope-from=ml@mail.tsaitgaist.info;
 receiver=<UNKNOWN> 
Received: from ns3078383.ip-37-187-20.eu (tsaitgaist.info [37.187.20.133])
 by lists.osmocom.org (Postfix) with ESMTP id A9AAF213A78;
 Fri,  5 Nov 2021 13:24:35 +0000 (UTC)
Received: from diode (mue-88-130-48-186.dsl.tropolys.de [88.130.48.186])
 by ns3078383.ip-37-187-20.eu (Postfix) with ESMTPSA id 370FC8E009C;
 Fri,  5 Nov 2021 14:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=tsaitgaist.info;
 s=default; t=1636118296;
 bh=PKxl6Omiq/T7Ssn37enufcJ7WNWj535YSF/EKSdG7vI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TLORY/O6DYtpQtbsqflbdRvM7h2Jt8iIXeN34PvH+0U/AnHeJMwwXGyEEoiokDwWC
 9r6UYVpW7P5E23mjBFoek6BBP3hA0/R7+/Ci4n/UJnNyAw8DmUlTCAF7ktaYwTrVJz
 52bYqZhI8dFnBpcuHCRgHuygioOpfWHVnilbAVXw=
Date: Fri, 5 Nov 2021 14:18:14 +0100
From: =?iso-8859-1?Q?K=E9vin?= Redon <ml@mail.tsaitgaist.info>
To: openbsc@lists.osmocom.org
Cc: baseband-devel@lists.osmocom.org, simtrace@lists.osmocom.org,
 osmocom-sdr@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org,
 gmr@lists.osmocom.org, tetra@lists.osmocom.org, gr-gsm@lists.osmocom.org
Subject: Re: OsmoDevCon 2022 ?
Message-ID: <YYUvFrK4JWLI0EwH@diode>
References: <YYEEG5iH/7FxvHLc@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YYEEG5iH/7FxvHLc@nataraja>
X-Mailman-Approved-At: Fri, 05 Nov 2021 16:59:02 +0000
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

On Tue, Nov 02, 2021 at 10:25:47AM +0100, Harald Welte wrote:
> I personally would say let's plan for the usual late April 2022 time frame,
> and if the pandemic situation deteriorates, we can still cancel it with
> something like one month lead time.

I'm also happy to help with the recording and streaming of the public talks for those not able to join on site.
sure, it would not cover all other aspects of a gathering, but provides a light way of participation.

> I would also personally suggest to limit attendance to people who are fully
> vaccinated, and in addition do a self-test for all participants every
> morning.

I don't mind self-testing, particularly for "larger" venues with plenty of prolonged contacts.
they're easy to make and inexpensive, a relative small constraint if it allows to have such an event again.
