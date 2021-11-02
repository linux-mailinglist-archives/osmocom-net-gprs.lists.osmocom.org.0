Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id A694E442B99
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  2 Nov 2021 11:24:39 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id E4FBC221160;
	Tue,  2 Nov 2021 10:24:38 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=djfpg6Sn
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2d; helo=mail-yb1-xb2d.google.com;
 envelope-from=246tnt@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by lists.osmocom.org (Postfix) with ESMTP id 198F422105D;
 Tue,  2 Nov 2021 10:22:05 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id v64so45336399ybi.5;
 Tue, 02 Nov 2021 03:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fRJpnUZWvaLOj4B+LwFt1V/51HJtG0G9EDH7TiHz3sI=;
 b=djfpg6SnWVklRoUale1OieRIk6D33hc48SMbV+PXbTAcg0n4jVlhAGMv0mxnT1YNzb
 aBd1pZQJ0Is/v2stA8jb2XN7XAfdPVS8ko8GtHh9WV8TDbQUganLp2wxtL8RoUOZkvY8
 UNp8LR1Wu1qvBvgpmKARJKenHw01tEOlYEugXaHEYRK0Nc4u8LGN1wdsq9spxeh9w1+D
 bJi0mMu/Jdw3B2L1+6upzYH+NQVjtB4uXM3RukfCW4gv72G9hpiuPrsUDdTgoNtr8wFT
 fmyfVODaXJuJBToTlxHB6/rc6c8PYlTym61Ra5A/8uTvMHfsz+oFOeuQuNPVXNajxSrv
 jPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fRJpnUZWvaLOj4B+LwFt1V/51HJtG0G9EDH7TiHz3sI=;
 b=F/3Zcs1UTIy8DEHdfLhFm3j1eiKFkPGQWaFVq5bpQegxQrvmpImngPa/Zgu672TcEO
 Gzu+q8g94TtldX2uSiN5OTFuwWaD0tVvL5rhIZei6XVlsZUVWzXwwRIZKD4it0BvtWKG
 RxwPwhrxojmbFc6BGIEpauD/9KqRjZBH1u/JXEwNIFzLAOHBs41Fd85TumUKiw3e9vyM
 Xp8GQuB39VQTCCfWaum5Y2uOrdJ0DyS/5H7j/+pjDfhL0kPWw0mLaul968BXB2tTzgn3
 ve1YvwAb+JSCfGSj2K9oPMxgLcBSZCcM2115/48AYmGGm+Z0kANYF82mj9VsfdgX3jLO
 juBw==
X-Gm-Message-State: AOAM530e3hW7LoP35x7iJDVyUOwDuLM855ODoWOzUqxfbQoBppdIsBwZ
 +pupfXHPJBP3a0fS/rIV5sl0ep52EqW2jrkdJsRYHyIg
X-Google-Smtp-Source: ABdhPJwNBpVC8q/hBzsrAr+qux2XNUF5QvEkCPFJK2HT3xYrH6D6I7JQf4mFXlF+WYxKidw1piZIIELvglMAb7df4gk=
X-Received: by 2002:a25:4008:: with SMTP id n8mr28350966yba.371.1635848524665; 
 Tue, 02 Nov 2021 03:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <YYEEG5iH/7FxvHLc@nataraja>
In-Reply-To: <YYEEG5iH/7FxvHLc@nataraja>
From: Sylvain Munaut <246tnt@gmail.com>
Date: Tue, 2 Nov 2021 11:22:21 +0100
Message-ID: <CAHL+j0_oB_1GKDT+n2PNV0y2PyxMxjPLnDjpBU_irpe_0hf1JQ@mail.gmail.com>
Subject: Re: OsmoDevCon 2022 ?
To: "openbsc@lists.osmocom.org" <openbsc@lists.osmocom.org>
Cc: baseband-devel <baseband-devel@lists.osmocom.org>,
 simtrace@lists.osmocom.org, 
 osmocom-sdr@lists.osmocom.org, osmocom-net-gprs@lists.osmocom.org, 
 gmr@lists.osmocom.org, tetra@lists.osmocom.org, gr-gsm@lists.osmocom.org
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

Hi Harald,

I'm definitely for it and would attend and the usual timeframe sounds good.

As for the modalities.
 - Vaccinated : Sure.
 - Self Test : Although a test before departure sounds like a good
idea, I'm not really sure of the need / efficacy of a day to day test.
But I also have no issue taking one if people are more comfortable
that way or think it's worth it.
 - Venue : Obvious questions is what are the alternatives :)
 - Ventilation : I honestly have no idea on the efficacy of that, but
if you got filters for the sysmocom office, I guess you did some
research and if they are movable and not obnoxiously loud, that can't
hurt.
 - Masks : You didn't mention it in your original email, but
personally I think in this context ( low number of people, but quite
extended period of time, + meals / drinks ), their efficacy would be
negligible. But again, if the consensus is to wear them, I have no
issues with that.

This is of course just my 2ct and also for my personal situation (like
for instance I know I can easily have a week "buffer" before/after the
event where I'll have virtually no contacts).
Looking forward to hear what others think.

Cheers,

    Sylvain
