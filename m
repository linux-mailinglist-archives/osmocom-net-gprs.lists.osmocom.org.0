Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEBuMU148GlgTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:17 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id B004C480DD0
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:17 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id D31D150DA45;
	Tue, 28 Apr 2026 09:05:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ln0y62F01EJX; Tue, 28 Apr 2026 09:05:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AA60F50DA15;
	Tue, 28 Apr 2026 09:05:06 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id ED06038A0181
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:02:58 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id AB5884F6AE8
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:02:58 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ibckWyvmyYjt for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:02:57 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
	by mail.osmocom.org (Postfix) with ESMTPS id EDC644F6AE3
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 19:02:57 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-488b150559bso26582135e9.1
        for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 20 Apr 2026 12:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776711777; x=1777316577;
 darn=lists.osmocom.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N65t9jImbyCGiHKfgsqjeriV0Rsv4zHSWcdJpEICw7c=;
        b=MSoniRts8VzehjHKxwmge99DH4OpvMqMi7PpEn2153B3tmOldaydXZ/NMiFmbo9G1F
         KLCWt2vTLsMjk+rNptaytM0CZ+wEE2oJ8QDa8C3Jq4whdAEXR5vmglqXlv2v0Gf/LE3k
         wQqQ0obm8lr1OoR8/G9tp+W7IqyguaSn9NvvOfGo/FL9JYlxjggBnM527QcPIyVPYiMm
         SvUIA0FIklC0fj0VQb1lsMiEZ2qz2+2hCbddw/+PD7QbJ3dd8SDHCPOeVJJiBs8jNuo/
         XgdDrhqOUUVq+jz+yhl6IKSEI32aaU/iG7W487RFfbSwY8jZNm9qjDTc2ZTSDxwEix8r
         gUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776711777; x=1777316577;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N65t9jImbyCGiHKfgsqjeriV0Rsv4zHSWcdJpEICw7c=;
        b=maRAtUArY0rd5JaIU5JL8J5115SieJGWAMYUw0OQ9OhioQu+XDmD7ns/uck1qkYI7e
         DvHmSeVu/ymMs+oSsUSCLb2UOzVUBsbjDTTMxC8/LI92vIHytaonUQy0OVH3Fq7EBYJm
         TgJJSpslH01SFtDMWrre5R6+S8sKsjTvauegNFFWuhOqi4PESpGw/2SXo2SOS0pHbSsY
         dhGJScxYKsIOyZi7v/Urbmf+q3GYxuUqxjsWWMXXcD6rWfEpKg/CdsyPjHgMr45Xm981
         nmFdBUqhQNf9Q4LkUiRlZ0rA3ls3w1o+YbADf46hWjMzXXLAqNE+Jg9mbryFHOsGgOOR
         j+4w==
X-Forwarded-Encrypted: i=1;
 AFNElJ+cbtfwqu+Mf14J4TJqcl9JEJ1nVjQRkvBDzc4MF7B6B++qaPQIss+FobNNLpbqJTZFucpERnJk+gYFnf6otBNz@lists.osmocom.org
X-Gm-Message-State: AOJu0Yy2O89lgxron41YfTQhJ0RF8LEOn9yzu4+ukoAcwsfHPTQvaJ5U
	Qys05NKnll+3SfaibE3R8+QCle1/lFpeUddp9hSiPtVciRoaHbvwgppM
X-Gm-Gg: AeBDietOMtZtNIgMCO1W9kZCXzJH99YBu8WfxHN3aPANgQqjvOSB82Jm4lOutjxaWtc
	pdB1RgWVxvUYFr+BhbW4IHiIdjtsKGC7qFj4yqT/QCTvjFZWabCkkZ0R7xwkXrgjyDk3fOomkjY
	2a6aMaX5229fKQUjULpPUbPxkGTBXf7Mln9XslKFRHqKeXCvSRL0jY/6A6ERHGKhlCki+9eAP0u
	ddIy6WUZQZ3so0kNq3y2rraJO4/QRU7a95z3uodGFCONZtf8+Uw0ra4kYcIv39NIhAl+RhFIvKX
	omcmy/s3JT5ZIfsc180UyPauIiDvKtX5uIfKqruxAula3r9dmhbpzhnrz2RII/F6dDNTdRPiX3/
	3EfkIw3ifox9KmwbDGP+TW/v/mMYvLrNZDCK28TJI8Fi0R2zR01k0tLamCeH/pB+gUMDisM26ss
	D0SyfaqtQqmWP1Shxgrt1y4M2VPFWLlTeZyMAw9sqA7zmQ1KTc7fRfuRLxdwh/Z26Wyy8zFtWTT
	5wE/BP6bKV4XrKu
X-Received: by 2002:a05:600c:348b:b0:489:5022:39a4 with SMTP id
 5b1f17b1804b1-4895040c025mr56054525e9.9.1776711776741;
        Mon, 20 Apr 2026 12:02:56 -0700 (PDT)
Received: from ?IPV6:2a02:a03f:a75e:9a00:98a0:d751:7986:3f62?
 ([2a02:a03f:a75e:9a00:98a0:d751:7986:3f62])
        by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488fc177dafsm378108875e9.4.2026.04.20.12.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2026 12:02:56 -0700 (PDT)
Message-ID: <b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
Date: Mon, 20 Apr 2026 21:02:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
To: David Carlier <devnexen@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte
 <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20260417055408.4667-1-devnexen@gmail.com>
Content-Language: en-US
From: Justin Iurman <justin.iurman@gmail.com>
In-Reply-To: <20260417055408.4667-1-devnexen@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-MailFrom: justin.iurman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: YHBINRUKGAFHECLYX4JSZP3KJCQIR2LN
X-Message-ID-Hash: YHBINRUKGAFHECLYX4JSZP3KJCQIR2LN
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:02 +0000
CC: Weiming Shi <bestswngs@gmail.com>, osmocom-net-gprs@lists.osmocom.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/YHBINRUKGAFHECLYX4JSZP3KJCQIR2LN/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: B004C480DD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[182];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[justiniurman@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,netfilter.org,gnumonks.org,lunn.ch,google.com,kernel.org,redhat.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[justiniurman@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FREEMAIL_CC(0.00)[gmail.com,lists.osmocom.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.339];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On 4/17/26 07:54, David Carlier wrote:
> gtp_genl_send_echo_req() runs as a generic netlink doit handler in
> process context with BH not disabled. It calls udp_tunnel_xmit_skb(),
> which eventually invokes iptunnel_xmit() — that uses __this_cpu_inc/dec
> on softnet_data.xmit.recursion to track the tunnel xmit recursion level.
> 
> Without local_bh_disable(), the task may migrate between
> dev_xmit_recursion_inc() and dev_xmit_recursion_dec(), breaking the
> per-CPU counter pairing. The result is stale or negative recursion
> levels that can later produce false-positive
> SKB_DROP_REASON_RECURSION_LIMIT drops on either CPU.
> 
> The other udp_tunnel_xmit_skb() call sites in gtp.c are unaffected:
> the data path runs under ndo_start_xmit and the echo response handlers
> run from the UDP encap rx softirq, both with BH already disabled.
> 
> Fix it by disabling BH around the udp_tunnel_xmit_skb() call, mirroring
> commit 2cd7e6971fc2 ("sctp: disable BH before calling
> udp_tunnel_xmit_skb()").

Why not fix iptunnel_xmit() directly, rather than fixing all possible 
callers? Basically, jut like we did for lwtunnel_{output|xmit}(). The 
advantage would be that we no longer have to worry about BHs in the 
callers, and BHs would only be disabled when necessary.
