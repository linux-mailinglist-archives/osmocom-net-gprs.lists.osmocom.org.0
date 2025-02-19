Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id B03C9A43490
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 25 Feb 2025 06:36:00 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 42F551F3B29;
	Tue, 25 Feb 2025 05:36:00 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZh_dkA3NMYM; Tue, 25 Feb 2025 05:35:59 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 1613E1F3B19;
	Tue, 25 Feb 2025 05:35:55 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 0D08938A0058
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:50:57 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E7EA71ED182
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:50:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZaTti7VNvn-W for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 19 Feb 2025 12:50:56 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by mail.osmocom.org (Postfix) with ESMTPS id 556E41ED17D
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 12:50:55 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2211cd4463cso68120895ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 19 Feb 2025 04:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739969454; x=1740574254; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wOEjIz3jfJx7EGKo7QwRt3VtLNoT+pQ4mVUjPRekXyI=;
        b=LxqWNbnPMT6rq88btKvaG1TQGbcZCKjQau8mNR/kVER9Etz/hG4xgJyzby8dOoCPKx
         +gcRuCGM66r3yLeUOl+G5PnQSPSqZh+mYiaAI+zJ/5V26f4jJNikgv4VI5O84nTR/adn
         u6W2Guh9ShL7R6HJHUzBU9uat4cSP7l3/pMNcYV9cVP7G4WfuD8laUL4X5wMnisMtPW1
         2GBdCVZuMBqt1Q6doz6QikZnP79SpqVbrb8DgCEDcfxTA2dFu8eXGoYQ5fUOuJuLBZKQ
         Ziwslab34stFyLvwBim5TB2KwVXGPLiZcaSRda5Mx17pLWjhdQHt2f85kEPSdfFHmdFU
         E3QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969454; x=1740574254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wOEjIz3jfJx7EGKo7QwRt3VtLNoT+pQ4mVUjPRekXyI=;
        b=TOpbd9ffkaax+FVr5dT1IEAECybQvRuP3SpalO2Z2F4AobIKFrYEuMogBCoKj5MnLw
         rmBUCE36MBPQSxgoK686Wbw8364Fup+nyCppLj/G19nB37sbZ8sGGipYawf6HebrvbE0
         naTus4FMi9yjU5OZIoW6S8BR5vWgn0J85drilmW3BLruymApRCXeOmEb8trKgorRSJpj
         dAnvCL0/tcalILRQp4HKiGYOrKN+eobsMzkTxFLOCcfvwmAjmOa7kXqn4ibf9KkBijFs
         Glttp2BR0VwWwmTQn8vTz+mW9lV4tvR437uHNGMslyHSsvEcuiNPgTomgY4eJHac5ph4
         WAOw==
X-Forwarded-Encrypted: i=1; AJvYcCX+RrWpG/eDXHgwqyva6CjE+d6ZOw+hHYx7ubP3YHO6LJuzULeneJA+XKCZfu8bTMuIo/9w5Z22GlHgoXYxVntU@lists.osmocom.org
X-Gm-Message-State: AOJu0YwGCjddlRuoJz7Ex3jnjZmzuqteik1zpI+fOukyvTDy/XJyKTpm
	a8J9x8LA7VFIeNCUk/X/fdnMDT6PT+y8j15E4CFm5bryU/pO83xg
X-Gm-Gg: ASbGncsH6Cr94+e9FJBMvWLS8BzYS1LkFh7S7maKVZUZR+gRUfM5a0kQy8cYKk3y8HZ
	ujRXHjHcBqzyrtYBzVqvB2F6FFTqDwquoaU5WAHJVEmmTWhUh/vZ3OOqLg2ib9LjLbTEy4MayLC
	LblmcN+sUGOVma9vybTh3+wMjBi4zgFbclTRJJEjMvR6BQrJWh3Ju9HeZqzEGX6XlbD47Y4yQlv
	RdV5pTlQTgw/y3ufOlcgWtv6bg+gZsI1w4F78zuiV9Z8WdfdjSEtBfEcmOBntoIo9XkUlXuoAvD
	Q1MgQw==
X-Google-Smtp-Source: AGHT+IGTzmUs09YpyFPrUkefpGaoWuBh2+9iqLpiW9iEBwyuEmzG/kObjhneqUPTdxqOS7kfr/mohA==
X-Received: by 2002:a17:902:d58b:b0:216:2426:767f with SMTP id d9443c01a7336-221040cec77mr301871725ad.49.1739969453951;
        Wed, 19 Feb 2025 04:50:53 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536436fsm103427175ad.64.2025.02.19.04.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:50:53 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v10 00/13] net: Improve netns handling in rtnetlink
Date: Wed, 19 Feb 2025 20:50:26 +0800
Message-ID: <20250219125039.18024-1-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CVIBIODQ6W5Q5ZMEL7QYSV2BM6RYY4PW
X-Message-ID-Hash: CVIBIODQ6W5Q5ZMEL7QYSV2BM6RYY4PW
X-Mailman-Approved-At: Tue, 25 Feb 2025 05:35:51 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/CVIBIODQ6W5Q5ZMEL7QYSV2BM6RYY4PW/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

This patch series includes some netns-related improvements and fixes for
rtnetlink, to make link creation more intuitive:

 1) Creating link in another net namespace doesn't conflict with link
    names in current one.
 2) Refector rtnetlink link creation. Create link in target namespace
    directly.

So that

  # ip link add netns ns1 link-netns ns2 tun0 type gre ...

will create tun0 in ns1, rather than create it in ns2 and move to ns1.
And don't conflict with another interface named "tun0" in current netns.

Patch 01 avoids link name conflict in different netns.

To achieve 2), there're mainly 3 steps:

 - Patch 02 packs newlink() parameters into a struct, including
   the original "src_net" along with more netns context. No semantic
   changes are introduced.
 - Patch 03 ~ 09 converts device drivers to use the explicit netns
   extracted from params.
 - Patch 10 ~ 11 removes the old netns parameter, and converts
   rtnetlink to create device in target netns directly.

Patch 12 ~ 13 adds some tests for link name and link netns.

---

BTW please note there're some issues found in current code:

- In amt_newlink() drivers/net/amt.c:

    amt->net =3D net;
    ...
    amt->stream_dev =3D dev_get_by_index(net, ...

  Uses net, but amt_lookup_upper_dev() only searches in dev_net.
  So the AMT device may not be properly deleted if it's in a different
  netns from lower dev.

- In lowpan_newlink() in net/ieee802154/6lowpan/core.c:

    wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));

  Looks for IFLA_LINK in dev_net, but in theory the ifindex is defined
  in link netns.

And thanks to Kuniyuki for fixing related issues in gtp and pfcp:
https://lore.kernel.org/netdev/20250110014754.33847-1-kuniyu@amazon.com/

---

v10:
 - Move link/peer net helper functions to from patch 02 to 03.
 - Remove redundant tunnel->net assignment for IPv4 tunnels (patch 05).
 - Initialize tunnel->net before calling register_netdevice() for IPv6
   tunnels (patch 07).
 - Coding style fixes.

v9:
 link: https://lore.kernel.org/all/20250210133002.883422-1-shaw.leon@gmai=
l.com/
 - Change the prototype of macvlan_common_newlink().
 - Minor fixes of coding style and local variables.

v8:
 link: https://lore.kernel.org/all/20250113143719.7948-1-shaw.leon@gmail.=
com/
 - Move dev and ext_ack out from param struct.
 - Validate link_net and dev_net are identical for 6lowpan.

v7:
 link: https://lore.kernel.org/all/20250104125732.17335-1-shaw.leon@gmail=
.com/
 - Add selftest kconfig.
 - Remove a duplicated test of ip6gre.

v6:
 link: https://lore.kernel.org/all/20241218130909.2173-1-shaw.leon@gmail.=
com/
 - Split prototype, driver and rtnetlink changes.
 - Add more tests for link netns.
 - Fix IPv6 tunnel net overwriten in ndo_init().
 - Reorder variable declarations.
 - Exclude a ip_tunnel-specific patch.

v5:
 link: https://lore.kernel.org/all/20241209140151.231257-1-shaw.leon@gmai=
l.com/
 - Fix function doc in batman-adv.
 - Include peer_net in rtnl newlink parameters.

v4:
 link: https://lore.kernel.org/all/20241118143244.1773-1-shaw.leon@gmail.=
com/
 - Pack newlink() parameters to a single struct.
 - Use ynl async_msg_queue.empty() in selftest.

v3:
 link: https://lore.kernel.org/all/20241113125715.150201-1-shaw.leon@gmai=
l.com/
 - Drop "netns_atomic" flag and module parameter. Add netns parameter to
   newlink() instead, and convert drivers accordingly.
 - Move python NetNSEnter helper to net selftest lib.

v2:
 link: https://lore.kernel.org/all/20241107133004.7469-1-shaw.leon@gmail.=
com/
 - Check NLM_F_EXCL to ensure only link creation is affected.
 - Add self tests for link name/ifindex conflict and notifications
   in different netns.
 - Changes in dummy driver and ynl in order to add the test case.

v1:
 link: https://lore.kernel.org/all/20241023023146.372653-1-shaw.leon@gmai=
l.com/


Xiao Liang (13):
  rtnetlink: Lookup device in target netns when creating link
  rtnetlink: Pack newlink() params into struct
  net: Use link/peer netns in newlink() of rtnl_link_ops
  ieee802154: 6lowpan: Validate link netns in newlink() of rtnl_link_ops
  net: ip_tunnel: Don't set tunnel->net in ip_tunnel_init()
  net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
  net: ipv6: Init tunnel link-netns before registering dev
  net: ipv6: Use link netns in newlink() of rtnl_link_ops
  net: xfrm: Use link netns in newlink() of rtnl_link_ops
  rtnetlink: Remove "net" from newlink params
  rtnetlink: Create link directly in target net namespace
  selftests: net: Add python context manager for netns entering
  selftests: net: Add test cases for link and peer netns

 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  |   9 +-
 drivers/net/amt.c                             |  11 +-
 drivers/net/bareudp.c                         |   9 +-
 drivers/net/bonding/bond_netlink.c            |   6 +-
 drivers/net/can/dev/netlink.c                 |   4 +-
 drivers/net/can/vxcan.c                       |   7 +-
 .../ethernet/qualcomm/rmnet/rmnet_config.c    |   9 +-
 drivers/net/geneve.c                          |   9 +-
 drivers/net/gtp.c                             |  10 +-
 drivers/net/ipvlan/ipvlan.h                   |   3 +-
 drivers/net/ipvlan/ipvlan_main.c              |   8 +-
 drivers/net/ipvlan/ipvtap.c                   |   6 +-
 drivers/net/macsec.c                          |   9 +-
 drivers/net/macvlan.c                         |  21 +--
 drivers/net/macvtap.c                         |   6 +-
 drivers/net/netkit.c                          |  14 +-
 drivers/net/pfcp.c                            |   9 +-
 drivers/net/ppp/ppp_generic.c                 |   9 +-
 drivers/net/team/team_core.c                  |   6 +-
 drivers/net/veth.c                            |   7 +-
 drivers/net/vrf.c                             |   5 +-
 drivers/net/vxlan/vxlan_core.c                |   9 +-
 drivers/net/wireguard/device.c                |   7 +-
 drivers/net/wireless/virtual/virt_wifi.c      |   8 +-
 drivers/net/wwan/wwan_core.c                  |  16 +-
 include/linux/if_macvlan.h                    |   6 +-
 include/net/ip_tunnels.h                      |   5 +-
 include/net/rtnetlink.h                       |  40 ++++-
 net/8021q/vlan_netlink.c                      |   9 +-
 net/batman-adv/soft-interface.c               |   9 +-
 net/bridge/br_netlink.c                       |   6 +-
 net/caif/chnl_net.c                           |   5 +-
 net/core/rtnetlink.c                          |  34 +++--
 net/hsr/hsr_netlink.c                         |  12 +-
 net/ieee802154/6lowpan/core.c                 |   7 +-
 net/ipv4/ip_gre.c                             |  22 ++-
 net/ipv4/ip_tunnel.c                          |   7 +-
 net/ipv4/ip_vti.c                             |   9 +-
 net/ipv4/ipip.c                               |   9 +-
 net/ipv6/ip6_gre.c                            |  26 ++--
 net/ipv6/ip6_tunnel.c                         |  18 ++-
 net/ipv6/ip6_vti.c                            |  14 +-
 net/ipv6/sit.c                                |  20 ++-
 net/xfrm/xfrm_interface_core.c                |  15 +-
 tools/testing/selftests/net/Makefile          |   1 +
 tools/testing/selftests/net/config            |   5 +
 .../testing/selftests/net/lib/py/__init__.py  |   2 +-
 tools/testing/selftests/net/lib/py/netns.py   |  18 +++
 tools/testing/selftests/net/link_netns.py     | 141 ++++++++++++++++++
 tools/testing/selftests/net/netns-name.sh     |  10 ++
 50 files changed, 486 insertions(+), 181 deletions(-)
 create mode 100755 tools/testing/selftests/net/link_netns.py

--=20
2.48.1

