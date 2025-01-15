Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F187A188AB
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:36 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1ACA91D3213;
	Tue, 21 Jan 2025 23:58:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9UmQ0NQpSrV; Tue, 21 Jan 2025 23:58:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8D3891D3102;
	Tue, 21 Jan 2025 23:58:26 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9837138A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 10:59:17 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 751581C9138
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 10:59:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AEaNNPg29PC7 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 15 Jan 2025 10:59:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.osmocom.org (Postfix) with ESMTPS id 88A7E1C9130
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 10:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736938754;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QbByJcISCyT3fC9pXiBHiwEQSgme43hamBV6cVUPLrk=;
	b=fCi3JmU1f4fO7A21hEobYzqoFAW5+zsRohAnSQVd0mY8OoGBFXOHzQZpDqQlJN1SRzl0lf
	XNLHQQugI8agz1ID544TCbxz3RSdSjFEPwTYi5EGpHiYpRSwOLeZ4vqmy1Rs9knHL8jnI/
	NI0DEk9wEPjTOOCNfF0SLR8m9iPQgYI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-551-XWovWa6gMw2Up7qyKD8P8Q-1; Wed, 15 Jan 2025 05:59:12 -0500
X-MC-Unique: XWovWa6gMw2Up7qyKD8P8Q-1
X-Mimecast-MFC-AGG-ID: XWovWa6gMw2Up7qyKD8P8Q
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-385e1fd40acso3437137f8f.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 02:59:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736938751; x=1737543551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QbByJcISCyT3fC9pXiBHiwEQSgme43hamBV6cVUPLrk=;
        b=GcKPBLUXuTQYSDnxxiHR3fQ3tSbfrpTlrHRm+f6CF8y+QCWtykO7AcwiFiAGR+7fwy
         gOepz4PIZ/InDuDDAzIJhzpwxfdvRfKr79JMTSiqEyysfTg127ipZxoLE8VYT46hLCED
         Ty9tNlCji5jlkdgmxUqOOpvsUoWP5p2vhXjGFSRZZRBSIk50OQGv0KixSGBPp7OsE5+m
         6hf+6dWKuWMrNXHxtRqeeUEjpZ1r5TrASTTtS4e3Vpf7a+u4FDOcNTp/CIBv+Fb5Rg0x
         5JBY1LeGoXJ9zVtLZHMnf5aTQZxZtdQGtc6KViwalAYV4btwD4PZcxKl8wyT+skjZtIO
         ICFw==
X-Forwarded-Encrypted: i=1; AJvYcCXg1hxHlTyYeRIcpurkBm77Y6N7HmK3/2VigFd7233ViX92M2LVIUkmH2jh/FaDhbsQgDYGhail0WmMa90MiYMU@lists.osmocom.org
X-Gm-Message-State: AOJu0YwpHPc+kFfVR6Nc0EAL+GgHKZEcSuhofk+bvGIytLiTU1my7kK6
	Lea6RRsRt2XYMHcFJwQspq81UkkevdLrvHlMf+VbgCVRAfcsN1A3aNJs1xDJRXXCi0RfRropN3I
	5yyQJzNDPoLq1JP5smbdTj24dCE8LAdAWGg5zlFLsYIM2f0uB9GJq9cpaRjMVYtuy9h6LHw==
X-Gm-Gg: ASbGnctQXqufbkJfJxZPNXXuUjEhn7E7H/Gp8fxiIlLfJJSjktN65EE9ABLVQbnRoQG
	j4ng8CXCTtfpsCY2ViaKH2CgEqo9LXrLvmDisqq+l5rUoHrB9X7LR6sx/aBYnVi5mXctF/ta8ew
	2uONct8KCSUfbTca7dkN+mdBdrgzOVUXRKN3wkGIViZ8hBVWJD6pR+pBBa40J5ijowg/W8uIwti
	/9H6Z9jzNmXMU0hRXe172Twe0WgQw8Cq8oeu4C9gDoeyJfhzk50cJ5MLgAZMNYcOmfzyQn0mmfo
	egEvu0n8IStSQFCOPaQfJVegwMsVtQOrBV/y
X-Received: by 2002:a5d:6d84:0:b0:385:ecdf:a30a with SMTP id ffacd0b85a97d-38a873140f6mr26504737f8f.33.1736938751481;
        Wed, 15 Jan 2025 02:59:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGccZg+xBu7CT3IyZv6Oe0eoWWo34AocLpH2jsg3GCptJ6+7fI5s+auUVv+j1TnhJREef9Zhw==
X-Received: by 2002:a5d:6d84:0:b0:385:ecdf:a30a with SMTP id ffacd0b85a97d-38a873140f6mr26504713f8f.33.1736938751147;
        Wed, 15 Jan 2025 02:59:11 -0800 (PST)
Received: from debian (2a01cb058d23d6009e7a50f94171b2f9.ipv6.abo.wanadoo.fr. [2a01:cb05:8d23:d600:9e7a:50f9:4171:b2f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38efeesm17627421f8f.62.2025.01.15.02.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 02:59:10 -0800 (PST)
Date: Wed, 15 Jan 2025 11:59:08 +0100
From: Guillaume Nault <gnault@redhat.com>
To: Ido Schimmel <idosch@nvidia.com>
Subject: Re: [PATCH net-next] gtp: Prepare ip4_route_output_gtp() to
 .flowi4_tos conversion.
Message-ID: <Z4eU/DLLTCcdtUXJ@debian>
References: <bcb279c6946a5f584bc9adbe90b05f6b1997fde0.1736871011.git.gnault@redhat.com>
 <Z4d7FqLVGI4oUh3s@shredder>
MIME-Version: 1.0
In-Reply-To: <Z4d7FqLVGI4oUh3s@shredder>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YQxhN7RurvtwICmfi_X-9jQfpx80u9muvoSk71YqFws_1736938751
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-MailFrom: gnault@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: X5X7FF4F5J2IQ2VAU67NLGZUR6GNZWA3
X-Message-ID-Hash: X5X7FF4F5J2IQ2VAU67NLGZUR6GNZWA3
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:12 +0000
CC: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org, Simon Horman <horms@kernel.org>, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/X5X7FF4F5J2IQ2VAU67NLGZUR6GNZWA3/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, Jan 15, 2025 at 11:08:38AM +0200, Ido Schimmel wrote:
> On Tue, Jan 14, 2025 at 05:12:12PM +0100, Guillaume Nault wrote:
> > Use inet_sk_dscp() to get the socket DSCP value as dscp_t, instead of
> > ip_sock_rt_tos() which returns a __u8. This will ease the conversion
> > of fl4->flowi4_tos to dscp_t, as it will just require to drop the
> > inet_dscp_to_dsfield() call.
> > 
> > Signed-off-by: Guillaume Nault <gnault@redhat.com>
> > ---
> >  drivers/net/gtp.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> > index 89a996ad8cd0..03d886014f5a 100644
> > --- a/drivers/net/gtp.c
> > +++ b/drivers/net/gtp.c
> > @@ -23,6 +23,8 @@
> >  
> >  #include <net/net_namespace.h>
> >  #include <net/protocol.h>
> > +#include <net/inet_dscp.h>
> > +#include <net/inet_sock.h>
> >  #include <net/ip.h>
> >  #include <net/ipv6.h>
> >  #include <net/udp.h>
> > @@ -350,7 +352,7 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
> >  	fl4->flowi4_oif		= sk->sk_bound_dev_if;
> >  	fl4->daddr		= daddr;
> >  	fl4->saddr		= saddr;
> > -	fl4->flowi4_tos		= ip_sock_rt_tos(sk);
> > +	fl4->flowi4_tos		= inet_dscp_to_dsfield(inet_sk_dscp(inet_sk((sk))));
> 
> There seems to be an unnecessary pair of parenthesis here like in the
> other patch. I assume you will take care of that in v2?

Yes, I'll send a v2 tomorrow for both the gtp and dccp patches.


> >  	fl4->flowi4_scope	= ip_sock_rt_scope(sk);
> >  	fl4->flowi4_proto	= sk->sk_protocol;
> >  
> > -- 
> > 2.39.2
> > 
> 

