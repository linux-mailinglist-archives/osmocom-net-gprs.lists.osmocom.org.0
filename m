Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id C97294D502D
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 10 Mar 2022 18:25:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 920F7282E6;
	Thu, 10 Mar 2022 17:25:07 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V5WF9uEgCIPo; Thu, 10 Mar 2022 17:25:07 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 2A1B42812F;
	Thu, 10 Mar 2022 17:25:02 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7A7C138A0A7C
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  9 Mar 2022 11:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5033B2810F
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  9 Mar 2022 11:32:30 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbyNVkSp6H4c for <osmocom-net-gprs@lists.osmocom.org>;
	Wed,  9 Mar 2022 11:32:28 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by mail.osmocom.org (Postfix) with ESMTPS id C25F82810E
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  9 Mar 2022 11:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646825547; x=1678361547;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pZh6tggFD0k+hx+94LfOfVeWHwnnjq6x1VyVrjGwjL4=;
  b=St0aiuOo76+UhVpF7mGrAd1bJFYxiKu+3RSmSv/aELFNo1Tp4uOgErsx
   OVafrDCf8znWB+whb9Wsx9RL29wYa+/myoH7IPNc+dRzhT8VYyqRqckYg
   89C/vR30a1dAZhGL/qg+t7f/eKEC4jZ23daFSCpZr8LRuBbRZUEZapc78
   4s0H1oMzGFnkJUT4iTawTDoZ4sda6yZ2JXew/YGQmucQwZ5X6n3UTY8Dd
   aClnOM3NIbi2W7JRu2KYebwvBldVM5Xa8wTg/OAgZzgWeLrooQReBCbDS
   22h/A0wDkS4tpo6Spo8ihK22/V+nTlfqWiaP35O7QCacAR4kYBRpTlyJP
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="318180825"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400";
   d="scan'208";a="318180825"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2022 03:32:25 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400";
   d="scan'208";a="554082214"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2022 03:32:21 -0800
Date: Wed, 9 Mar 2022 03:33:44 -0500
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Subject: Re: [PATCH net-next v10 7/7] ice: Support GTP-U and GTP-C offload in
 switchdev
Message-ID: <YihmaGhvS0PlndgM@localhost.localdomain>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
 <20220304164048.476900-8-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220304164048.476900-8-marcin.szycik@linux.intel.com>
X-MailFrom: michal.swiatkowski@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3VKW5NN47A3PITXZK35CLC7K2P6RYSJK
X-Message-ID-Hash: 3VKW5NN47A3PITXZK35CLC7K2P6RYSJK
X-Mailman-Approved-At: Thu, 10 Mar 2022 17:24:58 +0000
CC: netdev@vger.kernel.org, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, laforge@gnumonks.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com, jhs@mojatatu.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/3VKW5NN47A3PITXZK35CLC7K2P6RYSJK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi

ice part looks fine, thanks!

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Regards, Michal
