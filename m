Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id A562E1BDC09
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 29 Apr 2020 14:24:43 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 6A66C125CA6;
	Wed, 29 Apr 2020 12:24:36 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=netfilter.org
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=193.147.175.20;
 helo=mail.us.es; envelope-from=pablo@netfilter.org; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=netfilter.org
Received: from mail.us.es (correo.us.es [193.147.175.20])
 by lists.osmocom.org (Postfix) with ESMTP id 50FCF125C93
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 29 Apr 2020 12:24:29 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
 by mail.us.es (Postfix) with ESMTP id 1683F1C442A
 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 29 Apr 2020 14:24:29 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
 by antivirus1-rhel7.int (Postfix) with ESMTP id 0505A5BC
 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 29 Apr 2020 14:24:29 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
 id EE483BAABD; Wed, 29 Apr 2020 14:24:28 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
 SMTPAUTH_US2,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
 by antivirus1-rhel7.int (Postfix) with ESMTP id 0D383DA736;
 Wed, 29 Apr 2020 14:24:27 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Wed, 29 Apr 2020 14:24:27 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [90.77.255.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: 1984lsi)
 by entrada.int (Postfix) with ESMTPSA id E3F9342EF9E2;
 Wed, 29 Apr 2020 14:24:26 +0200 (CEST)
Date: Wed, 29 Apr 2020 14:24:26 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
Subject: Re: [PATCH] gtp: set NLM_F_MULTI flag in gtp_genl_dump_pdp()
Message-ID: <20200429122426.GA9598@salvia>
References: <20200427110814.10896-1-ahochauwaaaaa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200427110814.10896-1-ahochauwaaaaa@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
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
Cc: osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

On Mon, Apr 27, 2020 at 08:08:14PM +0900, Yoshiyuki Kurauchi wrote:
> In drivers/net/gtp.c, gtp_genl_dump_pdp() should set NLM_F_MULTI
> flag since it returns multipart message.
> This patch adds a new arg "flags" in gtp_genl_fill_info() so that
> flags can be set by the callers.

Looks good, would you repost this and Cc: netdev@vger.kernel.org

You will have to specify what tree you're targetting this to (either
net or net-next).

Thanks.

> Signed-off-by: Yoshiyuki Kurauchi <ahochauwaaaaa@gmail.com>
> ---
>  drivers/net/gtp.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 672cd2caf2fb..21640a035d7d 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -1169,11 +1169,11 @@ static int gtp_genl_del_pdp(struct sk_buff *skb, struct genl_info *info)
>  static struct genl_family gtp_genl_family;
>  
>  static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
> -			      u32 type, struct pdp_ctx *pctx)
> +			      int flags, u32 type, struct pdp_ctx *pctx)
>  {
>  	void *genlh;
>  
> -	genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, 0,
> +	genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, flags,
>  			    type);
>  	if (genlh == NULL)
>  		goto nlmsg_failure;
> @@ -1227,8 +1227,8 @@ static int gtp_genl_get_pdp(struct sk_buff *skb, struct genl_info *info)
>  		goto err_unlock;
>  	}
>  
> -	err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid,
> -				 info->snd_seq, info->nlhdr->nlmsg_type, pctx);
> +	err = gtp_genl_fill_info(skb2, NETLINK_CB(skb).portid, info->snd_seq,
> +				 0, info->nlhdr->nlmsg_type, pctx);
>  	if (err < 0)
>  		goto err_unlock_free;
>  
> @@ -1271,6 +1271,7 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
>  				    gtp_genl_fill_info(skb,
>  					    NETLINK_CB(cb->skb).portid,
>  					    cb->nlh->nlmsg_seq,
> +					    NLM_F_MULTI,
>  					    cb->nlh->nlmsg_type, pctx)) {
>  					cb->args[0] = i;
>  					cb->args[1] = j;
> -- 
> 2.17.1
> 
