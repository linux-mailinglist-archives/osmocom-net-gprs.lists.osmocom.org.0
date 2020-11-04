Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id B92BC2A7936
	for <lists+osmocom-net-gprs@lfdr.de>; Thu,  5 Nov 2020 09:28:08 +0100 (CET)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 2666D18C5B3;
	Thu,  5 Nov 2020 08:27:40 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=QrI9H99C
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::444; helo=mail-wr1-x444.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by lists.osmocom.org (Postfix) with ESMTP id 3BD7718B4AA
 for <osmocom-net-gprs@lists.osmocom.org>; Wed,  4 Nov 2020 14:31:33 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id 33so11471643wrl.7
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 04 Nov 2020 06:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aw1qKrJDVTVGc9+faF8YMpoPIqDGI/C6NZGeaxcJruY=;
 b=QrI9H99CnOXLE9YZ52vL/jd7vSPJ7YbbQ+/GEz94K8jHJym6M/yW6n7dju4xj5lqvL
 5hPJigkMUPqI6te9DzILj1mVuLFH+niifOTv0c2T6V0eTSsbPZcuiNSsCl3/ijjcClQu
 bUR/gdg03fgrzruEuihWf7Wk8TATNkMygT5n3WM59gUq7r1Z2t7apZLRn+WRi61CSFi8
 5AjFr42vhN7BZhd53pz0xL5hkjD31ut3FEyPiTAD0EL9NukVbMfUQ0fxqExCPQwen50y
 iFVw20oY6bErmKuFp2yv1UG6O77jPSu5fgQ4+O73BmrronAtNcS3LCyis5A2LI2s62Zw
 C89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aw1qKrJDVTVGc9+faF8YMpoPIqDGI/C6NZGeaxcJruY=;
 b=ofykAWkmXOZv8oKlTZNVElUBfuVBqW0HI/1LyEj/8f6k9HGyEPBKOFCabNPod+MvGd
 TXRWQd79Ulpih7KnCB0JEZijcyp471LAWtsaINAojQgyTvpLbqrc/i3SoEudgUcUe6ch
 k6rd5HRqlO7D/hLd03wppbgkbCpGYh8cukGlpjKvm1Ryb2qbMJ/pdouUQFlmPHmpcNJT
 vWWgHqhClDVl1Gp4tTnyZKcz9DvhsrdhGgor9F1b7tfpEviKQ68WoNUuXKQONG3TIqrX
 iUc8wOJdbIANCvyahH8lr9QWFDlw0l4OqfmfBGd7Q98itaVxkhBo8qycQgHUhTc5CWA4
 Vc3Q==
X-Gm-Message-State: AOAM530vfKxq+ygXqB9hlywFJLT2JiVKorZ4BzDDS1p04lD5r+UJ/8KQ
 NT9jbaQGYaup4tYbBhPf1j4=
X-Google-Smtp-Source: ABdhPJz307ULmxdDn5V8kkb2G/YjE3mN/nyh2Kax26+h4TOoNX1k539hzKbqFhhOjkZL0yu4Tvw5cQ==
X-Received: by 2002:adf:fe48:: with SMTP id m8mr32046522wrs.127.1604500293328; 
 Wed, 04 Nov 2020 06:31:33 -0800 (PST)
Received: from ?IPv6:2003:ea:8f23:2800:d177:63da:d01d:cf70?
 (p200300ea8f232800d17763dad01dcf70.dip0.t-ipconnect.de.
 [2003:ea:8f23:2800:d177:63da:d01d:cf70])
 by smtp.googlemail.com with ESMTPSA id g17sm2849624wrw.37.2020.11.04.06.31.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:31:32 -0800 (PST)
Subject: [PATCH net-next v2 01/10] net: core: add dev_get_tstats64 as a
 ndo_get_stats64 implementation
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
Message-ID: <91133597-bd18-20ab-2a98-fd061ff90fed@gmail.com>
Date: Wed, 4 Nov 2020 15:24:01 +0100
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

It's a frequent pattern to use netdev->stats for the less frequently
accessed counters and per-cpu counters for the frequently accessed
counters (rx/tx bytes/packets). Add a default ndo_get_stats64()
implementation for this use case.

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/linux/netdevice.h |  1 +
 net/core/dev.c            | 15 +++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index a53ed2d1e..7ce648a56 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4527,6 +4527,7 @@ void netdev_stats_to_stats64(struct rtnl_link_stats64 *stats64,
 			     const struct net_device_stats *netdev_stats);
 void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
 			   const struct pcpu_sw_netstats __percpu *netstats);
+void dev_get_tstats64(struct net_device *dev, struct rtnl_link_stats64 *s);
 
 extern int		netdev_max_backlog;
 extern int		netdev_tstamp_prequeue;
diff --git a/net/core/dev.c b/net/core/dev.c
index 9e7f071b8..88acc03fa 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -10366,6 +10366,21 @@ void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
 }
 EXPORT_SYMBOL_GPL(dev_fetch_sw_netstats);
 
+/**
+ *	dev_get_tstats64 - ndo_get_stats64 implementation
+ *	@dev: device to get statistics from
+ *	@s: place to store stats
+ *
+ *	Populate @s from dev->stats and dev->tstats. Can be used as
+ *	ndo_get_stats64() callback.
+ */
+void dev_get_tstats64(struct net_device *dev, struct rtnl_link_stats64 *s)
+{
+	netdev_stats_to_stats64(s, &dev->stats);
+	dev_fetch_sw_netstats(s, dev->tstats);
+}
+EXPORT_SYMBOL_GPL(dev_get_tstats64);
+
 struct netdev_queue *dev_ingress_queue_create(struct net_device *dev)
 {
 	struct netdev_queue *queue = dev_ingress_queue(dev);
-- 
2.29.2


