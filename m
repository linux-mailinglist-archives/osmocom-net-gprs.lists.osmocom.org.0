Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id A412C2A7935
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:08 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id D27CC18C5BB;
	Thu,  5 Nov 2020 08:27:47 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=PUcJQtI+
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::443; helo=mail-wr1-x443.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by lists.osmocom.org (Postfix) with ESMTP id A185F18B4D4
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:36 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id n18so22258721wrs.5
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HsLl/dvlpOEe2HirwRDBJ/wm3sQ0ERvQpQRUSaiMGUI=;
 b=PUcJQtI+g63BrPtz9nsXypXErI3jBVT5qtO2uO/VNKXy/L/987C89VW4AKs8s2L1af
 9nVXoRNzMby6p2D8RxKffQAXps538Gl+YfnB+4SzLsIbj0SHchnEaNoayDMtEwAlc2Zk
 89K73XKdPvHhJtS5yfOrcoDDj18E8wFuwDnNs9mSoBjCM7Kj36Bn+YZy8XW86yWPhHO/
 v3ycEMWBIvF+9KIapybgQ6/vHLt5WqwnNqCNRWvFMkRTB9JsyeSv5Vhg54TQJram5OQ7
 sWO+phTWIX//76UezIzDiZtmjVtiNfTs289DoIjU00kSeZiWLAMd0893KUWvx0TM9xxl
 ZNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HsLl/dvlpOEe2HirwRDBJ/wm3sQ0ERvQpQRUSaiMGUI=;
 b=tpThxznoB7B0yZgVVv3ddUkFiwXCjc3mGAxA0HG3Qj9sPSwq34rBackpJMUjs8zSYi
 bZPJLfgXxoapoAresmAirB8mUcDQY4c31hXjvKolkHN/FUFRAVEs2HOgocq0/zL7346Z
 yyBhQ6qwzaDq5RGWkE7rSSdpcWjyozdOIaVCN3cA5B8/x3i130bXGWD/xD0+gAiy7vV5
 T604zXZ6ARdKMuQzjTO8ikvXmJ7zhAKpUqXm6pQt7/QVsFyIbwaiZHsmJ3lO7V2vJ32z
 PTMEWJXLS1GUme5iXcHL1K8FC4y43E5Yj4ij4WRlfarc5WWdO2zQSWGI73LkM4PBTid+
 CSPw==
X-Gm-Message-State: AOAM5309pL/ULw4Kl3lANPs4U+6ZklKnF+0JVcAFeW2gPGBx8IwTq26R
 q4AGd/IqKzsdza73sqeiVS8=
X-Google-Smtp-Source: ABdhPJxNz2pEzbqj0dB6k1+ASbnWgahpKHwas3qn+kaNHiIMOUYJDQcAjQAk+2TG/t068VkCPel2pQ==
X-Received: by 2002:adf:ef83:: with SMTP id d3mr32916694wro.393.1604500296647; 
 Wed, 04 Nov 2020 06:31:36 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id o186sm2550808wmb.12.2020.11.04.06.31.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:36 -0800 (PST)
Subject: [PATCH net-next v2 03/10] tun: switch to net core provided statistics
 counters
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte
 <laforge@gnumonks.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 osmocom-net-gprs@lists.osmocom.org, wireguard@lists.zx2c4.com,
 Steffen Klassert <steffen.klassert@secunet.com>
References: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
Message-ID: <30fd49be-f467-95f5-9586-fec9fbde8e48@gmail.com>
Date: Wed, 4 Nov 2020 15:25:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <059fcb95-fba8-673e-0cd6-fb26e8ed4861@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 05 Nov 2020 08:27:23 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.34
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
Errors-To: osmocom-net-gprs-bounces@lists.osmocom.org
Sender: "osmocom-net-gprs" <osmocom-net-gprs-bounces@lists.osmocom.org>

Switch tun to the standard statistics pattern:
- use netdev->stats for the less frequently accessed counters
- use netdev->tstats for the frequently accessed per-cpu counters

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/tun.c | 127 +++++++++++-----------------------------------
 1 file changed, 31 insertions(+), 96 deletions(-)

diff --git a/drivers/net/tun.c b/drivers/net/tun.c
index be69d2720..504bdf501 100644
--- a/drivers/net/tun.c
+++ b/drivers/net/tun.c
@@ -107,17 +107,6 @@ struct tap_filter {
 
 #define TUN_FLOW_EXPIRE (3 * HZ)
 
-struct tun_pcpu_stats {
-	u64_stats_t rx_packets;
-	u64_stats_t rx_bytes;
-	u64_stats_t tx_packets;
-	u64_stats_t tx_bytes;
-	struct u64_stats_sync syncp;
-	u32 rx_dropped;
-	u32 tx_dropped;
-	u32 rx_frame_errors;
-};
-
 /* A tun_file connects an open character device to a tuntap netdevice. It
  * also contains all socket related structures (except sock_fprog and tap_filter)
  * to serve as one transmit queue for tuntap device. The sock_fprog and
@@ -207,7 +196,6 @@ struct tun_struct {
 	void *security;
 	u32 flow_count;
 	u32 rx_batched;
-	struct tun_pcpu_stats __percpu *pcpu_stats;
 	struct bpf_prog __rcu *xdp_prog;
 	struct tun_prog __rcu *steering_prog;
 	struct tun_prog __rcu *filter_prog;
@@ -1066,7 +1054,7 @@ static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
 	return NETDEV_TX_OK;
 
 drop:
-	this_cpu_inc(tun->pcpu_stats->tx_dropped);
+	dev->stats.tx_dropped++;
 	skb_tx_error(skb);
 	kfree_skb(skb);
 	rcu_read_unlock();
@@ -1100,42 +1088,6 @@ static void tun_set_headroom(struct net_device *dev, int new_hr)
 	tun->align = new_hr;
 }
 
-static void
-tun_net_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
-{
-	u32 rx_dropped = 0, tx_dropped = 0, rx_frame_errors = 0;
-	struct tun_struct *tun = netdev_priv(dev);
-	struct tun_pcpu_stats *p;
-	int i;
-
-	for_each_possible_cpu(i) {
-		u64 rxpackets, rxbytes, txpackets, txbytes;
-		unsigned int start;
-
-		p = per_cpu_ptr(tun->pcpu_stats, i);
-		do {
-			start = u64_stats_fetch_begin(&p->syncp);
-			rxpackets	= u64_stats_read(&p->rx_packets);
-			rxbytes		= u64_stats_read(&p->rx_bytes);
-			txpackets	= u64_stats_read(&p->tx_packets);
-			txbytes		= u64_stats_read(&p->tx_bytes);
-		} while (u64_stats_fetch_retry(&p->syncp, start));
-
-		stats->rx_packets	+= rxpackets;
-		stats->rx_bytes		+= rxbytes;
-		stats->tx_packets	+= txpackets;
-		stats->tx_bytes		+= txbytes;
-
-		/* u32 counters */
-		rx_dropped	+= p->rx_dropped;
-		rx_frame_errors	+= p->rx_frame_errors;
-		tx_dropped	+= p->tx_dropped;
-	}
-	stats->rx_dropped  = rx_dropped;
-	stats->rx_frame_errors = rx_frame_errors;
-	stats->tx_dropped = tx_dropped;
-}
-
 static int tun_xdp_set(struct net_device *dev, struct bpf_prog *prog,
 		       struct netlink_ext_ack *extack)
 {
@@ -1199,7 +1151,7 @@ static const struct net_device_ops tun_netdev_ops = {
 	.ndo_fix_features	= tun_net_fix_features,
 	.ndo_select_queue	= tun_select_queue,
 	.ndo_set_rx_headroom	= tun_set_headroom,
-	.ndo_get_stats64	= tun_net_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_change_carrier	= tun_net_change_carrier,
 };
 
@@ -1247,7 +1199,7 @@ static int tun_xdp_xmit(struct net_device *dev, int n,
 		void *frame = tun_xdp_to_ptr(xdp);
 
 		if (__ptr_ring_produce(&tfile->tx_ring, frame)) {
-			this_cpu_inc(tun->pcpu_stats->tx_dropped);
+			dev->stats.tx_dropped++;
 			xdp_return_frame_rx_napi(xdp);
 			drops++;
 		}
@@ -1283,7 +1235,7 @@ static const struct net_device_ops tap_netdev_ops = {
 	.ndo_select_queue	= tun_select_queue,
 	.ndo_features_check	= passthru_features_check,
 	.ndo_set_rx_headroom	= tun_set_headroom,
-	.ndo_get_stats64	= tun_net_get_stats64,
+	.ndo_get_stats64	= dev_get_tstats64,
 	.ndo_bpf		= tun_xdp,
 	.ndo_xdp_xmit		= tun_xdp_xmit,
 	.ndo_change_carrier	= tun_net_change_carrier,
@@ -1577,7 +1529,7 @@ static int tun_xdp_act(struct tun_struct *tun, struct bpf_prog *xdp_prog,
 		trace_xdp_exception(tun->dev, xdp_prog, act);
 		fallthrough;
 	case XDP_DROP:
-		this_cpu_inc(tun->pcpu_stats->rx_dropped);
+		tun->dev->stats.rx_dropped++;
 		break;
 	}
 
@@ -1683,7 +1635,6 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 	size_t total_len = iov_iter_count(from);
 	size_t len = total_len, align = tun->align, linear;
 	struct virtio_net_hdr gso = { 0 };
-	struct tun_pcpu_stats *stats;
 	int good_linear;
 	int copylen;
 	bool zerocopy = false;
@@ -1752,7 +1703,7 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 		 */
 		skb = tun_build_skb(tun, tfile, from, &gso, len, &skb_xdp);
 		if (IS_ERR(skb)) {
-			this_cpu_inc(tun->pcpu_stats->rx_dropped);
+			tun->dev->stats.rx_dropped++;
 			return PTR_ERR(skb);
 		}
 		if (!skb)
@@ -1781,7 +1732,7 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 
 		if (IS_ERR(skb)) {
 			if (PTR_ERR(skb) != -EAGAIN)
-				this_cpu_inc(tun->pcpu_stats->rx_dropped);
+				tun->dev->stats.rx_dropped++;
 			if (frags)
 				mutex_unlock(&tfile->napi_mutex);
 			return PTR_ERR(skb);
@@ -1795,7 +1746,7 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 		if (err) {
 			err = -EFAULT;
 drop:
-			this_cpu_inc(tun->pcpu_stats->rx_dropped);
+			tun->dev->stats.rx_dropped++;
 			kfree_skb(skb);
 			if (frags) {
 				tfile->napi.skb = NULL;
@@ -1807,7 +1758,7 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 	}
 
 	if (virtio_net_hdr_to_skb(skb, &gso, tun_is_little_endian(tun))) {
-		this_cpu_inc(tun->pcpu_stats->rx_frame_errors);
+		tun->dev->stats.rx_frame_errors++;
 		kfree_skb(skb);
 		if (frags) {
 			tfile->napi.skb = NULL;
@@ -1830,7 +1781,7 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 				pi.proto = htons(ETH_P_IPV6);
 				break;
 			default:
-				this_cpu_inc(tun->pcpu_stats->rx_dropped);
+				tun->dev->stats.rx_dropped++;
 				kfree_skb(skb);
 				return -EINVAL;
 			}
@@ -1910,7 +1861,7 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 					  skb_headlen(skb));
 
 		if (unlikely(headlen > skb_headlen(skb))) {
-			this_cpu_inc(tun->pcpu_stats->rx_dropped);
+			tun->dev->stats.rx_dropped++;
 			napi_free_frags(&tfile->napi);
 			rcu_read_unlock();
 			mutex_unlock(&tfile->napi_mutex);
@@ -1942,12 +1893,9 @@ static ssize_t tun_get_user(struct tun_struct *tun, struct tun_file *tfile,
 	}
 	rcu_read_unlock();
 
-	stats = get_cpu_ptr(tun->pcpu_stats);
-	u64_stats_update_begin(&stats->syncp);
-	u64_stats_inc(&stats->rx_packets);
-	u64_stats_add(&stats->rx_bytes, len);
-	u64_stats_update_end(&stats->syncp);
-	put_cpu_ptr(stats);
+	preempt_disable();
+	dev_sw_netstats_rx_add(tun->dev, len);
+	preempt_enable();
 
 	if (rxhash)
 		tun_flow_update(tun, rxhash, tfile);
@@ -1979,7 +1927,6 @@ static ssize_t tun_put_user_xdp(struct tun_struct *tun,
 {
 	int vnet_hdr_sz = 0;
 	size_t size = xdp_frame->len;
-	struct tun_pcpu_stats *stats;
 	size_t ret;
 
 	if (tun->flags & IFF_VNET_HDR) {
@@ -1996,12 +1943,9 @@ static ssize_t tun_put_user_xdp(struct tun_struct *tun,
 
 	ret = copy_to_iter(xdp_frame->data, size, iter) + vnet_hdr_sz;
 
-	stats = get_cpu_ptr(tun->pcpu_stats);
-	u64_stats_update_begin(&stats->syncp);
-	u64_stats_inc(&stats->tx_packets);
-	u64_stats_add(&stats->tx_bytes, ret);
-	u64_stats_update_end(&stats->syncp);
-	put_cpu_ptr(tun->pcpu_stats);
+	preempt_disable();
+	dev_sw_netstats_tx_add(tun->dev, 1, ret);
+	preempt_enable();
 
 	return ret;
 }
@@ -2013,7 +1957,6 @@ static ssize_t tun_put_user(struct tun_struct *tun,
 			    struct iov_iter *iter)
 {
 	struct tun_pi pi = { 0, skb->protocol };
-	struct tun_pcpu_stats *stats;
 	ssize_t total;
 	int vlan_offset = 0;
 	int vlan_hlen = 0;
@@ -2091,12 +2034,9 @@ static ssize_t tun_put_user(struct tun_struct *tun,
 
 done:
 	/* caller is in process context, */
-	stats = get_cpu_ptr(tun->pcpu_stats);
-	u64_stats_update_begin(&stats->syncp);
-	u64_stats_inc(&stats->tx_packets);
-	u64_stats_add(&stats->tx_bytes, skb->len + vlan_hlen);
-	u64_stats_update_end(&stats->syncp);
-	put_cpu_ptr(tun->pcpu_stats);
+	preempt_disable();
+	dev_sw_netstats_tx_add(tun->dev, 1, skb->len + vlan_hlen);
+	preempt_enable();
 
 	return total;
 }
@@ -2235,11 +2175,11 @@ static void tun_free_netdev(struct net_device *dev)
 
 	BUG_ON(!(list_empty(&tun->disabled)));
 
-	free_percpu(tun->pcpu_stats);
-	/* We clear pcpu_stats so that tun_set_iff() can tell if
+	free_percpu(dev->tstats);
+	/* We clear tstats so that tun_set_iff() can tell if
 	 * tun_free_netdev() has been called from register_netdevice().
 	 */
-	tun->pcpu_stats = NULL;
+	dev->tstats = NULL;
 
 	tun_flow_uninit(tun);
 	security_tun_dev_free_security(tun->security);
@@ -2370,7 +2310,6 @@ static int tun_xdp_one(struct tun_struct *tun,
 	unsigned int datasize = xdp->data_end - xdp->data;
 	struct tun_xdp_hdr *hdr = xdp->data_hard_start;
 	struct virtio_net_hdr *gso = &hdr->gso;
-	struct tun_pcpu_stats *stats;
 	struct bpf_prog *xdp_prog;
 	struct sk_buff *skb = NULL;
 	u32 rxhash = 0, act;
@@ -2428,7 +2367,7 @@ static int tun_xdp_one(struct tun_struct *tun,
 	skb_put(skb, xdp->data_end - xdp->data);
 
 	if (virtio_net_hdr_to_skb(skb, gso, tun_is_little_endian(tun))) {
-		this_cpu_inc(tun->pcpu_stats->rx_frame_errors);
+		tun->dev->stats.rx_frame_errors++;
 		kfree_skb(skb);
 		err = -EINVAL;
 		goto out;
@@ -2451,14 +2390,10 @@ static int tun_xdp_one(struct tun_struct *tun,
 
 	netif_receive_skb(skb);
 
-	/* No need for get_cpu_ptr() here since this function is
+	/* No need to disable preemption here since this function is
 	 * always called with bh disabled
 	 */
-	stats = this_cpu_ptr(tun->pcpu_stats);
-	u64_stats_update_begin(&stats->syncp);
-	u64_stats_inc(&stats->rx_packets);
-	u64_stats_add(&stats->rx_bytes, datasize);
-	u64_stats_update_end(&stats->syncp);
+	dev_sw_netstats_rx_add(tun->dev, datasize);
 
 	if (rxhash)
 		tun_flow_update(tun, rxhash, tfile);
@@ -2751,8 +2686,8 @@ static int tun_set_iff(struct net *net, struct file *file, struct ifreq *ifr)
 		tun->rx_batched = 0;
 		RCU_INIT_POINTER(tun->steering_prog, NULL);
 
-		tun->pcpu_stats = netdev_alloc_pcpu_stats(struct tun_pcpu_stats);
-		if (!tun->pcpu_stats) {
+		dev->tstats = netdev_alloc_pcpu_stats(struct pcpu_sw_netstats);
+		if (!dev->tstats) {
 			err = -ENOMEM;
 			goto err_free_dev;
 		}
@@ -2807,16 +2742,16 @@ static int tun_set_iff(struct net *net, struct file *file, struct ifreq *ifr)
 	tun_detach_all(dev);
 	/* We are here because register_netdevice() has failed.
 	 * If register_netdevice() already called tun_free_netdev()
-	 * while dealing with the error, tun->pcpu_stats has been cleared.
+	 * while dealing with the error, dev->stats has been cleared.
 	 */
-	if (!tun->pcpu_stats)
+	if (!dev->tstats)
 		goto err_free_dev;
 
 err_free_flow:
 	tun_flow_uninit(tun);
 	security_tun_dev_free_security(tun->security);
 err_free_stat:
-	free_percpu(tun->pcpu_stats);
+	free_percpu(dev->tstats);
 err_free_dev:
 	free_netdev(dev);
 	return err;
-- 
2.29.2


