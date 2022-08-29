Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB3F5A995D
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  1 Sep 2022 15:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id F2C9A282BB;
	Thu,  1 Sep 2022 13:47:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X80vgXRKjBog; Thu,  1 Sep 2022 13:47:38 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5A64128195;
	Thu,  1 Sep 2022 13:47:37 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C08EB38A0B0E
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Aug 2022 16:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9A36B28192
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Aug 2022 16:33:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SENNLdVYGvWw for <osmocom-net-gprs@lists.osmocom.org>;
	Mon, 29 Aug 2022 16:33:04 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id A1DA72818F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 29 Aug 2022 16:33:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A6F3161210;
	Mon, 29 Aug 2022 16:33:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF56C433D6;
	Mon, 29 Aug 2022 16:32:59 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="kNQTi4K8"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1661790778;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3F5bs6wEmRDmdIQe96V5iwCeWjK5YoVTeKEuPdxSfN4=;
	b=kNQTi4K8egLdu1zNarBL47SQOYWe4WMkhvHrAwskcAG/1adfCVQBMB0gvduSpWFDbav2Tj
	2LIfVOx4v++zHCwTjVPKSR+kizVUx5w5Af4coUKZm2ZWFtmVrqoa79XBz+/8OYj2RpZKfG
	GTXOi7IPk9NkM/oVEZTI4HyRLLvuSmE=
Received: 
	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 1de32b3b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 29 Aug 2022 16:32:58 +0000 (UTC)
Date: Mon, 29 Aug 2022 12:32:54 -0400
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net-next] genetlink: start to validate reserved header
 bytes
Message-ID: <YwzqNgj/bJoawrwh@zx2c4.com>
References: <20220825001830.1911524-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220825001830.1911524-1-kuba@kernel.org>
X-MailFrom: SRS0=7wty=ZB=zx2c4.com=Jason@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: LF4JRGHK5XHL2E3CNSII3YZWB2NCJIHA
X-Message-ID-Hash: LF4JRGHK5XHL2E3CNSII3YZWB2NCJIHA
X-Mailman-Approved-At: Thu, 01 Sep 2022 13:47:34 +0000
CC: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com, jiri@resnulli.us, johannes@sipsolutions.net, linux-block@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, linux-wpan@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org, target-devel@vger.kernel.org, linux-pm@vger.kernel.org, virtualization@lists.linux-foundation.org, linux-cifs@vger.kernel.org, cluster-devel@redhat.com, mptcp@lists.linux.dev, lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org, linux-security-module@vger.kernel.org, dev@openvswitch.org, linux-s390@vger.kernel.org, tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/LF4JRGHK5XHL2E3CNSII3YZWB2NCJIHA/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Jakub,

On Wed, Aug 24, 2022 at 05:18:30PM -0700, Jakub Kicinski wrote:
> diff --git a/drivers/net/wireguard/netlink.c b/drivers/net/wireguard/netlink.c
> index d0f3b6d7f408..0c0644e762e5 100644
> --- a/drivers/net/wireguard/netlink.c
> +++ b/drivers/net/wireguard/netlink.c
> @@ -621,6 +621,7 @@ static const struct genl_ops genl_ops[] = {
>  static struct genl_family genl_family __ro_after_init = {
>  	.ops = genl_ops,
>  	.n_ops = ARRAY_SIZE(genl_ops),
> +	.resv_start_op = WG_CMD_SET_DEVICE + 1,
>  	.name = WG_GENL_NAME,
>  	.version = WG_GENL_VERSION,
>  	.maxattr = WGDEVICE_A_MAX,

FWIW, I wouldn't object to just leaving this at zero. I don't know of
any wireguard userspaces doing anything with the reserved header field.

Jason
