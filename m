Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F8A573C3A
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 13 Jul 2022 19:54:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 32E1C282B8;
	Wed, 13 Jul 2022 17:53:59 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LX1PcVMuxebl; Wed, 13 Jul 2022 17:53:58 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 19C1C282BA;
	Wed, 13 Jul 2022 17:53:49 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D51B038A0AE4
	for <osmocom-net-gprs@lists.osmocom.org>; Thu,  7 Jul 2022 08:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id B29C428048
	for <osmocom-net-gprs@lists.osmocom.org>; Thu,  7 Jul 2022 08:45:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4j_9ZlKZuXgU for <osmocom-net-gprs@lists.osmocom.org>;
	Thu,  7 Jul 2022 08:45:23 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by mail.osmocom.org (Postfix) with ESMTPS id 511FE27ED1
	for <osmocom-net-gprs@lists.osmocom.org>; Thu,  7 Jul 2022 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657183523; x=1688719523;
  h=subject:to:cc:references:from:message-id:date:
   mime-version:in-reply-to:content-transfer-encoding;
  bh=edbKoKalbvq90CBmxogPesuIiDjl8rwJ49B+zZvetjQ=;
  b=ex5lG3rL0VvxmxxyUfnoSJWzL8haUpj0fvU4ZtiheiRedXp3NJFIOwPc
   4Q7ck0/Q2lg6bUYjycWi0lEePqqVG8l9ranZNheFELH5d8IFzaIMF+gAz
   M6008PMKWw+RZwkaM8g450pKtTo7o8qbuFo3v7ig2xIOM5mPACBNTAL85
   Cng1qULHkebp3UP9sJ62iu36N75cAJYyKiWGyu+eG9PFc9Ri0i3ijVJcE
   JYIHXGyz5RyrY8BzLlM8c4TmuUfqpFP28fsCA90Z03jNOqlVMyyDRuoNK
   wlE97Zo9tbyKlkIkdVuCigoDYjSyRjGFbdHB7IYvr63xS7mLU5UUR2wIu
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="283994359"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400";
   d="scan'208";a="283994359"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2022 01:45:05 -0700
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400";
   d="scan'208";a="651047273"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.31.6]) ([10.255.31.6])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2022 01:44:45 -0700
Subject: Re: [linux-next:master] BUILD REGRESSION
 088b9c375534d905a4d337c78db3b3bfbb52c4a0
To: Greg KH <gregkh@linuxfoundation.org>, kernel test robot <lkp@intel.com>
References: <62c683a2.g1VSVt6BrQC6ZzOz%lkp@intel.com>
 <YsaUgfPbOg7WuBuB@kroah.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <c86816fd-aaba-01a9-5def-44868f0a46c9@intel.com>
Date: Thu, 7 Jul 2022 16:44:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YsaUgfPbOg7WuBuB@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-MailFrom: rong.a.chen@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PPKTX3MU6Y5UFSOEWU45IKY3JNU3EOOH
X-Message-ID-Hash: PPKTX3MU6Y5UFSOEWU45IKY3JNU3EOOH
X-Mailman-Approved-At: Wed, 13 Jul 2022 17:53:37 +0000
CC: Andrew Morton <akpm@linux-foundation.org>,
	virtualization@lists.linux-foundation.org, usbb2k-api-dev@nongnu.org,
	tipc-discussion@lists.sourceforge.net, target-devel@vger.kernel.org,
	sound-open-firmware@alsa-project.org,
	samba-technical@lists.samba.org, rds-devel@oss.oracle.com,
	patches@opensource.cirrus.com, osmocom-net-gprs@lists.osmocom.org,
	openipmi-developer@lists.sourceforge.net, nvdimm@lists.linux.dev,
	ntb@lists.linux.dev, netfilter-devel@vger.kernel.org,
	netdev@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
	megaraidlinux.pdl@broadcom.com, linuxppc-dev@lists.ozlabs.org,
	linux1394-devel@lists.sourceforge.net, linux-x25@vger.kernel.org,
	linux-wpan@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-unionfs@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-staging@lists.linux.dev, linux-serial@vger.kernel.org,
	linux-sctp@vger.kernel.org, linux-scsi@vger.kernel.org,
	li@mail.osmocom.org, nux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org, linux-rdma@vger.kernel.org,
	linux-raid@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-perf-users@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-parport@lists.infradead.org,
	linux-parisc@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-nfc@lists.01.org, linux-mtd@lists.infradead.org,
	linux-mmc@vger.kernel.org, linux-mm@kvack.org,
	linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-input@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-fpga@vger.kernel.org,
	linux-fbdev@vger.kernel.org, linux-ext4@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-cxl@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-cifs@vger.kernel.org,
	linu@mail.osmocom.org, x-btrfs@vger.kernel.org,
	linux-bluetooth@vger.kernel.org, linux-block@vger.kernel.org,
	linux-bcache@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linaro-mm-sig@lists.linaro.org,
	legousb-devel@lists.sourceforge.net, kvm@vger.kernel.org,
	keyrings@vger.kernel.org, isdn4linux@listserv.isdn4linux.de,
	iommu@lists.linux.dev, iommu@lists.linux-foundation.org,
	intel-wired-lan@lists.osuosl.org, greybus-dev@lists.linaro.org,
	dri-devel@lists.freedesktop.org, dm-devel@redhat.com,
	devicetree@vger.kernel.org, dev@openvswitch.org,
	dccp@vger.kernel.org, damon@lists.linux.dev, coreteam@netfilter.org,
	cgroups@vger.kernel.org, ceph-devel@vger.kernel.org,
	ath11k@lists.infradead.org, apparmor@lists.ubuntu.com,
	amd-gfx@lists.freedesktop.org, alsa-devel@alsa-project.org,
	accessrunner-general@lists.sourceforge.net
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/PPKTX3MU6Y5UFSOEWU45IKY3JNU3EOOH/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>



On 7/7/2022 4:08 PM, Greg KH wrote:
> On Thu, Jul 07, 2022 at 02:56:34PM +0800, kernel test robot wrote:
>> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> branch HEAD: 088b9c375534d905a4d337c78db3b3bfbb52c4a0  Add linux-next specific files for 20220706
>>
>> Error/Warning reports:
>>
>> https://lore.kernel.org/linux-doc/202207070644.x48XOOvs-lkp@intel.com
>>
>> Error/Warning: (recently discovered and may have been fixed)
>>
>> Documentation/arm/google/chromebook-boot-flow.rst: WARNING: document isn't included in any toctree
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1108): undefined reference to `__aeabi_ddiv'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1124): undefined reference to `__aeabi_ui2d'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1164): undefined reference to `__aeabi_dmul'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1170): undefined reference to `__aeabi_dadd'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1180): undefined reference to `__aeabi_dsub'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1190): undefined reference to `__aeabi_d2uiz'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x162c): undefined reference to `__aeabi_d2iz'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x16b0): undefined reference to `__aeabi_i2d'
>> dc_dmub_srv.c:(.text+0x10f8): undefined reference to `__aeabi_ui2d'
>> dc_dmub_srv.c:(.text+0x464): undefined reference to `__floatunsidf'
>> dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x33c): undefined reference to `__floatunsidf'
>> drivers/pci/endpoint/functions/pci-epf-vntb.c:975:5: warning: no previous prototype for 'pci_read' [-Wmissing-prototypes]
>> drivers/pci/endpoint/functions/pci-epf-vntb.c:984:5: warning: no previous prototype for 'pci_write' [-Wmissing-prototypes]
>> drivers/vfio/vfio_iommu_type1.c:2141:35: warning: cast to smaller integer type 'enum iommu_cap' from 'void *' [-Wvoid-pointer-to-enum-cast]
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x34c): undefined reference to `__floatunsidf'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x378): undefined reference to `__divdf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x38c): undefined reference to `__muldf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3a0): undefined reference to `__adddf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3b4): undefined reference to `__subdf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3d4): undefined reference to `__fixunsdfsi'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x750): undefined reference to `__fixdfsi'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x7c0): undefined reference to `__floatsidf'
>> powerpc-linux-ld: drivers/pci/endpoint/functions/pci-epf-vntb.c:174: undefined reference to `ntb_link_event'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x468): undefined reference to `__divdf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x46c): undefined reference to `__muldf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x470): undefined reference to `__adddf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x474): undefined reference to `__subdf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x478): undefined reference to `__fixunsdfsi'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x47c): undefined reference to `__fixdfsi'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x480): undefined reference to `__floatsidf'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x60c): undefined reference to `__floatunsidf'
>>
>> Unverified Error/Warning (likely false positive, please contact us if interested):
>>
>> arch/x86/events/core.c:2114 init_hw_perf_events() warn: missing error code 'err'
>> drivers/android/binder.c:1481:19-23: ERROR: from is NULL but dereferenced.
>> drivers/android/binder.c:2920:29-33: ERROR: target_thread is NULL but dereferenced.
>> drivers/android/binder.c:353:25-35: ERROR: node -> proc is NULL but dereferenced.
>> drivers/android/binder.c:4888:16-20: ERROR: t is NULL but dereferenced.
>> drivers/base/regmap/regmap.c:1996:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/char/random.c:869:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/firmware/arm_scmi/clock.c:394:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/firmware/arm_scmi/powercap.c:376:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c:1214:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/gpu/drm/amd/display/dc/os_types.h: drm/drm_print.h is included more than once.
>> drivers/gpu/drm/bridge/ite-it66121.c:1398:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/greybus/operation.c:617:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> 
> <snip>
> 
> When the compiler crashes, why are you blaming all of these different
> mailing lists?  Perhaps you need to fix your compiler :)
> 
> thanks,
> 
> greg k-h
> 

Hi Greg,

Sorry for the inconvience, we'll fix it ASAP.

Best Regards,
Rong Chen
