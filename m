Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id D94E4A37099
	for <lists+osmocom-net-gprs@lfdr.de>; Sat, 15 Feb 2025 21:34:06 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 827361E87CA;
	Sat, 15 Feb 2025 20:34:05 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r8DQCXZTr-z8; Sat, 15 Feb 2025 20:34:05 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 413A01E87AE;
	Sat, 15 Feb 2025 20:34:00 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id DD30738A0F5F
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:20 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C36221E1AA9
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:20 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uZDl0s7B3dxE for <osmocom-net-gprs@lists.osmocom.org>;
 Mon, 10 Feb 2025 13:30:19 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by mail.osmocom.org (Postfix) with ESMTPS id 3FF4C1E1AA4
	for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 13:30:18 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-21f6d264221so21855435ad.1
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 10 Feb 2025 05:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739194217; x=1739799017; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0kuY/qnmLWcTpq+Gs4oe5wYG4aWX3Vy2rs59JLm5Zc=;
        b=FlkSzLjwJNe274D7PqI599YNlCvOMV9AQJJqq6Q9oY8d9bejYkv4ErtX1WeXoJXYbN
         eHGLB7F7l16i83KM1KZ82IiElBWBbS1bBq3AfroNz1aTMi/wV9vKWqvf/B7GgljNYH6x
         kpp5J9AWdHvLok3DJoJ4buRx58c0+HANRys38Q72iu+ACeu8BzCi5NulcTN6HdLH9LTv
         f5/5aDhfu2PRbZGJlHoZsiyacSQpuJMoyFzNHQU4apU0NPqGdhO4GMiiTQI56HfIKuAX
         FUgDcENucQD7xbPXGfVPPsVKXuij4Lm1luQCcmTPWD5jOk/BkBSKJHzlSzEAaRkJ9mUX
         jtnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739194217; x=1739799017;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y0kuY/qnmLWcTpq+Gs4oe5wYG4aWX3Vy2rs59JLm5Zc=;
        b=i5jl4TlMOV3Vz39Sn89+m7g2xpC7oAAPR26nTZMWtP6XzNxgs0aZZXlr82lSrunAme
         Jll6HP6FM3qCNtNm2kfCxObN23F76K3yTERAqgdl6Iy3jXyu/G7x8diBYqa25B1/k8+o
         tMpyBMf5k8GZVNc6ThPJjhF9rP20qPy25x6jvHFitmAhr0rLsqw46S4n1W3I/KbuH+25
         0OIDRFnB2t0e4uBKU8kVt0NTNiS4RRyOvD/ZqpMz00uQGoOKWQ2KA2Lyt/gYSAN8SNap
         885lGckuW2ots9ksHLFrRuzRpBmSb232EUY7XveVGF+gQ3WxYgdrqLMl2PF0IqgR/GLW
         cJXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUptI4av6TwP9iFe90XPNpa2ZCCzO+K0gse08pR9fRPFV8WGfZNxmcVgtf78wMKUjLq62Si//oURzVtb6ttLVCz@lists.osmocom.org
X-Gm-Message-State: AOJu0Yy3vlLqQPxC7TJMLHgQXOke+Gy61p8vhvIWTan3TfHqYhMxIZ2q
	vrT+u9QWdeNYk6vT+HkUPxPSxAjCs5mdpqPwsTTNlZI7OatW1lmr
X-Gm-Gg: ASbGncv/EHGKzU6nCM/mNNFpvHMpF0rO369eyGvoU5/AXQfh8xfqN8pL25YbG/tGpMU
	6fTGeIgXdjtIZdrdBUx6bLy4k4lywBS89ztn5aKQqWbK2W1WquaXfRsJgoImV4KAOuK4T7Ojlln
	IAQ2mNkRhllN/JYpPHsJJkhGoBSAda0izGUMZW1J53JNQsf22NEVYH5wEEINiPV0Y8gqAV+Vt6W
	BCKIGZ5q1jtoWbydT0YAdIvCRUppZAeQOlrPhfoIGWBZxtbNe2Faz31jA9eTIY1+O/q0QvSY6M0
	okbNvw==
X-Google-Smtp-Source: AGHT+IEH5QCCl4lI0axSO2k1baOf7QV120615EUg7vMmek14klRWGmTSu58W64P2a3hO1mcauSS1MQ==
X-Received: by 2002:a17:903:2309:b0:215:a04a:89d5 with SMTP id d9443c01a7336-21f4e1cf038mr233204165ad.2.1739194216829;
        Mon, 10 Feb 2025 05:30:16 -0800 (PST)
Received: from ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653af3bsm78799445ad.57.2025.02.10.05.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:30:16 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v9 00/11] net: Improve netns handling in rtnetlink
Date: Mon, 10 Feb 2025 21:29:51 +0800
Message-ID: <20250210133002.883422-1-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FEK474KISXSKVZC64HZ3MRFDLGUZCLKF
X-Message-ID-Hash: FEK474KISXSKVZC64HZ3MRFDLGUZCLKF
X-Mailman-Approved-At: Sat, 15 Feb 2025 20:33:38 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Alexander Aring <alex.aring@gmail.com>, Stefan Schmidt <stefan@datenfreihafen.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/FEK474KISXSKVZC64HZ3MRFDLGUZCLKF/>
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

- In lowpan_newlink() in net/ieee802154/6lowpan/core.c:

    wdev =3D dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));

  Looks for IFLA_LINK in dev_net, but in theory the ifindex is defined
  in link netns.

And thanks to Kuniyuki for fixing related issues in gtp and pfcp:
https://lore.kernel.org/netdev/20250110014754.33847-1-kuniyu@amazon.com/

---

v9:
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


Xiao Liang (11):
  rtnetlink: Lookup device in target netns when creating link
  rtnetlink: Pack newlink() params into struct
  net: Use link netns in newlink() of rtnl_link_ops
  ieee802154: 6lowpan: Validate link netns in newlink() of rtnl_link_ops
  net: ip_tunnel: Use link netns in newlink() of rtnl_link_ops
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
 net/ipv4/ip_tunnel.c                          |  10 +-
 net/ipv4/ip_vti.c                             |   9 +-
 net/ipv4/ipip.c                               |   9 +-
 net/ipv6/ip6_gre.c                            |  30 ++--
 net/ipv6/ip6_tunnel.c                         |  19 ++-
 net/ipv6/ip6_vti.c                            |  15 +-
 net/ipv6/sit.c                                |  17 ++-
 net/xfrm/xfrm_interface_core.c                |  15 +-
 tools/testing/selftests/net/Makefile          |   1 +
 tools/testing/selftests/net/config            |   5 +
 .../testing/selftests/net/lib/py/__init__.py  |   2 +-
 tools/testing/selftests/net/lib/py/netns.py   |  18 +++
 tools/testing/selftests/net/link_netns.py     | 141 ++++++++++++++++++
 tools/testing/selftests/net/netns-name.sh     |  10 ++
 50 files changed, 494 insertions(+), 179 deletions(-)
 create mode 100755 tools/testing/selftests/net/link_netns.py

--=20
2.48.1

