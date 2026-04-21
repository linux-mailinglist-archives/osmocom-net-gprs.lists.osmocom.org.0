Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IK8aNGl48GlgTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:45 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 81543480E3E
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:45 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 2E1CE50DB31;
	Tue, 28 Apr 2026 09:05:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5WwQlkhwjIIU; Tue, 28 Apr 2026 09:05:44 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 49C8550DA96;
	Tue, 28 Apr 2026 09:05:28 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 5357838A0114
	for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 17:59:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0E56A4F9416
	for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 17:59:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PvlIp-Vz3s2B for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 17:59:00 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
	by mail.osmocom.org (Postfix) with ESMTPS id 867FA4F9411
	for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 17:59:00 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-483487335c2so46172115e9.2
        for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 10:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794340; x=1777399140;
 darn=lists.osmocom.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vlQuH9I8d8JGzpXuro5Nk2tmErbsbCQw/sXQZA/3BQc=;
        b=ET1HcR+//rsVMI2f5WJKt++xZo2tgU51b+LgDkxfBVAJvaexF9N28WaOU903d1wnBL
         tA4kqTGNbO60IikprDt82Z1aNRJ/6UmFaGziyS4m0Ll0/0O/itaHxxj562+RZT3lAWwd
         WBquF+PeVZlf0RueR5RBNV8+7e9Lycdo6U92N2vMRfyQs1/5JC7itu2Ky707GEsV0iWI
         yusdtt8UPBGVfekArHCsBXYLOpJna9/NJCxCCA+Ax+cFKGQqOI3piiFlup5PJxcbEMjS
         9H0LgvC+FwuoOsnDpRDVQb3ol2nMLjAh4pyuln14vRuWyIMYRccZlwVBLy2357/3fALh
         sVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794340; x=1777399140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vlQuH9I8d8JGzpXuro5Nk2tmErbsbCQw/sXQZA/3BQc=;
        b=ayHOyJWbbFRz59GxtR2/U4omNNyKra6ubm22ko6O33cg2/3XMGBw9vqOgX+1GALIjH
         mzBunUSuvxTWcPLgPhId6g6XLWuyHkb55XwVf7hF2przVZxSjegXDW92yiGFMwPeArtZ
         nJj1uMXa7RWXQJRNJwXnQPC8mDUJvwwAEKpowQU1PbdUzXSEPkiWD9Ys3TCiiuhcs+25
         UhkCHqIRsLBTeOwIksWz/WEorcGvNS5xGGa4b5Pd/6byhqNYC4t7iKw1/EagORbMCnRb
         pfXTkonLLdIxUVoQeFI8Yko5+YO7pwPcGSFPqnbzI63RaSZ24h1urxbeiyqvJ0+2XnU1
         Iz9A==
X-Forwarded-Encrypted: i=1;
 AFNElJ8kJh2Y4Qi3BbhEWSyQTNrcO/x9czyOxVNMkU5WBVD5aVTmGoylU42JDi0xSzZ2TSLJceXAj/LL9w3O0wuWfvEn@lists.osmocom.org
X-Gm-Message-State: AOJu0YztccayKTQk8c/fPVByd1RkBNfzFncLIoFfOw1tFCjEZxyKr21M
	nqtqyPE2OHrXT2J8AsEXKoV+CRnoAp4NtH/KlrLkIeIPjzWEZ49Gsg43
X-Gm-Gg: AeBDievj62DdTIF3+W2gd3Ez4rGK8kZgwRi/ixU9ga0KS49oBnqVLIO1Z0MzpVny8ed
	HBb0re3GcnaGKSEXK6oKmB5jVi40KpsbdAMpBXmocJgAUg3fEIYTD/QPmCBzjYvst5k42PISAA9
	fiLbh3NvXXo5sbWrOd5l442qRkdOA4TLtz3vX454ic+1sDRosbcu+kr8EKYEUkidRjB6AUQijHE
	4wQsjgiTwqGYpgnNdUwTSsaKcEn2XhfMIBL7gYAqeuiMi/RDZ/zKWxrbVUAMdd3qe0L+RZeLWsl
	Eu9pATGdHtp/zYJFFHZFAiHagIRmS4lvE2LSkjWvJ1MQpylA846eAbxA5Kk8mN68WKNK3zDkq2k
	pwD/x0aQx1VgCKzVqHT94HKHMKiQsXD0WZVJOJU53hxis2M3WctfravfP+90rALMFnLkKkS3cQL
	w/3JtP3ffdRaK941vxp1CLgmXi3we8UUD3Rx9VoeWPkLCOuvJfic0Q0/sOeGO6nDwJoheW7E9Jt
	o9k95dH7dOTWAlhuLnIgZvEn3o=
X-Received: by 2002:a05:600d:b:b0:48a:56de:d63c with SMTP id
 5b1f17b1804b1-48a56dedadfmr32847085e9.27.1776794339439;
        Tue, 21 Apr 2026 10:58:59 -0700 (PDT)
Received: from ?IPV6:2a02:a03f:a75e:9a00:7546:18b7:2c8c:e879?
 ([2a02:a03f:a75e:9a00:7546:18b7:2c8c:e879])
        by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-489fec8f7cbsm121049875e9.11.2026.04.21.10.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2026 10:58:58 -0700 (PDT)
Message-ID: <db82f89f-0811-46e8-bf81-f3ef1db646cb@gmail.com>
Date: Tue, 21 Apr 2026 19:58:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
To: Jakub Kicinski <kuba@kernel.org>
References: <20260417055408.4667-1-devnexen@gmail.com>
 <b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
 <20260420125815.3a920d9a@kernel.org>
Content-Language: en-US
From: Justin Iurman <justin.iurman@gmail.com>
In-Reply-To: <20260420125815.3a920d9a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-MailFrom: justin.iurman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: K7BVETSC6ZUIGR6VYNQZRVCCAT47S3EI
X-Message-ID-Hash: K7BVETSC6ZUIGR6VYNQZRVCCAT47S3EI
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:26 +0000
CC: David Carlier <devnexen@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Weiming Shi <bestswngs@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/K7BVETSC6ZUIGR6VYNQZRVCCAT47S3EI/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: 81543480E3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[159];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[justiniurman@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:devnexen@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,netfilter.org,gnumonks.org,lunn.ch,google.com,redhat.com,lists.osmocom.org,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[justiniurman@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On 4/20/26 21:58, Jakub Kicinski wrote:
> On Mon, 20 Apr 2026 21:02:55 +0200 Justin Iurman wrote:
>> On 4/17/26 07:54, David Carlier wrote:
>>> gtp_genl_send_echo_req() runs as a generic netlink doit handler in
>>> process context with BH not disabled. It calls udp_tunnel_xmit_skb(),
>>> which eventually invokes iptunnel_xmit() — that uses __this_cpu_inc/dec
>>> on softnet_data.xmit.recursion to track the tunnel xmit recursion level.
>>>
>>> Without local_bh_disable(), the task may migrate between
>>> dev_xmit_recursion_inc() and dev_xmit_recursion_dec(), breaking the
>>> per-CPU counter pairing. The result is stale or negative recursion
>>> levels that can later produce false-positive
>>> SKB_DROP_REASON_RECURSION_LIMIT drops on either CPU.
>>>
>>> The other udp_tunnel_xmit_skb() call sites in gtp.c are unaffected:
>>> the data path runs under ndo_start_xmit and the echo response handlers
>>> run from the UDP encap rx softirq, both with BH already disabled.
>>>
>>> Fix it by disabling BH around the udp_tunnel_xmit_skb() call, mirroring
>>> commit 2cd7e6971fc2 ("sctp: disable BH before calling
>>> udp_tunnel_xmit_skb()").
>>
>> Why not fix iptunnel_xmit() directly, rather than fixing all possible
>> callers? Basically, jut like we did for lwtunnel_{output|xmit}(). The
>> advantage would be that we no longer have to worry about BHs in the
>> callers, and BHs would only be disabled when necessary.
> 
> Oops, I pushed this already. The bot hasn't caught up yet.
> Let's revisit this if we find another caller in process context?

No worries, works for me!
