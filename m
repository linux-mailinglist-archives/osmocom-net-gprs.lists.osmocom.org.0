Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E14AF8F4
	for <lists+osmocom-net-gprs@lfdr.de>; Wed,  9 Feb 2022 19:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 1967D283C6;
	Wed,  9 Feb 2022 18:04:32 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7JCHkbBQa9g; Wed,  9 Feb 2022 18:04:31 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 3031728394;
	Wed,  9 Feb 2022 18:04:28 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8E7FB38A0094
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  9 Feb 2022 18:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 6F4A928394
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  9 Feb 2022 18:04:23 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RGyCw8awdxvH for <osmocom-net-gprs@lists.osmocom.org>;
	Wed,  9 Feb 2022 18:04:23 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by mail.osmocom.org (Postfix) with ESMTPS id 8B357282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Wed,  9 Feb 2022 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644429862; x=1675965862;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=m+slI4yh82AWCulu6c9KfVHPaB3OAPtNKp6XyfgS5+g=;
  b=LdP5D9s8KJb6DajB324Lj5rotooiU+Gw3aFDDXinp+g7oDvOIAzpWMGO
   m1KVhcLI1wm1cLIKWnsRxxf4/JuGPqg5dbdpNGFvIlZ3WRaMlpBdwd+Yi
   bDgjq0EMTEFgakTg/neahOr2Yn6bUlnIUiFtoSRMXW00uG/gWbMQtqEzU
   doPlAguxQL++ztHsRGcPwwT10ACkh0rQ1mpkybjTbu/qsV6vvV5qv6ZC1
   xVyB1SQQGAnNWQqz3xs7OJYbhxi+jZf7yLw9TmX1pDJAzxbg6kT5ks5aw
   ZYNRuhKfvUCzJPzhBm3ESSIKSaY4fhW8DVwguLGAt8qt273uXdR2J6XRs
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="229932049"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600";
   d="scan'208";a="229932049"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2022 10:04:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600";
   d="scan'208";a="541219685"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.252.60.98]) ([10.252.60.98])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2022 10:04:03 -0800
Message-ID: <fd23700b-4269-a615-a73d-10476ffaf82d@linux.intel.com>
Date: Wed, 9 Feb 2022 19:04:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Content-Language: en-US
To: Harald Welte <laforge@osmocom.org>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
 <20220127163900.374645-1-marcin.szycik@linux.intel.com>
 <Yf6nBDg/v1zuTf8l@nataraja>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <Yf6nBDg/v1zuTf8l@nataraja>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Message-ID-Hash: EAH7YLQH3ENMRT44HH3HHZZEJ3HAIGGK
X-Message-ID-Hash: EAH7YLQH3ENMRT44HH3HHZZEJ3HAIGGK
X-MailFrom: marcin.szycik@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com, davem@davemloft.net, kuba@kernel.org, pablo@netfilter.org, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/EAH7YLQH3ENMRT44HH3HHZZEJ3HAIGGK/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi Harald,

Sorry for long delay in reply.

On 05-Feb-22 17:34, Harald Welte wrote:
> Hi Marcin, Wojciech,
> 
> thanks for the revised patch. In general it looks fine to me.
> 
> Do you have a public git tree with your patchset applied?  I'm asking as
> we do have automatic testing in place at https://jenkins.osmocom.org/ where I
> just need to specify a remote git repo andit will build this kernel and
> run the test suite.

I've created a public fork with our patchset applied, please see [1].

> 
> Some minor remarks below, all not critical, just some thoughts.
> 
> It might make sense to mention in the commit log that this patch by itself
> would create GTP-U without GTP ECHO capabilities, and that a subsequent
> patch will address this.
> 
>> This patch allows to create GTP device without providing
>> IFLA_GTP_FD0 and IFLA_GTP_FD1 arguments. If the user does not
>> provide file handles to the sockets, then GTP module takes care
>> of creating UDP sockets by itself. 
> 
> I'm wondering if we should make this more explicit, i.e. rather than
> implicitly creating the kernel socket automagically, make this mode
> explicit upon request by some netlink attribute.
> 
>> Sockets are created with the
>> commonly known UDP ports used for GTP protocol (GTP0_PORT and
>> GTP1U_PORT).
> 
> I'm wondering if there are use cases that need to operate on
> non-standard ports.  The current module can be used that way (as the
> socket is created in user space). If the "kernel socket mode" was
> requested explicitly via netlink attribute, one could just as well
> pass along the port number[s] this way.
> 

[1] https://github.com/mszycik/linux/tree/cpk_switchdev_gtp
