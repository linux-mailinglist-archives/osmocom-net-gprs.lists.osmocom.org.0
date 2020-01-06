Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 1677C1A13BC
	for <lists+osmocom-net-gprs@lfdr.de>; Tue,  7 Apr 2020 20:36:21 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 740BC10D069;
	Tue,  7 Apr 2020 18:36:20 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=netronome.com
Authentication-Results: lists.osmocom.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=netronome-com.20150623.gappssmtp.com header.i=@netronome-com.20150623.gappssmtp.com header.b=Y6yD6Dl8
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::344; helo=mail-wm1-x344.google.com;
 envelope-from=simon.horman@netronome.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=netronome.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by lists.osmocom.org (Postfix) with ESMTP id 8997E115A8D
 for <osmocom-net-gprs@lists.osmocom.org>; Mon,  6 Jan 2020 08:59:44 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id q9so14197351wmj.5
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 06 Jan 2020 00:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/ZwyOis6F3QKO9vpXF7tA9K3dMi7rhKdiD8Hhm+STvI=;
 b=Y6yD6Dl8fSrpCiMi6JFctDAcHcLCWwV4WbimfBvj3+DL9Ty8MfYj5w1Jus52QpCEJl
 nlmHxj+yyP4MtkOxKVVgDe7K2MPPf5cMrUjhsM8svB3s9M6RYkSINppYo2FslFGuSox8
 fRb6bdg9iqcq0j5GEsidiFjyXNfdXtYqabeDILKYHaPmBhD9Ipydv3If5LV3nXeNKcdt
 EPO/FkJ9ZXJjNjxHdfr3Pz1/8pLLlOaGP+EuBz1Mv/SqE9k816wR/Ss6b7WH5sY734FS
 d3wOMe/FAYyhHeGbZ+9XsFeKMFPxdF9RJ42+wHli+mv5DlaM7u7YwKnLlejHmga0BPn8
 Qf8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/ZwyOis6F3QKO9vpXF7tA9K3dMi7rhKdiD8Hhm+STvI=;
 b=m3uaJXUtL/6yKRNJ1eigOP/P6b0yv1Y5zbqk+6Wyn5unCrpWWuC+JBIGgkHGd3KGa3
 FMf7mY+l8oq/vB7Gws/+a+N6/nAs/zDFDHlDRoZlNKaXq4l7wM0qaIEgDzAMizP3YpOx
 nmS8TiBm/Xt+iuw6iNWgj6Ml6SSNrk5qWbNzuOEYEYma1f2J4mupWqD99qU74DFgDKfk
 +aY6olGuSzltr8ZvYaN3NY5qg56Z8lOqSTgIM3zKqYnMPDlJNi/F2tXkc1q5C9oV36Rw
 KiuBV0nzzvqDCy59Mw3NP4i8UVpgDsqWrKyKsLH5q7e7kHGJxxmDNYUS5uN4l2S/0h8p
 N1yw==
X-Gm-Message-State: APjAAAXMMSotNoAU35barEKBWzP3rW+gAxiUX7vMT8AYI54fd1vEcvok
 1Pga36LkdvrJhSKXQTeONbJ8ew==
X-Google-Smtp-Source: APXvYqxF9x2VCzl/gJXkRc4d1WJjn/hIPNpdwO3oQ7KKNlfk2KXb1uw38kE6ewg/kcMvECWhpHrbPA==
X-Received: by 2002:a05:600c:2551:: with SMTP id
 e17mr2841233wma.26.1578301184153; 
 Mon, 06 Jan 2020 00:59:44 -0800 (PST)
Received: from netronome.com ([2001:982:756:703:d63d:7eff:fe99:ac9d])
 by smtp.gmail.com with ESMTPSA id x11sm73880628wre.68.2020.01.06.00.59.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 00:59:44 -0800 (PST)
Date: Mon, 6 Jan 2020 09:59:43 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] gtp: simplify error handling code in 'gtp_encap_enable()'
Message-ID: <20200106085943.GB10460@netronome.com>
References: <20200105173607.5456-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200105173607.5456-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 laforge@gnumonks.org, davem@davemloft.net, pablo@netfilter.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

On Sun, Jan 05, 2020 at 06:36:07PM +0100, Christophe JAILLET wrote:
> 'gtp_encap_disable_sock(sk)' handles the case where sk is NULL, so there
> is no need to test it before calling the function.
> 
> This saves a few line of code.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Simon Horman <simon.horman@netronome.com>
