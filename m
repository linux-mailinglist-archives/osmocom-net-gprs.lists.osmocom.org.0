Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DA09D10A2
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 18 Nov 2024 13:38:15 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id E98E9181F56;
	Mon, 18 Nov 2024 12:38:12 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K3r4eXHl9XDr; Mon, 18 Nov 2024 12:38:12 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id AC274181F48;
	Mon, 18 Nov 2024 12:38:11 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id BC8FF38A001F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:39 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 97C6217B26F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:39 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2HXtUmX-Xz_2 for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 13 Nov 2024 12:57:38 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by mail.osmocom.org (Postfix) with ESMTPS id D6C2317B26A
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 12:57:38 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-72458c0e0d5so566505b3a.1
        for <osmocom-net-gprs@lists.osmocom.org>; Wed, 13 Nov 2024 04:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731502656; x=1732107456; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=16RIG7XtmkaIMsGLfFdWcl8EYTUAA5lDQMgC+uoAVXA=;
        b=iSJL4gnNlL4X10D1/SqBo01Z9vGAoylmGq1Z3vPTwYImX5u4tb3yeOokmjCAUsvczQ
         ebxoqjKtU10hVGhwPW2anNR12nmw+vJQ4mSTyUj90CAtKdn7FEAgcB6xjhkXRYd/ABnu
         HYZncqSU5T+CAObtUmY4FxVolsnxbRWw+GLFqJqSCErqJkXgCtc1Wm1Szwp5BOd2me/W
         LkW9KcKLdgLuEznYVGaTmzzQqvi/uEQNrwQbK6jFdIcUj7ZMvQz9Pop+o/oXtbEIp6K0
         Tn9IJjJARCgxgJ3TGe2iV+Nd83Z6TB1yhZsb5QcOE2lU6D29BSLhRfMs0o3OKVReKZt0
         8Vkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731502656; x=1732107456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=16RIG7XtmkaIMsGLfFdWcl8EYTUAA5lDQMgC+uoAVXA=;
        b=jAykjHZluwRLMRr+EEiqXCiHDhQdo4DN6W2sin408x9sFFSKdb6eXnakKpKS3eCkvr
         YBn8037GLfiHIBWHr2fE0pqNtNCqClFcUeaZIZHRIoTN6CCNmXQcm0bDEElJsr2WqUCs
         GnDYz1xKKuOhWZYtxVz0moT2usGaeS5Q3KO2EyfI7/M0ayrv9j0wqu0pIr1lM5r1ucjD
         jSLnP62BY7xd3V1z48tDs7pATMxildVtJdn66vnfWnJF1Hvx0lWhDPoJytE3X3oO522Z
         zn5CXMx153iwQg0pnqvZlaMYQ6Auj9q4pMYtE7QRvt8sBTL6rxiY9u96BMblVpUUPvf1
         b45A==
X-Forwarded-Encrypted: i=1; AJvYcCWqK0+3HuZxSSB6QAFaL5YUJHb3IU1u0KVxl6aaf4jyATe4kFoXS+v1pBIMeoeusYsUCoIRwBdd6ydbXCo4LiFl@lists.osmocom.org
X-Gm-Message-State: AOJu0YwEKgkV2ghmrAPNrpJ78VKboW4Ip3smfftHARQlxknZ8WNvItMW
	QrUBU5JgT/wIzclUVtNP9uE1tzW4QIFKqDLDH+7EH2bDQCj7LogA
X-Google-Smtp-Source: AGHT+IG1llNssb9d3itpdlPx9GEqMX+Zp38UcErZg9PjxNGttUHCL6O3wsgZQ/zCnjJA57EpkRZP1g==
X-Received: by 2002:a17:90b:2789:b0:2e2:bb32:73e7 with SMTP id 98e67ed59e1d1-2e9b1f844damr30704968a91.15.1731502656393;
        Wed, 13 Nov 2024 04:57:36 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f8ed0esm1398632a91.40.2024.11.13.04.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 04:57:35 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v3 0/6] net: Improve netns handling in RTNL and ip_tunnel
Date: Wed, 13 Nov 2024 20:57:09 +0800
Message-ID: <20241113125715.150201-1-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GNVBFC5C7QIVWOHZMBDCET2XY3GMBQMA
X-Message-ID-Hash: GNVBFC5C7QIVWOHZMBDCET2XY3GMBQMA
X-Mailman-Approved-At: Mon, 18 Nov 2024 12:35:18 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/GNVBFC5C7QIVWOHZMBDCET2XY3GMBQMA/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

This patch series includes some netns-related improvements and fixes for
RTNL and ip_tunnel, to make link creation more intuitive:

 - Creating link in another net namespace doesn't conflict with link name=
s
   in current one.
 - Refector rtnetlink link creation. Create link in target namespace
   directly. Pass both source and link netns to drivers via newlink()
   callback.

So that

  # ip link add netns ns1 link-netns ns2 tun0 type gre ...

will create tun0 in ns1, rather than create it in ns2 and move to ns1.
And don't conflict with another interface named "tun0" in current netns.

Patch 1 from Donald is included just as a dependency.

---

v3:
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


Donald Hunter (1):
  Revert "tools/net/ynl: improve async notification handling"

Xiao Liang (5):
  net: ip_tunnel: Build flow in underlay net namespace
  rtnetlink: Lookup device in target netns when creating link
  rtnetlink: Decouple net namespaces in rtnl_newlink_create()
  selftests: net: Add python context manager for netns entering
  selftests: net: Add two test cases for link netns

 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  |  6 ++-
 drivers/net/amt.c                             |  6 +--
 drivers/net/bareudp.c                         |  4 +-
 drivers/net/bonding/bond_netlink.c            |  3 +-
 drivers/net/can/dev/netlink.c                 |  2 +-
 drivers/net/can/vxcan.c                       |  4 +-
 .../ethernet/qualcomm/rmnet/rmnet_config.c    |  5 +-
 drivers/net/geneve.c                          |  4 +-
 drivers/net/gtp.c                             |  4 +-
 drivers/net/ipvlan/ipvlan.h                   |  2 +-
 drivers/net/ipvlan/ipvlan_main.c              |  5 +-
 drivers/net/ipvlan/ipvtap.c                   |  4 +-
 drivers/net/macsec.c                          |  5 +-
 drivers/net/macvlan.c                         |  5 +-
 drivers/net/macvtap.c                         |  5 +-
 drivers/net/netkit.c                          |  4 +-
 drivers/net/pfcp.c                            |  4 +-
 drivers/net/ppp/ppp_generic.c                 |  4 +-
 drivers/net/team/team_core.c                  |  2 +-
 drivers/net/veth.c                            |  4 +-
 drivers/net/vrf.c                             |  2 +-
 drivers/net/vxlan/vxlan_core.c                |  4 +-
 drivers/net/wireguard/device.c                |  4 +-
 drivers/net/wireless/virtual/virt_wifi.c      |  5 +-
 drivers/net/wwan/wwan_core.c                  |  6 ++-
 include/net/ip_tunnels.h                      |  5 +-
 include/net/rtnetlink.h                       | 22 ++++++++-
 net/8021q/vlan_netlink.c                      |  5 +-
 net/batman-adv/soft-interface.c               |  5 +-
 net/bridge/br_netlink.c                       |  2 +-
 net/caif/chnl_net.c                           |  2 +-
 net/core/rtnetlink.c                          | 25 ++++++----
 net/hsr/hsr_netlink.c                         |  8 +--
 net/ieee802154/6lowpan/core.c                 |  5 +-
 net/ipv4/ip_gre.c                             | 13 +++--
 net/ipv4/ip_tunnel.c                          | 16 +++---
 net/ipv4/ip_vti.c                             |  5 +-
 net/ipv4/ipip.c                               |  5 +-
 net/ipv6/ip6_gre.c                            | 17 ++++---
 net/ipv6/ip6_tunnel.c                         | 11 ++---
 net/ipv6/ip6_vti.c                            | 11 ++---
 net/ipv6/sit.c                                | 11 ++---
 net/xfrm/xfrm_interface_core.c                | 13 +++--
 tools/net/ynl/cli.py                          | 10 ++--
 tools/net/ynl/lib/ynl.py                      | 49 ++++++++-----------
 tools/testing/selftests/net/Makefile          |  1 +
 .../testing/selftests/net/lib/py/__init__.py  |  2 +-
 tools/testing/selftests/net/lib/py/netns.py   | 18 +++++++
 tools/testing/selftests/net/netns-name.sh     | 10 ++++
 tools/testing/selftests/net/netns_atomic.py   | 38 ++++++++++++++
 50 files changed, 255 insertions(+), 157 deletions(-)
 create mode 100755 tools/testing/selftests/net/netns_atomic.py

--=20
2.47.0

