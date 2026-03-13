Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKnyEpMLzGnGNgYAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:47 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E55336F986
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:47 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id EC9D44C036E;
	Tue, 31 Mar 2026 17:59:46 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PgbEhwrKtsi5; Tue, 31 Mar 2026 17:59:46 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DED494C0314;
	Tue, 31 Mar 2026 17:59:42 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 495F738A0315
	for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 13 Mar 2026 10:54:43 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 249EA4864F7
	for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 13 Mar 2026 10:54:43 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v2cuV5pnkmrA for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 13 Mar 2026 10:54:42 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
	by mail.osmocom.org (Postfix) with ESMTPS id 702844864F4
	for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 13 Mar 2026 10:54:42 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-483487335c2so18279965e9.2
        for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 13 Mar 2026 03:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openvpn.net; s=google; t=1773399281; x=1774004081;
 darn=lists.osmocom.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Xz+lAQTHg1ZrCDfzAJVJz3UjVKFh4n4P3F1q/hGkrl0=;
        b=PQEfQKskLmEUI6mUr9KvgL0Wolqq6qP0DFr4hRkzkPS4kQdO8ORvFDvIErWDsjMoci
         Tv6UW7Vn7Y7RuX0KUYlGwzxiD61thAOqKFqr5w1Rh1WbjR6sXNwFPLvxvbAxTSNDVBLf
         y/ISnlMcoKepK4aV6vUUw9nCWLlaMPMhb2A8KtuuVtUTKUoXTAE8K2+EaehEXBLt0M4u
         mxFGwnX46h8RP/UWq6rrFJg0uqJ033MlDv6gFZoI2IR9ORWO4vSvWEb+mkmWttWXcNKu
         nX7xzlUhTcwRqMTbxhSBaby1CoBMZl0DOXc0CC50/F8tuh3SNB/HckyVKav1Fr0ndalD
         ixpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773399281; x=1774004081;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xz+lAQTHg1ZrCDfzAJVJz3UjVKFh4n4P3F1q/hGkrl0=;
        b=QB3DBIKwFQesgFzOrJVi/y0dL/RDB1gmWaKg16Z3wxk+oDyDm+QQ3IqvfHVTkmjemf
         4upbsTMJkKPRlcADAH01YZEGn/lqqshPzugCieJ1iPZ/jc9xyJQPBYHp8+3jWglEuvbB
         macNtyBJc/UBhvFSmohd4+e7InRTcuEaRqWc4vZrt7EjIFbzawuVO4DzXx8Bsl8TJf1g
         6alrhFRlUHyNSTTqnypGcQChYHslat0u1CPTKCiKaCEaRYWi8/X4sYdI3Y/7FB7Ci5jQ
         kKbF6KqJoM0sJX9IRnP4cpnSw607IJil3KUgtJq3yYhfJ6D7Gnk+f8/1LTweQChGBEiN
         pmEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIcOdCxDkdH5DlSsn0KCc8nrQiMk1+jM+PWjUneGOY1/ZtqtzjCsvOM82Oxy12KhHlTmRPuYNt6ND8pFfC2XsW@lists.osmocom.org
X-Gm-Message-State: AOJu0YzA9+nCRChGXlfq1LMlNCod+A9pPnm6piAy1EvosCVDfHhexANw
	JVGw/fuYoIGuKReFLy223gin9SSxOyWIlEpoaFMDiIKfk1iKhd/QJl5aCa9FQC0E2BPhBYbr899
	brOnnTPT/YCMGqpb19bXwPkpPk3Qc7+q7uIppd9/x5629sMAhMbWDSIZFc4AAhro+1J0=
X-Gm-Gg: ATEYQzxgLpf8s3JeGQldF4kUQPdheyCpSL4awAz6IDHRRB5dw0mGIvenoWU6HxFDZyY
	D4p5bvPpZ+sAe6I7A8R8lvycEP8/YlQVeyYO3rNEB7mk/GqMvzNuf1l9ia3OdYG9lzfrQrxEGGX
	MsscOd+/yuhG3JY4ZaFZBtoIDmLwvLq6+hsziZNp5xmotjASSdmxVjiDG3j/j+6h12FcNcxZyOJ
	4jXGVKI/zjA5r1/mKQZVrm1YmGjL2nFLwL7Ltd0fyDKQT6+/fYUhM1JkSJTzTtVJcVCYUKO9biw
	vkJ0RrbbT+IIvkkCgXVSKe9Do2QAauAgA2MHpX/DExhHSY90MP5NGD44hDz34ja7FfuQsdKFiUk
	0vxehmXYxA3bDJuAdZqPP3zDf0VN/Rsy2Zd/B64KNEAkBeZaTRKElf6mcK8eJLLCHiUHoq7Jp5W
	UP4tVQRPSmf/BBGFwr41/3WeWAvxNTyT2a53ZjYzFp+v4ivSgxePYCDTrWcX5Dyw==
X-Received: by 2002:a05:600c:4e08:b0:485:3eba:ab96 with SMTP id
 5b1f17b1804b1-485566ca967mr41162595e9.3.1773399281346;
        Fri, 13 Mar 2026 03:54:41 -0700 (PDT)
Received: from ?IPV6:2001:67c:2fbc:1:5172:7646:5893:2ac6?
 ([2001:67c:2fbc:1:5172:7646:5893:2ac6])
        by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-439fe1b22e7sm16933971f8f.16.2026.03.13.03.54.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 03:54:40 -0700 (PDT)
Message-ID: <bb8b3433-f8be-4f0a-903a-1c179552658b@openvpn.net>
Date: Fri, 13 Mar 2026 11:54:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10 net-next v2] drivers: net: drop ipv6_stub usage and
 use direct function calls
To: Fernando Fernandez Mancera <fmancera@suse.de>, netdev@vger.kernel.org
References: <20260310153506.5181-1-fmancera@suse.de>
 <20260310153506.5181-6-fmancera@suse.de>
Content-Language: en-US
From: Antonio Quartulli <antonio@openvpn.net>
Autocrypt: addr=antonio@openvpn.net; keydata=
 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
Organization: OpenVPN Inc.
In-Reply-To: <20260310153506.5181-6-fmancera@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: antonio.quartulli@openvpn.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: 426JPT3NJFZO5QNXQZEIFUXZP7PBSI7C
X-Message-ID-Hash: 426JPT3NJFZO5QNXQZEIFUXZP7PBSI7C
X-Mailman-Approved-At: Tue, 31 Mar 2026 17:59:25 +0000
CC: rbm@suse.com, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Mark Bloch <mbloch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Boris Pismenny <borisp@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Simon Horman <horms@kernel.org>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>,
 Sabrina Dubroca <sd@queasysnail.net>, Oliver Neukum <oliver@neukum.org>,
 David Ahern <dsahern@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
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
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/426JPT3NJFZO5QNXQZEIFUXZP7PBSI7C/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[439];
	R_SPF_ALLOW(-0.20)[+a:ganesha.gnumonks.org:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[openvpn.net : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[47];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fmancera@suse.de,m:netdev@vger.kernel.org,m:rbm@suse.com,m:jgg@ziepe.ca,m:leon@kernel.org,m:zyjzyj2000@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:borisp@nvidia.com,m:idosch@nvidia.com,m:petrm@nvidia.com,m:horms@kernel.org,m:ecree.xilinx@gmail.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:sd@queasysnail.net,m:oliver@neukum.org,m:dsahern@kernel.org,m:Jason@zx2c4.com,m:stas.yakovlev@gmail.com,m:razor@blackwall.org,m:parav@nvidia.com,m:edwards@nvidia.com,m:vdumitrescu@nvidia.com,m:kees@kernel.org,m:jianbol@nvidia.com,m:gal@nvidia.com,m:gnault@redhat.com,m:cratiu@nvidia.com,m:cjubran@nvidia.com,m:acassen@corp.free.fr,m:sdf@fomichev.me,m:linux-rdma@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:oss-drivers@corigine.com,m:linux-net-drivers@amd.com,m:osmocom-net-gprs@lists.osmocom.org,m:linux-usb@vger.kernel.org,m:wireguard@l
 ists.zx2c4.com,m:linux-wireless@vger.kernel.org,m:bridge@lists.linux.dev,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,m:stasyakovlev@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER(0.00)[antonio@openvpn.net,osmocom-net-gprs-bounces@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[suse.com,ziepe.ca,kernel.org,gmail.com,nvidia.com,lunn.ch,davemloft.net,google.com,redhat.com,netfilter.org,gnumonks.org,queasysnail.net,neukum.org,zx2c4.com,blackwall.org,corp.free.fr,fomichev.me,vger.kernel.org,corigine.com,amd.com,lists.osmocom.org,lists.zx2c4.com,lists.linux.dev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.osmocom.org:helo,mail.osmocom.org:rdns,openvpn.net:email,openvpn.net:mid];
	ASN(0.00)[asn:12337, ipnet:2001:780::/32, country:DE];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[antonio@openvpn.net,osmocom-net-gprs-bounces@lists.osmocom.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.132];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1E55336F986
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 10/03/2026 16:34, Fernando Fernandez Mancera wrote:
> diff --git a/drivers/net/ovpn/peer.c b/drivers/net/ovpn/peer.c
> index 3716a1d82801..6dd11c71204b 100644
> --- a/drivers/net/ovpn/peer.c
> +++ b/drivers/net/ovpn/peer.c
> @@ -821,8 +821,7 @@ static struct in6_addr ovpn_nexthop_from_rt6(struct ovpn_priv *ovpn,
>   		.daddr = dest,
>   	};
>   
> -	entry = ipv6_stub->ipv6_dst_lookup_flow(dev_net(ovpn->dev), NULL, &fl,
> -						NULL);
> +	entry = ip6_dst_lookup_flow(dev_net(ovpn->dev), NULL, &fl, NULL);
>   	if (IS_ERR(entry)) {
>   		net_dbg_ratelimited("%s: no route to host %pI6c\n",
>   				    netdev_name(ovpn->dev), &dest);
> diff --git a/drivers/net/ovpn/udp.c b/drivers/net/ovpn/udp.c
> index 272b535ecaad..059e896b4a2f 100644
> --- a/drivers/net/ovpn/udp.c
> +++ b/drivers/net/ovpn/udp.c
> @@ -14,7 +14,6 @@
>   #include <net/addrconf.h>
>   #include <net/dst_cache.h>
>   #include <net/route.h>
> -#include <net/ipv6_stubs.h>
>   #include <net/transp_v6.h>
>   #include <net/udp.h>
>   #include <net/udp_tunnel.h>
> @@ -251,7 +250,7 @@ static int ovpn_udp6_output(struct ovpn_peer *peer, struct ovpn_bind *bind,
>   		dst_cache_reset(cache);
>   	}
>   
> -	dst = ipv6_stub->ipv6_dst_lookup_flow(sock_net(sk), sk, &fl, NULL);
> +	dst = ip6_dst_lookup_flow(sock_net(sk), sk, &fl, NULL);
>   	if (IS_ERR(dst)) {
>   		ret = PTR_ERR(dst);
>   		net_dbg_ratelimited("%s: no route to host %pISpc: %d\n",

For ovpn:

Reviewed-by: Antonio Quartulli <antonio@openvpn.net>

Regards,

-- 
Antonio Quartulli
OpenVPN Inc.

