Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 385032543AE
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Aug 2020 12:25:58 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9E0B4156DCA;
	Thu, 27 Aug 2020 10:25:53 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=6wind.com header.i=@6wind.com header.b=MGNJmLrB
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::342; helo=mail-wm1-x342.google.com;
 envelope-from=nicolas.dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by lists.osmocom.org (Postfix) with ESMTP id 8D0FA156DB8
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 10:25:49 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c19so3427122wmd.1
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 03:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=reply-to:subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vXTWLsJBole/p2haj9af1GwFx/JtWTMkjr5gEQjk11w=;
 b=MGNJmLrBpH9cs8HoV3LeRRhwouKzuSJaP/EgnIQrzNibbGrOvVU9Xe0p/yX4y4Igen
 jJTsoyGVZoXpnOaOhcaQ1R/6tpzIy+q93a48IXa6GFXyYw6E7LOIsUT8JKdYbDhqEq9M
 er3/tstwZ1TZlYJIgRlaFoZiGwCdQPX0frVf6Rt5rQuoIGUBmQmQbTIlD+rFaExW7Jgc
 Kadabo6fF5JXNVspjaVM8ovkaw7/OD3zMD1aYAThKQOgMAvrV0zHFEllJ6zQYy+CaN2K
 60JUYqY89sTnG5gRSFMevZcGnh+UUA9bzxsfUgZx8gXjLoXX4fJj03HJgRyDwQsR8PXI
 OoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=vXTWLsJBole/p2haj9af1GwFx/JtWTMkjr5gEQjk11w=;
 b=iXBKW+TnszTiz8qABGSbm7ihyaZRxb4GNmU9sUom5X3DCSePHbO7y7zMeqdsmLduTY
 OwkkWaOnerm8vG3+H63DROBPFBZecMIE/bt88GNgIZ4lyRllzO0drAyPPSQMcVo035nm
 dPJZHsqdtyMywz47lmMN+TvNE6hK6NcwNTRe2t24wrUV4aWohw/leq8u2VolKcAALvlh
 WcpBBMqBvB8S6mtJm2AxoIQ+8gy1OIXzvR0d7VjJY+C+LJK55auy5nzyJo5t4c1c2JsF
 N71xzD9JrCdPgMAasMGgzCBnbCwXtcF/jNnvr3XGUajD0e8r54a4kdUT8EspFRcJx50o
 jDLg==
X-Gm-Message-State: AOAM533suL/4b8K8M83b8Q03ks1s/c8DzkdWNw7wkpLwUWC315L2X2Ae
 1hKksDXVDP25b7Akg61g2v6zEw==
X-Google-Smtp-Source: ABdhPJyed+/ioB8CHP7jcjwVHc3rDi496Q08ZFZRLTjt/pDjofTx4yqhUlKSGGwJktLPXdMh/6+xjg==
X-Received: by 2002:a7b:c317:: with SMTP id k23mr10539605wmj.167.1598523948764; 
 Thu, 27 Aug 2020 03:25:48 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:410:bb00:590d:8a36:840b:ee6c?
 ([2a01:e0a:410:bb00:590d:8a36:840b:ee6c])
 by smtp.gmail.com with ESMTPSA id j24sm5578213wrb.49.2020.08.27.03.25.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 03:25:48 -0700 (PDT)
Subject: Re: [PATCH net-next v2] gtp: add notification mechanism
To: Harald Welte <laforge@gnumonks.org>
References: <20200825143556.23766-1-nicolas.dichtel@6wind.com>
 <20200825155715.24006-1-nicolas.dichtel@6wind.com>
 <20200825170109.GH3822842@nataraja>
 <bd834ad7-b06e-69f0-40a6-5f4a21a1eba2@6wind.com>
 <20200826185202.GZ3739@nataraja>
 <0e2c4c04-a6dc-d081-2bdd-09f8d78607c4@6wind.com>
 <20200827090026.GK130874@nataraja>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
Message-ID: <784761a0-a01d-a05b-e624-40c13f9a5771@6wind.com>
Date: Thu, 27 Aug 2020 12:25:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200827090026.GK130874@nataraja>
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
 Gabriel Ganne <gabriel.ganne@6wind.com>, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Hi Harald,

Le 27/08/2020 à 11:00, Harald Welte a écrit :
> Hi Nicolas,
> 
> On Thu, Aug 27, 2020 at 12:36:24AM +0200, Nicolas Dichtel wrote:
>> Le 26/08/2020 à 20:52, Harald Welte a écrit :
> 
>>> Wouldn't it make sense to only allocate + fill those messages if we
>>> actually knew a subscriber existed?
>>
>> In fact, this is actually how the netlink framework works.
> 
> Well, as you can tell from my responses, I've not been doing kernel work
> for a decade now, so I'm looking at things from a more distant and
> ignorant perspective.  To me it seems odd to allocate memory and copy
> data to it (cache misses, ...) if nobody every requested that data, and
> nobody will ever use it.  But if this is how it is supposed to work,
> then I will of course defer to that.  All netlink would have to expose
> is a function that returns whether or not there are any subscribers
> to the given multicast group.  Then all of the allocation +
> initialization would disappear in a branch that is not executed most of
> the time, at least for current, existing gtpnl systems.  Yes, that means
> one more branch, of course.  But that branch will happen later on
> anyway, event today: Only after the allocation + initialization.
I agree, but I didn't find a good solution for this right now. The lookup is not
straight forward.

> 
> So having said the above, if this is how it is supposed to work with
> netlink:
> 
> Acked-by: Harald Welte <laforge@gnumonks.org>
> 
Thank you.
