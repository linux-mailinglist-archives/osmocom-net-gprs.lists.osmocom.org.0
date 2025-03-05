Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A270A4FF2F
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  5 Mar 2025 13:58:29 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2EB6E1FEA47;
	Wed,  5 Mar 2025 12:58:29 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id njimRZqjhyRj; Wed,  5 Mar 2025 12:58:28 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 81F7C1FEA3B;
	Wed,  5 Mar 2025 12:58:25 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 2BDB138A1AF3;
	Wed,  5 Mar 2025 12:58:04 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 00CB51FEA15;
	Wed,  5 Mar 2025 12:58:04 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fR0Y4PGmdKSA; Wed,  5 Mar 2025 12:58:03 +0000 (UTC)
Received: from mail.base45.de (mail.base45.de [IPv6:2001:4ce8:8690::a:a])
	by mail.osmocom.org (Postfix) with ESMTPS id 375B31FEA10;
	Wed,  5 Mar 2025 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
	s=20190804; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=isCNQuHB/9dPti0DRWcftAS0RvINRTPkM6XX9RDYFWc=; b=dKUb+bfD/Bpk2XmNReVGuVFWud
	xJmbZg7mz5xw5W3NvnYVxXDjCEtNq36VPGYnhr05oBeGN62O0sH1dEWaTTdvaSB8pLT3RHhOlNxcI
	K6IiadY6UiWMTz0eKM9wuNqnaKbJf8Gs1jcLDU2udgtjn6DogsdTw1y2FD8aG4IEMP1pBORCVOJ6M
	WTveWhTbcQ3jWJUC2n89NbrgSFKj2MevONHixf+xYoKrldamJHvYEWBEXCkyjyooyYw+zj0AHkd16
	Jk8siODQJ6hJsbCRYs9FNtu2F5rp3MyqcikahgFIg75sbZ4VMKNlSqpnMXvWony7hAdMT+9WG/zif
	J7HpTgZQ==;
Received: from p4fd7da6d.dip0.t-ipconnect.de ([79.215.218.109] helo=javelin)
	by mail.base45.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lynxis@fe80.eu>)
	id 1tpoK1-003PDz-3A;
	Wed, 05 Mar 2025 12:58:02 +0000
Date: Wed, 5 Mar 2025 13:58:01 +0100
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: Re: Adding doxygen style comments to header files
Message-ID: <20250305135801.542c19e0@javelin>
In-Reply-To: <fa7007b6-336e-4f88-bcc1-709274987fe7@sysmocom.de>
References: <20250225145748.28479793@javelin>
	<fa7007b6-336e-4f88-bcc1-709274987fe7@sysmocom.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: A2LVCYBDG6XGQ4EM3ORNYKKTIZXV7FEM
X-Message-ID-Hash: A2LVCYBDG6XGQ4EM3ORNYKKTIZXV7FEM
X-MailFrom: lynxis@fe80.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: openbsc@lists.osmocom.org, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/A2LVCYBDG6XGQ4EM3ORNYKKTIZXV7FEM/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

> while I wouldn't be against it if we were to start writing a whole new 
> project, we have tons and tons of files already doing doxygen in the .c 
> files, so I wouldn't start now doing differently and have mixed 
> codebase. Also moving all current doxygen documentation to header files 
> sounds like a huge tasks with lots of changes in lots of places, so it 
> looks like a no-go to me.

I don't see the requirement to move all function documentation to the header in one go.
New code should have it in the header, old code can keep it until someone moves it (or touches it).

> Moreover, I don't really see a good reason for moving documentation to 
> header files other than:
> * "My foobar editor decides it only parses header files"
> * A user may want to inspect documentation through installed -dev 
> packages in /usr/include/osmocom/.

It comes down to those two points. I guess most editors doesn't
take up the documentation, when located in a distant directory which isn't
part of the current project.
I also find it strange that I've have to read the code (.c file) of a function to see
the documentation instead of just looking into the header file.

> Is actually doxygen explicitly enforcing the API documentation to be on 
> header files? I doubt it.

AFAIK, doxygen doesn't care, it's about the documentation style.

Best,
lynxis
