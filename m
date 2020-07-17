Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 547ED223F96
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 17 Jul 2020 17:30:12 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 58C6714AADC;
	Fri, 17 Jul 2020 15:30:02 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=itu.edu.tr
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=itu.edu.tr header.i=@itu.edu.tr header.b=h0nitmnl
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.75.25.118;
 helo=duman1.cc.itu.edu.tr; envelope-from=avatli@itu.edu.tr;
 receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=itu.edu.tr
Received: from duman1.cc.itu.edu.tr (duman1.cc.itu.edu.tr [160.75.25.118])
 by lists.osmocom.org (Postfix) with ESMTP id ECB9214AACA
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 17 Jul 2020 15:29:55 +0000 (UTC)
Received: from itu.edu.tr
 (authenticated aid=ITUec8aa06da52a8f1ebd017cfae50385f2  bits=0)
 by duman1.cc.itu.edu.tr with ESMTP id 06HFTpWq015759
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Fri, 17 Jul 2020 18:29:51 +0300
DKIM-Filter: OpenDKIM Filter v2.11.0 duman1.cc.itu.edu.tr 06HFTpWq015759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=itu.edu.tr; s=itu;
 t=1594999791; bh=JyB4enO3MBVyzPwZWmCxACf43ufJXSASGW8WEnt84lY=;
 h=Date:From:To:Subject:From;
 b=h0nitmnlZ5vkgZFZpU0ODzGtiT0NXNbJMkaS0Hz/w7jlOMs0rGMYVUG1b0dXmlZTK
 7qR7llLszw+k5v/TEeaoPS7BtPTZCXCHVQ9O918AtnCZfpLmk4TDT092FI1QrdrPVZ
 jRKU//uOEHrZ3W3NN4LXa+f2RpLIJ2n7j7OncVu0=
Received: from 78.171.145.185.dynamic.ttnet.com.tr
 (78.171.145.185.dynamic.ttnet.com.tr [78.171.145.185]) by webmail.itu.edu.tr
 (Horde Framework) with HTTPS; Fri, 17 Jul 2020 18:29:51 +0300
Date: Fri, 17 Jul 2020 18:29:51 +0300
Message-ID: <20200717182951.Horde.SCRWaPhfXt3AnkA8s-Tl05G@webmail.itu.edu.tr>
From: avatli@itu.edu.tr
To: osmocom-net-gprs@lists.osmocom.org
Subject: Basic testing for Kernel GTP-U is not up to date
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
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
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hello


I tried to follow the steps in the basic testing below but it is not  
up-to-date

https://osmocom.org/projects/linux-kernel-gtp-u/wiki/Basic_Testing

To make the setup work, I execute the GGSN on the host by using  
osmo-ggsn/doc/examples/osmo-ggsn.cfg. I changed the "gtp bind-ip" to  
172.31.1.1, "ip prefix dynamic" to 192.168.71.0/24, "ip ifconfig" to  
192.168.71.0/24 and then execute the emulated SGSN inside the sgsn  
namespace (ip netns exec sgsn sgsnemu -d -r 172.31.1.1 -l 172.31.1.2  
--defaultroute --createif). In this case; GGSN can create PDP Context  
successful but there is not any GTP tunnel. How can I get the  
up-to-date version of this document? or how can I run the basic  
testing steps?

Thanks in advance.

- Volkan


