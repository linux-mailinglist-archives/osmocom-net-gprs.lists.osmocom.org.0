Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3FB70A734
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 20 May 2023 12:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B809E282B0;
	Sat, 20 May 2023 10:42:25 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ig354bh1RHuh; Sat, 20 May 2023 10:42:25 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 949942818C;
	Sat, 20 May 2023 10:42:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E795B38A0FA2;
	Sat, 20 May 2023 10:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B42EF2818C;
	Sat, 20 May 2023 10:42:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvxxZ7NmDG5H; Sat, 20 May 2023 10:42:09 +0000 (UTC)
Received: from mail.base45.de (mail.base45.de [IPv6:2001:4ce8:8690::a:a])
	by mail.osmocom.org (Postfix) with ESMTPS id 2E89B2812E;
	Sat, 20 May 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
	s=20190804; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=2MKk9sEYL7V7LXOnDteiT/oPH8BG7AHJedSlHEhdHaM=; b=V/CWUCHhAki2nLMKxXGr8WjjOi
	nqnab1sp1e5DMztc3NaV0d3AUAU8drsqAsuClmKN5gJ4cTskqPfIZBVOYmykCKvFZVtRH7PL6dt7h
	nT83/1J6/H6tnCclGVLr+w3m3yaQrj7RlAJxHRaF+eOqaKf+6aFa3QhKQCknGmaqljYSKHwjMUzzZ
	tpKkIDRKtZh9cNBeNSEH0fRSrboqjk+OLGET+wuOx8lCffML4uY9jH4buzXoL03ctxZZZ4UDEc2LJ
	asvQV/7OSaUp8PeVO3mFzBO8ZEddfJVRHVn2vgvanVQ91n+jXHW/1rp0GLRHme+v3wKD6h79wpCBG
	7pb06Ulw==;
Received: from [82.79.71.177] (helo=javelin)
	by mail.base45.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lynxis@fe80.eu>)
	id 1q0K2J-006xxa-Io; Sat, 20 May 2023 10:42:07 +0000
Date: Sat, 20 May 2023 13:42:06 +0300
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Ahnaf Tahmid <tahmid.nse@gmail.com>
Subject: Re: Request for Assistance with GPRS Configuration
Message-ID: <20230520134206.37988d79@javelin>
In-Reply-To: <CANV1quToJQtZoQxnJ5uDNh5H43V02oNdQ_GZdKXfNXic8h+vOg@mail.gmail.com>
References: <CANV1quToJQtZoQxnJ5uDNh5H43V02oNdQ_GZdKXfNXic8h+vOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: EV3TFP5QJ3MWA6VANLFLICVUGP5H7SLL
X-Message-ID-Hash: EV3TFP5QJ3MWA6VANLFLICVUGP5H7SLL
X-MailFrom: lynxis@fe80.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EV3TFP5QJ3MWA6VANLFLICVUGP5H7SLL/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Ahnaf,

the structure of osmocom have changed since the manual has been written.
The manual is written for the long outdated osmo-nitb (a combined BSC,MSC).

> I have noticed that the wiki page for OpenBSC GPRS at
> https://osmocom.org/projects/cellular-infrastructure/wiki/OpenBSC_GPRS has
> not been updated for four years, and since then, there have been
> significant updates to the software. As a result, the information on the
> GPRS/EDGE Setup page may be outdated, and I am struggling to configure GPRS
> on my system.
> 
> I have attached my configuration files below for your review.

I would recommend to take a look into the https://osmocom.org/projects/cellular-infrastructure/wiki/Osmocom_Network_In_The_Box
But you already have configuration files for bsc, msc, sgsn, ggsn.

I would also recommend you to add an IP for every core network component and ran.
Because it helps debugging to have the IPs seperate.
For a local network (everything runs on the same host) I would do:

* 127.0.0.10 bts + pcu
* 127.0.0.11 bsc + bsc-mgw (yes running mgw twice)j
* 127.0.0.12 msc + osmo-sip-connector + msc-mgw
* 127.0.0.13 sgsn
* 127.0.0.14 ggsn
* 127.0.0.15 sip-server (e.g. asterix, ...)
* 127.0.0.16 hlr
You will need to change vty and ctrl interface ips as well.


Back to your current network.
Are you running osmo-stp? osmo-stp is required for the new network.

Ok. but what is not working? Please add more information!

- Can your MS/UE connect to the network?
 - CS: location update works?
 - PS: routing area update works?
- Does your phones gets an IP? (PDP Context)
- Does `tcpdump -i tun4 -vn` shows any traffic?

Do you have a pcap trace? (Best to upload it to a website and only send the link on this mailinglist)

Your tun.network file looks wrong. The device should be named tun4 and the IP range is also wrong.
Personally I wouldn't use systemd-networkd for this.
At least I would expect routing issues. Also I wonder why there isn't a tun4 device.

Even if there is a tun4 device, you might missing the routing and depending on your setup, NAT/masquerading.
I think you would need to run `ip route add 172.16.222.0/24 dev tun4`
and `iptables -t nat -A POSTROUTING -j MASQUERADE -s 172.16.222.0/24 -o wlp1s0`

Best,
lynxis
