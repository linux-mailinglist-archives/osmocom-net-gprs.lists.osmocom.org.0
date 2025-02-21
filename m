Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D145A434AA
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:48 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 78DE61F4042;
	Tue, 25 Feb 2025 05:36:48 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BbrA9GiyAeGS; Tue, 25 Feb 2025 05:36:48 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id CBA3D1F3FDA;
	Tue, 25 Feb 2025 05:36:44 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 9931D38A10C6
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 23:47:56 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7494F1F1E8C
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 23:47:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GfTRagNZibe9 for <osmocom-net-gprs@lists.osmocom.org>;
 Fri, 21 Feb 2025 23:47:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by mail.osmocom.org (Postfix) with ESMTPS id 984A51F1E87
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 21 Feb 2025 23:47:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E9415C2720;
	Fri, 21 Feb 2025 23:47:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 305A7C4CED6;
	Fri, 21 Feb 2025 23:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740181673;
	bh=YpqZyI6XQkE+I/cz0HVGo821pG3xUv+i2G8tH9sw4Ck=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KM/ZfJRW4Ao62YReF/CByxvaytS6eCg7A62ykfem1F7ZlcxARc/ttMS+Eo7QSiRoC
	 L/Yjcd2caMn4ObZZCnCGyEuo9xgC6WZot/rpFAy5wigXVK3ut+VHILxglTeHRYA9kk
	 k60pF94LnYZ/h3hrEAauaHfon//iQu4AioNB3aq2W2kbk7oEuocz2/ygkH/nvqljBK
	 2J+2++rVJPifxTn81/PKTdrWtLY/Om1L+itbDoBh6z+E8Cwe1RdbvdUeamo4+pUpWj
	 /c4yBKxGb0jQHXag71qQxP+sWONgV0p8K4pbQVmHScKyB2/E2s11Z7gaJWVk4E/s5B
	 mJf6Xz30VzUiw==
Date: Fri, 21 Feb 2025 15:47:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Xiao Liang <shaw.leon@gmail.com>
Subject: Re: [PATCH net-next v10 00/13] net: Improve netns handling in
 rtnetlink
Message-ID: <20250221154751.54318ae5@kernel.org>
In-Reply-To: <20250219125039.18024-1-shaw.leon@gmail.com>
References: <20250219125039.18024-1-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 6SIBOIAIUUXIKZUAKYFWA2RAZ5W5ORRK
X-Message-ID-Hash: 6SIBOIAIUUXIKZUAKYFWA2RAZ5W5ORRK
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:36:42 +0000
CC: netdev@vger.kernel.org, linux-kselftest@vger.kernel.org, Kuniyuki Iwashima <kuniyu@amazon.com>, "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/6SIBOIAIUUXIKZUAKYFWA2RAZ5W5ORRK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Wed, 19 Feb 2025 20:50:26 +0800 Xiao Liang wrote:
> Patch 01 avoids link name conflict in different netns.
> 
> To achieve 2), there're mainly 3 steps:
> 
>  - Patch 02 packs newlink() parameters into a struct, including
>    the original "src_net" along with more netns context. No semantic
>    changes are introduced.
>  - Patch 03 ~ 09 converts device drivers to use the explicit netns
>    extracted from params.
>  - Patch 10 ~ 11 removes the old netns parameter, and converts
>    rtnetlink to create device in target netns directly.
> 
> Patch 12 ~ 13 adds some tests for link name and link netns.

Nice work, thank you!
