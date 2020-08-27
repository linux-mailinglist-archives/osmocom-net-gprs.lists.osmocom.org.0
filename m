Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1341C254B10
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 27 Aug 2020 18:45:37 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id AC4C4131E17;
	Thu, 27 Aug 2020 16:45:36 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=6wind.com header.i=@6wind.com header.b=QJ6ptyUW
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::343; helo=mail-wm1-x343.google.com;
 envelope-from=nicolas.dichtel@6wind.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by lists.osmocom.org (Postfix) with ESMTP id 43B56131E02
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 16:45:32 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id u18so5793063wmc.3
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 27 Aug 2020 09:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=reply-to:subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x/CpHXQu+AfQY/C5sx950OgPR2UXD7lgTOic5RxGwPI=;
 b=QJ6ptyUWs+9NUcQT4Gzpdaayco09UiYhlRVwgkc1nN/7Va4WtzrbYN4aWZaEe7wZGb
 OkxzYXKCvdC6ctdOUI0rpW9BilYxhN4jZJaDJMc0CyjA8A8qCs7dB0hz/2SNuwWQ5PW+
 /YZ5BUpSkYDcAkTKd4cFjtJ9AyPGJa57zh0RpAbu5gZqZdLjMa62+MYzBNrl5TeSjX+Q
 Mn7vWKUwR5OVB1LfNi9aYXWBsyoU2qkfBF9TkzxOfWDlm3x3uk2e7HPNf1QWULlZsB59
 v+WqW9XDSV9nz9v854Jxe38YiXc20UBpwqaHfVxosrhb4LhcXC+qetKs4XFSsQA9oN/h
 B6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x/CpHXQu+AfQY/C5sx950OgPR2UXD7lgTOic5RxGwPI=;
 b=C/XgCX0dmJMaP4iC+BqDbaE2aBlpZQWGSiK2Xl0IFZ6BcjEentTbjhiqw2TmuW19Ll
 SskvH02tSEVMFw0uZoHSXxnM6gYNytp196UEbLGpmwNTqWUI5z25A/WjEZIOB7Qug2xl
 FSCk94eJM2gxnSaMshEp7QBHCFPCRZVQapMTmlUyQlA+YdxnBlnjco2WwWjN+DZhCY0m
 o319wNkudPS+5u4r6rnu3MDmcrHE4J814e9djJ3x4n7TP3Gw5WRJQQLtS7VwAJXdxJWA
 CJQ/en0mkXXGyMHEl/oYs/vS8Ng6qs0bUeHpmSUbciVPasgR4YjAEWtSXUaXdURJYBYf
 HAKQ==
X-Gm-Message-State: AOAM533ipT+xm9H55q2CFIv874sZpIYnVvH6xJhVRXe+ERAvKGtsaHR5
 0RcS4vMjG6eV2FoygoXtkotkKw==
X-Google-Smtp-Source: ABdhPJzqWHjt/jpV1F2n6yXJKUW/T2yp9W2ys+LExe3xXnpMWeF2a0PTf7M9AFxrSDOO/vaWIibXcw==
X-Received: by 2002:a7b:cd9a:: with SMTP id y26mr13574591wmj.154.1598546732431; 
 Thu, 27 Aug 2020 09:45:32 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:410:bb00:590d:8a36:840b:ee6c?
 ([2a01:e0a:410:bb00:590d:8a36:840b:ee6c])
 by smtp.gmail.com with ESMTPSA id k15sm6217047wrp.43.2020.08.27.09.45.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 09:45:31 -0700 (PDT)
Subject: Re: [PATCH net-next v3] gtp: add notification mechanism
To: David Miller <davem@davemloft.net>
References: <20200827121923.7302-1-nicolas.dichtel@6wind.com>
 <20200827.080514.1573033574724120328.davem@davemloft.net>
 <d0c3b1c8-4275-6b5a-3d93-4c9ac198b1a3@6wind.com>
 <20200827.094412.1386296048660013556.davem@davemloft.net>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
Message-ID: <0c472a87-00b3-55d9-c1d8-9ba09a1fd0bc@6wind.com>
Date: Thu, 27 Aug 2020 18:45:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200827.094412.1386296048660013556.davem@davemloft.net>
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

Le 27/08/2020 à 18:44, David Miller a écrit :
> Was build testing, it's pushed out now.
> 
Thanks David!
