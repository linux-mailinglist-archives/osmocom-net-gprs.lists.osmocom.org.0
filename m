Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id A7F1B253A4B
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Aug 2020 00:36:35 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2857A1563C5;
	Wed, 26 Aug 2020 22:36:33 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=6wind.com header.i=@6wind.com header.b=fpyZ1Lbt
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::341; helo=mail-wm1-x341.google.com;
 envelope-from=nicolas.dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by lists.osmocom.org (Postfix) with ESMTP id 7ED501563B3
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 26 Aug 2020 22:36:26 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id w2so3200411wmi.1
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 26 Aug 2020 15:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=reply-to:subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r3dDVIspGiyYxqCa2kdTtpJdpJrrzjbP7NltGCcuyno=;
 b=fpyZ1LbtdaXvuKuLkYJ/+AGNLZxmS4zg29NmtUKIIVlRilZLgQfde2wu6MSeVyXPrX
 TaJ+nYsMHEx3JJbMx9jI9UmHpV7Pn52nUPTHY+QdotDgt+UH6iZ45ExrJayafHgZ+5XQ
 eCJxyFaidNVvMDKRM0yQ+3AnTm/Wzx7eWQoY8l4ubAYiS3uJ+NnFi4oI4wodf/yc1h4s
 TK94srJcSSK686VjzHe0iIz4+vG7zPIT8s9O8Pvb7dNtgesh7QqBf1IPr+c1V67Ir+Q4
 bMMQrxlld5E5v3d5QO+I1ZaU90LOV9raftOokbQJ/pPdkN7tvF69P5z+3/v9Izomce+f
 gCiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=r3dDVIspGiyYxqCa2kdTtpJdpJrrzjbP7NltGCcuyno=;
 b=cGxl+dCUrVele94rhE9sVon5FQGpLbpz041UjSOFJwLjbGU2OLJfOQ7nHZFc8S2qlO
 S0nKUlDd9VAHw2YmGkKUvhV9K/K+sj98q7WA2WZxtqizZw303TKyZ2r4otp6PJeeR8jp
 tr47RWpnxLKNpR8QppbnlPys7cgd02udGdualK9CYb80p58Bt44fFCOAzWl+vq1Bxm1I
 9W5j92UGbCht5EM4q7xYpd2WGn6NbXjMTP8pXJY4S4ZhGWQhHESdZZcChZkojQBhRE2f
 easXmq9MMRrTiZLtjr7UJ56T/dgZuUz1uPtMlbOuOXIcFlTKJL27ONFmtpIBG0MsHkMU
 Ddlg==
X-Gm-Message-State: AOAM530JCklRO/kPL0vZq93lAbAjfJNVBNhFOr19xpQ035qIZ0PRaLDY
 hBCb9bPXyVzGMknqpQinwRDzeA==
X-Google-Smtp-Source: ABdhPJxuD+71K8YypkUmvbgRmyqp0siJIVZE/WgBr5rDF959Yf7aKfkFa05aztG+79Xc4VNrP7qAiQ==
X-Received: by 2002:a1c:c90d:: with SMTP id f13mr9171024wmb.25.1598481386557; 
 Wed, 26 Aug 2020 15:36:26 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:410:bb00:590d:8a36:840b:ee6c?
 ([2a01:e0a:410:bb00:590d:8a36:840b:ee6c])
 by smtp.gmail.com with ESMTPSA id 70sm651492wme.15.2020.08.26.15.36.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Aug 2020 15:36:25 -0700 (PDT)
Subject: Re: [PATCH net-next v2] gtp: add notification mechanism
To: Harald Welte <laforge@gnumonks.org>
References: <20200825143556.23766-1-nicolas.dichtel@6wind.com>
 <20200825155715.24006-1-nicolas.dichtel@6wind.com>
 <20200825170109.GH3822842@nataraja>
 <bd834ad7-b06e-69f0-40a6-5f4a21a1eba2@6wind.com>
 <20200826185202.GZ3739@nataraja>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
Message-ID: <0e2c4c04-a6dc-d081-2bdd-09f8d78607c4@6wind.com>
Date: Thu, 27 Aug 2020 00:36:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200826185202.GZ3739@nataraja>
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

Le 26/08/2020 à 20:52, Harald Welte a écrit :
> Hi Nicolas,
> 
> On Wed, Aug 26, 2020 at 09:47:54AM +0200, Nicolas Dichtel wrote:
>>> Sending (unsolicited) notifications about all of those seems quite heavyweight to me.
>>
>> There is no 'unsolicited' notifications with this patch. Notifications are sent
>> only if a userspace application has subscribed to the gtp mcast group.
>> ip routes or conntrack entries are notified in the same way and there could a
>> lot of them also (more than 100k conntrack entries for example).
> 
> Ok, thanks for reminding me of that.  However, even if those events are
> not sent/multicasted, it still looks like the proposed patch is
> unconditionally allocating a netlink message and filling it with
> information about the PDP.  That alone looks like adding significant
> overhead to every user - even the majority of current use cases where
> nobody is listening/subscribing to that multicast group.
I don't think that this is a significant overhead. This is added in the control
path. When a PDP context is added, the rtnl lock is took, this is another
magnitude of overhead than a kmalloc().

> 
> Wouldn't it make sense to only allocate + fill those messages if we
> actually knew a subscriber existed?
In fact, this is actually how the netlink framework works.
