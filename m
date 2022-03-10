Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 039774D502F
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 10 Mar 2022 18:25:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 448C528389;
	Thu, 10 Mar 2022 17:25:14 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qyxT2HukY_Yz; Thu, 10 Mar 2022 17:25:13 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id B06452812F;
	Thu, 10 Mar 2022 17:25:13 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 349A138A0A78
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 10 Mar 2022 10:38:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 166DA2810F
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 10 Mar 2022 10:38:24 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jvkJ9gQqSzk for <osmocom-net-gprs@lists.osmocom.org>;
	Thu, 10 Mar 2022 10:38:22 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id DDE4A2810E
	for <osmocom-net-gprs@lists.osmocom.org>; Thu, 10 Mar 2022 10:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646908702; x=1678444702;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=z3Jewc52hsSBSEgt0egQd1aiKEhMmrvy3x/nW4ir9gM=;
  b=k4gjo6xArrwPUXVWtpgIpcKRl98KOSHL07/wf8JF+JV+JkCH/icXztvO
   VSI9BcvIYqjjpMM9gXKg6/GPCT3Lc8ex7hIeS2u5pY7scu0NbSoxfPPAy
   yEds8EUWHghnTd1atmgBI/7W0jVqutUDHjcaVJ7C2omsxawHu6WFDfcgN
   /zFu5YjylYEU0bIMaGknB9lz3MXjH9VgNFVKiUNDpFp+04SOSEIbpnonc
   5UuNOTQ7pkBxim1jGIwZrbjDjbuGaCmequcoW2SfMmwUrZViMjczwBfDn
   9VoHlSo/zPTDzLreL8jCwWNc+23KFe1SmoRxYqoSiZ30jiXFgR1L1SfFv
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235168681"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400";
   d="scan'208";a="235168681"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2022 02:38:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400";
   d="scan'208";a="496209655"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga003.jf.intel.com with ESMTP; 10 Mar 2022 02:38:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 02:38:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 02:38:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 02:38:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7rloeNebIJPKJkSbnnkz15fAPoGDkEbz21PQDDpBTRHBS69vnJe7hKTPefa4HPmTb8I4D18DX/+2PuftpFPqsfV8ajjAe2BNHnhRDBPm2y6lxcIlbcGNQBRAOXlE7GDp2nyWvk8U3ZUnhWZDuZFJFp3o2ROd+j292DgQRnQEMVxfGvfb0k2r2kEkF1b2wCLz7VJSI+oQ6WgZ3graQyDel3JCDfKkChvaFZD5VuvDwFlcAv8LDXhpUfKMYWlDJ0TnOC+jmQ/reAQObcfVVDpptx7FMVSfnmjg4GxLkCA7ApMvgc63okO82MFSupK8cEbODuloOcIaiQE48acF9Z86A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CRIuIt5I+FWbWkPza/rujv5EpajZS8UCvNj4BgfhiO8=;
 b=VokKQsPIccMSmscIzuMeXPJNFDydyCUq6LOlV1f9dMaYCjMfv/ULxP21WB9r1DJvEg1hyZkoqpcppe2M5yk8ET/aCCG6tFK4KXrmXUF6289N/8sD59GJ6CNEYT6VQ8zorn1C+60v2qatevbsj7mlnIpnEkzCTQ5BN1MgPfEtYR+PV41x3K+yq3dh4R4q5uk/fe5VX8Lak042O610MKbqSDMoTkiZGbXZm6Buyc324/+PqamP3i1cr90u5IPrS7clmKGxXl8tr6S+pxWpn+0ivFedo56GijBqBKP4Bm0XpBy2vUP/DmvhGY53k6wDZjQXNskSpF059oJDjSElTZem/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BN6PR1101MB2212.namprd11.prod.outlook.com (2603:10b6:405:52::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.23; Thu, 10 Mar
 2022 10:38:17 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%6]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 10:38:17 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>
Subject: RE: [Intel-wired-lan] [PATCH net-next v10 7/7] ice: Support GTP-U and
 GTP-C offload in switchdev
Thread-Topic: [Intel-wired-lan] [PATCH net-next v10 7/7] ice: Support GTP-U
 and GTP-C offload in switchdev
Thread-Index: AQHYL+bHX94BLzyfCUSCU+UKowFMq6y4dfLQ
Date: Thu, 10 Mar 2022 10:38:17 +0000
Message-ID: <MW3PR11MB4554E0C520A2F1F2EB06BE009C0B9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
 <20220304164048.476900-8-marcin.szycik@linux.intel.com>
In-Reply-To: <20220304164048.476900-8-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 369dfc34-d807-4c06-6ad2-08da02821677
x-ms-traffictypediagnostic: BN6PR1101MB2212:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB22128EBEDE7461D46A81B2EE9C0B9@BN6PR1101MB2212.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qjW9RhcAejELnQbwVqqFpvARWWO37aPm4wNqkK+FXWfby8YsT8FF3qSjXui7qy+mPxkbaT940sVy0YiXe40YLSdoLVklWdNjuKi9KXwi1S437l8npH8MV/bcoXsrKCw3iO0XOPZd09Arx6l3c/Gr1y61D6OZn1vU5v/Uubk0GFwCkoM46b7QA1LqJExT5Ns9vUy142ugc2MSjSd75sSXPO09QWwKrB+E5MQLVYrhlq9UBOQggtqwMk3x9wnJ8RHovH0GZdHwY/Q0z40QRcJs7CvDPLM8R3a7DJhLeDOJGAfdTq4uKofx88RSWDdOUmsq2h1mLIhaDHZg1lt02V/zCauGkWyLiYf7BeeeDklNVXIpoMNQbgOPvNClRKK0tqBGBu08wa7W3hFuJI6iZ1ClxGpT2ShuOuNVJ68M4b2IDuufFQR+hz2m+MMhvWu52Jf/6zIeWG+c+/WF7TspKjha2CWHkzpbKciSTaM86YpYMcQK2rMfqPvxUy0iOtQZN+KdrJhJhz37Y5zHuWk/mimvNTYuJcPxVT5zajd1qX4rinFUnXFrJtT200kKW/yi8kaP2p/Y2KZBWvG0MLJYt7bfJIJ+jdhh8PIYfSWHT3LVJq3d6YPeazdD3Xw5WyBesjY/B0aOuRBpLq+bhGjQqhwSlxVasWHhK4/EjmHWzk2AqGFGaIhcJzAgSVi5uP1mGMg+ZnpovVcmp6RDG5vAAQs88Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4554.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2906002)(5660300002)(54906003)(186003)(52536014)(26005)(7416002)(8936002)(33656002)(508600001)(8676002)(82960400001)(83380400001)(71200400001)(86362001)(9686003)(66556008)(64756008)(66446008)(66476007)(4326008)(76116006)(66946007)(7696005)(316002)(6506007)(110136005)(122000001)(55016003)(38070700005)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qEAqRLAMqs7AKYcrorn5XuYCblyO6Zbi12HhvsKhOR/U/dF0+jBtZSNZ4AsW?=
 =?us-ascii?Q?L97X5R5GH6v/L+2FOE1sDRmp0Nm/cJVu+PHWkseKuD5tsNxijnA8KlL9JRU4?=
 =?us-ascii?Q?7+EW4y2mgETQZR0MUUnSQyeJJbUAscAM2s8/ZTbSNXGiJcyST1j/Oh7t2i5L?=
 =?us-ascii?Q?aQLu+VG3gbtlCVr4x2pBOjRo4bdeYTfW5W/YAm99QdjZjsQNyWie1QyMM6+8?=
 =?us-ascii?Q?UOJnNUNosGjz9xMp6GRYC7JRn/XGPCZ3RcXoFhrpqlUGb91hVl6EtRIWt724?=
 =?us-ascii?Q?A46PFd1PYEuUjebVfhVOl3A60V0Eq1ZBLcR9MRBiopQ5uIIbvxGS0xRyonyS?=
 =?us-ascii?Q?VZyyZ/L+RGrPyXx+OB9ccBopVQfKPJhOnd1pcguKQuA0cBfqn/s0ZjiX7abe?=
 =?us-ascii?Q?q1tpXDFRq1AqnVtqWiZRrlDUoRypYiXZsC/GKZNg60L0wJwSgQ8JwyWZzOf5?=
 =?us-ascii?Q?LQiyYn+ddkuuCVWl+B9zFaJwtpJlWHntpCivJgSO5XzF7kb1exvh6ok87Woy?=
 =?us-ascii?Q?ZAbZBvnVugzeWeWA561bivGEFyH5P0NKsxNJL+o9m35GwTLTshUVsp7dKLVC?=
 =?us-ascii?Q?fZez15mFjtQ+BkJ5e+45hqEuJl5cTukFJPAO2aK6+J1t9mrM2NqPptpJgYAg?=
 =?us-ascii?Q?GC6lVgwhijwSzQsU6Uc88W9tD8cQLZBRNLhG0yyFQYLtGUFi7bXVNGlLS4qF?=
 =?us-ascii?Q?KxgxI1IknSmVW1jRzvPi6d/yIUnkbDBmohudso2NPubX5BZGF2bOwRagDCY4?=
 =?us-ascii?Q?dwnQ72T5hi1XYRhT63ky+he0Z71ZQ0uQ/RpcGglcdtmfTLBr/0ZmIjaPdWjr?=
 =?us-ascii?Q?K9zRHSKKuBTT+NPtrTkene25eT3RZ4+HiCm45RvhpoTsKEPyKAzH71bDUZ4v?=
 =?us-ascii?Q?vy4oHZCAQTZa4OoaUyxAc6FBF94NYuAhk6iQvoeLUWCce07aPpk/RzLhRY6B?=
 =?us-ascii?Q?T+gcjaWZcks0akD6eAyuDhI19Stq9EoSTT4QBbct1J0t5LG/oII9pG27nU1x?=
 =?us-ascii?Q?dyBi1A/iOLeHz2P4M5LVHVg3FtqqtfMKVj7cdCYnA24LK4v2gqWRyf3zSabk?=
 =?us-ascii?Q?dw3unFFMSwNwzySOdQqBJWl9Lt5d9QS4xyaK32WtIZwOm6aM5zh+VByGu5C2?=
 =?us-ascii?Q?KclVEDHk6vsHMhY0uXptzOKcqFB+msV6+0AsN4nIpkubWJZceI/+KkhDtYD7?=
 =?us-ascii?Q?s9TENzLIjT0R/9pUPIsODtxr24cpBlNL4hOoeA7zoyhA08FvNFcDU6ljs/IP?=
 =?us-ascii?Q?sIcbi4ExY3tLfKI6B1p+BVOnhBIYGaF3ephnf5a//2yUOm7hVuR1seFWVbp/?=
 =?us-ascii?Q?uppZyEJWJn+YwpTtiMX5DpSuWPsH0FEWzppwMUQPuCUsd4akPduc3g+oJHM7?=
 =?us-ascii?Q?KLrBtWPtxCCGtu5YTUDP9Y8JhYpzxi2dkBzxI/KdR2u14XiBT4TAWio2gkoL?=
 =?us-ascii?Q?1EEM9XfwEIqXPKT6b5WqwLFvXJZTri5Mjla/Wp3DBjBnAqN2zTSiXqZQC5yb?=
 =?us-ascii?Q?nMRdUFheFpjyMb5FY8LQi0qizY22e+4i1w6DlQTUcYYl/ZJr3WPtGJuWsD/T?=
 =?us-ascii?Q?GsJn5f33u7HD+lLplusKJnR0MX7B4i+UCj8D1TC/FodjqYzRXwGrk3ZZsWQ2?=
 =?us-ascii?Q?Pw8O1NXN2InXRDJAy4xhp/JLVgmpcTAx822GI8dmjKT8k2zw6IYyppVBkMml?=
 =?us-ascii?Q?oac11w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 369dfc34-d807-4c06-6ad2-08da02821677
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 10:38:17.1181
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zT5OFWdbetBPu4qmJkD/+Jc49BCpkWVPoo1LlQ8gJjediKDGmhh3uRHiw7DJouyaaZoEb/y+XUXUB47pZQvmSNIvJ2ugKrpHfo9FuVgo6L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2212
X-OriginatorOrg: intel.com
X-MailFrom: sandeep.penigalapati@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A47GIUJBG2M7O6BZZABBVEKGBT7LZCEY
X-Message-ID-Hash: A47GIUJBG2M7O6BZZABBVEKGBT7LZCEY
X-Mailman-Approved-At: Thu, 10 Mar 2022 17:24:58 +0000
CC: "jiri@resnulli.us" <jiri@resnulli.us>, "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>, "jhs@mojatatu.com" <jhs@mojatatu.com>, "laforge@gnumonks.org" <laforge@gnumonks.org>, "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "kuba@kernel.org" <kuba@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>, "pablo@netfilter.org" <pablo@netfilter.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/A47GIUJBG2M7O6BZZABBVEKGBT7LZCEY/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Friday, March 4, 2022 10:11 PM
>To: netdev@vger.kernel.org
>Cc: jiri@resnulli.us; xiyou.wangcong@gmail.com; osmocom-net-
>gprs@lists.osmocom.org; jhs@mojatatu.com; laforge@gnumonks.org; intel-
>wired-lan@lists.osuosl.org; kuba@kernel.org; davem@davemloft.net;
>pablo@netfilter.org
>Subject: [Intel-wired-lan] [PATCH net-next v10 7/7] ice: Support GTP-U and
>GTP-C offload in switchdev
>
>Add support for creating filters for GTP-U and GTP-C in switchdev mode. Ad=
d
>support for parsing GTP-specific options (QFI and PDU type) and TEID.
>
>By default, a filter for GTP-U will be added. To add a filter for GTP-C, s=
pecify
>enc_dst_port =3D 2123, e.g.:
>
>tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \ enc_dst_po=
rt
>2123 action mirred egress redirect dev $VF1_PR
>
>Note: GTP-U with outer IPv6 offload is not supported yet.
>Note: GTP-U with no payload offload is not supported yet.
>
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
>v7: Fix ice_get_sw_prof_type kernel-doc
>v9: Fix GTP-C dummy packet selection, GTP-C IPv6 offload working
>v10: Rebase
>---
> drivers/net/ethernet/intel/ice/ice.h          |   1 +
> .../net/ethernet/intel/ice/ice_flex_pipe.c    |  31 +-
> .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
> .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
> drivers/net/ethernet/intel/ice/ice_switch.c   | 604 +++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
> 8 files changed, 760 insertions(+), 18 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
