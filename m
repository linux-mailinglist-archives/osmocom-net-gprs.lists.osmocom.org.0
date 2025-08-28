Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9B0B39D37
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 28 Aug 2025 14:25:48 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 376EA2A6C92;
	Thu, 28 Aug 2025 12:25:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kztLCvv5_P0x; Thu, 28 Aug 2025 12:25:47 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DCF312A6C8A;
	Thu, 28 Aug 2025 12:25:46 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B3C9638AE0B9;
	Thu, 28 Aug 2025 12:25:33 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 905BC2A6C68;
	Thu, 28 Aug 2025 12:25:33 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cU4nrXDhdG7i; Thu, 28 Aug 2025 12:25:32 +0000 (UTC)
Received: from mail.base45.de (mail.base45.de [IPv6:2001:4ce8:8690::a:a])
	by mail.osmocom.org (Postfix) with ESMTPS id C42B42A6C63;
	Thu, 28 Aug 2025 12:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
	s=20190804; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=rC3DbgrnkfYkJhk/thiAMVJlPZY/iKDyEfitnh662ts=; b=S65YVRNHXvOuTqUwKGkA7ta96+
	WTYR4ILXZS2CcfKAfuotcsEkMccZ4sDRPUlYP9pBexCxU/3q4oT+RiOxmtpX/dejq4jQGtf5PtLlO
	tFss5PvBCVfS7Cgh44HiZyA15FUc9Etjsfm22NjXRYedhh6NPv67yq8VoALsj6Y+V0++tb2kYF7yX
	Cy0NtrmZkIJ3dxefdaJR1E6ChMYlYX1mhJoE2jsSHwF3W6xI3gM48YE29S/++b9aN8SrpUh/S/6EI
	9Fx7vdRnCci58BjiK4E62aYjyPhLDkEXP1LUAflNmI1hZ7jroobhtqNO675R+WuLtYlCdQte9TCb5
	kcG+KhUA==;
Received: from [92.206.242.195] (helo=javelin)
	by mail.base45.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lynxis@fe80.eu>)
	id 1urbh5-000SSL-2d;
	Thu, 28 Aug 2025 12:25:31 +0000
Date: Thu, 28 Aug 2025 14:25:29 +0200
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: "osmocom-net-gprs@lists.osmocom.org"
 <osmocom-net-gprs@lists.osmocom.org>
Subject: Move vlr code from osmo-msc into a own library
Message-ID: <20250828142529.46b616f8@javelin>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: HOK2O5ZF6KGHNRHXZTLLVKQSVKGMC5QN
X-Message-ID-Hash: HOK2O5ZF6KGHNRHXZTLLVKQSVKGMC5QN
X-MailFrom: lynxis@fe80.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/HOK2O5ZF6KGHNRHXZTLLVKQSVKGMC5QN/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

a couple month ago I proposed to make the VLR code of the osmo-msc independent of the osmo-msc
and create a new library called libosmo-vlr. Later use the libosmo-vlr code to integrate it into
osmo-sgsn.

But after take more time of this approach, I'm not sure if it is a very good idea to guarantee
high stability of libosmo-vlr as we do for other osmocom libraries.

Because the code is heavily integrated with both daemon and some code path are quite complex and partly
not fully understood. I would rather guarantee runtime stability within a library version, but not at build time.
The strategy would be increasing the library major version more often.

Any thoughts?

Best,
lynxis

PS. The current concept (because of time pressure) is to keep 2 copies of libosmo-vlr in the code base of osmo-msc and 
osmo-sgsn and to move it later out of it into an own library.
