Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id F3253AD8600
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 13 Jun 2025 10:50:45 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CB6E2268CA4;
	Fri, 13 Jun 2025 08:50:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x3Zj8VcLG-GD; Fri, 13 Jun 2025 08:50:45 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4AF8A268C85;
	Fri, 13 Jun 2025 08:50:44 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 11C7C38A003C
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 11:21:11 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E36CD268392
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 11:21:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RbJy7fclx7TN for <osmocom-net-gprs@lists.osmocom.org>;
 Thu, 12 Jun 2025 11:21:10 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by mail.osmocom.org (Postfix) with ESMTPS id 3BED726838F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 11:21:09 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ade4679fba7so161941466b.2
        for <osmocom-net-gprs@lists.osmocom.org>; Thu, 12 Jun 2025 04:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openvpn.net; s=google; t=1749727269; x=1750332069; darn=lists.osmocom.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=izHnPXiYoTBneokvv1hu9m+7dLFok2Jhf1Nqy0rykvY=;
        b=R5rQl3AehW+L5S/ejeDUfsLRA+J80W0OIhQl4ZlSpHQFPbPdRfpzfWoygn6WEoaekW
         7JFbIwA75Pf8M52WMihIa8hggDOaXHzuU67n3waFh2PWytNs9DTE32XOF33lgVSdqR43
         PogcF/ihKchLZeg6WkOdq9LSlP4hyn7FU2DB7dhC6t9nyDB1eafhCVENkKosQUztoTB8
         vmRZmbKBJXTOpgfeSWm+AFY3PE/LFeL8Qe3bE+0DQo7FjPnUDqzq6t87w/5G6i/2DwHO
         tepr3Y5CAaqtKynYnbk+x89cJhLgQm5okVoWoLNzhmADKlVr/q28QAApEvdy4WcRON6O
         1AuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749727269; x=1750332069;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=izHnPXiYoTBneokvv1hu9m+7dLFok2Jhf1Nqy0rykvY=;
        b=fzvw3W1MTllfD1kHtkdbOZcp7ITqDg2ruvcIl4+7B+q+c/GleK26By8HZjrdThmZce
         MdK49ZbajiL+Ed8rs/CMEsNiIOT3lzB+NgVXfhuSiuKP7HwL2yFp4gfKfBWeRykruxya
         aDDrzsyze/2uwuntRHOcwW1mpzagknuX+f+rs/HiRfkARNhceh5x++lyu7WzlMaQSGOE
         iPCqPZbDCajYB/yWHTJB+Dd9120sXQEdxpXAEZ5I8XMC0AY3J+UokS8PyOJoknrzxmeF
         +ZaBsYWJwkIHOMWyXXZP9MIHnIxOWP3lSKzQblRzarKpODcmUV7gncSeUIGzh+g9+Njg
         j2kw==
X-Forwarded-Encrypted: i=1; AJvYcCUV6lQC7s/wINm5lCARtZKL8qZ9xLodmFFkIwAKmf+xXS0rmi8z9l9YAgQN/lF+62hvWhqUSG9+BS9Y5HZDxcL7@lists.osmocom.org
X-Gm-Message-State: AOJu0YzQ0JlQKDUuEkS2c+xiOyds1c6hlAapANrNdtLaKp576H/9ux2F
	cPTo0fkT2+c6t+GQD4ixLjZgAgc4TDOPY7G80/tDzun6qzDYtB1TvRxTZ2oi1FzRhwyf42HZ+u5
	/m3YDEMnQqVtU6SsH05EpiZmXJrRT9dGISjGmVee4TGtT1Lfk0mn5MEXocVgAn5arJbI=
X-Gm-Gg: ASbGnctqJlmQ7ej+vPPs7xMJS0epst5ml1dq71Pxp35x1cxveV859178wVj3ECFabnU
	TNgOMTaKNasYRUbxF2SQr7FOqGVakeuVesyap1dUBTh0uHhlUWar6A20M00CP54hDBg7n94t7dE
	k9skLtbCJmco2bWDXh6pX84d3DaCQOrNcxUFCLCOxUqwRxvcnRmooVRos5jjN5u1cOuTvbrWazq
	rysJ+vHPpB+EP5MYD0ZH8XEv1ku31yIAxMHGuNNOfn8umNSO8E7TlHlUaDdn2hJLe9iQ4EDCneS
	hqkKgIxtcngEMA1307iTQz7arsvJSUmm+HVBP0uabCMxDPCZnGW5mfrkWx3ANyG5osHrPnzmKAz
	IKpNf0B0tTFl91X5kygTK1g==
X-Google-Smtp-Source: AGHT+IG32Jgp4TMA7lCBexDTcDiVY2kbdEbExXQqe7eQtCA22E2tcCY1TdJFi3Ti5SLLEYiXvj7ozw==
X-Received: by 2002:a17:907:7f03:b0:ad8:9257:573a with SMTP id a640c23a62f3a-ade893dfcf7mr630132366b.5.1749727269216;
        Thu, 12 Jun 2025 04:21:09 -0700 (PDT)
Received: from ?IPV6:2001:67c:2fbc:1:66f3:a0b:4137:82f3? ([2001:67c:2fbc:1:66f3:a0b:4137:82f3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adeadf204ffsm118284366b.171.2025.06.12.04.21.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 04:21:08 -0700 (PDT)
Message-ID: <faa9f6a8-daea-40f7-82dd-fb1133010629@openvpn.net>
Date: Thu, 12 Jun 2025 13:21:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 01/14] net: ipv4: Add a flags argument to
 iptunnel_xmit(), udp_tunnel_xmit_skb()
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, David Ahern <dsahern@gmail.com>,
 netdev@vger.kernel.org
References: <cover.1749499963.git.petrm@nvidia.com>
 <c77a0c8e4ada63a0a69d7011fb901703ebf1f09a.1749499963.git.petrm@nvidia.com>
Content-Language: en-US
From: Antonio Quartulli <antonio@openvpn.net>
Autocrypt: addr=antonio@openvpn.net; keydata=
 xsFNBFN3k+ABEADEvXdJZVUfqxGOKByfkExNpKzFzAwHYjhOb3MTlzSLlVKLRIHxe/Etj13I
 X6tcViNYiIiJxmeHAH7FUj/yAISW56lynAEt7OdkGpZf3HGXRQz1Xi0PWuUINa4QW+ipaKmv
 voR4b1wZQ9cZ787KLmu10VF1duHW/IewDx9GUQIzChqQVI3lSHRCo90Z/NQ75ZL/rbR3UHB+
 EWLIh8Lz1cdE47VaVyX6f0yr3Itx0ZuyIWPrctlHwV5bUdA4JnyY3QvJh4yJPYh9I69HZWsj
 qplU2WxEfM6+OlaM9iKOUhVxjpkFXheD57EGdVkuG0YhizVF4p9MKGB42D70pfS3EiYdTaKf
 WzbiFUunOHLJ4hyAi75d4ugxU02DsUjw/0t0kfHtj2V0x1169Hp/NTW1jkqgPWtIsjn+dkde
 dG9mXk5QrvbpihgpcmNbtloSdkRZ02lsxkUzpG8U64X8WK6LuRz7BZ7p5t/WzaR/hCdOiQCG
 RNup2UTNDrZpWxpwadXMnJsyJcVX4BAKaWGsm5IQyXXBUdguHVa7To/JIBlhjlKackKWoBnI
 Ojl8VQhVLcD551iJ61w4aQH6bHxdTjz65MT2OrW/mFZbtIwWSeif6axrYpVCyERIDEKrX5AV
 rOmGEaUGsCd16FueoaM2Hf96BH3SI3/q2w+g058RedLOZVZtyQARAQABzSdBbnRvbmlvIFF1
 YXJ0dWxsaSA8YW50b25pb0BvcGVudnBuLm5ldD7Cwa0EEwEIAFcCGwMFCwkIBwMFFQoJCAsF
 FgIDAQACHgECF4AFCRWQ2TIWIQTKvaEoIBfCZyGYhcdI8My2j1nRTAUCYRUquBgYaGtwczov
 L2tleXMub3BlbnBncC5vcmcACgkQSPDMto9Z0UzmcxAAjzLeD47We0R4A/14oDKlZxXO0mKL
 fCzaWFsdhQCDhZkgxoHkYRektK2cEOh4Vd+CnfDcPs/iZ1i2+Zl+va79s4fcUhRReuwi7VCg
 7nHiYSNC7qZo84Wzjz3RoGYyJ6MKLRn3zqAxUtFECoS074/JX1sLG0Z3hi19MBmJ/teM84GY
 IbSvRwZu+VkJgIvZonFZjbwF7XyoSIiEJWQC+AKvwtEBNoVOMuH0tZsgqcgMqGs6lLn66RK4
 tMV1aNeX6R+dGSiu11i+9pm7sw8tAmsfu3kQpyk4SB3AJ0jtXrQRESFa1+iemJtt+RaSE5LK
 5sGLAO+oN+DlE0mRNDQowS6q/GBhPCjjbTMcMfRoWPCpHZZfKpv5iefXnZ/xVj7ugYdV2T7z
 r6VL2BRPNvvkgbLZgIlkWyfxRnGh683h4vTqRqTb1wka5pmyBNAv7vCgqrwfvaV1m7J9O4B5
 PuRjYRelmCygQBTXFeJAVJvuh2efFknMh41R01PP2ulXAQuVYEztq3t3Ycw6+HeqjbeqTF8C
 DboqYeIM18HgkOqRrn3VuwnKFNdzyBmgYh/zZx/dJ3yWQi/kfhR6TawAwz6GdbQGiu5fsx5t
 u14WBxmzNf9tXK7hnXcI24Z1z6e5jG6U2Swtmi8sGSh6fqV4dBKmhobEoS7Xl496JN2NKuaX
 jeWsF2rOwE0EZmhJFwEIAOAWiIj1EYkbikxXSSP3AazkI+Y/ICzdFDmiXXrYnf/mYEzORB0K
 vqNRQOdLyjbLKPQwSjYEt1uqwKaD1LRLbA7FpktAShDK4yIljkxhvDI8semfQ5WE/1Jj/I/Q
 U+4VXhkd6UvvpyQt/LiWvyAfvExPEvhiMnsg2zkQbBQ/M4Ns7ck0zQ4BTAVzW/GqoT2z03mg
 p1FhxkfzHMKPQ6ImEpuY5cZTQwrBUgWif6HzCtQJL7Ipa2fFnDaIHQeiJG0RXl/g9x3YlwWG
 sxOFrpWWsh6GI0Mo2W2nkinEIts48+wNDBCMcMlOaMYpyAI7fT5ziDuG2CBA060ZT7qqdl6b
 aXUAEQEAAcLBfAQYAQgAJhYhBMq9oSggF8JnIZiFx0jwzLaPWdFMBQJmaEkXAhsMBQkB4TOA
 AAoJEEjwzLaPWdFMbRUP/0t5FrjF8KY6uCU4Tx029NYKDN9zJr0CVwSGsNfC8WWonKs66QE1
 pd6xBVoBzu5InFRWa2ed6d6vBw2BaJHC0aMg3iwwBbEgPn4Jx89QfczFMJvFm+MNc2DLDrqN
 zaQSqBzQ5SvUjxh8lQ+iqAhi0MPv4e2YbXD0ROyO+ITRgQVZBVXoPm4IJGYWgmVmxP34oUQh
 BM7ipfCVbcOFU5OPhd9/jn1BCHzir+/i0fY2Z/aexMYHwXUMha/itvsBHGcIEYKk7PL9FEfs
 wlbq+vWoCtUTUc0AjDgB76AcUVxxJtxxpyvES9aFxWD7Qc+dnGJnfxVJI0zbN2b37fX138Bf
 27NuKpokv0sBnNEtsD7TY4gBz4QhvRNSBli0E5bGUbkM31rh4Iz21Qk0cCwR9D/vwQVsgPvG
 ioRqhvFWtLsEt/xKolOmUWA/jP0p8wnQ+3jY6a/DJ+o5LnVFzFqbK3fSojKbfr3bY33iZTSj
 DX9A4BcohRyqhnpNYyHL36gaOnNnOc+uXFCdoQkI531hXjzIsVs2OlfRufuDrWwAv+em2uOT
 BnRX9nFx9kPSO42TkFK55Dr5EDeBO3v33recscuB8VVN5xvh0GV57Qre+9sJrEq7Es9W609a
 +M0yRJWJEjFnMa/jsGZ+QyLD5QTL6SGuZ9gKI3W1SfFZOzV7hHsxPTZ6
Organization: OpenVPN Inc.
In-Reply-To: <c77a0c8e4ada63a0a69d7011fb901703ebf1f09a.1749499963.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MailFrom: antonio.quartulli@openvpn.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GX5SBVEUVLAPJXZKTXDD3GHQG2HCWOUJ
X-Message-ID-Hash: GX5SBVEUVLAPJXZKTXDD3GHQG2HCWOUJ
X-Mailman-Approved-At: Fri, 13 Jun 2025 08:50:36 +0000
CC: Simon Horman <horms@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, mlxsw@nvidia.com, Pablo Neira Ayuso <pablo@netfilter.org>, osmocom-net-gprs@lists.osmocom.org, Andrew Lunn <andrew+netdev@lunn.ch>, Taehee Yoo <ap420073@gmail.com>, "Jason A. Donenfeld" <Jason@zx2c4.com>, wireguard@lists.zx2c4.com, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, linux-sctp@vger.kernel.org, Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GX5SBVEUVLAPJXZKTXDD3GHQG2HCWOUJ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On 09/06/2025 22:50, Petr Machata wrote:
> iptunnel_xmit() erases the contents of the SKB control block. In order to
> be able to set particular IPCB flags on the SKB, add a corresponding
> parameter, and propagate it to udp_tunnel_xmit_skb() as well.
> 
> In one of the following patches, VXLAN driver will use this facility to
> mark packets as subject to IP multicast routing.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
> CC: Pablo Neira Ayuso <pablo@netfilter.org>
> CC: osmocom-net-gprs@lists.osmocom.org
> CC: Andrew Lunn <andrew+netdev@lunn.ch>
> CC: Taehee Yoo <ap420073@gmail.com>
> CC: Antonio Quartulli <antonio@openvpn.net>
> CC: "Jason A. Donenfeld" <Jason@zx2c4.com>
> CC: wireguard@lists.zx2c4.com
> CC: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
> CC: linux-sctp@vger.kernel.org
> CC: Jon Maloy <jmaloy@redhat.com>
> CC: tipc-discussion@lists.sourceforge.net

Acked-by: Antonio Quartulli <antonio@openvpn.net>


-- 
Antonio Quartulli
OpenVPN Inc.

