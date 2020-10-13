Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 43ED328CF9D
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 13 Oct 2020 15:56:12 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id C89A81896DE;
	Tue, 13 Oct 2020 13:56:04 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=paul-moore.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=paul-moore-com.20150623.gappssmtp.com header.i=@paul-moore-com.20150623.gappssmtp.com header.b=fsKgrx1n
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::544; helo=mail-ed1-x544.google.com;
 envelope-from=paul@paul-moore.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=paul-moore.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by lists.osmocom.org (Postfix) with ESMTP id A48B81896CB
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Oct 2020 13:55:56 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id l16so21027686eds.3
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 13 Oct 2020 06:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2DKMoCh7i0xXAWOnYeO6FL9jlempYdRNzXVQVsNyqDY=;
 b=fsKgrx1nEp+1zchBFjTXcKd5V+R173W0PhVeHFHzr9UIGmX3MklhJFXn4qfqDfr9Wj
 M1q9af5G/pwZETq9WS174yp7qv8oxPxJDa5PtmhUiDPn1MYom3w2nac2S9MYTO+rn1gM
 0+zDNYuAkmMqx0p0crmRnaFlMMNn0zlvO8I0gAmub3bgGzFzc8cUfeYIewe5hP+37f8D
 sDAzTfzD+/hytUKJl++0KWGnJFOLQr8YBmFtuOIvF311sMne2ArIczKOgqF6/6QXM0TJ
 O0drHevOIsrkeWKH1j5vXcCeQDElotKIrg/YMioV+/hZvXeEgJ6F8cO1eVJtOAF85FKA
 itSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2DKMoCh7i0xXAWOnYeO6FL9jlempYdRNzXVQVsNyqDY=;
 b=MX4JHq0RCZ3MxmtbTYbMXrxOPTJNYHI8Vojsb6Bv5Id+6EBvI/3AdGRQtWzxlHyKKl
 7xRVwllOvOk6udlZUHzYaSvB7r1d3XLFIodT++Q1ayJokQGM756d/Ai0UEMKVgfaX3Gv
 i3IVS8yj88Xd2SUvHBfZagPlll6WeTTuurQotBYI82+UItsQQMW5PXKfizp/gpe9Mjlp
 hA1ovFPc/MKCZL8AOVEL7sP0g/iwKxPC9QMCMosJGXKRegx65Fzjvd8LZVSi58N2LKjb
 ROkFB3CDM3NKyiA+b+fSTbEujc7PoO9bTquG+EHaRRxjW7UmHPLGYuuPMdnWAMwgNXya
 95/A==
X-Gm-Message-State: AOAM533/jMkLYCQo2GVzrX080not/gmtzu84KMME9pYMDIc1VEgey6RU
 hFyRTM1g1NY5toOozzP1cV/4jui6QFJzPXyBEvUZobXCrAbJ
X-Google-Smtp-Source: ABdhPJz4mWBTImguVLP1oOYwD74t1j+Rz05Yi+H2J8qQGgIbt2DJB2D6fzj+alkUR+BDXvSGkJshtQiiAMzkKwjckkw=
X-Received: by 2002:a17:906:c444:: with SMTP id
 ck4mr31616284ejb.398.1602597352084; 
 Tue, 13 Oct 2020 06:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200930094934.32144-1-richard_c_haines@btinternet.com>
 <20200930094934.32144-4-richard_c_haines@btinternet.com>
 <20200930110153.GT3871@nataraja>
 <33cf57c9599842247c45c92aa22468ec89f7ba64.camel@btinternet.com>
 <20200930133847.GD238904@nataraja>
 <CAHC9VhT5HahBhow0RzWHs1yAh5qQw2dZ-3vgJv5GuyFWrXau1A@mail.gmail.com>
 <20201012093851.GF947663@nataraja>
In-Reply-To: <20201012093851.GF947663@nataraja>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 13 Oct 2020 09:55:40 -0400
Message-ID: <CAHC9VhTrSBsm-qVh95J2SzUq5=_pESwTUBRmVSjXOoyG+97jYA@mail.gmail.com>
Subject: Re: [PATCH 3/3] selinux: Add SELinux GTP support
To: Harald Welte <laforge@gnumonks.org>
Cc: pablo@netfilter.org, Richard Haines <richard_c_haines@btinternet.com>, 
 selinux@vger.kernel.org, linux-security-module@vger.kernel.org, 
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, 
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>
Content-Type: text/plain; charset="UTF-8"
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

On Mon, Oct 12, 2020 at 5:40 AM Harald Welte <laforge@gnumonks.org> wrote:
>
> Hi Paul,
>
> On Sun, Oct 11, 2020 at 10:09:11PM -0400, Paul Moore wrote:
> > Harald, Pablo - I know you both suggested taking a slow iterative
> > approach to merging functionality, perhaps you could also help those
> > of us on the SELinux side better understand some of the common GTP use
> > cases?
>
> There really only is one use case for this code:  The GGSN or P-GW function
> in the 3GPP network architecture ...
>
> Hope this helps,
>         Harald

It does, thank you.

It looks like this patchset is not really a candidate for merging in
its current form, but I didn't want to lose this information (both the
patches and Harald's comments) so I created a GH issue to track this
at the URL below.

* https://github.com/SELinuxProject/selinux-kernel/issues/54

-- 
paul moore
www.paul-moore.com
