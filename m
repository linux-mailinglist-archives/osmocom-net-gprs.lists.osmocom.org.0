Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 1D8F533E0C9
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 16 Mar 2021 22:48:13 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 7CF491B96A3;
	Tue, 16 Mar 2021 21:48:08 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=RadelCHU
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 55A161B968E
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 16 Mar 2021 21:48:03 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E870F64F7F;
 Tue, 16 Mar 2021 21:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615931282;
 bh=0qSpmuvVZVrk7Xlu54mjY7aP2yc4iwEF4t5XThu2F7I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RadelCHUA4Sy02sloHaTolP5ZFIHL/ja3L7/XLuctwjgexnVyPouj2Xs+McUa5NZI
 2z2FGKcFW8bTIa9hCrAT7ZzsAkPiyvRx060sBAvEgq7Vaec/ndHBlKuCtZIYzIDMjq
 DCWCr8Qb7Dt7MYrVu8dQSrnWYoK0NCi9kCpxkW8FgyHqBrPOqnF2jNorMARW0KHmoG
 vnW4xCIgsuNhMYiUadXCU2VmyUwNrvCD2aO9A1IrFVg9UXIqxhgLSom+nft6cDgjVk
 Ue1fdx+enpvqNsy47mAeoNzgrqwGagSdFyCC4O3cAstrE2q8IwuTiqdStcgfjkbHE7
 Nwa+qa0Zu+ymg==
Date: Tue, 16 Mar 2021 14:48:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Harald Welte <laforge@gnumonks.org>
Cc: Jonas Bonn <jonas@norrbonn.se>, netdev@vger.kernel.org, Pablo Neira
 Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org, Oliver
 Smith <osmith@sysmocom.de>, Pravin Shelar <pravin.ovn@gmail.com>
Subject: Re: Automatic testing for kernel GTP tunnel driver
Message-ID: <20210316144801.3b03ab5b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YFEQBFnqH21kEzeN@nataraja>
References: <YFEQBFnqH21kEzeN@nataraja>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Tue, 16 Mar 2021 21:07:32 +0100 Harald Welte wrote:
> If you have any questions, please feel free to reach out to Oliver
> and/or me.

Perhaps worth dropping a paragraph and the links into Documentation/?
