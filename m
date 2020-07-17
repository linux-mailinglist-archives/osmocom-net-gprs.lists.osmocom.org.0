Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id D22BB2240D6
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 17 Jul 2020 18:55:21 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id E8CB414AE55;
	Fri, 17 Jul 2020 16:55:19 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=itu.edu.tr
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=itu.edu.tr header.i=@itu.edu.tr header.b=kBlGEsN5
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.75.25.118;
 helo=duman1.cc.itu.edu.tr; envelope-from=avatli@itu.edu.tr;
 receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=itu.edu.tr
Received: from duman1.cc.itu.edu.tr (duman1.cc.itu.edu.tr [160.75.25.118])
 by lists.osmocom.org (Postfix) with ESMTP id AB77D14AE43
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 17 Jul 2020 16:55:13 +0000 (UTC)
Received: from itu.edu.tr
 (authenticated aid=ITUec8aa06da52a8f1ebd017cfae50385f2  bits=0)
 by duman1.cc.itu.edu.tr with ESMTP id 06HGtDrx025756
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Fri, 17 Jul 2020 19:55:13 +0300
DKIM-Filter: OpenDKIM Filter v2.11.0 duman1.cc.itu.edu.tr 06HGtDrx025756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=itu.edu.tr; s=itu;
 t=1595004913; bh=TP76fTFlYufLIY6hg/zK2lfXn4vzWZDM20tIQUyckWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kBlGEsN513qVMUHA+lfiX3yPpopaCGn+gq8qSiSWPGNHIYc5WdCmRy94EGKfT3LAD
 U5Hz1O5DhZMqWa2FyUPJJyf4VUF+uoNEnKnF1/0Woc96BDmB620nGwBhuqOsfJVy8T
 2siStq/ywReX1JCjNxhVI7stDS1RJWABBHOCvfNY=
Received: from [94.235.31.203] ([94.235.31.203]) by webmail.itu.edu.tr
 (Horde Framework) with HTTPS; Fri, 17 Jul 2020 19:55:13 +0300
Date: Fri, 17 Jul 2020 19:55:13 +0300
Message-ID: <20200717195513.Horde.0P6nrjG5sQItf76RbegUOAC@webmail.itu.edu.tr>
From: avatli@itu.edu.tr
To: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: Re: Basic testing for Kernel GTP-U is not up to date
References: <20200717182951.Horde.SCRWaPhfXt3AnkA8s-Tl05G@webmail.itu.edu.tr>
 <069b60bd-5208-b3d3-b272-32974af07d60@sysmocom.de>
In-Reply-To: <069b60bd-5208-b3d3-b272-32974af07d60@sysmocom.de>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.5 at duman1.cc.itu.edu.tr
X-Virus-Status: Clean
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
Cc: osmocom-net-gprs@lists.osmocom.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hello

I tried to verify the existance of the GTP tunnel end of the steps  
with "gtp-tunnel list" but there is not any tunnel.

- Volkan

Alıntı Pau Espin Pedrol <pespin@sysmocom.de>:

> Hi,
>
> what to do mean with the "there is not any GTP tunel"?
> How is the PDP context created if it is not negotiated inside the tunnel?
>
> --
> - Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
> =======================================================================
> * sysmocom - systems for mobile communications GmbH
> * Alt-Moabit 93
> * 10559 Berlin, Germany
> * Sitz / Registered office: Berlin, HRB 134158 B
> * Geschaeftsfuehrer / Managing Director: Harald Welte



