Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 839B51A13BB
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  7 Apr 2020 20:36:19 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 29BCC10D056;
	Tue,  7 Apr 2020 18:36:11 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=netronome.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=netronome-com.20150623.gappssmtp.com header.i=@netronome-com.20150623.gappssmtp.com header.b=KEL8/tHD
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (no SPF record) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::441; helo=mail-pf1-x441.google.com;
 envelope-from=jakub.kicinski@netronome.com;
 receiver=osmocom-net-gprs@lists.osmocom.org 
Authentication-Results: lists.osmocom.org; dmarc=none header.from=netronome.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by lists.osmocom.org (Postfix) with ESMTP id 154E9E9CF3
 for <osmocom-net-gprs@lists.osmocom.org>; Sun, 15 Dec 2019 01:21:30 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id y206so3611406pfb.0
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 14 Dec 2019 17:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=fMT9Uq8oA7N4cc8A+BqwQHzoKGnygJU6FYugzr2VIag=;
 b=KEL8/tHDQaGUH7uxzfNpx/uUU3s4ZR+ORlxEazfZo+lqq7HGWpSu6E5v+P8E32beS6
 xTNxrZ3TwmW7im+hVvhuMlQZ1gUQje34Ghn2x0yVS0L2F313/BMR0a3mfoHs5JP4UFuP
 2t8A1eMKgIOUWfJ7Xsdnr0VPEJl5DUhbAb0ZFShFdmi2eAxwRn3OT4JJICWeQoY/3TMZ
 K9AygQL+4lXRPW4eknD1MBFuRI20WfA6fwRymWvlxNX1mqpmwTM3XuRl7/T0bnhQxQE1
 JNUiivSvpkGfDoo+ZoL5jDGEvRZydugbcL/UB+mKkXmEFBG+gClx/nA65M793Y7tGppO
 3p5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=fMT9Uq8oA7N4cc8A+BqwQHzoKGnygJU6FYugzr2VIag=;
 b=HeXPn2kIHvbmuEljghmtfxsZZda8oeFR+/dBkyWqqNAjoGr5674Ijw7vwYhfcuoGYz
 zdupQrvXP81AvGJP+Pew5dCf2DcOQFjOsPu90UKu37zCB+GCqp6PyEbfYW3f/vJfoV8o
 7mVxqJz1X196Rqg7IIlTo9e7O9oxOf2mkY8rD4Zkfh87LQ+HmVEV+qxsRfQD782z/Z2h
 3VSgnBagjq/BQkUpeUGdDNRXEzmeT0dVdUs63CNySb0Jjw0k457xxZJL3QMjDhNB634P
 CgoKe66TRBurpumn4UpBorKRTHBUFRTg7/I60a6zwb7hU4cu2wuj1thzcH9gTcktBVRe
 zbiw==
X-Gm-Message-State: APjAAAXFTOkCyj0bAFClPNhRt+hwzvroBLGQsJKSkHGnvEQKtQF52RDV
 ckj7+oEHNjnrgUM7sQ9SqCsfQQ==
X-Google-Smtp-Source: APXvYqyNRkNh1NsJ8oLFOFP+NHLe8b5KbJ+8zLzYGQ2/YH/lDvmaRFXrRk5+K6ycUraXoFFAjahcMQ==
X-Received: by 2002:a63:597:: with SMTP id 145mr8792268pgf.384.1576372889380; 
 Sat, 14 Dec 2019 17:21:29 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id d13sm13282631pjx.21.2019.12.14.17.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 17:21:29 -0800 (PST)
Date: Sat, 14 Dec 2019 17:21:26 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Taehee Yoo <ap420073@gmail.com>
Subject: Re: [PATCH net 0/4] gtp: fix several bugs in gtp module
Message-ID: <20191214172126.3f5027a4@cakuba.netronome.com>
In-Reply-To: <20191211082243.28465-1-ap420073@gmail.com>
References: <20191211082243.28465-1-ap420073@gmail.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 07 Apr 2020 18:36:08 +0000
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
Cc: netdev@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org,
 davem@davemloft.net, pablo@netfilter.org, laforge@gnumonks.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

On Wed, 11 Dec 2019 08:22:43 +0000, Taehee Yoo wrote:
> This patchset fixes several bugs in the GTP module.
> 
> 1. Do not allow adding duplicate TID and ms_addr pdp context.
> In the current code, duplicate TID and ms_addr pdp context could be added.
> So, RX and TX path could find correct pdp context.
> 
> 2. Fix wrong condition in ->dumpit() callback.
> ->dumpit() callback is re-called if dump packet size is too big.  
> So, before return, it saves last position and then restart from
> last dump position.
> TID value is used to find last dump position.
> GTP module allows adding zero TID value. But ->dumpit() callback ignores
> zero TID value.
> So, dump would not work correctly if dump packet size too big.
> 
> 3. Fix use-after-free in ipv4_pdp_find().
> RX and TX patch always uses gtp->tid_hash and gtp->addr_hash.
> but while packet processing, these hash pointer would be freed.
> So, use-after-free would occur.
> 
> 4. Fix panic because of zero size hashtable
> GTP hashtable size could be set by user-space.
> If hashsize is set to 0, hashtable will not work and panic will occur.

Looks good to me, thank you, applied and queued for stable.
