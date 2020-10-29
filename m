Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 963BD29F20C
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 29 Oct 2020 17:46:53 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 77048180A6F;
	Thu, 29 Oct 2020 16:46:51 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=erZwSMCI
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 63465180A59
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 29 Oct 2020 16:46:42 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6492720825;
 Thu, 29 Oct 2020 16:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603990000;
 bh=wXwQ4RSz0axTZ9t3kOle/82SyMolkuc/gJPJuvJtjGA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=erZwSMCI8vkU/CvBdGXm+H9fHsWe0L+lMvymnoQIArhUHUZZu20oNsa3OZxBitMrN
 oBDBGpDo9LirCx+qg2cqmszfDUwkoLvei7rSPDh089HPE3tNSY0Zu5DjFZSUW8bYbg
 oDOASTye/2i7+yNPjhb6MjTUWcgk6ld/yCPOBzBs=
Date: Thu, 29 Oct 2020 09:46:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte
 <laforge@gnumonks.org>, "David S. Miller" <davem@davemloft.net>, Andreas
 Schultz <aschultz@tpip.net>, osmocom-net-gprs@lists.osmocom.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 net] gtp: fix an use-before-init in gtp_newlink()
Message-ID: <20201029094639.10d74c47@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201027114846.3924-1-fujiwara.masahiro@gmail.com>
References: <20201026114633.1b2628ae@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <20201027114846.3924-1-fujiwara.masahiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Tue, 27 Oct 2020 20:48:46 +0900 Masahiro Fujiwara wrote:
> *_pdp_find() from gtp_encap_recv() would trigger a crash when a peer
> sends GTP packets while creating new GTP device.
> 
> RIP: 0010:gtp1_pdp_find.isra.0+0x68/0x90 [gtp]
> <SNIP>
> Call Trace:
>  <IRQ>
>  gtp_encap_recv+0xc2/0x2e0 [gtp]
>  ? gtp1_pdp_find.isra.0+0x90/0x90 [gtp]
>  udp_queue_rcv_one_skb+0x1fe/0x530
>  udp_queue_rcv_skb+0x40/0x1b0
>  udp_unicast_rcv_skb.isra.0+0x78/0x90
>  __udp4_lib_rcv+0x5af/0xc70
>  udp_rcv+0x1a/0x20
>  ip_protocol_deliver_rcu+0xc5/0x1b0
>  ip_local_deliver_finish+0x48/0x50
>  ip_local_deliver+0xe5/0xf0
>  ? ip_protocol_deliver_rcu+0x1b0/0x1b0
> 
> gtp_encap_enable() should be called after gtp_hastable_new() otherwise
> *_pdp_find() will access the uninitialized hash table.
> 
> Fixes: 1e3a3abd8b28 ("gtp: make GTP sockets in gtp_newlink optional")
> Signed-off-by: Masahiro Fujiwara <fujiwara.masahiro@gmail.com>

Applied, thank you!
