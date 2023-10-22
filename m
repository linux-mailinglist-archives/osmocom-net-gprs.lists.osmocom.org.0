Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1FE7D25DD
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 22 Oct 2023 22:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 91E1828307;
	Sun, 22 Oct 2023 20:29:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwp_9uIhpnt1; Sun, 22 Oct 2023 20:29:38 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 5CA422815F;
	Sun, 22 Oct 2023 20:29:34 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id C0D7C38A35E4
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 95F5328304
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:49 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYiw97roclRh for <osmocom-net-gprs@lists.osmocom.org>;
 Sun, 22 Oct 2023 20:25:49 +0000 (UTC)
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
	by mail.osmocom.org (Postfix) with ESMTP id EE4FF27F3D
	for <osmocom-net-gprs@lists.osmocom.org>; Sun, 22 Oct 2023 20:25:48 +0000 (UTC)
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/2] GTP tunnel driver fixes
Date: Sun, 22 Oct 2023 22:25:16 +0200
Message-Id: <20231022202519.659526-1-pablo@netfilter.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 2PMVFQW5YD6YNGB7WNPL56GJNHUN4NYQ
X-Message-ID-Hash: 2PMVFQW5YD6YNGB7WNPL56GJNHUN4NYQ
X-MailFrom: pablo@netfilter.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: osmocom-net-gprs@lists.osmocom.org, davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, edumazet@google.com, laforge@osmocom.org, laforge@gnumonks.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/2PMVFQW5YD6YNGB7WNPL56GJNHUN4NYQ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi,

The following patchset contains two fixes for the GTP tunnel driver:

1) Incorrect GTPA_MAX definition in UAPI headers. This is updating an
   existing UAPI definition but for a good reason, this is certainly
   broken. Similar fixes for incorrect _MAX definition in netlink
   headers were applied in the past too.

2) Fix GTP driver PMTU with GRO packets, add missing call to
   skb_gso_validate_network_len() to handle GRO packets.

Please apply, Thanks.

Pablo Neira Ayuso (2):
  gtp: uapi: fix GTPA_MAX
  gtp: fix fragmentation needed check with gso

 drivers/net/gtp.c        | 5 +++--
 include/uapi/linux/gtp.h | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

--=20
2.30.2

