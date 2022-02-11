Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EEC4B67E5
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 15 Feb 2022 10:42:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5F64228394;
	Tue, 15 Feb 2022 09:42:36 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dt68wBsrrHN1; Tue, 15 Feb 2022 09:42:36 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 6DBB22838A;
	Tue, 15 Feb 2022 09:42:31 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id CB36C38A0045
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 10:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9FFFF28389
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 10:06:03 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FY8Bwxka3HAe for <osmocom-net-gprs@lists.osmocom.org>;
	Fri, 11 Feb 2022 10:06:01 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by mail.osmocom.org (Postfix) with ESMTPS id 078A9282E5
	for <osmocom-net-gprs@lists.osmocom.org>; Fri, 11 Feb 2022 10:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644573961; x=1676109961;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=bY50xgdqMVWGE50xAYTPDbIsbLKCzSb8ldnz7/ryY28=;
  b=ISg++3kgtRZi4cuKAgiKIK4e0nkzMX7AF/3Gzesf06tuCn6LuBBVZ3LC
   DI92k5/DhMpumn3MqHPsrgqV1gpjw2JsIS+Hkx4kgalpV62zz5V65hsLt
   GS/x4OlhanHHjOdoWF20D5Qt7cBNbzF6H7jfd6nqiDm/Qhc7D1HF1u35v
   wlIDHO9+mXlD2+IPfMVQgexU+NYBkpwcM6Tci/ZKRI8Pd+kDxNz/DOh99
   4VC80Z1hFpd3Q8D3WZy66kRbz+Sew3fvPvZvEtJ3hihs3YDt361sofCfu
   TbcGed0pM11Mbl0deYiOlPjttjzTfIkLNkF4UmWm6jQuexUqYta8EWRTz
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="229670161"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600";
   d="scan'208";a="229670161"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2022 02:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600";
   d="scan'208";a="487310862"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga006.jf.intel.com with ESMTP; 11 Feb 2022 02:05:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 02:05:57 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 02:05:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 11 Feb 2022 02:05:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 11 Feb 2022 02:05:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1CdGAOkZceGXsELEd7JaKSltQChFMA/ufeMP2/ViJ/KVXm/CsfqoU49yKjKtPjjPbU32UFSPWM9JEi0g6TD49MSHM+SfaanRZGShuA2xR1GLIkXOcIy8r7c7x5n8g+imqYJ90EEvTlWnGDQgTSuboxl7iKptGRQOi/2IVzfCfUhwvTfpqlyEqJD2HtBHDuZMwl4ZH9Fhk5XfyOxuSeEVdIa1mzSqNhXzSp6GourBkpb6ryI3XMcnbmg/cB6q99d7SU1oWC2I38xXtivy1jnMMt33q2APFKWSNyWFrBvsh3uuqfesaw2afl8BoXgxWiYkOY30JHScIXjplWnn5d5JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDg1XK8CsdD/NnFIYpFBLscQoTjD2bcpWXvGC3Dtyjc=;
 b=gZUk1GKp8IOy/eW9bQAGOY+YtmPdLzWsj2GO+yxKX09emNPPS9UwGGK4NuPBYq/K94+opINB/6JR8D07kFarfn55GomiEF9xzbxfPZk4IX6jH7l3KX7RQ6432CSpmYrT8DKaddi1QdtIDFNW1Xx4rkKgLF8G3XHhj18S5VLDhvrtZBnEH7ThkcugMimGLKMPu50BtudETDJxefBJpkLjeALtNXbt6VeWar5zOdNz+zkoHlc7ZjF30gzWUSMKtBin6PxXaiM1SQibi5o9YkGfS9b9eipJeICEBz9nWgEIv5tH4ycVK8u1dDgq6/oqYiYn4GDqC3DqiS4FVvE+QMwrbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM6PR11MB3418.namprd11.prod.outlook.com (2603:10b6:5:6e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Fri, 11 Feb
 2022 10:05:54 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::6cb5:fdfd:71be:ce6e]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::6cb5:fdfd:71be:ce6e%3]) with mapi id 15.20.4951.019; Fri, 11 Feb 2022
 10:05:54 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Harald Welte <laforge@osmocom.org>, Marcin Szycik
	<marcin.szycik@linux.intel.com>
Subject: RE: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Thread-Topic: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device
 without FDs
Thread-Index: AQHYE5zTRbNi3Iwp1UKjRr6c/FDo0KyFNS8AgAZibICAAo/xgIAADLKg
Date: Fri, 11 Feb 2022 10:05:54 +0000
Message-ID: <MW4PR11MB57766A32DF641A69831B610EFD309@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220127163749.374283-1-marcin.szycik@linux.intel.com>
 <20220127163900.374645-1-marcin.szycik@linux.intel.com>
 <Yf6nBDg/v1zuTf8l@nataraja>
 <fd23700b-4269-a615-a73d-10476ffaf82d@linux.intel.com>
 <YgYoT4UWw0Efq33K@nataraja>
In-Reply-To: <YgYoT4UWw0Efq33K@nataraja>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3e056ea-29cb-4eb5-8815-08d9ed461749
x-ms-traffictypediagnostic: DM6PR11MB3418:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3418E5D5303B1029B205352BFD309@DM6PR11MB3418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ipZbVVheuhXNt0Zt3LVxPO/cW3PJkgPapoothxQS3OsTtmdm9AyUsuanBXNi6ZVgyr/aL+pK69NYF2G3ZyHMUI/Hds9ELHrKRPgy3iooYxjP4Jtzdmgd3NUN8s28BUZawxm1nl7WTBuLrvGkHHORR6nzu8i4hqmsyf7+YhBMJmZBNTVWDgYno4cgiRNrMxgMHzXTcE4IcWYuX1P3fyqKetiwOmdrUr8PlSl0v72OtC/WmdZ2kU6YJaF4K/tqDMbbxiUn6ePgAaAO1083jiELUamuT9qh40xpFbwhBw58pi+EwLHmYEox+smmQNFwiemt6lmp7dyma9bxxBexZ7nQQS7AwNHHESRlFkRvL+7XBzcPcA905GczO0s/QaaaMw/uwZRrAXctqpZYlIRWD7bYMhhVzfEkB+Nc6TNka6j9AoD58OwqvrXo7kViP0YgmQxO+8I0EBTbxgpMnzElljdWoTX8wTEziZMQs/Z31jKSf+F0WwOrRNNpMu02p+X0SB7EWW3G3DnatsLodtNV8PEFuNKeeo/828lNbUS0+MCNGTTHjZNusRSZtFtn8WTZYIpOwTGWg+FfFs1Y8+5tUwM9HXm2Sq9JOARXsU6LwHEuXxKvUkkWvP++WS4PZC8ujjS4riqArcrAN6GSZBUx6pttEEHy0OLn05s4UX5RsKWYEgBqcQcw31AbEMiJPTDjvHTL1WlPAJIPjth9vxJhPTg21iGyFpvpP6DqaVwu+6P0FgK0R/cIrcJiZvunWSY0f/ekfGbdkqa/FePdXUH9eZ8DZD/b6Rc5sDn9QCz7KKJ1OXT2dziu1xKiS8tESe1A6ETif8uK68c7XwITAnq1l4w/uA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR11MB5776.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6506007)(186003)(53546011)(508600001)(86362001)(8936002)(7696005)(9686003)(66556008)(66446008)(8676002)(64756008)(2906002)(76116006)(66476007)(82960400001)(66946007)(54906003)(26005)(4326008)(33656002)(55016003)(316002)(966005)(83380400001)(5660300002)(122000001)(38100700002)(38070700005)(110136005)(71200400001)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?4INWEP0t7r8UHyu5Mw2GZ9xFpstw5LqGw59D1o5oH1TFhNHxMRY6+BSU5+?=
 =?iso-8859-2?Q?uNb7/TbhGWennASHKBCahXQTu9dQMmdvEHRrfLJOO3RX59PHswjljjHeQ1?=
 =?iso-8859-2?Q?aFcvEKGG/MGxdpOb0KJ8aEM/X092FEutGOjIUpdRUzVUd/A2ghDoTHJc+E?=
 =?iso-8859-2?Q?LWAdOJsc/BVJzxnpoKHEyyUzfzcbj2zR0XV1XMN2RcbpsS5TABTHAuIJwY?=
 =?iso-8859-2?Q?LWneDkhjrLlqc2IdCTg4IMo0yCyeouzBkIlF5m5Dt2r/SFF752Cx4MLPtM?=
 =?iso-8859-2?Q?kVwDFVGE0Fm3J5w8DqrjElZ4Z1sko5DQ53MhGWGZj46qTQWSmRG1QleMi7?=
 =?iso-8859-2?Q?eSue+t652hjHZ5eYfd0gYFg9DX+ItQkIMpmMPQ61mlaMtyDEpYE02b0zXg?=
 =?iso-8859-2?Q?iDvQKuSjyqeiRyeFB95hQkpkU+7F5TxrwU/CWgJw/Lk5x7XO8xRBFWLcoh?=
 =?iso-8859-2?Q?O0YYHcCCF0IhfUFh35FQLy8va3J20Mg0ZVJT3JnetJTY+v1+OP7DhyBsW/?=
 =?iso-8859-2?Q?p6oagN+Fz6wnnloG+moXRRTz27RCnaoq/k40ygLFYufbONTn02atlMF1ML?=
 =?iso-8859-2?Q?cJfHR4hgjp28Z81V8x0iH+++TaSslHZSihX1RIeg01lT6Rf6leJPKP6Xp2?=
 =?iso-8859-2?Q?jI6Khg88TO0Vmp1F5bD4f7gGtCYJ2tNgIQA1/Bk1tr0c9vdZ1GlqfTk+W4?=
 =?iso-8859-2?Q?iLYBna/RNV0rvpq7ueIyl5JK6+++1A9vStleg1pD4HRjye6HzBAhUBWUQG?=
 =?iso-8859-2?Q?CI0DzeScniqdOm90/D9tNXfZ7a4vi6DDBP2hfXt/JWWIllKWw+HY0CqiU0?=
 =?iso-8859-2?Q?9iXXAKWQd3fCTbi3Mo6YSt5FXzzRFfzR4TakswN7/uhusKI1VAuoua0NYp?=
 =?iso-8859-2?Q?0Mj3iqPW41uZ3sH2Io3NPkK0FUYPWrijOveJ9rsR7y2Iah+bpb4jqbx9Ya?=
 =?iso-8859-2?Q?kq3y/blYkQ3RCVCiR2wlAes3qDOSD/uIXfUGl+BnRb5vpXf2qOCzqgwPr0?=
 =?iso-8859-2?Q?UnDPxFWRPhv1p6JHNPUl3L6CdvQa17Nci4jJm5t2PDS/LXsOmr9Gy+MdoY?=
 =?iso-8859-2?Q?O6BqRgiOScdlI3sdzejjInyVzAO4O9U7zBf5jDiv1mz0ggPVW6Z7woIJkg?=
 =?iso-8859-2?Q?1uRu6oHbOnVaibt2iuTo9MCnsiIp1IB2fRIvgNUV9uRLzN/Q0I8bfqLh3y?=
 =?iso-8859-2?Q?8UfHOTtZLwd41cHfPJxuDE/Fpch9GOuUQ8r0ggvlyCoj1FRR6uBcbpsB8w?=
 =?iso-8859-2?Q?o+AfKfkTFLNKvWmgh1uEaL69WZLshClT9V594kxN1taiiXu7qtt5yNlsat?=
 =?iso-8859-2?Q?Zowoz3J+ZUsWCzcm4QCxw1diVyuvxUaHp+BtGmC94zSn+Y35Z+uZPxRCLu?=
 =?iso-8859-2?Q?s6Qam0Qs+QWh3euunu331QryUxm9KfVKDsrWFNlMpE+dXCBRfQSqyFKdZO?=
 =?iso-8859-2?Q?DTNtkrSzXhi4oaelqmnh284iMNQGYBrqZ0GMRrxi/kkAS36uO5GHbokw/t?=
 =?iso-8859-2?Q?d1MOxFMDgw7r4Mwbt39zVDTgBAQuz7a3L2hwne8x781yFselWi0pU+cAil?=
 =?iso-8859-2?Q?bFf7wuBiq3Tt8jXzXq6ASwhYONcnvOZXB28OfKyerc8JaaCslO16QdAAwg?=
 =?iso-8859-2?Q?GgyPsZQ8z2eq4d6G1rY5JH1gX9QLYL75SgdoV1BV2SzfL68hHgcSg4Ukfy?=
 =?iso-8859-2?Q?F8ko1uPie9mNcS0a/mkrF3GOYnUul6DRCyB5/YI1?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3e056ea-29cb-4eb5-8815-08d9ed461749
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2022 10:05:54.3043
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vFbvBKT/HPCybven/auShR2Vx5DgZzIj3FMANgNusZtx+ceNmRqJtPavcVaxJKLHCP0L46CJUoWVv3NVXYqEhZksmbZBBq2hK4OaxxtFRiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3418
X-OriginatorOrg: intel.com
X-MailFrom: wojciech.drewek@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZZHD7U5MBTPZEH5TQTH6NF5J3VFIXOGY
X-Message-ID-Hash: ZZHD7U5MBTPZEH5TQTH6NF5J3VFIXOGY
X-Mailman-Approved-At: Tue, 15 Feb 2022 09:42:28 +0000
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "pablo@netfilter.org" <pablo@netfilter.org>, "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/ZZHD7U5MBTPZEH5TQTH6NF5J3VFIXOGY/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>



> -----Original Message-----
> From: Harald Welte <laforge@osmocom.org>
> Sent: pi=B1tek, 11 lutego 2022 10:12
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: netdev@vger.kernel.org; michal.swiatkowski@linux.intel.com; Drewek, W=
ojciech <wojciech.drewek@intel.com>;
> davem@davemloft.net; kuba@kernel.org; pablo@netfilter.org; osmocom-net-gp=
rs@lists.osmocom.org
> Subject: Re: [RFC PATCH net-next v3 1/5] gtp: Allow to create GTP device =
without FDs
>=20
Hi Harald,

Thanks for triggering CI.
Do I see correctly that results for our changes are the same as for master?

Regards,
Wojtek
> Hi Marcin,
>=20
> On Wed, Feb 09, 2022 at 07:04:01PM +0100, Marcin Szycik wrote:
> > On 05-Feb-22 17:34, Harald Welte wrote:
> > > Hi Marcin, Wojciech,
> > >
> > > thanks for the revised patch. In general it looks fine to me.
> > >
> > > Do you have a public git tree with your patchset applied?  I'm asking=
 as
> > > we do have automatic testing in place at https://jenkins.osmocom.org/=
 where I
> > > just need to specify a remote git repo andit will build this kernel a=
nd
> > > run the test suite.
> >
> > I've created a public fork with our patchset applied, please see [1].
>=20
> Thanks, I've triggered a build, let's hope it works out.  Results should
> be at https://jenkins.osmocom.org/jenkins/job/ttcn3-ggsn-test-kernel-git/=
20/
> and detailed logs at https://jenkins.osmocom.org/jenkins/job/ttcn3-ggsn-t=
est-kernel-git/20/console
>=20
> The same testsuite executed  against master can be seen at
> https://jenkins.osmocom.org/jenkins/job/ttcn3-ggsn-test-kernel-latest-tor=
valds/
> [the high amount of test cases failing is due to the lack of IPv6 support=
 in the kernel GTP].
>=20
> Let's hope your forked repo renders identical test results to upstream!
>=20
> Regards,
> 	Harald
> --
> - Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.o=
rg/
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch. =
A6)
