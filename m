Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id CBB8535E23B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Apr 2021 17:03:27 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2B3231B4D00;
	Tue, 13 Apr 2021 15:03:17 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=superlative.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=superlative.org header.i=@superlative.org header.b=ft0HZe8f
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=maillist@superlative.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=superlative.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by lists.osmocom.org (Postfix) with ESMTP id 44BB21B4CE8
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Apr 2021 15:03:10 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 w7-20020a1cdf070000b0290125f388fb34so8384079wmg.0
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Apr 2021 08:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=superlative.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=grCq9rrLwz36dWrbY5kjo2ZwSilMvXHYnXC8n28UxiU=;
 b=ft0HZe8f+hzA79wQwCYeWRMd6Nr8etzSZF1FRy+TF+YvrNdG+tyZboMV4hP9Qgwazr
 +EHqCmesDJtx5zhQWPYPUuC0zs3+woip0LjrBRr8Kh47RwN3MB0+Gi/apQgodY2g2WpT
 Ye15BaRTMqRam3SGPUAeth0UebG6o8g104HI6R6iffAE+MW/0SDfFzbPJvl9LrxPQTIb
 Fxv1idMq/wVxyjzZM6BegDA8vkfF6kfGxqY6kkhTGjGm5Tp7cBIaA7f8LTYDLeFFshBg
 6ocyfinczmxEyOIq+lHRBn9TIphVO1JcXehDaXUIP5Xwr7G0nY/VoBQ4tiLNa0KMlDn/
 rlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=grCq9rrLwz36dWrbY5kjo2ZwSilMvXHYnXC8n28UxiU=;
 b=aF48AoAvyFnQltLS9gA246DD2KZ9qE5LZHE5C8jjfN/m+kKtLd+vGrfDRaVvvTgYWp
 I+IdF1TEOjfK9azMVOY0tvCnH7NRsB/ewMYzLLf8Ld9hLCkIZYrycTqXQkeKF88JI6rd
 ep5pIlcVBdV4h9OKZx2whahv74W4CEh0KZ3Tn3sIJxik+Ot2Wk0lz/gP5BJhLuwI6SYP
 x0ZvA00pGVEytBE8qMdL6roEILRImjl0E6yvoTJXdb7CwGh2djd5eEYhaWqL7Rg8/0FP
 G5YQbmJKfzE/5d0ydY7p/ekW6m+14Rz9c8rHGY/EeZKXbL7kaCvqV4fM6d9ufFgN+avp
 InYg==
X-Gm-Message-State: AOAM533gWChvdg9hNgaCsxdSlH33/Fcc6wueyVYw3HsBIvqSbKC1Qo26
 p1c2cl563WBZOx/HGc3ekOeFns9B3nPrEA==
X-Google-Smtp-Source: ABdhPJxbV8TQ9Aqb3HNlYIlpBbP06Rz8TzwDvw18G+SchDeovNk0nEW411SPTjOgqzadnCY9GvtLtg==
X-Received: by 2002:a05:600c:4ecc:: with SMTP id
 g12mr405943wmq.117.1618326189971; 
 Tue, 13 Apr 2021 08:03:09 -0700 (PDT)
Received: from kam-desktop.localnet (grenville1.superlative.org.
 [81.187.25.35])
 by smtp.gmail.com with ESMTPSA id l13sm2779662wmj.3.2021.04.13.08.03.08
 for <osmocom-net-gprs@lists.osmocom.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 08:03:09 -0700 (PDT)
From: "Keith A. Milner" <maillist@superlative.org>
To: osmocom-net-gprs@lists.osmocom.org
Subject: Re: Osmo-ggsn MTU issue with Kernel GTP
Date: Tue, 13 Apr 2021 16:02:05 +0100
Message-ID: <3327710.mvXUDI8C0e@kam-desktop>
In-Reply-To: <YHWLOFweeBu6obM4@nataraja>
References: <2061578.irdbgypaU6@kam-desktop> <YHWLOFweeBu6obM4@nataraja>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
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
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

On Tuesday, 13 April 2021 13:14:48 BST Harald Welte wrote:
> Hi Keith,
> 
> On Tue, Apr 13, 2021 at 11:10:18AM +0100, Keith A. Milner wrote:
> > However, if I change to using Kernel GTP, by changing the gtpu-mode to
> > "kernel-gtp", traffic will not route (and, yes, I have done modprobe gtp).
> > After some exploration, it appears the tun device is being created with
> > an MTU of
> > zero which then, cannot pass traffic:
> I think this one is fixed in
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/dr
> ivers/net?id=e21eb3a065a2d90ee3bb06cc2e77acad403ec7cd but "of course" Debian
> 10 is using a too old kernel to contain that fix.

Ah, missed that. Thanks Harald.

> 
> You could ask Debian if they'd back-port it to the stable kernel?

It's not that big of an issue for me, as this is just for some testing. I was 
mainly concerned I had missed some configuration somewhere. As I can use the 
ipup-script this will work for me.

> 
> We would certainly also be happy to accept a patch mentioning this in the
> user manual, or a patch that makes osmo-ggsn check the MTU at startup time
> and print some big error message into the log.

I will have a look at that, probably at the former rather than the latter.

Thanks once again.

Keith




