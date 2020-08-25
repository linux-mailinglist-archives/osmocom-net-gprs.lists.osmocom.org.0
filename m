Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 09884252F1B
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 26 Aug 2020 14:58:34 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id BE007155A30;
	Wed, 26 Aug 2020 12:58:28 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=6wind.com
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 422 seconds by postgrey-1.37 at lists.osmocom.org;
 Tue, 25 Aug 2020 13:06:50 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=none (p=none dis=none) header.from=6wind.com
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.23.145.76;
 helo=proxy.6wind.com; envelope-from=dichtel@6wind.com; receiver=<UNKNOWN> 
Received: from proxy.6wind.com (host.76.145.23.62.rev.coltfrance.com
 [62.23.145.76])
 by lists.osmocom.org (Postfix) with ESMTP id C2F4C153E7E
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 25 Aug 2020 13:06:49 +0000 (UTC)
Received: from bretzel.dev.6wind.com (unknown [10.16.0.19])
 by proxy.6wind.com (Postfix) with ESMTPS id B4A67445186;
 Tue, 25 Aug 2020 14:59:45 +0200 (CEST)
Received: from dichtel by bretzel.dev.6wind.com with local (Exim 4.92)
 (envelope-from <dichtel@bretzel.dev.6wind.com>)
 id 1kAYYD-0005Xw-Gu; Tue, 25 Aug 2020 14:59:45 +0200
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
To: davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org,
 laforge@gnumonks.org, osmocom-net-gprs@lists.osmocom.org
Subject: [PATCH net] gtp: add GTPA_LINK info to msg sent to userspace
Date: Tue, 25 Aug 2020 14:59:40 +0200
Message-Id: <20200825125940.21238-1-nicolas.dichtel@6wind.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 26 Aug 2020 12:58:23 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
List-Unsubscribe: <https://lists.osmocom.org/mailman/options/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=unsubscribe>
List-Archive: <http://lists.osmocom.org/pipermail/osmocom-net-gprs/>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Subscribe: <https://lists.osmocom.org/mailman/listinfo/osmocom-net-gprs>, 
 <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=subscribe>
Cc: netdev@vger.kernel.org, Nicolas Dichtel <nicolas.dichtel@6wind.com>,
 Gabriel Ganne <gabriel.ganne@6wind.com>
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

During a dump, this attribute is essential, it enables the userspace to
know on which interface the context is linked to.

Fixes: 459aa660eb1d ("gtp: add initial driver for datapath of GPRS Tunneling Protocol (GTP-U)")
Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Tested-by: Gabriel Ganne <gabriel.ganne@6wind.com>
---

I target this to net, because I think this is a bug fix. The dump result cannot
be used if there is more than one gtp interface on the system.

 drivers/net/gtp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 21640a035d7d..8e47d0112e5d 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -1179,6 +1179,7 @@ static int gtp_genl_fill_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
 		goto nlmsg_failure;
 
 	if (nla_put_u32(skb, GTPA_VERSION, pctx->gtp_version) ||
+	    nla_put_u32(skb, GTPA_LINK, pctx->dev->ifindex) ||
 	    nla_put_be32(skb, GTPA_PEER_ADDRESS, pctx->peer_addr_ip4.s_addr) ||
 	    nla_put_be32(skb, GTPA_MS_ADDRESS, pctx->ms_addr_ip4.s_addr))
 		goto nla_put_failure;
-- 
2.26.2

