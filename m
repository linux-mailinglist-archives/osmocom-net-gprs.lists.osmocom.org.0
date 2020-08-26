Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 6648F252F1F
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 26 Aug 2020 14:58:43 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id C8838155A43;
	Wed, 26 Aug 2020 12:58:42 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=6wind.com header.i=@6wind.com header.b=XOqPh+Ng
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::342; helo=mail-wm1-x342.google.com;
 envelope-from=nicolas.dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by lists.osmocom.org (Postfix) with ESMTP id 0FBE0155137
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 26 Aug 2020 07:47:56 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a65so753217wme.5
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 26 Aug 2020 00:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=reply-to:subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A7vR2LD4lvtbA3/ZJYKkFyETwCKd8pN+h2F64pD/NX4=;
 b=XOqPh+NgKql/Mv2a2cBkxxMoMmFiEkRHXN1lfg159DrVZZxU95KL+M5R6CtM1Nhlix
 HqGzjkEp4uaf+0Os0jYiFL4m/16PmHUTbTxfic5XjadZjA5xSRkAwDnZDkejGPIF1jVd
 0OqhraIR4FDjgR3CBj/rn5BN7c9ggmP42K/wPsn2TIpN4vx55x/13rJoABvY7sV1XQr0
 G7c6uvb3pqpiMrUOz+WiF2wt+yGCqt3gRbObzvUXTZXuexN7wArj50jCGv50huW+CJWk
 KNlPezxHCgaZOU8aUAc++WkqZhf9FP/fqKDr05aPeoWcguHMi14nXtQ/+19e4GD6Mkbt
 T4pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=A7vR2LD4lvtbA3/ZJYKkFyETwCKd8pN+h2F64pD/NX4=;
 b=FLI6k7p7bMvX6e2iB8by4fwMkHjKyimLOwCVwPcKKyrJhQI5cqaJqR+rS7CmCD9r9D
 bi1oN9UEQITC3sVqK1RTMyDUARaUrH/UQCprCYbH/tUG0YrEuI+BsZpXym6zpndgV9Bi
 IXOwxxP+E5clhx6eeZM1mM3TntF+JLP4UqxFlXRbGD41A4mLom/aIAeow0nUhNkS/5Oq
 vZl0kp618FLv/P4frasnBeoRstomGF2ATAYbKII/56s0E6NlkLSG7STVQ9amMjeZXd0X
 FY7RzRyH+WWxCdDuhH3bGWWZxIjbBcGadClHwf6AQ5v4iBMhbXn9K1m+SkGii5S60cHs
 tjtg==
X-Gm-Message-State: AOAM531u1Y8fzwIsCF7FnSZ5gIQOZnPfI/NFNNbLkRToot9gJJXU85sr
 svdOK0N0SuZwC/ks2HsXbVDSmQ==
X-Google-Smtp-Source: ABdhPJyeSS3dMl9hAnA02SlmnrDf9cvFg175LneIQbQBmBWImTeppF1RJJxaJwZDRm3ddlq6gt7RdA==
X-Received: by 2002:a05:600c:21cd:: with SMTP id
 x13mr6038791wmj.155.1598428076245; 
 Wed, 26 Aug 2020 00:47:56 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:410:bb00:304d:64e9:99ee:68e4?
 ([2a01:e0a:410:bb00:304d:64e9:99ee:68e4])
 by smtp.gmail.com with ESMTPSA id u6sm3320011wrn.95.2020.08.26.00.47.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Aug 2020 00:47:55 -0700 (PDT)
Subject: Re: [PATCH net-next v2] gtp: add notification mechanism
To: Harald Welte <laforge@gnumonks.org>
References: <20200825143556.23766-1-nicolas.dichtel@6wind.com>
 <20200825155715.24006-1-nicolas.dichtel@6wind.com>
 <20200825170109.GH3822842@nataraja>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
Message-ID: <bd834ad7-b06e-69f0-40a6-5f4a21a1eba2@6wind.com>
Date: Wed, 26 Aug 2020 09:47:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825170109.GH3822842@nataraja>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 26 Aug 2020 12:58:23 +0000
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

Le 25/08/2020 à 19:01, Harald Welte a écrit :
> Hi Nicolas,
> 
> thanks a lot for your patch.
> 
> On Tue, Aug 25, 2020 at 05:57:15PM +0200, Nicolas Dichtel wrote:
>> Like all other network functions, let's notify gtp context on creation and
>> deletion.
> 
> While this may be in-line with typical kernel tunnel device practises, I am not
> convinced it is the right way to go for GTP.
> 
> Contrary to other tunneling mechansims, GTP doesn't have a 1:1 rlationship between
> tunnels and netdev's.  You can easily have tens of thousands - or even many more -
> PDP contexts (at least one per subscriber) within one "gtp0" netdev.  Also, the state
> is highly volatile.  Every time a subscriber registers/deregisters, goes in or out of
> coverage, in or out of airplane mode, etc. those PDP contexts go up and down.
> 
> Sending (unsolicited) notifications about all of those seems quite heavyweight to me.
There is no 'unsolicited' notifications with this patch. Notifications are sent
only if a userspace application has subscribed to the gtp mcast group.
ip routes or conntrack entries are notified in the same way and there could a
lot of them also (more than 100k conntrack entries for example).
