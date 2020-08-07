Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 2FB6323EE5F
	for <lists+osmocom-net-gprs@lfdr.de>; Fri,  7 Aug 2020 15:41:37 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id F0C2014DBCF;
	Fri,  7 Aug 2020 13:41:29 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=t1QV36fY
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22e; helo=mail-lj1-x22e.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by lists.osmocom.org (Postfix) with ESMTP id 8E6C114DBB1
 for <osmocom-net-gprs@lists.osmocom.org>; Fri,  7 Aug 2020 13:41:24 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id 185so2249562ljj.7
 for <osmocom-net-gprs@lists.osmocom.org>; Fri, 07 Aug 2020 06:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=RNTnIiTdahzKVJvN4eNzIT8x2s2Jug5qi9dIzgLQ4RM=;
 b=t1QV36fYskl/6QiWBwm1Js6yu+kSGmo8JKNN2OqDpJ95otrWg0RSkiQ2F7y68lTL4r
 MJ9WumUoMK2Xlwyaet4BXVAWBdkCxIaN5zMQ1NyQ+vidtuW+bwUXU7zwRnROLHNHodYc
 C6QNwGAwjmLlY0iZxWvtDljCR1jRjwnAPQOMO3u6V81YYhS/WUpB9XwlmnMdFFvFas3U
 A1rBAS1wtqlEiWqtUPD4r2W7C1EUcXhicur4bgzfJf+21qQLzChfcucnaN9VXGSkB46P
 uWuyAR6XM1Eq7zOem3FKDLhhRWA/6bWSIO14AJdM2sFZ3EmMaqvr8aiPiCby9VZtut40
 aASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RNTnIiTdahzKVJvN4eNzIT8x2s2Jug5qi9dIzgLQ4RM=;
 b=tte+yi27Tn5XELLlv6Y3C1do1XZWbMCHUlMcAxEvLqEihksOAahK80Kr6bvMTS/amy
 fBNx9vA7yVwU12SQsbVPSsgJWylhDYXc4NcKHqcjDfH5qCgdqlPazHfQmJwvceUmqFYH
 M3iek4M9rJSzH0Vob1crJPS+0au9EM5Xtv9r2uMJaGv+Qyweo0ZTxHxOqC6uRbtPgIKA
 0rXrAmf8Goh9Ivpk17oEdsLKulm3WWsIkpSiekQ7cBVyodPjDIUvY7xf34z4sDckPOuF
 uX5JHNmvb0GriXK6nMTTi9PO2JQKNV8yhMMAQD4rei+srL/h7SjWsswq62flNEMDqVqX
 sa1g==
X-Gm-Message-State: AOAM533FvUviaK9NKY/6f7IC+d6AnoYoUMVpAavK/hYHQxeZMVf+0AR5
 LOsAVklQ7lqCeGkLjK/QrTeHpOoUrOtRAM4WTDTuQE7x
X-Google-Smtp-Source: ABdhPJwlzCmeXtpZ27aa9FDtytDN/r6S9sVydfDSq0g3kNsFoOthxIy1DpoCowrhtX2ZLjondaldivKIu8iwLa18/iA=
X-Received: by 2002:a2e:b5c3:: with SMTP id g3mr6887757ljn.63.1596807683043;
 Fri, 07 Aug 2020 06:41:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:5384:0:0:0:0:0 with HTTP;
 Fri, 7 Aug 2020 06:41:22 -0700 (PDT)
From: Papa Tana <papa.tana101@gmail.com>
Date: Fri, 7 Aug 2020 16:41:22 +0300
Message-ID: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
Subject: GTP tunnel seems to exist, but No encapsulation when using libgtpnl
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: text/plain; charset="UTF-8"
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

Hi All,

This is my first post, I have a similar problem to the topic "Network
is unreachable error for GTP interface".

I followed all instructions, installed all needed dependencies,
upgrade my kernel version to 4.9.0-6 as stated in
https://osmocom.org/projects/openggsn/wiki/Kernel_GTP

Unfortunately, no GTP T-PDU encapsulation for my packets.

## Tunnel listing is OK
root@routeurA:/home/bob/libgtpnl/tools# ./gtp-tunnel list
version 1 tei 200/100 ms_addr 172.23.10.163 sgsn_addr 10.11.12.14

## I have upgraded my Kernel version to 4.9.0-6 as stated in
https://osmocom.org/projects/openggsn/wiki/Kernel_GTP
At the time of writing (2018-04-26) of this wiki, below listed
distributions have support of GTP kernels :

    Debian
        Debian 9 "stretch" (kernel 4.9.0-6)

root@routeurA:/home/bob/libgtpnl/tools# uname -r
4.9.0-6-amd64

## GTP module
root@routeurA:/home/bob/libgtpnl/tools# lsmod | grep gtp
gtp                    28672  0
udp_tunnel             16384  1 gtp

## ping remote ms_addr is not ok
root@routeurA:/home/bob/libgtpnl/tools# ping 172.23.10.163
PING 172.23.10.163 (172.23.10.163) 56(84) bytes of data.
^C
--- 172.23.10.163 ping statistics ---
1 packets transmitted, 0 received, 100% packet loss, time 0ms

## remove the route using "gtpa" device
root@routeurA:/home/bob/libgtpnl/tools# ip route del 172.23.10.163/32 dev gtpa

## add new route using normal interface
root@routeurA:/home/bob/libgtpnl/tools# ip route add 172.23.10.163/32
via 10.11.12.14

## ping is OK
root@routeurA:/home/bob/libgtpnl/tools# ping 172.23.10.163
PING 172.23.10.163 (172.23.10.163) 56(84) bytes of data.
64 bytes from 172.23.10.163: icmp_seq=1 ttl=64 time=0.592 ms
64 bytes from 172.23.10.163: icmp_seq=2 ttl=64 time=0.713 ms

## remove again the route
root@routeurA:/home/bob/libgtpnl/tools# ip route del 172.23.10.163/32

## switch it to "gtpa" device
root@routeurA:/home/bob/libgtpnl/tools# ip route add 172.23.10.163/32 dev gtpa
root@routeurA:/home/bob/libgtpnl/tools# ping 172.23.10.163
PING 172.23.10.163 (172.23.10.163) 56(84) bytes of data.
^C

## tcpdump shows ICMP between the 2 ms_addr, no encapsulation at all

Am I missing something somewhere?

FYI, I'm not using openggsn or ergw, I have developped my small
userspace GTP-C ready, but I'm stuck at GTP-U side.

Thanks in advance,

Best Regards,
