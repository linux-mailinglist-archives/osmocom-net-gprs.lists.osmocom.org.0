Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGWQKYgLzGnGNgYAu9opvQ
	(envelope-from <osmocom-net-gprs-bounces@lists.osmocom.org>)
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:36 +0200
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F87036F958
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 31 Mar 2026 19:59:36 +0200 (CEST)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id C2A664C02AE;
	Tue, 31 Mar 2026 17:59:35 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZtUd9CFRJGs8; Tue, 31 Mar 2026 17:59:35 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id DAC134C0299;
	Tue, 31 Mar 2026 17:59:34 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org
 [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 7C8BA38A0071
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 23:44:26 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 440AD308880
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 23:44:26 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JG94E6qeboNS for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 23:44:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	by mail.osmocom.org (Postfix) with ESMTPS id DF90B308878
	for <osmocom-net-gprs@lists.osmocom.org>;
 Mon,  3 Nov 2025 23:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762213465; x=1793749465;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:mime-version;
  bh=wCCZ8FxFroFX0WoxTYS8rDekL9uJ0Yt/CijHy+RvSDs=;
  b=bvy4IcxLnyilBo0VzgH2x8spnvmIrOhGB81RTsg7l+JdUXMfL4TrHLh6
   Cq1bkBb0VZamm1g6kfrHMjMIWYQRad/kXM/q37z/yKijMdyRpWqBB9R7X
   sD7n34fTsqcgiQPFdH8tfaKbUuzUL/FoFWw9hheYTMlyANMPnHIdB66bG
   H3D3ga1bocXHUYIEatQzRen14x72RHy5hKZIOfOQl/BsSdVSpdJbsngSp
   tauA5Vl1Vljg956ISjDtTaTcGaNpgUfMzgk1v+VnivLzMqgC9Hp90g1+Q
   TeB35uKAVWs+tbWltNHQTAjQ4JUukAHwiLmQh+emkZPjBfyWXaEkppplh
   w==;
X-CSE-ConnectionGUID: o6/e67V+Tde24reKcvRe7g==
X-CSE-MsgGUID: iBDcSm7jSGmlqFtQbLnqNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81707351"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000";
   d="asc'?scan'208";a="81707351"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 15:44:10 -0800
X-CSE-ConnectionGUID: fGlAaNTNR1qnsaJoDNNE6w==
X-CSE-MsgGUID: 9zVfa3jcST6xVH7phBR+hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000";
   d="asc'?scan'208";a="186685675"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 15:44:10 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 15:44:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 15:44:09 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 15:44:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P9nZyetxY68iozEdOrHGTq9e/xhPj5P9NeUaAI46IgXAzIHtz245gqic9bhVkJk4xhI9Eqwlht8xK5u3N3t66KHrD575Yu6Z1zRc7iBZ/MDIOYpnWJknFdKYrSeUJgh/hdF0dCvZbiD8khyt730MDY7DDMuloYQ4FF5ZNgxF6tkxOYuQq9ESC1iAO1oVksoHIjdOSShrXME2tArpIIYIEhtL6HKZYyfE3TZiZNxZ4BPEEO0aTDUhZ7+uC3C2EUBzbMwHWn9JctpdqjR+yvT4r5kEK44+/wjYPgjY7Ujq89BzmPjHV/alxGlwzsRgsJxtdMb6kLxs9uCDyDXX1XEsYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpCIf4Xf5CbW5vJpjWriRWPzgcv8T+X83CmrnggfnSM=;
 b=eRyitQ9akHBoIzGyvHZf13TjEbCBtj8X8Kwx6d3mpVZoKGm+g0RjV9Gd0lDRY3fwU9rrRsRXjaD2x4+zBhfX63Bs4HiPc+YZQLnvBWhZybyCevx2q9GczO677dSDy/58N7hFGU8bYAo3B1ow+sTEYbOaj0oHutUAih/SqWSEsDYs5rk/flzE2WdfU4upRbIvqouloRb2xiDVGVTbtisAIJxJl3csBtqWPcIxIJmXFo+TOJZHMXQVSM9sx/yoWmSCoS5EqAFbWhKhVhmSRLLDyJLmuI9b12ubPsQNSRpKGc/rj24+k/pZKCj++o8VAXNoXvAn94K/wvUw4ZUIh81QwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB5892.namprd11.prod.outlook.com (2603:10b6:303:16a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 23:44:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 23:44:01 +0000
Message-ID: <9aba9f22-d417-4b7e-9f2a-f25434bc83c3@intel.com>
Date: Mon, 3 Nov 2025 15:43:59 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gtp: Fix a typo error for size
To: Chu Guangqing <chuguangqing@inspur.com>, <pablo@netfilter.org>,
	<laforge@gnumonks.org>, <andrew+netdev@lunn.ch>, <davem@davemloft.net>,
	<edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>
References: <20251103060504.3524-1-chuguangqing@inspur.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20251103060504.3524-1-chuguangqing@inspur.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="------------QvJyahXB5HADrLKSoiS1tcec"
X-ClientProxiedBy: MW4PR04CA0331.namprd04.prod.outlook.com
 (2603:10b6:303:8a::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB5892:EE_
X-MS-Office365-Filtering-Correlation-Id: a98763ac-d7b3-48e1-b246-08de1b32ddd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
 BCL:0;ARA:13230040|7416014|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
 =?utf-8?B?Q3M2V1pYaHlTa21ZZmQ1dnhRYWpwQ0ZVWWlBMmtTN2lMdXZFcU1uLzl6MHJs?=
 =?utf-8?B?NW5jRjdKZCtUeGtIQUgySWdDbTZzZXA1SU9vVWNBQy90eU9nTXlEaUxWQldW?=
 =?utf-8?B?OVJXNFp2cHVvVnZXdGJWRnVWN2pXUitZRG1sOTJWQmgxYnNoWDF3bXd2RmNs?=
 =?utf-8?B?NzRMa0xxVjg3eWx6WlVHVXU5R2RFZXk3Tk4zbTZ4UzBkRHdBeUJnK2dFdWV4?=
 =?utf-8?B?M29JQnJycXNtYWFCSkc4SFUwVlR6WEt0QWxma1ZBUjQxYnZ2eTdOaE4vbXgr?=
 =?utf-8?B?M0xhYUR4RitXZkhqOFVBeHlzSHJtNUNmcTZ5MUxHb3FleFI4T2RHa1VTNzhB?=
 =?utf-8?B?T0tlSmw1d0g1a01PSjJZb0xCVnJLVUpWYWZMS1IrVEdNU0Y2MVBpY2pDY2tz?=
 =?utf-8?B?SmZnNGdhWkhJL0tXa0NnWWpVQ0x2S3VMa2dncTVPdHQwOGtlZkc0dHoxbHlN?=
 =?utf-8?B?ZnZWZ3ZiZmdKVDNLSWJ0aXZTWU5wbmZMdWRDS2lsZTFydHF6cUVyT29uRWUw?=
 =?utf-8?B?SFF4VllCdTBlTmRPQllaY2RoNUlMZXJOMkZJaWFtT1RBWFZVM1NmWG56c3A4?=
 =?utf-8?B?eWoyV01XdDZ1SHhQMXJxcnhwZXgrQmo1VGE4ZWNPaXJNc0lIcWNPSDJkc1Jx?=
 =?utf-8?B?VUt2L0h2TFBId0hTOGQvSjNoeDRYSEV3amdlYkg4RzRvdVErc0FONENmeXpu?=
 =?utf-8?B?WndWanpkM1BQbVg5ZGIvS3hkV09hZjF0UWR1aHVvenptQlRacmV4cTVFa0s4?=
 =?utf-8?B?YTB5czhiVDhoQXpNb2thZDAwUGFIcFlnZkowOEtRU1hPNnZNaFkyVkpTMUM0?=
 =?utf-8?B?LzAzc2VmUDVxZzFoVWZtcC84Um82dFh0OWdwVlVlaXZTZ1dLQ3l3ck5JRHlD?=
 =?utf-8?B?QjczeGRlNzgzcEREZG1iU25HOGVsRytoaFgwNjhIUUFJczNudERVZHdsUGtO?=
 =?utf-8?B?VDNsbDJrQ3M5ckk2a1RKYWkrSjdrVGd4alRQUUlhOFRnTmNWeWlaS1pOUXhF?=
 =?utf-8?B?Q2Ria2V4Uko5VTlEdkk5NEkwUnlHTXViQzc1ZVlERHo0b2I1dXBMRWFabml3?=
 =?utf-8?B?dUhDY2RBT0dxU1NuTHJXbUhRTGRkYnJ4RG9IWkxnNXFueGpzbjNPNW14Qkh2?=
 =?utf-8?B?NW4raHcyTmJsenZNS2V4N09JV0dxYTJjZGF1V05QRlA3ZVlPZ3BpZStwZ2Zl?=
 =?utf-8?B?ZXdkOG1YUnIrbWZ1SXlNWXJIMDRmdWtnSXpUODlrd0QyRkE1VXByRWRCUzRz?=
 =?utf-8?B?T2t6VDhYd0JJNmtFU09kV0pBR2dlcEpSSVVGQzNiMm9NWW14UXp0NjF6ZjR4?=
 =?utf-8?B?SVlFWU41ZHBURVA3ZW0rWGdJaDFYaFM2bWpXYmRqaHFzdkN2M0pBK1MwRi9o?=
 =?utf-8?B?ZXV6SzlrMWtYYjQvY0NUNnI5enRPZjlYQjF6NHNQaTFHNDhnb0dUOTcvYm5J?=
 =?utf-8?B?SGFsZUN2b0hybTlLUVBvTFJUNnlIbHdXaHNHRUlaTXF2N0c0NlF4SEJmWEox?=
 =?utf-8?B?UzJFcmFKSE1ncmwrL3lxQkt1bGk4NU96c3BJL2lEamszSzd2OHBOYmZUMmlw?=
 =?utf-8?B?SjVPTWVGbHR4eURGRnhTRTluaWlsaDBma3pVbDZNT2FyOStlYmJTZC9MZkk1?=
 =?utf-8?B?T25JTmNCa0FESXEzOFZjellMd1lQMGVkc2FmQkU1TWNGOTE0eklja2FNNU5R?=
 =?utf-8?B?MVJlNnN1UHVaQzRvME9YR1lZMzNodXVzVWhRQjg3dGEzOXF3UDJLVDdpdExT?=
 =?utf-8?B?V05Hd3RxR21PdXMweG9nM09QVUZHUEFBbE90Z2RXZHVKa1lyQ2R5TUplUktW?=
 =?utf-8?B?N2prZGxDMUpYRVU5QTY5YktFN212amx0d1Y1ek1kWW9JVk1sK0hOd1pyeFU4?=
 =?utf-8?B?NXM0amZsTnoxQUpaOUQwYTdNYVF4RnZDVlRmY3dFeXgzV21IcVZQeXBrdGlQ?=
 =?utf-8?Q?d4GcYk2B3ftebnWSf9PS0SEoMmqIohzd?=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5089.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?NWErSmovdmg2eE5IRWh6TXNhTitWemR2eHlKOTZla0tTUmIyY05LQXNTSHUv?=
 =?utf-8?B?QjlDaklqUVZoZGxtdFkxcC9xRmFyYytKY1c0YXRqa2JZdDNxUWpUaDlqUUNX?=
 =?utf-8?B?dmFCZ2c2Ym5VUklXeFNsWENCaEN1aDA2bnpvM2tFQnkxSHZtWUxwcEZOYnRt?=
 =?utf-8?B?WEhMdnhmcWNMWDBtYm1OK3lxR29PUHRrRTBnd2pOUmJuMlpscXl2V2xvWUVQ?=
 =?utf-8?B?TXFndVFsOGJkSFFrNkZYT2Irc1hwckNmbVVlQUZUY1UyWFlDVjNKNGVDS2F0?=
 =?utf-8?B?aHVneUhDd3lsZjdoMDN0V05PK2tESkZvcjNob2NxQ01ZTVQ4WXMyMlpwdSth?=
 =?utf-8?B?Z29aRGZKaFhGbldhQUhvTHVFOUc5eGNWZmNkUnVEYVYzR3Y1ZTZxLzVqeUNl?=
 =?utf-8?B?cFJsUlpLM2hlblFRbDltT0QzelJPS2ZrWFNIUVpqdnFQVnFHd0hUZHlINmJ0?=
 =?utf-8?B?V3ZheFpiVCt0TDZsMmJxVllXTHhLT2xPQzZDVERpTFhnRitrSTlVTVhNdG9m?=
 =?utf-8?B?c1hTMkRwNnVsZmladlVpTjZFM0hWRTJnWnhMdjdpTlpIWEx3a20rSEU0ZVp6?=
 =?utf-8?B?WlhiN1hHcG5hNmtBd3BYK0FoSllXNVRFQzFvaWc4SWljRDQ1bzRzMTVWRSsr?=
 =?utf-8?B?eFRhL09RVWRaUXZmR1JoUGFXSXJycXRISGR3UUpFL1drTkdKRWxJbGpsZHRY?=
 =?utf-8?B?VUNlLytNMHdtdThxUHovZjNaeHR3dUVObkFoMzI4cy9uRlJvaWNzMTByT28z?=
 =?utf-8?B?REExRGdrV05XcGcxTVRmaHFkNFhHczNxS2lFNGJDY0NoWCtMeGNXd0owdGFa?=
 =?utf-8?B?OG4zN0FLQUs5M29kZlZNUW9ORXhjUGt4cXlCZ1RYaGQ2M281eTJLd1pTc1Zs?=
 =?utf-8?B?T2VOUkVFdWFlTmhraWlZdUVIOUErUW9vd3JnU1JrUEE0RUxlSDZndEFFblcv?=
 =?utf-8?B?Qm4yZksvVlFKczNLK2VKNnIxQXEvYzZVb0g4bEhUa3lpU1hkZk53M3dDV3l4?=
 =?utf-8?B?NmRtanAzMGV5LzNlZ0VrTG0xZG1wM29hY2NTd0ZWWFFuZDZYbyt1NUlwb1hP?=
 =?utf-8?B?Qkh6UzJDRllLbFhZSWg0UkVaNDhxZ0dXQUJFUTQrUmh0SXJLT3d1TlRjZEFN?=
 =?utf-8?B?T1hkYXoxNWFSUzFDNzdMcEtKZVoyVVErd1d6aGZpUVBvaS8vRG54TTVxOWxy?=
 =?utf-8?B?TnlmM3oxMStvWkhNdUR5Zm8rbW05Qlgwa0t5K01ZZTNubmtxU3MrdllVL2Mr?=
 =?utf-8?B?S29McmNtNDgxd0dkZjZVcHBHWEVzb3gwNEs3R0V2bDUzdWRVRFQ3WXViWnpO?=
 =?utf-8?B?RFBESUpoK29OU29NaVM4MnhRejA3MWt4NGxPNGNMd2l0eUtPekRqNXdxcmpv?=
 =?utf-8?B?VTU2ZitpSHN1SXl4MnJRTlNaOXVGL0tUYXZDUGQvOVNVWHBLMjM1MjhkMDR2?=
 =?utf-8?B?UE10UCsxZG1CbTBMRlZWcm1RdTZIMVl0cDRFVGRBUTFENDU3bVpZdEkxbFU2?=
 =?utf-8?B?MjdMcnZTTFZuZVdjb3RUT1VxbXFtSnRHM1REeUJWMzQxRlNYL2xJZEtKQTh4?=
 =?utf-8?B?TEREN0NJZ3NCOG1GNDQ1ZGQzWCtjR0ZwcFpVcVZQYnBLMVA3MlBCYllKZ3Zh?=
 =?utf-8?B?Y1U4bUZNUU1zK3NmQ0d3bDk0UjVZdHF3L0RXK1dQWEpqOWFTMW9KOEN0N3Jr?=
 =?utf-8?B?TlpyRVFkNHhUUU1CVjhoZW9yaHVIYTYyTGZDenU0a0I0MDF3QWpDZDlDZFBT?=
 =?utf-8?B?cGtmeWZGM0ZCSlE3dmxzaUtvbVRWNGx0cnEwY2xaYnNKRXZCREQ1L0JIc2tv?=
 =?utf-8?B?Y0RhQlRxWUtrd3dBSUZ3SG5MQzNMem5xT2lrZkhrelJONTNReEhqVlRkNHJY?=
 =?utf-8?B?RXIxcytrTWQxVTE2bWJybHJ3dStUSTIzYWJoVUozWGp6MGdaM3UveE9jUE5R?=
 =?utf-8?B?SzE2ZlM3aStodmcxVndpNmlTbng3amtnblE0YkF5akhDQ2pnQXNuV1RCbnFC?=
 =?utf-8?B?b3YyMnFSY1pPS3A1MC9LeTdGc1hGNnRNa0hYa1BzV1NMREJyc2IvRm5MQVEx?=
 =?utf-8?B?K2p3NzZtakN0dk9tWUJodGhRY0pKRnhOY0FRMUx0ckxLaVg4RG1KZThhWW9M?=
 =?utf-8?B?YXhRcmh0NG1yU3ppNUFvZ2JyM1cxQlRlUXIvbDQvY3RNWG9CYnBMNzFZQVBX?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a98763ac-d7b3-48e1-b246-08de1b32ddd6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 23:44:01.9045
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 F6pyXHwkQWQ6RReFCrvxs5Ib+mFqnSdGlgWHlBqIyfcyrtm7gvjxTUt6j70E594aWOiu3KWE8E5VKE3Z+1v0oDWk/EbArAA90m0ccuQM4qE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5892
X-OriginatorOrg: intel.com
X-MailFrom: jacob.e.keller@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation
Message-ID-Hash: 7XWZPK62TMPDMRVQW727CIWQDLCIZC7V
X-Message-ID-Hash: 7XWZPK62TMPDMRVQW727CIWQDLCIZC7V
X-Mailman-Approved-At: Tue, 31 Mar 2026 17:59:25 +0000
CC: osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU,
 OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/7XWZPK62TMPDMRVQW727CIWQDLCIZC7V/>
List-Archive: 
 <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>
X-Spamd-Result: default: False [-0.01 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3546];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+a:ganesha.gnumonks.org:c];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	DKIM_TRACE(0.00)[intel.com:-];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chuguangqing@inspur.com,m:pablo@netfilter.org,m:laforge@gnumonks.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:osmocom-net-gprs@lists.osmocom.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:12337, ipnet:2001:780::/32, country:DE];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[osmocom-net-gprs@lists.osmocom.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,osmocom-net-gprs-bounces@lists.osmocom.org];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[osmocom-net-gprs,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inspur.com:email,mail.osmocom.org:helo,mail.osmocom.org:rdns,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 3F87036F958
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--------------QvJyahXB5HADrLKSoiS1tcec
Content-Type: multipart/mixed; boundary="------------4KmkzyqYSGTfrPFWmtLhtUBV";
 protected-headers="v1"
Message-ID: <9aba9f22-d417-4b7e-9f2a-f25434bc83c3@intel.com>
Date: Mon, 3 Nov 2025 15:43:59 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gtp: Fix a typo error for size
To: Chu Guangqing <chuguangqing@inspur.com>, pablo@netfilter.org,
 laforge@gnumonks.org, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc: osmocom-net-gprs@lists.osmocom.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251103060504.3524-1-chuguangqing@inspur.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20251103060504.3524-1-chuguangqing@inspur.com>

--------------4KmkzyqYSGTfrPFWmtLhtUBV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/2/2025 10:05 PM, Chu Guangqing wrote:
> Fix the spelling error of "size".
>=20
> Signed-off-by: Chu Guangqing <chuguangqing@inspur.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/gtp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 5cb59d72bc82..4213c3b2d532 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -633,7 +633,7 @@ static void gtp1u_build_echo_msg(struct gtp1_header=
_long *hdr, __u8 msg_type)
>  	hdr->tid =3D 0;
> =20
>  	/* seq, npdu and next should be counted to the length of the GTP pack=
et
> -	 * that's why szie of gtp1_header should be subtracted,
> +	 * that's why size of gtp1_header should be subtracted,
>  	 * not size of gtp1_header_long.
>  	 */
> =20


--------------4KmkzyqYSGTfrPFWmtLhtUBV--

--------------QvJyahXB5HADrLKSoiS1tcec
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaQk+PwUDAAAAAAAKCRBqll0+bw8o6GnC
AP9ZsR0esQUY9PpmwrOvNpv0GiSVZYI0+TR4KCQmBYiY2wEA641Tdu3T2DssKWXAZcN9HGDi4Ufv
mRiul+3JIAiBsgQ=
=fm5i
-----END PGP SIGNATURE-----

--------------QvJyahXB5HADrLKSoiS1tcec--
