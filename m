Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id D19119FF139
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Dec 2024 19:39:56 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 818411B666A;
	Tue, 31 Dec 2024 18:39:56 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q5d6BpVfYSjR; Tue, 31 Dec 2024 18:39:56 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 8AFBF1B665F;
	Tue, 31 Dec 2024 18:39:52 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id EE43938A77A2
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:02:31 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id CD3771A2896
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:02:31 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OkFP7um3Gdwi for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  9 Dec 2024 14:02:31 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by mail.osmocom.org (Postfix) with ESMTPS id 1CCD61A2891
	for <osmocom-net-gprs@lists.osmocom.org>; Mon,  9 Dec 2024 14:02:30 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-215853ed047so42997505ad.2
        for <osmocom-net-gprs@lists.osmocom.org>; Mon, 09 Dec 2024 06:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733752948; x=1734357748; darn=lists.osmocom.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OAhPp2pGpsvDTqVI2eQ221kABd4Y8/kh7k1mWyeQzTw=;
        b=gJjyLTejXnenW7xmh514MOuMujOnOiGG4YY5/9hIfDAr0zP52Lk9EHdRYYK91R+LrR
         eQp7JsS6Z4dtSwZMpC2RBjUu3c0Zi9+lfLzyPgpXjq8wA6GPMWgXmdOaKfC8xnASJpPQ
         VfEVt8e4f8f3DPe3NnPWTDEYUV1kGGG5ppGDcFKYfkg7geLrPkPzarw6lZELo9EZ1b7A
         vZcZS6o1s3gYAb8kH8TNE5i9L23ME7k8/dJ2UDzYRVS5DUgtgip67TFPj6C883IiR4k4
         zQnKV+HV1KkIAiuBzuGcmihMZ9/gH4iUdempfbapRF56a9TpDdVBtJjN3JBOcI35AYt9
         HC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733752948; x=1734357748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OAhPp2pGpsvDTqVI2eQ221kABd4Y8/kh7k1mWyeQzTw=;
        b=cswbL9222XNhA3NSjwLa00hri7h4DHpqguMc8vzwp/bJ/9WAHw3d8Ee9pbR29oZt9p
         VymN6Etbw0PA6MPIxFSIrx0NPsZcTdo6zhq+15MQuHyQhQLe8T29id0ClGg3JeKMocU2
         oHuFgBdfH/Jt0T/7YWmGQZeKNadFNE+qvdu/2f0fmiXgh2YGeOwsnVAd7I8SuDCZp31b
         bY59nvEXonZWAgREtRbwQZTduB1TTNWP/u9mUDzVPKn5sg0Xt9rUSTHh4LlScsleRWEs
         5wb7+v+NzzzKIlfoNOcRsmjVwAkeKRio8raVwPOIC+4Nj7qJHHTIReoBlhVf+qmaucPJ
         Wdqw==
X-Forwarded-Encrypted: i=1; AJvYcCViEsHAqP0l23xH+TgUeuaOqV8sGUPXmm7ej2rNAKpmY07Iw/04GuG/LpuiYHHzIhqwE5boE0BaiQrIVYlENYxX@lists.osmocom.org
X-Gm-Message-State: AOJu0Yxp+NSt5h6/EN4pWCIlsXVViwu9zC/XHLExHlxxxWwfY6ZYeo7a
	EGgI4ohoJbdkiRvmuXBtDPte8j6FKcCXLYnEBQsNfgJETru/iy1E
X-Gm-Gg: ASbGncvX25Dr3LqpqEXICGn59OjFqhih5/kdCMKUTFadVjsoqtTLNz5w5craggjGW2p
	r0kouyaE+JS7IG8Yf9+GfjGTBfgT7Aa0Zdz0QJvNfAC+5ohLZ+/xp5xrq6A5c7+QP+TryA4vJvw
	5Q0VH2t3K7hd/EqVSAwpzRebYwPjckjKm3d70KfOLvQAc3Yt8PR4M1mI+ifp1iiyRQwFukDi1+z
	4Us3xO0Vp1c/gWfAI1569e62Lud80gDJv7jlHEitxS3hS8=
X-Google-Smtp-Source: AGHT+IEziqjANISe8V7T1b1Vo9dS8nge43qoErTxjCtNhfTplDp9qnHGPIzO4tjQCtyFccSJFTBRCw==
X-Received: by 2002:a17:902:e74f:b0:216:4122:925f with SMTP id d9443c01a7336-21641229442mr90363145ad.14.1733752948110;
        Mon, 09 Dec 2024 06:02:28 -0800 (PST)
Received: from nova-ws.. ([103.167.140.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216221db645sm49605645ad.46.2024.12.09.06.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 06:02:26 -0800 (PST)
From: Xiao Liang <shaw.leon@gmail.com>
To: netdev@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Donald Hunter <donald.hunter@gmail.com>
Subject: [PATCH net-next v5 0/5] net: Improve netns handling in RTNL and ip_tunnel
Date: Mon,  9 Dec 2024 22:01:46 +0800
Message-ID: <20241209140151.231257-1-shaw.leon@gmail.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MailFrom: shaw.leon@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SPH2LXMIJ6YCOWXYSLAKGAX4AZKUCIY4
X-Message-ID-Hash: SPH2LXMIJ6YCOWXYSLAKGAX4AZKUCIY4
X-Mailman-Approved-At: Tue, 31 Dec 2024 18:39:49 +0000
CC: "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido Schimmel <idosch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Jiri Pirko <jiri@resnulli.us>, Hangbin Liu <liuhangbin@gmail.com>, linux-rdma@vger.kernel.org, linux-can@vger.kernel.org, osmocom-net-gprs@lists.osmocom.org, bpf@vger.kernel.org, linux-ppp@vger.kernel.org, wireguard@lists.zx2c4.com, linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux.dev, linux-wpan@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/SPH2LXMIJ6YCOWXYSLAKGAX4AZKUCIY4/>
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

v5:
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


Xiao Liang (5):
  net: ip_tunnel: Build flow in underlay net namespace
  rtnetlink: Lookup device in target netns when creating link
  rtnetlink: Decouple net namespaces in rtnl_newlink_create()
  selftests: net: Add python context manager for netns entering
  selftests: net: Add two test cases for link netns

 drivers/infiniband/ulp/ipoib/ipoib_netlink.c  | 11 +++--
 drivers/net/amt.c                             | 13 +++---
 drivers/net/bareudp.c                         | 11 +++--
 drivers/net/bonding/bond_netlink.c            |  8 ++--
 drivers/net/can/dev/netlink.c                 |  4 +-
 drivers/net/can/vxcan.c                       |  9 ++--
 .../ethernet/qualcomm/rmnet/rmnet_config.c    | 11 +++--
 drivers/net/geneve.c                          | 11 +++--
 drivers/net/gtp.c                             |  9 ++--
 drivers/net/ipvlan/ipvlan.h                   |  4 +-
 drivers/net/ipvlan/ipvlan_main.c              | 11 +++--
 drivers/net/ipvlan/ipvtap.c                   |  7 ++-
 drivers/net/macsec.c                          | 11 +++--
 drivers/net/macvlan.c                         |  8 ++--
 drivers/net/macvtap.c                         |  8 ++--
 drivers/net/netkit.c                          |  9 ++--
 drivers/net/pfcp.c                            |  8 ++--
 drivers/net/ppp/ppp_generic.c                 | 10 +++--
 drivers/net/team/team_core.c                  |  7 +--
 drivers/net/veth.c                            |  9 ++--
 drivers/net/vrf.c                             |  7 +--
 drivers/net/vxlan/vxlan_core.c                | 11 +++--
 drivers/net/wireguard/device.c                |  8 ++--
 drivers/net/wireless/virtual/virt_wifi.c      | 10 +++--
 drivers/net/wwan/wwan_core.c                  | 15 +++++--
 include/net/ip_tunnels.h                      |  5 ++-
 include/net/rtnetlink.h                       | 44 ++++++++++++++++---
 net/8021q/vlan_netlink.c                      | 11 +++--
 net/batman-adv/soft-interface.c               | 12 ++---
 net/bridge/br_netlink.c                       |  8 ++--
 net/caif/chnl_net.c                           |  6 +--
 net/core/rtnetlink.c                          | 35 ++++++++-------
 net/hsr/hsr_netlink.c                         | 14 +++---
 net/ieee802154/6lowpan/core.c                 |  9 ++--
 net/ipv4/ip_gre.c                             | 27 ++++++++----
 net/ipv4/ip_tunnel.c                          | 16 ++++---
 net/ipv4/ip_vti.c                             | 10 +++--
 net/ipv4/ipip.c                               | 10 +++--
 net/ipv6/ip6_gre.c                            | 28 +++++++-----
 net/ipv6/ip6_tunnel.c                         | 16 +++----
 net/ipv6/ip6_vti.c                            | 15 +++----
 net/ipv6/sit.c                                | 16 +++----
 net/xfrm/xfrm_interface_core.c                | 14 +++---
 tools/testing/selftests/net/Makefile          |  1 +
 .../testing/selftests/net/lib/py/__init__.py  |  2 +-
 tools/testing/selftests/net/lib/py/netns.py   | 18 ++++++++
 tools/testing/selftests/net/netns-name.sh     | 10 +++++
 tools/testing/selftests/net/netns_atomic.py   | 39 ++++++++++++++++
 48 files changed, 385 insertions(+), 211 deletions(-)
 create mode 100755 tools/testing/selftests/net/netns_atomic.py

--=20
2.47.1

