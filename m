Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 9AEB628B4B2
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 12 Oct 2020 14:34:45 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 1BE0B186879;
	Mon, 12 Oct 2020 12:34:35 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=paul-moore.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=paul-moore-com.20150623.gappssmtp.com header.i=@paul-moore-com.20150623.gappssmtp.com header.b=uFrh1lzr
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::644; helo=mail-ej1-x644.google.com;
 envelope-from=paul@paul-moore.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=paul-moore.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by lists.osmocom.org (Postfix) with ESMTP id 61F74185BDD
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 12 Oct 2020 02:09:23 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id md26so20983030ejb.10
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 11 Oct 2020 19:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AK2bWzHz5KjOV6B+R5X2SLhKXSVJscVhCITZfEKF1hY=;
 b=uFrh1lzryALn96VPKRBduZb3Uw2dS7GwoDmDor/yq4sltdj4FZMEe0Kz7zWWYkgsvZ
 Bhk0XJiKrLAD9vM9R6Rp6oGNiAmOEBkfW2FHbS9htw4ttGMgoNiPjHbV82SaJQOh72n1
 KOn0XHZV3yhQ5ML83+/WRHEK5fGEH2My0vKHk0vWBZcvp/We8Mi77DTEs0R36Uy8AS/q
 j6qvKFbzpZ0Q5slqBpraYrzgMnWaci+4n4rLKl+4qMGdM1msS0I9pJxg6ZHb7zpBNGAx
 fFoUIMSVQeSle6ceuXri4Gebr/dVtNHjJ5L0A+m6O9ky0R0lJJWu82TvgfOsprzdtiDv
 1FRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AK2bWzHz5KjOV6B+R5X2SLhKXSVJscVhCITZfEKF1hY=;
 b=CIt0LOuV2v5LlPQLYfzcyB8PQtrgAI84GpGMVunixhwtvatNDdbAF+tCyrY+Yjo9Lk
 NRJ9dwY9svgQZSNiOkaLXSak0fmzcoi839lRDAlsNsAfyHPdc+4TpkyAxqFIgV8zYSl/
 X2ibzGDWizPWcOzRbBanh6CLygwmHEOG5XmblItSa7cU8rfmuD8VbK8jgUedj0s32ebs
 S1lF7hZNOuJo/wrHNXUqIRTvsVlWC+mte5cbD1otMaTQRj2WIA55Up7rB0kw8BZ71hpI
 6ZOpQbmAgz16JST9wLrItLz6ilAPWWkvC42k9/dQRyOwaOT1Wpg6NrA3NO2wfLr49/+n
 Od2Q==
X-Gm-Message-State: AOAM5303WHDlQOMddtU/xUKHKA3hlwvMCj6OhvFytLa62mdpohr26UNY
 j7UgfgdJGJhI7KXhVp18gWDkTA89Rufi/jBt1I87
X-Google-Smtp-Source: ABdhPJxvp+jOMwz02L056HcUjWpx3NzOVbT79WBzEmzyJsbpZ9wPiEuXnLr6OVSinkWqQieYV8eSaJPP3ELMwP9kJIg=
X-Received: by 2002:a17:906:ce5a:: with SMTP id
 se26mr25334590ejb.106.1602468562791; 
 Sun, 11 Oct 2020 19:09:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200930094934.32144-1-richard_c_haines@btinternet.com>
 <20200930094934.32144-4-richard_c_haines@btinternet.com>
 <20200930110153.GT3871@nataraja>
 <33cf57c9599842247c45c92aa22468ec89f7ba64.camel@btinternet.com>
 <20200930133847.GD238904@nataraja>
In-Reply-To: <20200930133847.GD238904@nataraja>
From: Paul Moore <paul@paul-moore.com>
Date: Sun, 11 Oct 2020 22:09:11 -0400
Message-ID: <CAHC9VhT5HahBhow0RzWHs1yAh5qQw2dZ-3vgJv5GuyFWrXau1A@mail.gmail.com>
Subject: Re: [PATCH 3/3] selinux: Add SELinux GTP support
To: Harald Welte <laforge@gnumonks.org>, pablo@netfilter.org, 
 Richard Haines <richard_c_haines@btinternet.com>
Cc: selinux@vger.kernel.org, linux-security-module@vger.kernel.org, 
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org, 
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 12 Oct 2020 12:34:31 +0000
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

On Wed, Sep 30, 2020 at 9:39 AM Harald Welte <laforge@gnumonks.org> wrote:
> Hi Richard,
>
> On Wed, Sep 30, 2020 at 01:25:27PM +0100, Richard Haines wrote:
>
> > As in the reply to Pablo, I did it for no particular reason other than
> > idle curiosity, and given the attempted move to Open 5G I thought
> > adding MAC support might be useful somewhere along the line.
>
> ...
>
> I think it would not be the best idea to merge SELinux support patches for the
> GTP kernel driver without thoroughly understanding the use case, and/or having
> some actual userspace implementations that make use of them.  In the end, we may
> be introducing code that nobody uses, and which only turns out to be insufficient
> for what later actual users may want.
>
> So like Pablo suggested, it would probably be best to focus on
> submitting / merging features for things that are either well-defined (e.g.
> specified in a standerd), and/or have existing userspace implementations.

Having a solid use case or two is also helpful for those of us who
don't have a GTP/GPRS background.  I did spend some time reading a few
things on GTP, but I don't feel like I've made much of a dent on
understanding how it is actually used.

Harald, Pablo - I know you both suggested taking a slow iterative
approach to merging functionality, perhaps you could also help those
of us on the SELinux side better understand some of the common GTP use
cases?

-- 
paul moore
www.paul-moore.com
