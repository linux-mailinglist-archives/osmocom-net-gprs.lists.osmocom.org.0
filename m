Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 64119A44183
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 14:58:13 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 07C471F55DD;
	Tue, 25 Feb 2025 13:58:13 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 55rpulbRppt0; Tue, 25 Feb 2025 13:58:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8FC611F55CD;
	Tue, 25 Feb 2025 13:58:07 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9B1E838A1A01;
	Tue, 25 Feb 2025 13:57:52 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7696E1F55A9;
	Tue, 25 Feb 2025 13:57:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9yCLUYcVfiRs; Tue, 25 Feb 2025 13:57:51 +0000 (UTC)
Received: from mail.base45.de (mail.base45.de [IPv6:2001:4ce8:8690::a:a])
	by mail.osmocom.org (Postfix) with ESMTPS id ABBB21F55A4;
	Tue, 25 Feb 2025 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
	s=20190804; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=6OaYIkxYTGbjhpHzxP+Bu/J5sPK1D3efYCSMlOY4jpc=; b=t2Vqoiv99lXudzAtHIzxVQJWgU
	djlEairQtAVyYP/C8tgnwr88q2KG7KHkxbNcNlGKIHY11Z/mKqvFXa7ppHb+1Qvl2FYPJDClMn59t
	26/38VGtk5TbFDxeta3vSTz80FMj31Tna4dlpSDK/bDwcbVck7G0fmycihC7slAbiXZ4BuJ+N5GL+
	MN+2WlczeSrAVGHX/X4DlkRMp/gpEqAdbEGu3jvNIMm1yfw1kLsMtyIYPsVRQ+GXZwgXOXCd9x+/f
	NSwXtgFhZJl2tzX4tR2gYvQyKt1FC8f/AOTt+PpNpMxObcWKJsxfj/ZqD8K34bJbO/hAyH5r/4bc6
	ZgMDgmoA==;
Received: from [80.153.21.36] (helo=javelin)
	by mail.base45.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lynxis@fe80.eu>)
	id 1tmvRU-001L7j-32;
	Tue, 25 Feb 2025 13:57:48 +0000
Date: Tue, 25 Feb 2025 14:57:48 +0100
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: openbsc@lists.osmocom.org
Subject: Adding doxygen style comments to header files
Message-ID: <20250225145748.28479793@javelin>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: VA7ZMVK3V23WKL54PFHCWRDV2RCWNXSJ
X-Message-ID-Hash: VA7ZMVK3V23WKL54PFHCWRDV2RCWNXSJ
X-MailFrom: lynxis@fe80.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VA7ZMVK3V23WKL54PFHCWRDV2RCWNXSJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

it came up again in gerrit again.

Currently the osmocom style states doxygen style comments should be done in the .c file.
Doxygen are those comments:
/*! a brief description of the function
 * \param something      Some description of the use
 * \return 0 if ...
 */
Doxygen takes those comments and generates a html documentation of the code.

I would like to change it to have those in the headers files instead (when the function in included in a header file).
When using the doxygen comments only for doyxen, for sure, there isn't a difference between 
having it in .c or in .h files.

But when using IDEs or language servers, they usually only parses headers files and
the .c files of the current active project (e.g. osmo-sgsn),
but not the .c files of other projects (libosmocore).

On the downside I only see the problem of increasing the size of header files, but I don't see
an issue in here.

Any thoughts?

Best,
lynxis

