Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A2A9D9455
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 26 Nov 2024 10:26:44 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 55BB7191B46;
	Tue, 26 Nov 2024 09:26:44 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UyiMaPEUsrW7; Tue, 26 Nov 2024 09:26:44 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 25669191B3A;
	Tue, 26 Nov 2024 09:26:38 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id F1E4C38A1A94
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:17 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CE00C1823E8
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:17 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eHfM7RtAC-hi for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 18 Nov 2024 14:33:17 +0000 (UTC)
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
	by mail.osmocom.org (Postfix) with ESMTPS id 1A3951823E3
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 14:33:16 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2ea78d164b3so833023a91.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 18 Nov 2024 06:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731940394; x=1732545194; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hNYrzSG3D47KB6oeOVj5/5Bj4MnSM/SMkHnb6rGgzb8=;
        b=Yzr2HytfMuymJmkVrBBc/0WNyUEE6oCCdNxg/dvo/2twuoj2BdVUsZG7zeuP5ySJoy
         SJsJiSkx/BlGHL5fysKTdyvliGr57Ekn6YBgLsViPAPfLtKDtNJ1RpiSqUt6JwqFEsav
         rPA4h7S6zBPWpld4JswPD16mtEafM6poeXa0rzPtk4U0PvuRTyhnO10AQNQA93Oos9MK
         CBv6pc3rMEJZ8Pg7qW7z0SIp+5qH7IXr6fKG4UXWvzd0BMa0YE8c3Y30klxVQA5bsB8h
         G5X2EJk8ZlwcJjWEOoMgtzbmM8+Qxm2DDTBpkOnd0NFjT44QWoNqnUIQg0hJyjYLoCEw
         R0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731940394; x=1732545194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hNYrzSG3D47KB6oeOVj5/5Bj4MnSM/SMkHnb6rGgzb8=;
        b=txnYo75xr66dVuua2sR/SuU182zbNOqGJNomVF3sEa/vYxuT++B8B7wsBzuNCCO2i/
         3iecphXXgHIHVooImMY74RSpGqQ58cTEHSpWq74EzdaDaXkvRN1XPwHu98D54dJsw7w3
         s7jt7aAtmuIVz6ELCm9Gm57gkx7Qwq9o8QXouaykb+Xs93eKbLfS0aZ8n8COvlMQRfXA
         R/1zIks0u2BnL3PEXRu6X6RkisFamkcLOsqh1aKldVlPOeYJsmK8vD38h95U43+Q0Kt+
         yn7a74hAz7JSuzKmqj8g3dGyWQGs05LbnHTqPGh1HxKyaUAlKi/28Tq4X3hpO7xQpEQZ
         N5Jg==
X-Forwarded-Encrypted: i=1; AJvYcCXytk0cA8b8yLWx8Sv1dz803XJc5levLQ0mhi10DOLHRr5MACQASWMLMGZ7MwZGWER57cjhYJyeO07Qx3fA6w1O@lists.osmocom.org
X-Gm-Message-State: AOJu0YxV5V806G4lf7SjMnOsxfC6kKbWKV2N9mmqqoa92genfTv7ZkDk
	5eu5zPYsyY57VRDAr7d7Mg/WcccvLXGuD3MzLEXv9m41sfK1vdMs
X-Google-Smtp-Source: AGHT+IEgW/YjRV6I5AmJ/mBzBZGEWBcDxNEAGQpANYhMnRAlvyIjyPQThvC+SjMr0Xf12bRSa0kQgg==
X-Received: by 2002:a17:90b:52c6:b0:2ea:5dcf:6f74 with SMTP id 98e67ed59e1d1-2ea5dcf7122mr6227597a91.3.1731940393805;
        Mon, 18 Nov 2024 06:33:13 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ea81b0e2fasm1616926a91.52.2024.11.18.06.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:33:13 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v4 0/5] net: Improve netns handling in RTNL and ip_tunnel
Date: Mon, 18 Nov 2024 22:32:39 +0800
Message-ID: <20241118143244.1773-1-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VHSHK52C4MEGXWKHUDXMIMTLYZNW26XV
X-Message-ID-Hash: VHSHK52C4MEGXWKHUDXMIMTLYZNW26XV
X-Mailman-Approved-At: Tue, 26 Nov 2024 09:26:34 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/VHSHK52C4MEGXWKHUDXMIMTLYZNW26XV/>
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

---

v4:
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


Xiao Liang (5):
  net: ip_tunnel: Build flow in underlay net namespace
  rtnetlink: Lookup device in target netns when creating link
  rtnetlink: Decouple net namespaces in rtnl_newlink_create()
  selftests: net: Add python context manager for netns entering
  selftests: net: Add two test cases for link netns

 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  | 11 ++++--
 drivers/net/amt.c                             | 13 ++++---
 drivers/net/bareudp.c                         | 11 ++++--
 drivers/net/bonding/bond_netlink.c            |  8 ++--
 drivers/net/can/dev/netlink.c                 |  4 +-
 drivers/net/can/vxcan.c                       | 11 ++++--
 .../ethernet/qualcomm/rmnet/rmnet_config.c    | 11 ++++--
 drivers/net/geneve.c                          | 11 ++++--
 drivers/net/gtp.c                             |  9 +++--
 drivers/net/ipvlan/ipvlan.h                   |  4 +-
 drivers/net/ipvlan/ipvlan_main.c              | 11 ++++--
 drivers/net/ipvlan/ipvtap.c                   |  7 ++--
 drivers/net/macsec.c                          | 11 ++++--
 drivers/net/macvlan.c                         |  8 ++--
 drivers/net/macvtap.c                         |  8 ++--
 drivers/net/netkit.c                          | 11 ++++--
 drivers/net/pfcp.c                            |  8 ++--
 drivers/net/ppp/ppp_generic.c                 | 10 +++--
 drivers/net/team/team_core.c                  |  7 ++--
 drivers/net/veth.c                            | 11 ++++--
 drivers/net/vrf.c                             |  7 ++--
 drivers/net/vxlan/vxlan_core.c                | 11 ++++--
 drivers/net/wireguard/device.c                |  8 ++--
 drivers/net/wireless/virtual/virt_wifi.c      | 10 +++--
 drivers/net/wwan/wwan_core.c                  | 15 +++++--
 include/net/ip_tunnels.h                      |  5 ++-
 include/net/rtnetlink.h                       | 34 +++++++++++++---
 net/8021q/vlan_netlink.c                      | 11 ++++--
 net/batman-adv/soft-interface.c               |  8 ++--
 net/bridge/br_netlink.c                       |  8 ++--
 net/caif/chnl_net.c                           |  6 +--
 net/core/rtnetlink.c                          | 29 +++++++++-----
 net/hsr/hsr_netlink.c                         | 14 ++++---
 net/ieee802154/6lowpan/core.c                 |  9 +++--
 net/ipv4/ip_gre.c                             | 27 ++++++++-----
 net/ipv4/ip_tunnel.c                          | 16 ++++----
 net/ipv4/ip_vti.c                             | 10 +++--
 net/ipv4/ipip.c                               | 10 +++--
 net/ipv6/ip6_gre.c                            | 28 +++++++------
 net/ipv6/ip6_tunnel.c                         | 16 ++++----
 net/ipv6/ip6_vti.c                            | 15 ++++---
 net/ipv6/sit.c                                | 16 ++++----
 net/xfrm/xfrm_interface_core.c                | 14 +++----
 tools/testing/selftests/net/Makefile          |  1 +
 .../testing/selftests/net/lib/py/__init__.py  |  2 +-
 tools/testing/selftests/net/lib/py/netns.py   | 18 +++++++++
 tools/testing/selftests/net/netns-name.sh     | 10 +++++
 tools/testing/selftests/net/netns_atomic.py   | 39 +++++++++++++++++++
 48 files changed, 377 insertions(+), 205 deletions(-)
 create mode 100755 tools/testing/selftests/net/netns_atomic.py

--=20
2.47.0

