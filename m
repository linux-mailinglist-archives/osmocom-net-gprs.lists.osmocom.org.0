Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 292BAA05DF3
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  8 Jan 2025 15:04:41 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 0BBC91BD25F;
	Wed,  8 Jan 2025 14:04:41 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OKhwr3pop95m; Wed,  8 Jan 2025 14:04:40 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 9E8B31BD139;
	Wed,  8 Jan 2025 14:04:26 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id A1C5F38A2780
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 20:38:10 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 74A401BC4E7
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 20:38:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evSse7NlDrXS for <osmocom-net-gprs@lists.osmocom.org>;
 Tue,  7 Jan 2025 20:38:09 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id 918401BC4E2
	for <osmocom-net-gprs@lists.osmocom.org>; Tue,  7 Jan 2025 20:38:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8AB125C5EAC;
	Tue,  7 Jan 2025 20:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 582D5C4CED6;
	Tue,  7 Jan 2025 20:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736282287;
	bh=xVENo9muNO/TQ5xVqUKOs/5Q4+G96PW1sKSnQr73q9Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IincHyk5dnHSj14WBxB3nZ8H+ad7Wv7JCDFqB3ioz1CyxVIL28f/wayA5OfnPboFy
	 w4bYeV8oyIpNsDF2th/1YTvksDeeiWBKLOGweUN5unnHCsYuY6UO9/ov33L1S7sVm+
	 1K3BnLtTw6iZPtOBVnjoMMzolL2SbZULRRKu+YNbYACOMPPIofT1Am+zEPd/PAx/vs
	 ld0p/Rkjj2unh6Png65S7WHaBoyC3nNe0ZjG8UBnxGV+bt8cBPNwF55J92ceGMmf0M
	 9p3XnJzVS37fvnQRlLFc7Do5qJjEPxgQYy5375IiG9MyjZthi5D9QPQCuQtvR2QVYT
	 LbPjcwrrJqcnA==
Date: Tue, 7 Jan 2025 12:38:05 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v7 02/11] rtnetlink: Pack newlink() params into
 struct
Message-ID: <20250107123805.748080ab@kernel.org>
In-Reply-To: <20250104125732.17335-3-shaw.leon@gmail.com>
References: <20250104125732.17335-1-shaw.leon@gmail.com>
	<20250104125732.17335-3-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 2ATU5DQ3DIHU522TJFA3OGNYVCDDBJNG
X-Message-ID-Hash: 2ATU5DQ3DIHU522TJFA3OGNYVCDDBJNG
X-Mailman-Approved-At: Wed, 08 Jan 2025 14:04:07 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, Donald Hunter <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2ATU5DQ3DIHU522TJFA3OGNYVCDDBJNG/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Sat,  4 Jan 2025 20:57:23 +0800 Xiao Liang wrote:
> -static int amt_newlink(struct net *net, struct net_device *dev,
> -		       struct nlattr *tb[], struct nlattr *data[],
> -		       struct netlink_ext_ack *extack)
> +static int amt_newlink(struct rtnl_newlink_params *params)
>  {
> -	struct amt_dev *amt = netdev_priv(dev);
> +	struct netlink_ext_ack *extack = params->extack;
> +	struct net_device *dev = params->dev;
> +	struct nlattr **data = params->data;
> +	struct nlattr **tb = params->tb;
> +	struct net *net = params->net;
> +	struct amt_dev *amt;

IMHO you packed a little too much into the struct.
Could you take the dev and the extack back out?
