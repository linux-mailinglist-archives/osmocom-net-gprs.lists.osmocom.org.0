Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 6B91C215B75
	for <lists+osmocom-net-gprs@lfdr.de>; Mon,  6 Jul 2020 18:08:09 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 85CCF13A278;
	Mon,  6 Jul 2020 16:08:01 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=itu.edu.tr
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=itu.edu.tr header.i=@itu.edu.tr header.b=pD99ibdy
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 449 seconds by postgrey-1.37 at lists.osmocom.org;
 Mon, 06 Jul 2020 16:07:56 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=itu.edu.tr
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.75.25.118;
 helo=duman1.cc.itu.edu.tr; envelope-from=avatli@itu.edu.tr;
 receiver=<UNKNOWN> 
Received: from duman1.cc.itu.edu.tr (duman1.cc.itu.edu.tr [160.75.25.118])
 by lists.osmocom.org (Postfix) with ESMTP id 79EDD13A259
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  6 Jul 2020 16:07:55 +0000 (UTC)
Received: from itu.edu.tr
 (authenticated aid=ITUec8aa06da52a8f1ebd017cfae50385f2  bits=0)
 by duman1.cc.itu.edu.tr with ESMTP id 066G0OHa001502
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 6 Jul 2020 19:00:24 +0300
DKIM-Filter: OpenDKIM Filter v2.11.0 duman1.cc.itu.edu.tr 066G0OHa001502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=itu.edu.tr; s=itu;
 t=1594051224; bh=iNsErhmdTo519FNVz6zJE24qqjrJkLgI984VivFdgBU=;
 h=Date:From:To:Subject:From;
 b=pD99ibdyQYsB79IEemiub1kYDz63+m2bt0/Z2ayoWNXdQCbjr0uev+yUfZl+W65Am
 D71DUFfNgfw3tU/4XqCvuIAMonhAF+sOAwqZd8RTU5G+XvxV3VL//Ohcxbmm/Sm7ZU
 bP/c0PoznNFJ8eX0zq8U3Zvb6Za4FuHCjPPmiwjY=
Received: from 78.171.145.185.dynamic.ttnet.com.tr
 (78.171.145.185.dynamic.ttnet.com.tr [78.171.145.185]) by webmail.itu.edu.tr
 (Horde Framework) with HTTPS; Mon, 06 Jul 2020 19:00:24 +0300
Date: Mon, 06 Jul 2020 19:00:24 +0300
Message-ID: <20200706190024.Horde.A9x9JusmIIuO_9QOsdjLPRD@webmail.itu.edu.tr>
From: avatli@itu.edu.tr
To: osmocom-net-gprs@lists.osmocom.org
Subject: Network is unreachable error for GTP interface
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


Hi

I'm trying to build a setup by using GTP module and libgtpnl tools on  
Centos 7 but I haven't been successful yet. Worse, I don't know how to  
debug the problem. I also stopped firewall and iptables.

How can I debug/solve, I will be very glad if you help. dmesg or  
system messages show show nothing. Why is GTP interface (link) is  
unreachable.

Thanks in advance

- Volkan


$ modinfo gtp
filename:        
/lib/modules/5.7.7-1.el7.elrepo.x86_64/kernel/drivers/net/gtp.ko
alias:          net-pf-16-proto-16-family-gtp
alias:          rtnl-link-gtp
description:    Interface driver for GTP encapsulated traffic
author:         Harald Welte <hwelte@sysmocom.de>
license:        GPL
srcversion:     191407DA5399304D93D62C7
depends:        udp_tunnel
retpoline:      Y
intree:         Y
name:           gtp
vermagic:       5.7.7-1.el7.elrepo.x86_64 SMP mod_unload modversions

$ modinfo udp_tunnel
filename:        
/lib/modules/5.7.7-1.el7.elrepo.x86_64/kernel/net/ipv4/udp_tunnel.ko
license:        GPL
srcversion:     0A315BA6124B0664F4D23FB
depends:
retpoline:      Y
intree:         Y
name:           udp_tunnel
vermagic:       5.7.7-1.el7.elrepo.x86_64 SMP mod_unload modversions

$ ip addr add 172.0.0.1/24 dev enp9s0
$ ip addr add 172.99.0.1/32 dev lo

$ ./gtp-link add gtp1
WARNING: attaching dummy socket descriptors. Keep this process running  
for testing purposes.

$ ./gtp-tunnel add gtp1 v1 200 100 172.99.0.2 172.0.0.2
$ ip route add 172.99.0.2/32 dev gtp1

$ ./gtp-tunnel list
version 1 tei 200/100 ms_addr 172.99.0.2 sgsn_addr 172.0.0.2

$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN  
group default qlen 1000
     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
     inet 127.0.0.1/8 scope host lo
        valid_lft forever preferred_lft forever
     inet 172.99.0.1/32 scope global lo
        valid_lft forever preferred_lft forever
     inet6 ::1/128 scope host
        valid_lft forever preferred_lft forever
7: enp9s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state  
UP group default qlen 1000
     link/ether 08:35:71:ab:54:5f brd ff:ff:ff:ff:ff:ff
     inet 172.0.0.1/24 scope global enp9s0
        valid_lft forever preferred_lft forever
8: gtp1: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 0 qdisc noqueue  
state UNKNOWN group default qlen 1000
     link/none

$ ip route
default via 192.168.1.1 dev enp2s0 proto static metric 100
172.0.0.0/24 dev enp9s0 proto kernel scope link src 172.0.0.1
172.99.0.2 dev gtp1 scope link

$ ping 172.99.0.2
PING 172.99.0.2 (172.99.0.2) 56(84) bytes of data.
ping: sendmsg: Network is unreachable
ping: sendmsg: Network is unreachable
ping: sendmsg: Network is unreachable


