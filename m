Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 9BF18254AC7
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Aug 2020 18:37:41 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 5C537131DDC;
	Thu, 27 Aug 2020 16:37:39 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=6wind.com header.i=@6wind.com header.b=BUM0QEl0
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::342; helo=mail-wm1-x342.google.com;
 envelope-from=nicolas.dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by lists.osmocom.org (Postfix) with ESMTP id 00620131DAB
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 16:37:33 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id u18so5771445wmc.3
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 09:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=reply-to:subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Oe+3UyqdCu4V3yc10MYVh2Ksgt9dcjdR3WigYWc1rHA=;
 b=BUM0QEl01GR+SAQSbR7GIDi5EZDoB6cXSDAgG/VB7Q4q9jvDxjRTuX+abdXYzWssBD
 Kmgy7JHlQ1abz3hqo2E9lmOfgB0bcLGVtSp0M9vGmY1m1RVKOCGQbQxQ+dBCFX5CzZNk
 akc6Va11B91iW+59hQ8pxIdkL1zzQyQvwr9gJcgNVlae6jsEXRprRui9ghhkkHv4op9v
 NnFicJF1Hkb6k4H0fV/VV2RSE0msaBfYSjc0nOZF9HNvTrT0Fzriw7Nte6u5zCBCqk57
 705lgSdLgvOQk14PZ7s8UKVRgZSm7GTsW36STusrAnrmnduiVtDcS0pE56OCq6Rhckwk
 Pebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Oe+3UyqdCu4V3yc10MYVh2Ksgt9dcjdR3WigYWc1rHA=;
 b=QdqWt8xllMgOA2FZBXXEfE2HHOwy3J3y8t0vXig8HIENPf2/X3f08zSd983TOG9Skw
 h504Bwy05qjMuBtsOIj5w06bv7ZkLBUoTOVZjS4xun0ZKMJmxOBBeGUQsnVNaJfRWrrN
 KuqziXzxrrealMXVBGNUtUPGVZlMZa9qPqUdmdtWJVS/yW3EH6YD0kXLmNg0HZWIXJgo
 tlsRUbLkUk2Q3FAjhGK3XcHhIdgx28BFN1ubjZ6flPe20Gx1PymVdP0rj0ASKj7TrafW
 MGGrlyGDUm1DMsz9fGSr9Fl4v2GtkAiZtHQBr8B4ZHFKquN0gY79Qewqp5jNWZpbqrdC
 Q9wA==
X-Gm-Message-State: AOAM533ai6svAB8+PagFs80iUNobfmiTh202kPWsN6rLKEHe9wQtRyAl
 yaK9tG25hDWg15L+PNSAS+5GgQ==
X-Google-Smtp-Source: ABdhPJxe7XAUpNnt5vhDFMaEIraGPFCkM03VZz0j1qivtYO3Llqv1pGimF9rSVcWC9JjBpR+BJQ6gw==
X-Received: by 2002:a1c:a746:: with SMTP id q67mr3757889wme.128.1598546253461; 
 Thu, 27 Aug 2020 09:37:33 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:410:bb00:590d:8a36:840b:ee6c?
 ([2a01:e0a:410:bb00:590d:8a36:840b:ee6c])
 by smtp.gmail.com with ESMTPSA id p6sm5753036wmg.0.2020.08.27.09.37.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 09:37:32 -0700 (PDT)
Subject: Re: [PATCH net-next v3] gtp: add notification mechanism
To: David Miller <davem@davemloft.net>
References: <20200827090026.GK130874@nataraja>
 <20200827121923.7302-1-nicolas.dichtel@6wind.com>
 <20200827.080514.1573033574724120328.davem@davemloft.net>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
Message-ID: <d0c3b1c8-4275-6b5a-3d93-4c9ac198b1a3@6wind.com>
Date: Thu, 27 Aug 2020 18:37:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200827.080514.1573033574724120328.davem@davemloft.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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
Reply-To: nicolas.dichtel@6wind.com
Cc: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org,
 laforge@gnumonks.org, gabriel.ganne@6wind.com, kuba@kernel.org,
 pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Le 27/08/2020 à 17:05, David Miller a écrit :
> From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> Date: Thu, 27 Aug 2020 14:19:23 +0200
> 
>> Like all other network functions, let's notify gtp context on creation and
>> deletion.
>>
>> Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
>> Tested-by: Gabriel Ganne <gabriel.ganne@6wind.com>
>> Acked-by: Harald Welte <laforge@gnumonks.org>
> 
> Applied, thanks.
> 
I don't see the changes here:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/log/

Some build tests? Or just a missing push? ;-)


Thank you,
Nicolas
