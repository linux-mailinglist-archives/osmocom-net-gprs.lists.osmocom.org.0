Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id B364E4C43E3
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 25 Feb 2022 12:48:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6C07F283A9;
	Fri, 25 Feb 2022 11:48:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rArCENyAB_Y; Fri, 25 Feb 2022 11:48:26 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 51D392838F;
	Fri, 25 Feb 2022 11:48:22 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id E082C38A04A9
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 25 Feb 2022 11:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 911232838F
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 25 Feb 2022 11:48:16 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIzdMBcNPKiE for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 25 Feb 2022 11:48:15 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 1D6972838D
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 25 Feb 2022 11:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645789695; x=1677325695;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=zH4b+OPsc/eRXIFFSyTGqOkoK5ujPq95ixybsZet6EQ=;
  b=EHPnxtWTK/yGxNcwqzMb6MIvQY0bFrZoU1ZvzrLW1pNyuDAGddE+JzVD
   I9dS3TEKYlvp57kvRJSSLkIK09BF15OSgF2QV8/BikkjuhKRXmNv8jGY7
   GCCT+BN5CbIbH23FiwiMWYPPxyI4c9KMFdJlCo//zpT503jptC8TuDpfd
   iVRnhxP4r7Cu0Q0TKyxuRhYEO7pnKo6K4C+n8D0J1+vDJ5Q2aX/X+P3Tw
   3VOp+FBRYfuPwAUxIm6Lw40a7e8/VJRU7GYfsTC2upcvoXUsNn8DEVH+A
   rmJUtSWOVJgGx87zS7hzCJptqZpFD9OUQ2x0cn5M95N42kxt91SsznZu9
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="232454218"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400";
   d="scan'208";a="232454218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2022 03:48:12 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400";
   d="scan'208";a="549231300"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.159.102]) ([10.249.159.102])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2022 03:48:09 -0800
Message-ID: <f11878c1-2486-b777-9701-912b048e5f0e@linux.intel.com>
Date: Fri, 25 Feb 2022 12:48:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH net-next v9 0/7] ice: GTP support in switchdev
Content-Language: en-US
To: Harald Welte <laforge@gnumonks.org>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
 <YhgKO8rdxMxclZPm@nataraja>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <YhgKO8rdxMxclZPm@nataraja>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Message-ID-Hash: PVT3HKGMFDNCJIRKBZSP2P3GJ57YMPBS
X-Message-ID-Hash: PVT3HKGMFDNCJIRKBZSP2P3GJ57YMPBS
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PVT3HKGMFDNCJIRKBZSP2P3GJ57YMPBS/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Harald,

Thank you for reviewing the gtp part!

On 24-Feb-22 23:44, Harald Welte wrote:
> Hi Marcin,
> 
> On Thu, Feb 24, 2022 at 07:54:53PM +0100, Marcin Szycik wrote:
>> Add support for adding GTP-C and GTP-U filters in switchdev mode.
> 
> For the changes to the gtp.ko driver this v9 looks fine to me.  I cannot
> comment about the switchdevs bits, those are beyond my expertise.
> 
> Regards,
> 	Harald
