Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 8E26033C5A1
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 15 Mar 2021 19:28:55 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id DC23A1B0C76;
	Mon, 15 Mar 2021 18:28:47 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b=nlP01otv
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 500 seconds by postgrey-1.37 at lists.osmocom.org;
 Mon, 15 Mar 2021 18:28:44 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=kernel.org
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.145.29.99;
 helo=mail.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.osmocom.org (Postfix) with ESMTP id 35FE11B0C63
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 15 Mar 2021 18:28:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DEC6D64F3F;
 Mon, 15 Mar 2021 18:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615832422;
 bh=GYYv+MsheeXWjs0+8ccatBH06Jins/lXZch2vvJxfDc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nlP01otv8chY6yQnAiYzsKkjEp7SjIcJdLFSf68T3YHedu61/ntLE8BuQHcWdA4Xb
 KFnBgfGSYttVY015OFKatx9Zy2XovB2KMnwUw+Dj93r4COslZ7WL6RorQ9CT3MM7oC
 9VkfyWFtuPYwJPgdWi46c77dmJIfKVokn38xcSNBMtQBg7MIu6F5D8d1dlM4P045O1
 hmck8MfuBt2wKE+8q6qJ9o7fQa5Jq9HEC7eHfMcanhUOO5LWbmirSBV3OmfiXDcpqx
 jc2x8SGSCNPKgrc0cwWI6HG74cqcyJzAm39DAY2CkaY/HVINEbG2zzEK9JQp+gyxXF
 1PY1yZoH072kQ==
Date: Mon, 15 Mar 2021 11:20:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Chinmayi Shetty <chinmayishetty359@gmail.com>
Cc: pablo@netfilter.org, laforge@gnumonks.org, davem@davemloft.net,
 osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bkkarthik@pesu.pes.edu
Subject: Re: [PATCH] Net: gtp: Fixed missing blank line after declaration
Message-ID: <20210315112021.0278875d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210313165128.jc2u2pnpm3enbx2h@client-VirtualBox>
References: <20210313165128.jc2u2pnpm3enbx2h@client-VirtualBox>
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

On Sat, 13 Mar 2021 22:21:28 +0530 Chinmayi Shetty wrote:
> Signed-off-by: Chinmayi Shetty <chinmayishetty359@gmail.com>
> ---
>  drivers/net/gtp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index efe5247d8c42..79998f4394e5 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -437,7 +437,7 @@ static inline void gtp1_push_header(struct sk_buff *skb, struct pdp_ctx *pctx)
>  	gtp1->length	= htons(payload_len);
>  	gtp1->tid	= htonl(pctx->u.v1.o_tei);
>  
> -	/* TODO: Suppport for extension header, sequence number and N-PDU.
> +	/* TODO: Support for extension header, sequence number and N-PDU.
>  	 *	 Update the length field if any of them is available.
>  	 */
>  }

Subject does not match the patch.
