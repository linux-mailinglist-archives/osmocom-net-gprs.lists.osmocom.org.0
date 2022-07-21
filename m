Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A7B57C1BF
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 21 Jul 2022 02:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id DFCB028024;
	Thu, 21 Jul 2022 00:52:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPpMDJRiJFgK; Thu, 21 Jul 2022 00:52:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 91AB428040;
	Thu, 21 Jul 2022 00:52:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id B9D2E38A17D3
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 Jul 2022 00:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9897F28040
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 Jul 2022 00:52:08 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlwTy7aD3Stc for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 21 Jul 2022 00:52:07 +0000 (UTC)
Received: from mail.base45.de (mail.base45.de [IPv6:2001:67c:2050:320::77])
	by mail.osmocom.org (Postfix) with ESMTPS id 2BF4128024
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 21 Jul 2022 00:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
	s=20190804; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=vjfRGCy1wCBRkl68c9bluBf6dNhNYrHfiMmtSzdm0xk=; b=OKfGneL7Y2fobGeqlKFQKDBc/w
	4EZkPz1nVWzr/BZoz31qsVEakWrVP75W6HVuLDXmdO59R/oPMufY6AMQsrKJFj3jux6Q8xqV+vX9l
	GDVnUP0X728ZQXcVKf4swKRTbW05UBnxWOkLKeiBip4Jy7ufJqcWVIyMhIrJApq3hZ2J7v8LxHFBA
	Crgk85YIB+bzogpFHUCkXPVdh8qf3kBRv3zuuKtjJZhVwbVaCaH2Rw2OrlLagDdjwtvtX7IS8aSiX
	Ru0ydazGRPNzwEjj/fkxFB0+gxDAiBxC6IufdBV9fi13/qG47vU+hdn1lCLwzxSlFJynKz4ER7eVp
	JxrRyUBA==;
Received: from p200300ee573641016f4f42745c4ef2ce.dip0.t-ipconnect.de ([2003:ee:5736:4101:6f4f:4274:5c4e:f2ce] helo=javelin)
	by mail.base45.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lynxis@fe80.eu>)
	id 1oEKQ9-00CtK1-Qj; Thu, 21 Jul 2022 00:52:05 +0000
Date: Thu, 21 Jul 2022 02:52:03 +0200
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: gang chen <thornton.chen247@gmail.com>
Subject: Re: encapsulation cmd missed in OsmoSGSN 1.9.0
Message-ID: <20220721025203.694d32c8@javelin>
In-Reply-To: <CADKBCPiG1LhtQr9DZjq-67f10bByG32-_0Pui+ayzudwNZ+MMg@mail.gmail.com>
References: <CADKBCPiG1LhtQr9DZjq-67f10bByG32-_0Pui+ayzudwNZ+MMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: 2XPDHDUU76FW4LQHSCP2OKNNROD4A44L
X-Message-ID-Hash: 2XPDHDUU76FW4LQHSCP2OKNNROD4A44L
X-MailFrom: lynxis@fe80.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2XPDHDUU76FW4LQHSCP2OKNNROD4A44L/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

the manual you're using is old. There is no encapsulation anymore.
The ns has been rewritten and is more flexible.

Best Regards,
lynxis


old:
ns
 timer tns-block 3
 timer tns-block-retries 3
 timer tns-reset 3
 timer tns-reset-retries 3
 timer tns-test 30
 timer tns-alive 3
 timer tns-alive-retries 10
 encapsulation udp local-ip 192.168.1.20
 encapsulation udp local-port 23000
 encapsulation framerelay-gre enabled 0

new:
ns
 timer tns-block 3
 timer tns-block-retries 3
 timer tns-reset 3
 timer tns-reset-retries 3
 timer tns-test 30
 timer tns-alive 3
 timer tns-alive-retries 10
 bind udp local
  listen 192.168.1.20 23000
  accept-ipaccess


On Sun, 17 Jul 2022 20:36:06 +0800
gang chen <thornton.chen247@gmail.com> wrote:

> hi.
> i just installed the system followed the instructions on
> 2.
> but it looks the gb(ns) configuration.command encapsulation  missed
> in this version.
>  OsmoSGSN(config-ns)# list
>   help
>   list [with-flags]
>   show vty-attributes
>   show vty-attributes (application|library|global)
>   write terminal
>   write file [PATH]
>   write memory
>   write
>   show running-config
>   exit
>   end
>   timer
> (tns-block|tns-block-retries|tns-reset|tns-reset-retries|tns-test|tns-alive|tns-alive-retries|tsns-prov|tsns-size-retries|tsns-config-retries|tsns-procedures-retries)
> <0-65535>
>   nse <0-65535> [ip-sns-role-sgsn]
>   no nse <0-65535>
>   bind (fr|udp) ID
>   no bind ID
>   ip-sns-default bind ID
>   no ip-sns-default bind ID
> OsmoSGSN(config-ns)#
> 
> libosmocore/bionic 0.9.0-7 amd64
> libosmocore-dbg/bionic 0.9.0-7 amd64
> libosmocore-dev/bionic 0.9.0-7 amd64
> 
> br,thornton.

