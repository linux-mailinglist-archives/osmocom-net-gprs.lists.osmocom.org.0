Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2099FF142
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:40:19 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1FE8D1B67E6;
	Tue, 31 Dec 2024 18:40:19 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4iK-MY9Jdj5D; Tue, 31 Dec 2024 18:40:18 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id C0E601B6756;
	Tue, 31 Dec 2024 18:40:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 1D45438A79F9
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:28 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 000551ADA01
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:27 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nr2BGJ0_6vIc for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 18 Dec 2024 13:09:27 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by mail.osmocom.org (Postfix) with ESMTPS id 3955A1AD9FC
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 13:09:26 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-725abf74334so5674476b3a.3
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 18 Dec 2024 05:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734527365; x=1735132165; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6llrxywd5dEoVM0OKwihGrkHHqwNftGWmdHiygXfmj8=;
        b=aF8zsxt9lzo98/PCLyAZOeCLt0f+ib32VLHy4sYBPfUioDHo11q61TXMg+PXnapj+F
         l9Vzgr7fI+3QowqRrw5aCB7pLEBpe8e1uyiBxxSTwf5UIi9IKlpfMUgS24DJByZTacA7
         5DJ7fNjSefcytQ4bPTDdCx95IjxOqCgQKDbpXRXWaYLY420uOombcqG0lR2yfVL559wR
         ov9yPgEr0p/J6CVU/0ymtVOenjxoovSRfgOJ85KUBPM+K7aA3k8a5JekJQ+1yy8X4BX/
         kJ3SggUWnkLQ8nHMNXO8Rux7MUI0g3E/RbIHtAJ5A0hX5c5FUEUV595E2B+v3c55e/UP
         C2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734527365; x=1735132165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6llrxywd5dEoVM0OKwihGrkHHqwNftGWmdHiygXfmj8=;
        b=K0XJy+Visvm22QJDZ8Yr9uCocmc0fHX133DapKqT49opcbLff2HUzBpcuUPq8+Nej0
         vwGX6B6mKxPWejnNBOegQCVBIHF4yhwnkJMMI9r8hZ9qqtjityHJKsdt4fz6mwDNKze4
         5CTnD5UlS2Q7kLj5GBH5YlVKDp/hKcokcHAFumTknGHxy/mb60fC6f9PWXeC9SscOwM7
         lXQulCmN/umXvlFTtn2iVTJe2UqISGodjhYaQgWiE+6bdAI2k8wxBRYCN2pdbgWvrst+
         meBuiTTgZex9wOUtEeLWJ/tryL/i+q/iUlIiXa4JI6EnvytiXvXSlhbCvmWKDADI/f5k
         f3gg==
X-Forwarded-Encrypted: i=1; AJvYcCUOIrHJKoJNOIMyrNcKMCVz2WdPMIuj/LhDMPmtG+MN6sSG7WVWGRmC7p1uPaoyg4yMwThvAVyJm0vx2npW8Kqy@lists.osmocom.org
X-Gm-Message-State: AOJu0YxfUmACIvpbZyx8w70nt0Vd2l5jgH9JXkTCVjvMxvfJwB8vVLif
	Z2t375bJ2xw8olbtXPVN9oKh8XpvUJUhlVUUsut7G+EXvEqKXRM/
X-Gm-Gg: ASbGnctVPHOX2ceNJwW6K5/DUFUyqZvrJuBcQjJ0N7M3DDE5MqZHFb4MmEjOpUY89cz
	p2vxM2c4ct9QKnOW7jUm6KYBZIzCC8zHlwxVn5lyk7jnC/esXPFlUoMulWPZu7YRSl1ggZQUp7u
	7eflwx//1/A1FToNgTVdEOdRDjkxwhVRHabftJk4cUw4I53NrUxUwz8HEyWPCPq+N5HVNa8IbHP
	L+9dRUOC6Q4TkbM0RxJ6h+mBLFno2y6syh87OA/0ACMLqQ=
X-Google-Smtp-Source: AGHT+IHxL0OHgUEQczY58g8XDBLqS8Ex4WTxtaZ2NUqH1g4R3asgqmGfw3HW/w2dfnMjfE/n2fJrPg==
X-Received: by 2002:a05:6a00:2313:b0:728:e906:e466 with SMTP id d2e1a72fcca58-72a8d2dc70cmr4546358b3a.21.1734527364845;
        Wed, 18 Dec 2024 05:09:24 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5c0f59asm7434754a12.67.2024.12.18.05.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 05:09:24 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next v6 00/11] net: Improve netns handling in rtnetlink
Date: Wed, 18 Dec 2024 21:08:58 +0800
Message-ID: <20241218130909.2173-1-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PDPZOQIFLAIPE7INUBSWI5OTYVPX2OPI
X-Message-ID-Hash: PDPZOQIFLAIPE7INUBSWI5OTYVPX2OPI
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:40:12 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PDPZOQIFLAIPE7INUBSWI5OTYVPX2OPI/>
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

Patch 01 servers for 1) to avoids link name conflict in different netns.

To achieve 2), there're mainly 3 steps:

 - Patch 02 packs newlink() parameters into a struct, including
   the original "src_net" along with more netns context.
 - Patch 03 ~ 07 converts device drivers to use the explicit netns
   extracted from params.
 - Patch 08 ~ 09 removes the old netns parameter, and converts
   rtnetlink to create device in target netns directly.

Patch 10 ~ 11 adds some tests for link name and link netns.


BTW please note there're some issues found in current code:

- In amt_newlink() drivers/net/amt.c:

    amt->net =3D net;
    ...
    amt->stream_dev =3D dev_get_by_index(net, ...

  Uses net, but amt_lookup_upper_dev() only searches in dev_net.
  So the AMT device may not be properly deleted if it's in a different
  netns from lower dev.

- In gtp_newlink() in drivers/net/gtp.c:

    gtp->net =3D src_net;
    ...
    gn =3D net_generic(dev_net(dev), gtp_net_id);
    list_add_rcu(&gtp->list, &gn->gtp_dev_list);

  Uses src_net, but priv is linked to list in dev_net. So it may not be
  properly deleted on removal of link netns.

- In pfcp_newlink() in drivers/net/pfcp.c:

    pfcp->net =3D net;
    ...
    pn =3D net_generic(dev_net(dev), pfcp_net_id);
    list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);

  Same as above.

- In lowpan_newlink() in net/ieee802154/6lowpan/core.c:

    wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));

  Looks for IFLA_LINK in dev_net, but in theory the ifindex is defined
  in link netns.

---

v6:
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


Xiao Liang (11):
  rtnetlink: Lookup device in target netns when creating link
  rtnetlink: Pack newlink() params into struct
  net: Use link netns in newlink() of rtnl_link_ops
  ieee802154: 6lowpan: Use link netns in newlink() of rtnl_link_ops
  net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
  net: ipv6: Use link netns in newlink() of rtnl_link_ops
  net: xfrm: Use link netns in newlink() of rtnl_link_ops
  rtnetlink: Remove "net" from newlink params
  rtnetlink: Create link directly in target net namespace
  selftests: net: Add python context manager for netns entering
  selftests: net: Add test cases for link and peer netns

 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  |  11 +-
 drivers/net/amt.c                             |  16 +-
 drivers/net/bareudp.c                         |  11 +-
 drivers/net/bonding/bond_netlink.c            |   8 +-
 drivers/net/can/dev/netlink.c                 |   4 +-
 drivers/net/can/vxcan.c                       |   9 +-
 .../ethernet/qualcomm/rmnet/rmnet_config.c    |  11 +-
 drivers/net/geneve.c                          |  11 +-
 drivers/net/gtp.c                             |   9 +-
 drivers/net/ipvlan/ipvlan.h                   |   4 +-
 drivers/net/ipvlan/ipvlan_main.c              |  15 +-
 drivers/net/ipvlan/ipvtap.c                   |  10 +-
 drivers/net/macsec.c                          |  15 +-
 drivers/net/macvlan.c                         |   8 +-
 drivers/net/macvtap.c                         |  11 +-
 drivers/net/netkit.c                          |   9 +-
 drivers/net/pfcp.c                            |  11 +-
 drivers/net/ppp/ppp_generic.c                 |  10 +-
 drivers/net/team/team_core.c                  |   7 +-
 drivers/net/veth.c                            |   9 +-
 drivers/net/vrf.c                             |  11 +-
 drivers/net/vxlan/vxlan_core.c                |  11 +-
 drivers/net/wireguard/device.c                |  11 +-
 drivers/net/wireless/virtual/virt_wifi.c      |  14 +-
 drivers/net/wwan/wwan_core.c                  |  25 ++-
 include/net/ip_tunnels.h                      |   5 +-
 include/net/rtnetlink.h                       |  44 +++++-
 net/8021q/vlan_netlink.c                      |  15 +-
 net/batman-adv/soft-interface.c               |  16 +-
 net/bridge/br_netlink.c                       |  12 +-
 net/caif/chnl_net.c                           |   6 +-
 net/core/rtnetlink.c                          |  35 +++--
 net/hsr/hsr_netlink.c                         |  14 +-
 net/ieee802154/6lowpan/core.c                 |   9 +-
 net/ipv4/ip_gre.c                             |  27 ++--
 net/ipv4/ip_tunnel.c                          |  10 +-
 net/ipv4/ip_vti.c                             |  10 +-
 net/ipv4/ipip.c                               |  14 +-
 net/ipv6/ip6_gre.c                            |  42 ++++--
 net/ipv6/ip6_tunnel.c                         |  20 ++-
 net/ipv6/ip6_vti.c                            |  16 +-
 net/ipv6/sit.c                                |  18 ++-
 net/xfrm/xfrm_interface_core.c                |  15 +-
 tools/testing/selftests/net/Makefile          |   1 +
 .../testing/selftests/net/lib/py/__init__.py  |   2 +-
 tools/testing/selftests/net/lib/py/netns.py   |  18 +++
 tools/testing/selftests/net/link_netns.py     | 142 ++++++++++++++++++
 tools/testing/selftests/net/netns-name.sh     |  10 ++
 48 files changed, 546 insertions(+), 226 deletions(-)
 create mode 100755 tools/testing/selftests/net/link_netns.py

--=20
2.47.1

