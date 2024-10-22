Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB639AA2F0
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 22 Oct 2024 15:22:31 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8C3AF15EC8B;
	Tue, 22 Oct 2024 13:22:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNDtd_jpAv66; Tue, 22 Oct 2024 13:22:31 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4C91A15EC81;
	Tue, 22 Oct 2024 13:22:30 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9E7B238A0EB4
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 13:22:27 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7A69A15EC7F
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 13:22:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kfazDEmhdryN for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 22 Oct 2024 13:22:26 +0000 (UTC)
Received: from mail.base45.de (mail.base45.de [IPv6:2001:4ce8:8690::a:a])
	by mail.osmocom.org (Postfix) with ESMTPS id A918C15EC7A
	for <osmocom-net-gprs@lists.osmocom.org>; Tue, 22 Oct 2024 13:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
	s=20190804; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=qMVfV6/5tNjv2XZLTpD5DryFZhHbNlwAoYOA/vQTU7c=; b=UjdifA5mLgkJWlQXjq9SWrrKQF
	FviMU6Cch2tsg52bKowALcZ9QHTdVQ6Z5zAwzxVCZ/jt0Er07p1a60rfoMchea6Mn33ZyHigG3WDN
	wKQdni0ueKaGmpfFbA2lQ16M/98UaMzT+F+fLSghjZmdJzC/BTBIBxscx629HPB+OEuqNEqy+Me0O
	7NcHuHKBrP4foWcfZIZ0IKtpkLAkb8RdMoNZErP++1cDXO7Ay1qLmLin0jA7kAK6YJA96vGgEJMZG
	vswTtDx2rRCyoJlbSC+QlrJqcjZVGuXIrcmuwwo00Yr46ft5eKUVvy78RuFfKnAKSfhrvYecuzjOJ
	ohLO4XPw==;
Received: from [194.150.169.152] (helo=javelin)
	by mail.base45.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lynxis@fe80.eu>)
	id 1t3Eq9-002iqB-1g
	for osmocom-net-gprs@lists.osmocom.org;
	Tue, 22 Oct 2024 13:22:25 +0000
Date: Tue, 22 Oct 2024 15:22:18 +0200
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: osmocom-net-gprs@lists.osmocom.org
Subject: libgtp API strategy for Gn (SGSN <> MME)
Message-ID: <20241022152218.3907eb4b@javelin>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: NFF6NJPCOKZ5V34W3SHYZWPNZDTYFJGQ
X-Message-ID-Hash: NFF6NJPCOKZ5V34W3SHYZWPNZDTYFJGQ
X-MailFrom: lynxis@fe80.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NFF6NJPCOKZ5V34W3SHYZWPNZDTYFJGQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,


I'm currently looking into extending the libgtp interface to support Gn.
Gn will be used between a SGSN and a MME to transfer UE state.
This allows a UE to have mobility between 2G/3G network served by an SGSN and
a 4G network served by an MME.

It is based on GTPv1 TS 29.060 and to simply contains 3 PDUs:
- 7.5.3 SGSN Context Request, 
- 7.5.4 SGSN Context Response
- 7.5.5 SGSN Context Ack

It can work in both direction for UE from 2G to 4G as well 4G to 2G.
The SGSN Context Request creates its own GTP session by exchanging a TEID-C
in the SGSN Req + Resp. E.g.:

MME -> SGSN: SGSN Context Request (TEID 0, new TEID A)
MME <- SGSN: SGSN Context Response (TEID A, new TEID B)
MME -> SGSN: SGSN Context Ack (TEID B)

But the API of libgtp is currently very high level, except for RAN Info Relay,
a user doesn't interact with the GTP TLVs, instead it is using a struct and converts between each other.
Libgtp was developed with GTPv0/v1 in mind to support requesting PDP Context for
2G (and later got extended to support 3G).
Also the SGSN Context Response contains a very long list of optional TLVs (e.g. 27 in Rel 12), some
of the TLVs also contain nested TLVs.

So what is the right direction?


Should I create a new high level API, parse only the 3-4 TLVs the SGSN will use into a `struct sgsn_response`?
Also the state tracking of a request would be tracked then by GTP and passed as identifier to it.

Or it could pass it to the SGSN and the SGSN has to take care of everything (except general message and tlv validation, parsing)?


Best,
lynxis
