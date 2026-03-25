Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KD0M5sLzGnGNgYAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:55 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F76736F99B
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:55 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6B1E14C03F0;
	Tue, 31 Mar 2026 17:59:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJ4HzV_3Ly1h; Tue, 31 Mar 2026 17:59:54 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id A69CF4C0356;
	Tue, 31 Mar 2026 17:59:45 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 72E2738A02D8
	for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 25 Mar 2026 12:11:10 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 52EC64AC95C
	for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 25 Mar 2026 12:11:10 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id foJ0tGm3iUZx for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 25 Mar 2026 12:11:09 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by mail.osmocom.org (Postfix) with ESMTPS id 6615B4AC957
	for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 25 Mar 2026 12:11:07 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id CA58F5BCCF;
	Wed, 25 Mar 2026 12:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_rsa;
	t=1774440667;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GLkZ1hIrhvhokYYTEjx2CMlncHQKXTC1pL8a8hzsU8M=;
	b=w73lPa3cLBF8rH8oQDtfso9w2BI3B7Hlyh6mmVO7sMQOtVPQ/4wM14EIQgf4UGPPI/6f9o
	KIRr7+64mRuXQShgN1x0imoW/7YEyR6igieTeFdyPwYe2xyyQCQe8bB/wi7NTzLxs5+Nzg
	EFLYfZ0vL8F0wmBep+dAH/77OJ83H0Y=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1774440667;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GLkZ1hIrhvhokYYTEjx2CMlncHQKXTC1pL8a8hzsU8M=;
	b=aws09YPwm8bqQHwdMu0uWwUGXGYQxmMq38Jfn/YGJ+NEpjlOzH5QXkK+3Xf7qYkAWRlNkV
	E0t3RC7oAenc71Dg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_rsa;
	t=1774440666;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GLkZ1hIrhvhokYYTEjx2CMlncHQKXTC1pL8a8hzsU8M=;
	b=W7hnkWl0B17SnTVAuKra60W6948hiSNGmeDWw+IcIR02oPa3guHKIWPxzM9tZQEJpWIr/U
	YmmoE7BzAhD5944ceoeOxyNhKJgq85U+nm+/2JUQ4IiQ+ArAtpfnzgnXmURyDYdLpxjoEz
	+fpcSQR9t78jk2QIFpeivHXikq17iqY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1774440666;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GLkZ1hIrhvhokYYTEjx2CMlncHQKXTC1pL8a8hzsU8M=;
	b=jrhs+D39WxTcLO7PmCtgkurCVVC5RLET5srMfdzb+NdqK0W6t+x4yZMUBZgdzuzpXY09EL
	gUSXOObumj5dtQCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 41DDB443BE;
	Wed, 25 Mar 2026 12:11:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id gOAUDdjQw2kbNgAAD6G6ig
	(envelope-from <fmancera@suse.de>); Wed, 25 Mar 2026 12:11:04 +0000
From: Fernando Fernandez Mancera <fmancera@suse.de>
To: netdev@vger.kernel.org
Subject: [PATCH 06/11 net-next v5] drivers: net: drop ipv6_stub usage and use
 direct function calls
Date: Wed, 25 Mar 2026 13:08:47 +0100
Message-ID: <20260325120928.15848-7-fmancera@suse.de>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260325120928.15848-1-fmancera@suse.de>
References: <20260325120928.15848-1-fmancera@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MailFrom: fmancera@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: XHV7V5VBYM57YS44VWQZPX22AXDWCSEU
X-Message-ID-Hash: XHV7V5VBYM57YS44VWQZPX22AXDWCSEU
X-Mailman-Approved-At: Tue, 31 Mar 2026 17:59:25 +0000
CC: Fernando Fernandez Mancera <fmancera@suse.de>,
 =?UTF-8?q?Ricardo=20B=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Antonio Quartulli <antonio@openvpn.net>,
 Edward Cree <ecree.xilinx@gmail.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Mark Bloch <mbloch@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Boris Pismenny <borisp@nvidia.com>, Simon Horman <horms@kernel.org>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>,
 Sabrina Dubroca <sd@queasysnail.net>, Oliver Neukum <oliver@neukum.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, Edward Srouji <edwards@nvidia.com>,
 Parav Pandit <parav@nvidia.com>, Kees Cook <kees@kernel.org>,
 Guillaume Nault <gnault@redhat.com>, Alexei Lazar <alazar@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, Jianbo Liu <jianbol@nvidia.com>,
 Cosmin Ratiu <cratiu@nvidia.com>, Carolina Jubran <cjubran@nvidia.com>,
 Alexandre Cassen <acassen@corp.free.fr>, Petr Machata <petrm@nvidia.com>,
 Stanislav Fomichev <sdf@fomichev.me>, linux-rdma@vger.kernel.org,
 linux-kernel@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, osmocom-net-gprs@lists.osmocom.org,
 linux-usb@vger.kernel.org, wireguard@lists.zx2c4.com,
 linux-wireless@vger.kernel.org, bridge@lists.linux.dev
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/XHV7V5VBYM57YS44VWQZPX22AXDWCSEU/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[149];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[suse.de,suse.com,zx2c4.com,openvpn.net,gmail.com,ziepe.ca,kernel.org,nvidia.com,lunn.ch,davemloft.net,google.com,redhat.com,netfilter.org,gnumonks.org,queasysnail.net,neukum.org,blackwall.org,corp.free.fr,fomichev.me,vger.kernel.org,corigine.com,amd.com,lists.osmocom.org,lists.zx2c4.com,lists.linux.dev];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:fmancera@suse.de,m:rbm@suse.com,m:Jason@zx2c4.com,m:antonio@openvpn.net,m:ecree.xilinx@gmail.com,m:jgg@ziepe.ca,m:leon@kernel.org,m:zyjzyj2000@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:borisp@nvidia.com,m:horms@kernel.org,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:sd@queasysnail.net,m:oliver@neukum.org,m:stas.yakovlev@gmail.com,m:razor@blackwall.org,m:idosch@nvidia.com,m:vdumitrescu@nvidia.com,m:edwards@nvidia.com,m:parav@nvidia.com,m:kees@kernel.org,m:gnault@redhat.com,m:alazar@nvidia.com,m:gal@nvidia.com,m:jianbol@nvidia.com,m:cratiu@nvidia.com,m:cjubran@nvidia.com,m:acassen@corp.free.fr,m:petrm@nvidia.com,m:sdf@fomichev.me,m:linux-rdma@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:oss-drivers@corigine.com,m:linux-net-drivers@amd.com,m:osmocom-net-gprs@lists.osmocom.org,m:linux-usb@vger.ker
 nel.org,m:wireguard@lists.zx2c4.com,m:linux-wireless@vger.kernel.org,m:bridge@lists.linux.dev,m:ecreexilinx@gmail.com,m:andrew@lunn.ch,m:stasyakovlev@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[fmancera@suse.de,osmocom-net-gprs-bounces@lists.osmocom.org];
	RCPT_COUNT_TWELVE(0.00)[48];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:email,suse.de:mid,openvpn.net:email,mail.osmocom.org:helo,mail.osmocom.org:rdns,suse.com:email];
	DKIM_TRACE(0.00)[suse.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fmancera@suse.de,osmocom-net-gprs-bounces@lists.osmocom.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 8F76736F99B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As IPv6 is built-in only, the ipv6_stub infrastructure is no longer
necessary.

Convert all drivers currently utilizing ipv6_stub to make direct
function calls. The fallback functions introduced previously will
prevent linkage errors when CONFIG_IPV6 is disabled.

Signed-off-by: Fernando Fernandez Mancera <fmancera@suse.de>
Tested-by: Ricardo B. Marlière <rbm@suse.com>
Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
Reviewed-by: Antonio Quartulli <antonio@openvpn.net>
Reviewed-by: Edward Cree <ecree.xilinx@gmail.com>
---
 drivers/infiniband/core/addr.c                  |  3 +--
 drivers/infiniband/sw/rxe/rxe_net.c             |  6 +++---
 .../ethernet/mellanox/mlx5/core/en/rep/neigh.c  |  9 +++++----
 .../net/ethernet/mellanox/mlx5/core/en/tc_tun.c |  3 +--
 .../mellanox/mlx5/core/en/tc_tun_encap.c        |  2 +-
 .../mellanox/mlx5/core/en_accel/ipsec.c         |  1 -
 .../net/ethernet/mellanox/mlx5/core/en_rep.c    |  1 -
 drivers/net/ethernet/mellanox/mlx5/core/en_tc.c |  1 -
 .../net/ethernet/netronome/nfp/flower/action.c  |  2 +-
 .../ethernet/netronome/nfp/flower/tunnel_conf.c |  7 +++----
 drivers/net/ethernet/sfc/tc_counters.c          |  2 +-
 drivers/net/ethernet/sfc/tc_encap_actions.c     |  5 ++---
 drivers/net/geneve.c                            |  1 -
 drivers/net/gtp.c                               |  2 +-
 drivers/net/ovpn/peer.c                         |  3 +--
 drivers/net/ovpn/udp.c                          |  3 +--
 drivers/net/usb/cdc_mbim.c                      | 17 +++++++++--------
 drivers/net/vxlan/vxlan_core.c                  | 11 +++++------
 drivers/net/vxlan/vxlan_multicast.c             |  6 ++----
 drivers/net/wireguard/socket.c                  |  3 +--
 drivers/net/wireless/intel/ipw2x00/ipw2100.c    |  2 +-
 net/bridge/br_arp_nd_proxy.c                    |  3 +--
 22 files changed, 40 insertions(+), 53 deletions(-)

diff --git a/drivers/infiniband/core/addr.c b/drivers/infiniband/core/addr.c
index 866746695712..48d4b06384ec 100644
--- a/drivers/infiniband/core/addr.c
+++ b/drivers/infiniband/core/addr.c
@@ -41,7 +41,6 @@
 #include <net/neighbour.h>
 #include <net/route.h>
 #include <net/netevent.h>
-#include <net/ipv6_stubs.h>
 #include <net/ip6_route.h>
 #include <rdma/ib_addr.h>
 #include <rdma/ib_cache.h>
@@ -411,7 +410,7 @@ static int addr6_resolve(struct sockaddr *src_sock,
 	fl6.saddr = src_in->sin6_addr;
 	fl6.flowi6_oif = addr->bound_dev_if;
 
-	dst = ipv6_stub->ipv6_dst_lookup_flow(addr->net, NULL, &fl6, NULL);
+	dst = ip6_dst_lookup_flow(addr->net, NULL, &fl6, NULL);
 	if (IS_ERR(dst))
 		return PTR_ERR(dst);
 
diff --git a/drivers/infiniband/sw/rxe/rxe_net.c b/drivers/infiniband/sw/rxe/rxe_net.c
index 0bd0902b11f7..cbc646a30003 100644
--- a/drivers/infiniband/sw/rxe/rxe_net.c
+++ b/drivers/infiniband/sw/rxe/rxe_net.c
@@ -138,9 +138,9 @@ static struct dst_entry *rxe_find_route6(struct rxe_qp *qp,
 	memcpy(&fl6.daddr, daddr, sizeof(*daddr));
 	fl6.flowi6_proto = IPPROTO_UDP;
 
-	ndst = ipv6_stub->ipv6_dst_lookup_flow(sock_net(recv_sockets.sk6->sk),
-					       recv_sockets.sk6->sk, &fl6,
-					       NULL);
+	ndst = ip6_dst_lookup_flow(sock_net(recv_sockets.sk6->sk),
+				   recv_sockets.sk6->sk, &fl6,
+				   NULL);
 	if (IS_ERR(ndst)) {
 		rxe_dbg_qp(qp, "no route to %pI6\n", daddr);
 		return NULL;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c b/drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c
index d220b045b331..648f4521c096 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c
@@ -10,6 +10,7 @@
 #include <linux/notifier.h>
 #include <net/netevent.h>
 #include <net/arp.h>
+#include <net/ndisc.h>
 #include "neigh.h"
 #include "tc.h"
 #include "en_rep.h"
@@ -18,8 +19,8 @@
 
 static unsigned long mlx5e_rep_ipv6_interval(void)
 {
-	if (IS_ENABLED(CONFIG_IPV6) && ipv6_stub->nd_tbl)
-		return NEIGH_VAR(&ipv6_stub->nd_tbl->parms, DELAY_PROBE_TIME);
+	if (IS_ENABLED(CONFIG_IPV6) && ipv6_mod_enabled())
+		return NEIGH_VAR(&nd_tbl.parms, DELAY_PROBE_TIME);
 
 	return ~0UL;
 }
@@ -217,7 +218,7 @@ static int mlx5e_rep_netevent_event(struct notifier_block *nb,
 	case NETEVENT_NEIGH_UPDATE:
 		n = ptr;
 #if IS_ENABLED(CONFIG_IPV6)
-		if (n->tbl != ipv6_stub->nd_tbl && n->tbl != &arp_tbl)
+		if (n->tbl != &nd_tbl && n->tbl != &arp_tbl)
 #else
 		if (n->tbl != &arp_tbl)
 #endif
@@ -238,7 +239,7 @@ static int mlx5e_rep_netevent_event(struct notifier_block *nb,
 		 * done per device delay prob time parameter.
 		 */
 #if IS_ENABLED(CONFIG_IPV6)
-		if (!p->dev || (p->tbl != ipv6_stub->nd_tbl && p->tbl != &arp_tbl))
+		if (!p->dev || (p->tbl != &nd_tbl && p->tbl != &arp_tbl))
 #else
 		if (!p->dev || p->tbl != &arp_tbl)
 #endif
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c b/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c
index a14f216048cd..de74dbfe7b20 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c
@@ -453,8 +453,7 @@ static int mlx5e_route_lookup_ipv6_get(struct mlx5e_priv *priv,
 
 	if (tunnel && tunnel->get_remote_ifindex)
 		attr->fl.fl6.flowi6_oif = tunnel->get_remote_ifindex(dev);
-	dst = ipv6_stub->ipv6_dst_lookup_flow(dev_net(dev), NULL, &attr->fl.fl6,
-					      NULL);
+	dst = ip6_dst_lookup_flow(dev_net(dev), NULL, &attr->fl.fl6, NULL);
 	if (IS_ERR(dst))
 		return PTR_ERR(dst);
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c b/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c
index bfd401bee9e8..8b827201935e 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c
@@ -402,7 +402,7 @@ void mlx5e_tc_update_neigh_used_value(struct mlx5e_neigh_hash_entry *nhe)
 		tbl = &arp_tbl;
 #if IS_ENABLED(CONFIG_IPV6)
 	else if (m_neigh->family == AF_INET6)
-		tbl = ipv6_stub->nd_tbl;
+		tbl = &nd_tbl;
 #endif
 	else
 		return;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index 64e13747084e..a52e12c3c95a 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -36,7 +36,6 @@
 #include <linux/inetdevice.h>
 #include <linux/netdevice.h>
 #include <net/netevent.h>
-#include <net/ipv6_stubs.h>
 
 #include "en.h"
 #include "eswitch.h"
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_rep.c b/drivers/net/ethernet/mellanox/mlx5/core/en_rep.c
index 8992f0f7a870..ba6c0f38cc73 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_rep.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_rep.c
@@ -38,7 +38,6 @@
 #include <net/pkt_cls.h>
 #include <net/act_api.h>
 #include <net/devlink.h>
-#include <net/ipv6_stubs.h>
 
 #include "eswitch.h"
 #include "en.h"
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
index 397a93584fd6..a9001d1c902f 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
@@ -41,7 +41,6 @@
 #include <linux/refcount.h>
 #include <linux/completion.h>
 #include <net/arp.h>
-#include <net/ipv6_stubs.h>
 #include <net/bareudp.h>
 #include <net/bonding.h>
 #include <net/dst_metadata.h>
diff --git a/drivers/net/ethernet/netronome/nfp/flower/action.c b/drivers/net/ethernet/netronome/nfp/flower/action.c
index aca2a7417af3..ae2f8b31adfb 100644
--- a/drivers/net/ethernet/netronome/nfp/flower/action.c
+++ b/drivers/net/ethernet/netronome/nfp/flower/action.c
@@ -470,7 +470,7 @@ nfp_fl_set_tun(struct nfp_app *app, struct nfp_fl_set_tun *set_tun,
 
 		flow.daddr = ip_tun->key.u.ipv6.dst;
 		flow.flowi4_proto = IPPROTO_UDP;
-		dst = ipv6_stub->ipv6_dst_lookup_flow(net, NULL, &flow, NULL);
+		dst = ip6_dst_lookup_flow(net, NULL, &flow, NULL);
 		if (!IS_ERR(dst)) {
 			set_tun->ttl = ip6_dst_hoplimit(dst);
 			dst_release(dst);
diff --git a/drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c b/drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c
index 0cef0e2b85d0..ca30702f8878 100644
--- a/drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c
+++ b/drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c
@@ -650,7 +650,7 @@ static void nfp_tun_neigh_update(struct work_struct *work)
 		flow6.daddr = *(struct in6_addr *)n->primary_key;
 		if (!neigh_invalid) {
 			struct dst_entry *dst;
-			/* Use ipv6_dst_lookup_flow to populate flow6->saddr
+			/* Use ip6_dst_lookup_flow to populate flow6->saddr
 			 * and other fields. This information is only needed
 			 * for new entries, lookup can be skipped when an entry
 			 * gets invalidated - as only the daddr is needed for
@@ -730,7 +730,7 @@ nfp_tun_neigh_event_handler(struct notifier_block *nb, unsigned long event,
 		return NOTIFY_DONE;
 	}
 #if IS_ENABLED(CONFIG_IPV6)
-	if (n->tbl != ipv6_stub->nd_tbl && n->tbl != &arp_tbl)
+	if (n->tbl != &nd_tbl && n->tbl != &arp_tbl)
 #else
 	if (n->tbl != &arp_tbl)
 #endif
@@ -815,8 +815,7 @@ void nfp_tunnel_request_route_v6(struct nfp_app *app, struct sk_buff *skb)
 	flow.flowi6_proto = IPPROTO_UDP;
 
 #if IS_ENABLED(CONFIG_INET) && IS_ENABLED(CONFIG_IPV6)
-	dst = ipv6_stub->ipv6_dst_lookup_flow(dev_net(netdev), NULL, &flow,
-					      NULL);
+	dst = ip6_dst_lookup_flow(dev_net(netdev), NULL, &flow, NULL);
 	if (IS_ERR(dst))
 		goto fail_rcu_unlock;
 #else
diff --git a/drivers/net/ethernet/sfc/tc_counters.c b/drivers/net/ethernet/sfc/tc_counters.c
index d168282f30bf..b84235e93ffe 100644
--- a/drivers/net/ethernet/sfc/tc_counters.c
+++ b/drivers/net/ethernet/sfc/tc_counters.c
@@ -112,7 +112,7 @@ static void efx_tc_counter_work(struct work_struct *work)
 					 encap->neigh->egdev);
 		else
 #if IS_ENABLED(CONFIG_IPV6)
-			n = neigh_lookup(ipv6_stub->nd_tbl,
+			n = neigh_lookup(&nd_tbl,
 					 &encap->neigh->dst_ip6,
 					 encap->neigh->egdev);
 #else
diff --git a/drivers/net/ethernet/sfc/tc_encap_actions.c b/drivers/net/ethernet/sfc/tc_encap_actions.c
index da35705cc5e1..db222abef53b 100644
--- a/drivers/net/ethernet/sfc/tc_encap_actions.c
+++ b/drivers/net/ethernet/sfc/tc_encap_actions.c
@@ -149,8 +149,7 @@ static int efx_bind_neigh(struct efx_nic *efx,
 #if IS_ENABLED(CONFIG_IPV6)
 			struct dst_entry *dst;
 
-			dst = ipv6_stub->ipv6_dst_lookup_flow(net, NULL, &flow6,
-							      NULL);
+			dst = ip6_dst_lookup_flow(net, NULL, &flow6, NULL);
 			rc = PTR_ERR_OR_ZERO(dst);
 			if (rc) {
 				NL_SET_ERR_MSG_MOD(extack, "Failed to lookup route for IPv6 encap");
@@ -531,7 +530,7 @@ static int efx_neigh_event(struct efx_nic *efx, struct neighbour *n)
 	if (n->tbl == &arp_tbl) {
 		keysize = sizeof(keys.dst_ip);
 #if IS_ENABLED(CONFIG_IPV6)
-	} else if (n->tbl == ipv6_stub->nd_tbl) {
+	} else if (n->tbl == &nd_tbl) {
 		ipv6 = true;
 		keysize = sizeof(keys.dst_ip6);
 #endif
diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index 01cdd06102e0..c6563367d382 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -12,7 +12,6 @@
 #include <linux/module.h>
 #include <linux/etherdevice.h>
 #include <linux/hash.h>
-#include <net/ipv6_stubs.h>
 #include <net/dst_metadata.h>
 #include <net/gro_cells.h>
 #include <net/rtnetlink.h>
diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index e8949f556209..70b9e58b9b78 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -374,7 +374,7 @@ static struct rt6_info *ip6_route_output_gtp(struct net *net,
 	fl6->saddr		= *saddr;
 	fl6->flowi6_proto	= sk->sk_protocol;
 
-	dst = ipv6_stub->ipv6_dst_lookup_flow(net, sk, fl6, NULL);
+	dst = ip6_dst_lookup_flow(net, sk, fl6, NULL);
 	if (IS_ERR(dst))
 		return ERR_PTR(-ENETUNREACH);
 
diff --git a/drivers/net/ovpn/peer.c b/drivers/net/ovpn/peer.c
index 26b55d813f0e..c02dfab51a6e 100644
--- a/drivers/net/ovpn/peer.c
+++ b/drivers/net/ovpn/peer.c
@@ -827,8 +827,7 @@ static struct in6_addr ovpn_nexthop_from_rt6(struct ovpn_priv *ovpn,
 		.daddr = dest,
 	};
 
-	entry = ipv6_stub->ipv6_dst_lookup_flow(dev_net(ovpn->dev), NULL, &fl,
-						NULL);
+	entry = ip6_dst_lookup_flow(dev_net(ovpn->dev), NULL, &fl, NULL);
 	if (IS_ERR(entry)) {
 		net_dbg_ratelimited("%s: no route to host %pI6c\n",
 				    netdev_name(ovpn->dev), &dest);
diff --git a/drivers/net/ovpn/udp.c b/drivers/net/ovpn/udp.c
index 272b535ecaad..059e896b4a2f 100644
--- a/drivers/net/ovpn/udp.c
+++ b/drivers/net/ovpn/udp.c
@@ -14,7 +14,6 @@
 #include <net/addrconf.h>
 #include <net/dst_cache.h>
 #include <net/route.h>
-#include <net/ipv6_stubs.h>
 #include <net/transp_v6.h>
 #include <net/udp.h>
 #include <net/udp_tunnel.h>
@@ -251,7 +250,7 @@ static int ovpn_udp6_output(struct ovpn_peer *peer, struct ovpn_bind *bind,
 		dst_cache_reset(cache);
 	}
 
-	dst = ipv6_stub->ipv6_dst_lookup_flow(sock_net(sk), sk, &fl, NULL);
+	dst = ip6_dst_lookup_flow(sock_net(sk), sk, &fl, NULL);
 	if (IS_ERR(dst)) {
 		ret = PTR_ERR(dst);
 		net_dbg_ratelimited("%s: no route to host %pISpc: %d\n",
diff --git a/drivers/net/usb/cdc_mbim.c b/drivers/net/usb/cdc_mbim.c
index dbf01210b0e7..877fb0ed7d3d 100644
--- a/drivers/net/usb/cdc_mbim.c
+++ b/drivers/net/usb/cdc_mbim.c
@@ -20,7 +20,6 @@
 #include <linux/usb/cdc_ncm.h>
 #include <net/ipv6.h>
 #include <net/addrconf.h>
-#include <net/ipv6_stubs.h>
 #include <net/ndisc.h>
 
 /* alternative VLAN for IP session 0 if not untagged */
@@ -302,6 +301,7 @@ static struct sk_buff *cdc_mbim_tx_fixup(struct usbnet *dev, struct sk_buff *skb
 	return NULL;
 }
 
+#if IS_ENABLED(CONFIG_IPV6)
 /* Some devices are known to send Neighbor Solicitation messages and
  * require Neighbor Advertisement replies.  The IPv6 core will not
  * respond since IFF_NOARP is set, so we must handle them ourselves.
@@ -342,12 +342,11 @@ static void do_neigh_solicit(struct usbnet *dev, u8 *buf, u16 tci)
 	is_router = !!READ_ONCE(in6_dev->cnf.forwarding);
 	in6_dev_put(in6_dev);
 
-	/* ipv6_stub != NULL if in6_dev_get returned an inet6_dev */
-	ipv6_stub->ndisc_send_na(netdev, &iph->saddr, &msg->target,
-				 is_router /* router */,
-				 true /* solicited */,
-				 false /* override */,
-				 true /* inc_opt */);
+	ndisc_send_na(netdev, &iph->saddr, &msg->target,
+		      is_router /* router */,
+		      true /* solicited */,
+		      false /* override */,
+		      true /* inc_opt */);
 out:
 	dev_put(netdev);
 }
@@ -362,7 +361,7 @@ static bool is_neigh_solicit(u8 *buf, size_t len)
 		msg->icmph.icmp6_code == 0 &&
 		msg->icmph.icmp6_type == NDISC_NEIGHBOUR_SOLICITATION);
 }
-
+#endif /* IPV6 */
 
 static struct sk_buff *cdc_mbim_process_dgram(struct usbnet *dev, u8 *buf, size_t len, u16 tci)
 {
@@ -378,8 +377,10 @@ static struct sk_buff *cdc_mbim_process_dgram(struct usbnet *dev, u8 *buf, size_
 			proto = htons(ETH_P_IP);
 			break;
 		case 0x60:
+#if IS_ENABLED(CONFIG_IPV6)
 			if (is_neigh_solicit(buf, len))
 				do_neigh_solicit(dev, buf, tci);
+#endif
 			proto = htons(ETH_P_IPV6);
 			break;
 		default:
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 17c941aac32d..b5fbd03418b6 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -19,7 +19,6 @@
 #include <net/arp.h>
 #include <net/ndisc.h>
 #include <net/gro.h>
-#include <net/ipv6_stubs.h>
 #include <net/ip.h>
 #include <net/icmp.h>
 #include <net/rtnetlink.h>
@@ -2045,7 +2044,7 @@ static int neigh_reduce(struct net_device *dev, struct sk_buff *skb, __be32 vni)
 	    ipv6_addr_is_multicast(&msg->target))
 		goto out;
 
-	n = neigh_lookup(ipv6_stub->nd_tbl, &msg->target, dev);
+	n = neigh_lookup(&nd_tbl, &msg->target, dev);
 
 	if (n) {
 		struct vxlan_rdst *rdst = NULL;
@@ -2130,15 +2129,15 @@ static bool route_shortcircuit(struct net_device *dev, struct sk_buff *skb)
 	{
 		struct ipv6hdr *pip6;
 
-		/* check if nd_tbl is not initiliazed due to
-		 * ipv6.disable=1 set during boot
+		/* check if ipv6.disable=1 set during boot was set
+		 * during booting so nd_tbl is not initialized
 		 */
-		if (!ipv6_stub->nd_tbl)
+		if (!ipv6_mod_enabled())
 			return false;
 		if (!pskb_may_pull(skb, sizeof(struct ipv6hdr)))
 			return false;
 		pip6 = ipv6_hdr(skb);
-		n = neigh_lookup(ipv6_stub->nd_tbl, &pip6->daddr, dev);
+		n = neigh_lookup(&nd_tbl, &pip6->daddr, dev);
 		if (!n && (vxlan->cfg.flags & VXLAN_F_L3MISS)) {
 			union vxlan_addr ipa = {
 				.sin6.sin6_addr = pip6->daddr,
diff --git a/drivers/net/vxlan/vxlan_multicast.c b/drivers/net/vxlan/vxlan_multicast.c
index a7f2d67dc61b..b0e80bca855c 100644
--- a/drivers/net/vxlan/vxlan_multicast.c
+++ b/drivers/net/vxlan/vxlan_multicast.c
@@ -39,8 +39,7 @@ int vxlan_igmp_join(struct vxlan_dev *vxlan, union vxlan_addr *rip,
 
 		sk = sock6->sock->sk;
 		lock_sock(sk);
-		ret = ipv6_stub->ipv6_sock_mc_join(sk, ifindex,
-						   &ip->sin6.sin6_addr);
+		ret = ipv6_sock_mc_join(sk, ifindex, &ip->sin6.sin6_addr);
 		release_sock(sk);
 #endif
 	}
@@ -73,8 +72,7 @@ int vxlan_igmp_leave(struct vxlan_dev *vxlan, union vxlan_addr *rip,
 
 		sk = sock6->sock->sk;
 		lock_sock(sk);
-		ret = ipv6_stub->ipv6_sock_mc_drop(sk, ifindex,
-						   &ip->sin6.sin6_addr);
+		ret = ipv6_sock_mc_drop(sk, ifindex, &ip->sin6.sin6_addr);
 		release_sock(sk);
 #endif
 	}
diff --git a/drivers/net/wireguard/socket.c b/drivers/net/wireguard/socket.c
index 253488f8c00f..c362c78d908e 100644
--- a/drivers/net/wireguard/socket.c
+++ b/drivers/net/wireguard/socket.c
@@ -136,8 +136,7 @@ static int send6(struct wg_device *wg, struct sk_buff *skb,
 			if (cache)
 				dst_cache_reset(cache);
 		}
-		dst = ipv6_stub->ipv6_dst_lookup_flow(sock_net(sock), sock, &fl,
-						      NULL);
+		dst = ip6_dst_lookup_flow(sock_net(sock), sock, &fl, NULL);
 		if (IS_ERR(dst)) {
 			ret = PTR_ERR(dst);
 			net_dbg_ratelimited("%s: No route to %pISpfsc, error %d\n",
diff --git a/drivers/net/wireless/intel/ipw2x00/ipw2100.c b/drivers/net/wireless/intel/ipw2x00/ipw2100.c
index 248a051da52d..c11428485dcc 100644
--- a/drivers/net/wireless/intel/ipw2x00/ipw2100.c
+++ b/drivers/net/wireless/intel/ipw2x00/ipw2100.c
@@ -4838,7 +4838,7 @@ static int ipw2100_system_config(struct ipw2100_priv *priv, int batch_mode)
 
 /* If IPv6 is configured in the kernel then we don't want to filter out all
  * of the multicast packets as IPv6 needs some. */
-#if !defined(CONFIG_IPV6) && !defined(CONFIG_IPV6_MODULE)
+#if !defined(CONFIG_IPV6)
 	cmd.host_command = ADD_MULTICAST;
 	cmd.host_command_sequence = 0;
 	cmd.host_command_length = 0;
diff --git a/net/bridge/br_arp_nd_proxy.c b/net/bridge/br_arp_nd_proxy.c
index 1e2b51769eec..c06386eda47f 100644
--- a/net/bridge/br_arp_nd_proxy.c
+++ b/net/bridge/br_arp_nd_proxy.c
@@ -17,7 +17,6 @@
 #include <linux/if_vlan.h>
 #include <linux/inetdevice.h>
 #include <net/addrconf.h>
-#include <net/ipv6_stubs.h>
 #if IS_ENABLED(CONFIG_IPV6)
 #include <net/ip6_checksum.h>
 #endif
@@ -455,7 +454,7 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 		return;
 	}
 
-	n = neigh_lookup(ipv6_stub->nd_tbl, &msg->target, vlandev);
+	n = neigh_lookup(&nd_tbl, &msg->target, vlandev);
 	if (n) {
 		struct net_bridge_fdb_entry *f;
 
-- 
2.53.0

