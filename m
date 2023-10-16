Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1817D1F56
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 21 Oct 2023 22:07:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6BD4A2830E;
	Sat, 21 Oct 2023 20:07:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WPMT3TZ-p8l0; Sat, 21 Oct 2023 20:07:45 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 996ED28312;
	Sat, 21 Oct 2023 20:07:38 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CB9EB38A004A
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 16 Oct 2023 22:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 616CB2815F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 16 Oct 2023 22:23:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gHtTKWNUwAHV for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 16 Oct 2023 22:23:48 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id F37AF27F3A
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 16 Oct 2023 22:23:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4A082611CF;
	Mon, 16 Oct 2023 22:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50618C433C7;
	Mon, 16 Oct 2023 22:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697495024;
	bh=bRrY6z8Qu3DHxdJ9AWDgW2EEHgMVRnN3AxmhHve8YT0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=vDG8J87nBqFt4L6UK9UD0UURS6rn2Zw5xR5YguOBewzOHIpPmFmU7m2BWITb6nKtP
	 1bUMsnYgmBJ4ihkMfm+CKSQdB3svbnsafQLeqhOFOT8aktvznQeOxoMXxDgMEtluL7
	 /ItwqYCfITwZEq0Uie/0PtTtmP9FVsNExso+35t63ihM5YqgcXBMy5DV+4xCo7+VDv
	 TPMkgErh0SFf1NgbrzXJ+Ix4F2S+8Vj/+cEVZJ8gJvDyeHUSUfZ2MG8WTaTulWAS4S
	 EnMQJ/67pYltlKrmgWTsmdVmhsC1YnbjYbAx6+rDe3WByYmkhpCkwcVyU596eWuhgB
	 UfsfQyYAwwdZA==
Date: Mon, 16 Oct 2023 15:23:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Takeru Hayasaka <hayatake396@gmail.com>
Subject: Re: [PATCH net-next v2] ethtool: ice: Support for RSS settings to
 GTP from ethtool
Message-ID: <20231016152343.1fc7c7be@kernel.org>
In-Reply-To: <20231012060115.107183-1-hayatake396@gmail.com>
References: <20231012060115.107183-1-hayatake396@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: AHRYQ7O7I2NWFSL6V4IICO7GFVUIRUWU
X-Message-ID-Hash: AHRYQ7O7I2NWFSL6V4IICO7GFVUIRUWU
X-Mailman-Approved-At: Sat, 21 Oct 2023 20:06:35 +0000
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Harald Welte <laforge@gnumonks.org>, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/AHRYQ7O7I2NWFSL6V4IICO7GFVUIRUWU/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Thanks for the v2!

Adding Willem, Pablo, and Harald to CC (please CC them on future
versions).

On Thu, 12 Oct 2023 06:01:15 +0000 Takeru Hayasaka wrote:
> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index f7fba0dc87e5..a2d4f2081cf3 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -2011,6 +2011,18 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>  #define	IPV4_FLOW	0x10	/* hash only */
>  #define	IPV6_FLOW	0x11	/* hash only */
>  #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
> +#define GTPU_V4_FLOW 0x13	/* hash only */
> +#define GTPU_V6_FLOW 0x14	/* hash only */
> +#define GTPC_V4_FLOW 0x15	/* hash only */
> +#define GTPC_V6_FLOW 0x16	/* hash only */
> +#define GTPC_TEID_V4_FLOW 0x17	/* hash only */
> +#define GTPC_TEID_V6_FLOW 0x18	/* hash only */
> +#define GTPU_EH_V4_FLOW 0x19	/* hash only */
> +#define GTPU_EH_V6_FLOW 0x20	/* hash only */

nit: please note that these are hex numbers,
     next value after 0x19 is 0x1a, not 0x20.

> +#define GTPU_UL_V4_FLOW 0x21	/* hash only */
> +#define GTPU_UL_V6_FLOW 0x22	/* hash only */
> +#define GTPU_DL_V4_FLOW 0x23	/* hash only */
> +#define GTPU_DL_V6_FLOW 0x24	/* hash only */
>  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
>  #define	FLOW_EXT	0x80000000
>  #define	FLOW_MAC_EXT	0x40000000

What gives me pause here is the number of flow sub-types we define
for GTP hashing.

My understanding of GTP is limited to what I just read on Wikipedia.

IIUC the GTPC vs GTPU distinction comes down to the UDP port on
which the protocol runs? Are the frames also different?

I'm guessing UL/DL are uplink/downlink but what's EH?

How do GTPU_V4_FLOW, GTPU_EH_V4_FLOW, GTPU_UL_V4_FLOW, and
GTPU_DL_V4_FLOW differ?

Key question is - are there reasonable use cases that you can think of
for enabling GTP hashing for each one of those bits individually or can
we combine some of them?

> @@ -2025,6 +2037,7 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>  #define	RXH_IP_DST	(1 << 5)
>  #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
>  #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
> +#define	RXH_GTP_TEID	(1 << 8) /* teid in case of GTP */
>  #define	RXH_DISCARD	(1 << 31)
