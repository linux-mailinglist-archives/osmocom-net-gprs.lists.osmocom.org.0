Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BD59BA54E
	for <lists+osmocom-net-gprs@lfdr.de>; Sun,  3 Nov 2024 12:47:37 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1DC4716AA9D;
	Sun,  3 Nov 2024 11:47:37 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ow-rq9-PW4f7; Sun,  3 Nov 2024 11:47:36 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id BAD0D16AA93;
	Sun,  3 Nov 2024 11:47:33 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D6C3738A1013
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 23 Oct 2024 09:27:02 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B55DC15F8D4
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 23 Oct 2024 09:27:02 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wDQ_v8Oh0diq for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 23 Oct 2024 09:27:02 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id DF81B15F8CE
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 23 Oct 2024 09:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 2F2E7C801F6;
	Wed, 23 Oct 2024 09:27:01 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdh_NtUTNUYG; Wed, 23 Oct 2024 09:27:00 +0000 (UTC)
Message-ID: <93352553-9015-46fa-8797-52cb94ce14df@sysmocom.de>
Date: Wed, 23 Oct 2024 11:26:58 +0200
MIME-Version: 1.0
Subject: Re: [PATCH net] gtp: allow -1 to be specified as file description
 from userspace
To: Pablo Neira Ayuso <pablo@netfilter.org>, netdev@vger.kernel.org
References: <20241022144825.66740-1-pablo@netfilter.org>
Content-Language: en-US
From: Oliver Smith <osmith@sysmocom.de>
Autocrypt: addr=osmith@sysmocom.de; keydata=
 xjMEXqaMvBYJKwYBBAHaRw8BAQdAKlLfpb/UKvlUjGFwzzkDBT1fXdlqg+MaEG2+hTXDYUrN
 IU9saXZlciBTbWl0aCA8b3NtaXRoQHN5c21vY29tLmRlPsKWBBMWCAA+AhsDBQsJCAcCBhUK
 CQgLAgQWAgMBAh4BAheAFiEECfuANpg5IsWyQFcH6+DRJFm2BMUFAmDG9VIFCRTsa5YACgkQ
 6+DRJFm2BMUJ0wD+L0gpHABtBfkNQ7i0/qtMs5thoqt2yldxao6q31BBLAAA/iXUDIEYjQ0L
 wsZRtiSdXNjbBfdT9boLdh4CY+TKwuYPzjgEXqaMvBIKKwYBBAGXVQEFAQEHQPGmG2/uQrDy
 xalQoBnT1zdIbeg/xWLjl1AnOYGITnpEAwEIB8J4BBgWCAAgFiEECfuANpg5IsWyQFcH6+DR
 JFm2BMUFAl6mjLwCGwwACgkQ6+DRJFm2BMXSRgD/f8twzpyQfpE+viVjtlOxsq0HCavXZqbW
 VvIuvbyfSWQBAJhEIFF/fxmksu9r3FzixNQMOLc3EJgSwqvEYA28Db8O
In-Reply-To: <20241022144825.66740-1-pablo@netfilter.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: osmith@sysmocom.de
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: AYDR73EDJKRGVY3GV7CHUZQDG3E4LIUJ
X-Message-ID-Hash: AYDR73EDJKRGVY3GV7CHUZQDG3E4LIUJ
X-Mailman-Approved-At: Sun, 03 Nov 2024 11:47:31 +0000
CC: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, fw@strlen.de, pespin@sysmocom.de, laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/AYDR73EDJKRGVY3GV7CHUZQDG3E4LIUJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hello Pablo,

I've reproduced the regression:

> 20241023090545167 DGGSN NOTICE Initialized GTP kernel mode (genl ID is 32) (gtp-kernel.c:80)
> [    0.721705] gtp: enable gtp on -1, 4
> [    0.722017] gtp: gtp socket fd=-1 not found
> 20241023090545169 DTUN ERROR cannot create GTP tunnel device: Bad file descriptor (tun.c:213)

and verified that it is fixed with your patch. Thanks!

Best regards,
Oliver

On 22.10.24 16:48, Pablo Neira Ayuso wrote:
> Existing user space applications maintained by the Osmocom project are
> breaking since a recent fix that addresses incorrect error checking.
> 
> Restore operation for user space programs that specify -1 as file
> descriptor to skip GTPv0 or GTPv1 only sockets.
> 
> Fixes: defd8b3c37b0 ("gtp: fix a potential NULL pointer dereference")
> Reported-by: Pau Espin Pedrol <pespin@sysmocom.de>

Tested-by: Oliver Smith <osmith@sysmocom.de>

> Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
> ---
>   drivers/net/gtp.c | 22 +++++++++++++---------
>   1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index a60bfb1abb7f..70f981887518 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -1702,20 +1702,24 @@ static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
>   		return -EINVAL;
>   
>   	if (data[IFLA_GTP_FD0]) {
> -		u32 fd0 = nla_get_u32(data[IFLA_GTP_FD0]);
> +		int fd0 = nla_get_u32(data[IFLA_GTP_FD0]);
>   
> -		sk0 = gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
> -		if (IS_ERR(sk0))
> -			return PTR_ERR(sk0);
> +		if (fd0 >= 0) {
> +			sk0 = gtp_encap_enable_socket(fd0, UDP_ENCAP_GTP0, gtp);
> +			if (IS_ERR(sk0))
> +				return PTR_ERR(sk0);
> +		}
>   	}
>   
>   	if (data[IFLA_GTP_FD1]) {
> -		u32 fd1 = nla_get_u32(data[IFLA_GTP_FD1]);
> +		int fd1 = nla_get_u32(data[IFLA_GTP_FD1]);
>   
> -		sk1u = gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
> -		if (IS_ERR(sk1u)) {
> -			gtp_encap_disable_sock(sk0);
> -			return PTR_ERR(sk1u);
> +		if (fd1 >= 0) {
> +			sk1u = gtp_encap_enable_socket(fd1, UDP_ENCAP_GTP1U, gtp);
> +			if (IS_ERR(sk1u)) {
> +				gtp_encap_disable_sock(sk0);
> +				return PTR_ERR(sk1u);
> +			}
>   		}
>   	}
>   

-- 
- Oliver Smith <osmith@sysmocom.de>            https://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Siemensstr. 26a
* 10551 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte

