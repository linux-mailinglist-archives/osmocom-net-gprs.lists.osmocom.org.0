Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BAHCZILzGnGNgYAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:46 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id A939536F97E
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:45 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 83CD34C0351;
	Tue, 31 Mar 2026 17:59:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FIva0j2m49Ux; Tue, 31 Mar 2026 17:59:45 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 0F9CF4C02F2;
	Tue, 31 Mar 2026 17:59:41 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 763F538A0162
	for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Mar 2026 13:49:01 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 504E64832C5
	for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Mar 2026 13:49:01 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ztEOsGLiBrZ for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Mar 2026 13:49:00 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by mail.osmocom.org (Postfix) with ESMTPS id 438F64832C0
	for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Mar 2026 13:49:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AF00160141;
	Thu, 12 Mar 2026 13:48:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1211C4CEF7;
	Thu, 12 Mar 2026 13:48:54 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="Vbza1ZoZ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1773323333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cGQoGI0iD9IPU4MUwC9OugDLG8y8kJybLkuwslOCZHA=;
	b=Vbza1ZoZ3MQ4b2ykXY2DyqS4C6Ur7UHx9qiWIc/vFh778HfoElPE2RxbHwwtYDWBWz5kTd
	GgqrRtZHwWKcuZxBSTueiwWRWvj2d75BQlYdE8HJs5S7vd9FutLk/Ei4er761vtUbva2iY
	m5uliyiKx+1wocBBtZVjNBVv6c6GbN0=
Received: 
	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 780e6e40
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 12 Mar 2026 13:48:53 +0000 (UTC)
Date: Thu, 12 Mar 2026 14:48:48 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Fernando Fernandez Mancera <fmancera@suse.de>
Subject: Re: [PATCH 05/10 net-next v2] drivers: net: drop ipv6_stub usage and
 use direct function calls
Message-ID: <abLEQMx6mPM4vL4t@zx2c4.com>
References: <20260310153506.5181-1-fmancera@suse.de>
 <20260310153506.5181-6-fmancera@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260310153506.5181-6-fmancera@suse.de>
X-MailFrom: SRS0=9irl=BM=zx2c4.com=Jason@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation; nonmember-moderation; administrivia;
 implicit-dest; max-size; news-moderation; no-subject; digests;
 suspicious-header
Message-ID-Hash: NRFI4HWWCVJUIK4GOR7C3LADAWAAN34P
X-Message-ID-Hash: NRFI4HWWCVJUIK4GOR7C3LADAWAAN34P
X-Mailman-Approved-At: Tue, 31 Mar 2026 17:59:25 +0000
CC: netdev@vger.kernel.org, rbm@suse.com, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Mark Bloch <mbloch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Boris Pismenny <borisp@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Simon Horman <horms@kernel.org>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>,
 Antonio Quartulli <antonio@openvpn.net>,
 Sabrina Dubroca <sd@queasysnail.net>, Oliver Neukum <oliver@neukum.org>,
 David Ahern <dsahern@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Parav Pandit <parav@nvidia.com>,
 Edward Srouji <edwards@nvidia.com>, Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 Kees Cook <kees@kernel.org>, Jianbo Liu <jianbol@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, Guillaume Nault <gnault@redhat.com>,
 Cosmin Ratiu <cratiu@nvidia.com>, Carolina Jubran <cjubran@nvidia.com>,
 Alexandre Cassen <acassen@corp.free.fr>,
 Stanislav Fomichev <sdf@fomichev.me>,
 "open list:INFINIBAND SUBSYSTEM" <linux-rdma@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:NETRONOME ETHERNET DRIVERS" <oss-drivers@corigine.com>,
 "open list:SFC NETWORK DRIVER" <linux-net-drivers@amd.com>,
 "open list:GTP (GPRS Tunneling Protocol)"
 <osmocom-net-gprs@lists.osmocom.org>,
 "open list:USB CDC ETHERNET DRIVER" <linux-usb@vger.kernel.org>,
 "open list:WIREGUARD SECURE NETWORK TUNNEL" <wireguard@lists.zx2c4.com>,
 "open list:INTEL PRO/WIRELESS 2100, 2200BG,
 2915ABG NETWOR..." <linux-wireless@vger.kernel.org>,
 "open list:ETHERNET BRIDGE" <bridge@lists.linux.dev>
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/NRFI4HWWCVJUIK4GOR7C3LADAWAAN34P/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[460];
	DMARC_POLICY_ALLOW(-0.50)[zx2c4.com,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[zx2c4.com:s=20210105];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,suse.com,ziepe.ca,kernel.org,gmail.com,nvidia.com,lunn.ch,davemloft.net,google.com,redhat.com,netfilter.org,gnumonks.org,openvpn.net,queasysnail.net,neukum.org,blackwall.org,corp.free.fr,fomichev.me,corigine.com,amd.com,lists.osmocom.org,lists.zx2c4.com,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns];
	FORGED_SENDER(0.00)[Jason@zx2c4.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	RCPT_COUNT_TWELVE(0.00)[47];
	FORGED_RECIPIENTS(0.00)[m:fmancera@suse.de,m:netdev@vger.kernel.org,m:rbm@suse.com,m:jgg@ziepe.ca,m:leon@kernel.org,m:zyjzyj2000@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:borisp@nvidia.com,m:idosch@nvidia.com,m:petrm@nvidia.com,m:horms@kernel.org,m:ecree.xilinx@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:antonio@openvpn.net,m:sd@queasysnail.net,m:oliver@neukum.org,m:dsahern@kernel.org,m:stas.yakovlev@gmail.com,m:razor@blackwall.org,m:parav@nvidia.com,m:edwards@nvidia.com,m:vdumitrescu@nvidia.com,m:kees@kernel.org,m:jianbol@nvidia.com,m:gal@nvidia.com,m:gnault@redhat.com,m:cratiu@nvidia.com,m:cjubran@nvidia.com,m:acassen@corp.free.fr,m:sdf@fomichev.me,m:linux-rdma@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:oss-drivers@corigine.com,m:linux-net-drivers@amd.com,m:osmocom-net-gprs@lists.osmocom.org,m:linux-usb@vger.kernel.org,m:wiregua
 rd@lists.zx2c4.com,m:linux-wireless@vger.kernel.org,m:bridge@lists.linux.dev,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,m:stasyakovlev@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	DKIM_TRACE(0.00)[zx2c4.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Jason@zx2c4.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: A939536F97E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 04:34:28PM +0100, Fernando Fernandez Mancera wrote:
> diff --git a/drivers/net/wireguard/socket.c b/drivers/net/wireguard/socket.c
> index 253488f8c00f..c362c78d908e 100644
> --- a/drivers/net/wireguard/socket.c
> +++ b/drivers/net/wireguard/socket.c
> @@ -136,8 +136,7 @@ static int send6(struct wg_device *wg, struct sk_buff *skb,
>  			if (cache)
>  				dst_cache_reset(cache);
>  		}
> -		dst = ipv6_stub->ipv6_dst_lookup_flow(sock_net(sock), sock, &fl,
> -						      NULL);
> +		dst = ip6_dst_lookup_flow(sock_net(sock), sock, &fl, NULL);
>  		if (IS_ERR(dst)) {
>  			ret = PTR_ERR(dst);
>  			net_dbg_ratelimited("%s: No route to %pISpfsc, error %d\n",

Rest in peace, stub.

For the WireGuard part,

    Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
