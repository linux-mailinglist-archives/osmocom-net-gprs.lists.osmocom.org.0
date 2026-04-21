Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMFqA2p48GmiTwEAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:46 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FE4480E4E
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 28 Apr 2026 11:05:45 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 8421C50DB3A;
	Tue, 28 Apr 2026 09:05:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOxaJbxmMci7; Tue, 28 Apr 2026 09:05:45 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2CAA850DA9C;
	Tue, 28 Apr 2026 09:05:29 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7359C38A011D
	for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 18:08:56 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 4F20A4F9489
	for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 18:08:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYYgaXCBEDNu for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 18:08:55 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
	by mail.osmocom.org (Postfix) with ESMTPS id 973D14F9484
	for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 18:08:54 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-488a9033b2cso52243705e9.2
        for <osmocom-net-gprs@lists.osmocom.org>;
 Tue, 21 Apr 2026 11:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794934; x=1777399734;
 darn=lists.osmocom.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SBaT1moCfqSmvJGAedFsvUx6VKJMRgXjG1EGszYK8JM=;
        b=aHmTTZBur5JmVScYM9cNKmWXUmRZCWBuGdXdSLLX6SQP18gbP3/wBssUeiXQWQ/Nfo
         DadCeXQ+zNptU+SCrorQ+rzy7cPD9qYS6PhQPnhoKJi5ivq+L7t1iq5itwbSjWxHrak6
         V09WypOLGQdHodgSCkd2JChvzHX50D7M1iz/rekcT5omuPAdfE4MU0dNsuL4wwrgqqYu
         usewhs7ku6w84DK22THk5ay40BFkomFqF9bPvkqbW1zOo913++k9PGuHvwN8kc4Q+xBB
         n7dPKHyAC+t50YEdzTLZxSY2ocJhFBLtz18P7iJW8+CB1xniXX1EptzgL3pirxSDXP2Y
         DWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794934; x=1777399734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SBaT1moCfqSmvJGAedFsvUx6VKJMRgXjG1EGszYK8JM=;
        b=ZuaJKXnKVXu23RrPK7RIWqaVk5/0UxbPnz4W53goY5MiCOQJZlnxDcENzmgTJCiGig
         dqT2zFvMIMfE+p8fusXJJXdwSTnw7qiO7UtPpGBKKeK/nt+5haAwXcKHSrzitCOsuqcw
         ItQgTzXqcykkQG5AJxsM7YtnUSsjK7nrD1X8VQqX29nCVvai2SVK4WrpHL6xbCMdIbD+
         r9hx+fxMY1N9LOj1X1/jS9IC7TtExuqDxfCbXJgbiYbZHY5QHlEI3S1MSp+I3Fe9iVsj
         LElE7XIUZV4jeBpP2DGnapOVo5ZbI8PYEP+zA+CmaPY3/2i2HiePXVlPCDoxUdWVQrlI
         F2TQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+pQ4LGmaa5wwb5Q2HHDLQGwEnI16yyd2AXqWWPVgnGE7jx4RRNZcAZO0OCxUOF7tKDPr7I+OanxSDRskzC8wbH@lists.osmocom.org
X-Gm-Message-State: AOJu0Yzh8XunboCMn3Eqojdfgi54oe/zmjFa8yrgnrkrltBO3RIiZCqg
	30hWw+rDtNWIu9d7+ES7j6Z0RCvMBazDvT12m0Lb8QA32XF6lDcA2Whc
X-Gm-Gg: AeBDietMmSUU9R3qC9fSMoy5AoVhkLqvVSNwUC+i6YBlVdji44gCpdcTq8iFJzzWpdR
	GYf/+3gKN6UF3V2DF4R1fyTd/gfFDZuPcZR/26HAt8z9VEA4aMOB+zX4bu1j0iVTbkbmw4j0lqz
	iz5c54PXRcU4zN8u7LksT14iSBL/2IsNEk7EWt+q34ZXuEeYsfIet50vo4UnSLk4VzXmK1D7+h3
	+OpnMZOi6if/KlHept1PpJh9/AfoDkj4C56QTP6tKpbR27aQxuJmCCs3IgaDLJiqL092LUsuRkZ
	pwohJYWJGOf7+P8TmOflv2kxJeoMg/OR8YeReN35QRBTH4oY8X6p7ke4/GD4lW+JUmJBtawtkGx
	saIwuD4wwfbQnuyOF87baSeL0nisc3+jPJeaMy23oE+j6T9+GsdJg+XIP1PZ1gxKwwDQtN1pKD0
	lzuhsG9rN15Q/A9Q/PQ7P85i163kZugV72Ih35r6cyf9FiM26hWZsB/R8uix/tit7xzvrTdeRJe
	+uwgLTSAFKBMjpO
X-Received: by 2002:a05:600c:1f94:b0:489:1c2d:211e with SMTP id
 5b1f17b1804b1-4891c2d2213mr135259665e9.5.1776794934349;
        Tue, 21 Apr 2026 11:08:54 -0700 (PDT)
Received: from ?IPV6:2a02:a03f:a75e:9a00:7546:18b7:2c8c:e879?
 ([2a02:a03f:a75e:9a00:7546:18b7:2c8c:e879])
        by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43fe4e59f97sm43681370f8f.37.2026.04.21.11.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2026 11:08:53 -0700 (PDT)
Message-ID: <902a1c9c-114e-46e3-bedb-acdd7458d6d8@gmail.com>
Date: Tue, 21 Apr 2026 20:08:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gtp: disable BH before calling udp_tunnel_xmit_skb()
To: David CARLIER <devnexen@gmail.com>
References: <20260417055408.4667-1-devnexen@gmail.com>
 <b44de581-9f41-4804-afb1-72c491d9443a@gmail.com>
 <CA+XhMqyN_fFptjA=8YJtXzyStQZ68xJiNSG464o4R-dQFLHt7w@mail.gmail.com>
Content-Language: en-US
From: Justin Iurman <justin.iurman@gmail.com>
In-Reply-To: 
 <CA+XhMqyN_fFptjA=8YJtXzyStQZ68xJiNSG464o4R-dQFLHt7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-MailFrom: justin.iurman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: 7VEAVCYTHDS3L357A2L6FTEEJX6BPSNQ
X-Message-ID-Hash: 7VEAVCYTHDS3L357A2L6FTEEJX6BPSNQ
X-Mailman-Approved-At: Tue, 28 Apr 2026 09:05:26 +0000
CC: Pablo Neira Ayuso <pablo@netfilter.org>,
 Harald Welte <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Weiming Shi <bestswngs@gmail.com>,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7VEAVCYTHDS3L357A2L6FTEEJX6BPSNQ/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Rspamd-Queue-Id: 01FE4480E4E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[158];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bestswngs@gmail.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[justiniurman@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[justiniurman@gmail.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FREEMAIL_CC(0.00)[netfilter.org,gnumonks.org,lunn.ch,google.com,kernel.org,redhat.com,gmail.com,lists.osmocom.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On 4/20/26 21:44, David CARLIER wrote:
> Hi Julian,
> 
> On Mon, 20 Apr 2026 at 20:02, Justin Iurman <justin.iurman@gmail.com> wrote:
>>
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
> Good point — your lwtunnel fix (c03a49f3093a) is a close parallel, and
>    a central fix would avoid chasing callers one by one (sctp was patched
>    last week, gtp is this one, and tipc/wireguard/ovpn genl paths look
>    similar).
> 
>    Happy to respin as v2 with local_bh_disable/enable moved into
>    iptunnel_xmit() (and ip6tunnel_xmit() for symmetry), and drop the
>    gtp-local hunk. That would also supersede Xin Long's recent sctp
> commit
>    (2cd7e6971fc2), so I'll make sure to Cc him.

Jakub merged it already, so no need to respin. I guess we could revisit 
later if required.

>    One thing I'd like your take on before I send: iptunnel_xmit() feels
>    like the natural home since it owns the recursion counter, but would
>    you rather see it in udp_tunnel_xmit_skb()? I don't want to pick the
>    wrong spot if you already have a preference.

Since udp_tunnel_xmit_skb() is just another caller, I'd definitely do it 
in iptunnel_xmit() to centralize things (same for v6).
