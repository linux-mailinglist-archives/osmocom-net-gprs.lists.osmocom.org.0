Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1303021714A
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  7 Jul 2020 17:31:45 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id BF08113B728;
	Tue,  7 Jul 2020 15:31:37 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=itu.edu.tr
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=itu.edu.tr header.i=@itu.edu.tr header.b=br/jIEwr
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.75.25.119;
 helo=duman2.cc.itu.edu.tr; envelope-from=avatli@itu.edu.tr;
 receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=itu.edu.tr
Received: from duman2.cc.itu.edu.tr (duman2.cc.itu.edu.tr [160.75.25.119])
 by lists.osmocom.org (Postfix) with ESMTP id DA96C13B716
 for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jul 2020 15:31:31 +0000 (UTC)
Received: from itu.edu.tr
 (authenticated aid=ITUec8aa06da52a8f1ebd017cfae50385f2  bits=0)
 by duman2.cc.itu.edu.tr with ESMTP id 067FVU2d004668
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 7 Jul 2020 18:31:30 +0300
DKIM-Filter: OpenDKIM Filter v2.11.0 duman2.cc.itu.edu.tr 067FVU2d004668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=itu.edu.tr; s=itu;
 t=1594135890; bh=e9Koz9pSPjtDTewnAs4DxQzbajxCiBHUfROC3/Lwpaw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=br/jIEwrBGDUAdfbIV8XHP0ymo9r6jODqm+dnJgrNuj/odFI+tJvicPRhj439/SjY
 V7iu93tzdlUMp3KlqYA/JeGjKMWl4ZvvSQ0bTwwHh/P5moGfYy3fxQ67h/rMU0hlMh
 HS+WTSgy+93hJ485o4f8Cbu+XcMu5WdZVitW0w7s=
Received: from [176.30.138.243] ([176.30.138.243]) by webmail.itu.edu.tr
 (Horde Framework) with HTTPS; Tue, 07 Jul 2020 18:31:30 +0300
Date: Tue, 07 Jul 2020 18:31:30 +0300
Message-ID: <20200707183130.Horde.fKUDY0zrAzyyrd7Y8Vmpr3I@webmail.itu.edu.tr>
From: avatli@itu.edu.tr
To: Harald Welte <laforge@osmocom.org>
Subject: Re: Network is unreachable error for GTP interface
References: <20200706190024.Horde.A9x9JusmIIuO_9QOsdjLPRD@webmail.itu.edu.tr>
 <20200707141949.GD4411@nataraja>
In-Reply-To: <20200707141949.GD4411@nataraja>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: clamav-milter 0.101.5 at duman2.cc.itu.edu.tr
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

Hi Harald

I am not concerned with the control-plane. Briefly I want to run the  
setup on the link [1] on two different servers.

I tried to explain in the previous e-mail, but I think the ping  
packets do not reach the GTP module. I get error "network is  
unreachable" when I ping ms_addr on the other machine.

What I find difficult to understand is that I cannot see network  
packets in any interface, also there are no errors in the system. This  
problem probably has nothing to do with the GTP module. How can I  
solve this problem?

Thanks in advance

[1]  
https://www.slideshare.net/mobile/kentaroebisawa/using-gtp-on-linux-with-libgtpnl

- Volkan

