Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id C12EB224AD5
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 18 Jul 2020 12:55:18 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2C97C12955F;
	Sat, 18 Jul 2020 10:55:11 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=k+FcpGYw
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42d; helo=mail-pf1-x42d.google.com;
 envelope-from=ebiken.g@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by lists.osmocom.org (Postfix) with ESMTP id 52A4B129544
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 18 Jul 2020 10:55:05 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id 1so6659454pfn.9
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 18 Jul 2020 03:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=IqV1As+XMFeQ9c93M2K/VBF43avPmHqtTqj1ea8yrLw=;
 b=k+FcpGYwzBc2WXD9Sy6ziFlCZvv5nxVabpvv1iUQAKriY73iDaHnxmtUKEUp0qhbgR
 mKQrAYQf5uwgdmAL5ttYm54EnOmi3za6acsKxkcpiXSeVe3kLutJr1/xTYLajLBXLQ4H
 JJbk2uP0vZdBUZ5xThnWp7cZznit5S7bJUPEjj6w/VsyMHxj5Q1O/SFQt/j9aqWO2lOE
 /CoSVCmw/eTlcXWRYDWeqFWFFy2Uxvjv58qeTK+6TtU5JEhWclI5nLfJj5shfxKNfYzp
 yA7w/I5J+hYlODjeIPbVsofwr5N0nY+VXFuDDnnNtUYFBuKJw9ZfZudcqFVWTRI4Wiij
 bQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=IqV1As+XMFeQ9c93M2K/VBF43avPmHqtTqj1ea8yrLw=;
 b=aN1y/WCdL0pRbRTDhAmUFWu+8zeK5uNLxKwe3EOd16w86uB3LNo4GrOfyz8QiZqQ+Q
 pqVUyAqKZwWSL3bYxjEm7/U0Qlx/W23RSLPdNPhgDpcJyuqOdA94gTjXLwsQcTGpnE2L
 JgZxNvJv7Cutd4EzvBn1v4FuWYr0IMswuSbUdxbQQVOz1E9Q4PMXtyI7HObsXWnsHGtx
 ECx9QWvSuopvAVWuzBgt9hMCyejvdannON/2akuliTZvfrkOvYcAaoJEHAKi8MICC2f4
 4zGScylJIhmV//BfWSGc/TCytmhV1otPQnMRsrGxNFL+SCXK2o1rkE0BOmfL0kzq9j78
 xBLQ==
X-Gm-Message-State: AOAM533ywUrtoHRGvb39mjJlJ00Jyk/F9Ep5+/92mBCVfK5T30TiFuPO
 3zd6CZ+WBoyd5SdTIWfIIW8=
X-Google-Smtp-Source: ABdhPJzlVOjXX7uPw0zwwEaJPuy9B64JIwUzmk7OaOCss43XqcWSOLHbkcc8BPkxWNpc68sJkTNefA==
X-Received: by 2002:a62:8f4a:: with SMTP id n71mr11659674pfd.31.1595069704139; 
 Sat, 18 Jul 2020 03:55:04 -0700 (PDT)
Received: from [192.168.10.11] (122x210x140x65.ap122.ftth.ucom.ne.jp.
 [122.210.140.65])
 by smtp.gmail.com with ESMTPSA id m20sm8858860pgn.62.2020.07.18.03.55.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jul 2020 03:55:03 -0700 (PDT)
To: osmocom-net-gprs@lists.osmocom.org
From: Kentaro Ebisawa <ebiken.g@gmail.com>
Subject: Re: Network is unreachable error for GTP interface
Message-ID: <b8ee07a8-ddae-99c2-94c1-766e7fff790d@gmail.com>
Date: Sat, 18 Jul 2020 19:55:00 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

Hi,

http://lists.osmocom.org/pipermail/osmocom-net-gprs/2020-July/001151.html
(Sorry I could not respond to the original email to show this in thread)

I have confirmed that "ping: sendmsg: Network is unreachable" could be reproduced on Ubuntu 18.04.4 with Kernel 4.15.0-111-generic, while it does not (could ping through gtp tunnel) on 4.15.0-76-generic.

To be more specific, the issue is GTP packet would not be created even if I send packet with destination IP address matching <ms-addr> to gtp link using 4.15.0-111-generic. (and most likely on later versions)
However, when I switch kernel version to 4.15.0-76-generic on the same host, it will generate GTP packet with exactly the same rule configured to the GTP link.

I have created GTP tunnel using command below.
> ./gtp-link add gtp1
> ./gtp-tunnel add gtp1 v1 200 100 172.99.0.2 172.0.0.2
and sent packet with dst IP 172.99.0.2, which is same as the ms-addr in the above rule.

I have monitored veth1 using "tcpdump -n -i veth1" and GTP packet will be captured on 4.15.0-76-generic, but not on 4.15.0-111-generic.

Can anyone think of the difference between the two kernel or gtp module version?


### FYI: list of commands to create gtp link, tunnel rule and routing entry to route packet to gtp link.

# Create veth pair so GTP packet can flow within the host.
ip link add veth1 type veth peer name veth2
ip addr add 172.0.0.1/24 dev veth1
ip link set veth1 up
ip addr add 172.99.0.1/32 dev lo

# Create gtp link, gtp1
./gtp-link add gtp1
WARNING: attaching dummy socket descriptors. Keep this process running for testing purposes.

-- open new terminal --

# Create tunnel rule from netns default to ns2
./gtp-tunnel add gtp1 v1 200 100 172.99.0.2 172.0.0.2
./gtp-tunnel list
version 1 tei 200/100 ms_addr 172.99.0.2 sgsn_addr 172.0.0.2

# Add route to navigte packets to 172.99.0.2 (ms-addr) via gtp1
ip route add 172.99.0.2/32 dev gtp1

# Create netns ns2 to receive GTP packets.
ip netns add ns2
ip link set veth2 netns ns2
ip netns exec ns2 ip addr add 172.0.0.2/24 dev veth2
ip netns exec ns2 ip link set veth2 up
ip netns exec ns2 ip addr add 172.99.0.2/32 dev lo
ip netns exec ns2 ip link set lo up

# Create gtp link, gtp2
ip netns exec ns2 ./gtp-link add gtp2
WARNING: attaching dummy socket descriptors. Keep this process running for testing purposes.

-- open new terminal --

# Create tunnel rule from netns ns2 to default
ip netns exec ns2 ./gtp-tunnel add gtp2 v1 100 200 172.99.0.1 172.0.0.1

# Add route to navigte packets to 172.99.0.1 (ms-addr) via gtp2
ip netns exec ns2 ip route add 172.99.0.1/32 dev gtp2

# Send ping ...
$ ping 172.99.0.2

# error below will shown on Kernel 4.15.0-111-generic.
$ ping 172.99.0.2
PING 172.99.0.2 (172.99.0.2) 56(84) bytes of data.
ping: sendmsg: Network is unreachable
ping: sendmsg: Network is unreachable

# GTP packet will be generated and ping success on Kernel 4.15.0-76-generic
$ ping 172.99.0.2
PING 172.99.0.2 (172.99.0.2) 56(84) bytes of data.
64 bytes from 172.99.0.2: icmp_seq=1 ttl=64 time=0.130 ms
64 bytes from 172.99.0.2: icmp_seq=2 ttl=64 time=0.035 ms

Thanks,
-- 
Kentaro Ebisawa <ebiken.g@gmail.com>
