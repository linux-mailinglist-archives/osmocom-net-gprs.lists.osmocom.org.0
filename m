Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [213.95.46.82])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFFEA188AA
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 22 Jan 2025 00:58:34 +0100 (CET)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 9B1DD1D31D0;
	Tue, 21 Jan 2025 23:58:34 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zyDA-ghY_Ucc; Tue, 21 Jan 2025 23:58:34 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 43A301D30D9;
	Tue, 21 Jan 2025 23:58:25 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 4A23A38A2772
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 09:08:55 +0000 (UTC)
Received: from localhost (mail.osmocom.org [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 31DFA1C8305
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 09:08:55 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pzO_KJDHb5uC for <osmocom-net-gprs@lists.osmocom.org>;
 Wed, 15 Jan 2025 09:08:54 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on20607.outbound.protection.outlook.com [IPv6:2a01:111:f403:2417::607])
	by mail.osmocom.org (Postfix) with ESMTPS id 519561C8300
	for <osmocom-net-gprs@lists.osmocom.org>; Wed, 15 Jan 2025 09:08:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kTJ6WTA9bmZEemzuyNzuETjukeJbljHxws5RX6KZKe5kABBLwTkdP8VIRiy4epX8KkY6shlvhTipPQOATixeqVeU7pzarGtT6Ji+0UygrbXRvTvN8zVJWv5nLScJR1SqAMl6txWT3QEyPG6WwKygxC6rUN7HEmMCaGITgWAMh8AvPEoZhCC8e7pr/kpCcSoyC9GBdrYxn3MVUytvbykPc/vLZJjqx8lGIfCdfVXOKoQdycMpanuRayDj+bLVjU8Mf/TKfIgrcNKSpRGl8u8LBsvnZDp1+KZNF9Oj096YOaJYIrDZ/l+0ZFYc9vi+mue+PEmeMI/JRrGDPizJ3YPc3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kx9MCcpLEhjHq/3wh53tDUOEnfhYvHWj1QwWHyvRGwE=;
 b=QsKu6OFmimfVm+JfY4PaWlk7yAyHzOZDAmUW8yx7FCKuvkRNGjSfS1Eb/PCHgwsMIdB8Y+KOkiVzavHreksnj1osewk/hvJSTtjjfcLIX4ItzaGKu9WKjxgTv/9WsUyJEZeuZXjisoeLM2SnizNExvTt1WbqtRa3Tx3qW+tH5EFdDn1V9HDZqSLfE/J+IwjrOXGH2LOMv7v7GiNX5HaE5gljN4G3BWeqqsXjfTn8ljYsUU8VSyzU6LD4gb062gFE3ozI6O4sPeMaE65SC2LSo6r0VRtB7trsyWqQvbaiz40m9kcMoRM5FBAJ9wfdPjG8f4abRK8Gwh2YSYqu8uT1AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kx9MCcpLEhjHq/3wh53tDUOEnfhYvHWj1QwWHyvRGwE=;
 b=LvkDGKq1fAsX+YO2TGlsW6aJOCLvGJstiDFlBICE3sRoo1apB+JKTVhW6n55GFWwD67Fhx518oX86aASwj9Ews9aU+nqWv/EbP1Bz+Yr2Q3H6AVXZ7j68Xw+hrFeoJfpM9FcvAvyAHKq0d+AVo5oTNop7dagWxN2Aj5gJ11OTJhCoszQixIJwUDWfuyA+QiB4fR9PzpQqHKURGRs9+TwNv+5nCNZMye6aHCR8uZlcTcAiIRWMzy68Wjm7F4KZuOsNwtYsfy4xZOzdVvILBtudjy6RH7kSRsdF9Pdvtpg04WBFy3nD/Y73q93VgfKCP82rBT7T85t+tvrXdGdQ2Z/2w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SA3PR12MB7901.namprd12.prod.outlook.com (2603:10b6:806:306::12)
 by LV8PR12MB9333.namprd12.prod.outlook.com (2603:10b6:408:1fa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 09:08:49 +0000
Received: from SA3PR12MB7901.namprd12.prod.outlook.com
 ([fe80::66fc:f8a2:1bfb:6de8]) by SA3PR12MB7901.namprd12.prod.outlook.com
 ([fe80::66fc:f8a2:1bfb:6de8%4]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 09:08:49 +0000
Date: Wed, 15 Jan 2025 11:08:38 +0200
From: Ido Schimmel <idosch@nvidia.com>
To: Guillaume Nault <gnault@redhat.com>
Subject: Re: [PATCH net-next] gtp: Prepare ip4_route_output_gtp() to
 .flowi4_tos conversion.
Message-ID: <Z4d7FqLVGI4oUh3s@shredder>
References: <bcb279c6946a5f584bc9adbe90b05f6b1997fde0.1736871011.git.gnault@redhat.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bcb279c6946a5f584bc9adbe90b05f6b1997fde0.1736871011.git.gnault@redhat.com>
X-ClientProxiedBy: LO4P123CA0201.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a5::8) To SA3PR12MB7901.namprd12.prod.outlook.com
 (2603:10b6:806:306::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR12MB7901:EE_|LV8PR12MB9333:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a206ee2-abf2-4957-37b1-08dd354439a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?b4gaudP4kxh7IEFTtw13d2l0Gvgh87C9wJcR1GhQyBdGqG7UpiTFfrE9E+tP?=
 =?us-ascii?Q?IqR+CiZe9gGZ1jJiolD4LOGfh9JeQkUWH8ZC2ba7BLZC6s7Rw82QJzKWyUVP?=
 =?us-ascii?Q?vgxW1EKDU41x11hZnLBgFjUjJuR27PYhEyTM+5/uHzxuCXl6K/wvPRN5xjVE?=
 =?us-ascii?Q?/K2pgJv65MedTVbhcruOyqqyfzorFLpuj0CQLUe6uSp3UXTR05gFQlzoODPR?=
 =?us-ascii?Q?9ESJjyDEWa14fJz2JuHKlGFdmDpWmQmp58B4VwBg4H5WObEaqPNEH+Px0so8?=
 =?us-ascii?Q?p39OZ0Srdifj/z3kFezHrj05gjqKzNMG9cFJjT8c5yMtz7NUeyjjCrzC1psw?=
 =?us-ascii?Q?wTaFoCqdO5jsnwsTIyhVwKu2j4ZItWKys/258+cieT53W693d3DT7HufZy6g?=
 =?us-ascii?Q?S5yc8ndBTu32g7Xlj03fVAcFi8X4ybwqqGXyZsA24j2zkWfLCTt6sFhyuxdG?=
 =?us-ascii?Q?w+Zp/CsE/+bGBR43An5TkJPDsm+mwFuw9a9xqO+yYGRy8IOPSMZarK11Ae3D?=
 =?us-ascii?Q?e8lbVZMjV4CITpYHWtQodHjd/zWvg7OOzrdD92lB81DjvAtxPunmF7sP7RV6?=
 =?us-ascii?Q?czldTcGoj35joQuFm6IE3raL9ED2t1XCmxIg0dOokB4XXcCKIUt7rbBX+QtB?=
 =?us-ascii?Q?g6JBOycmpIdumuD+l/DeaOiWad3dIVH/4pev/dKolnNPiJm36sXb6/vvAF6q?=
 =?us-ascii?Q?BDg1GbqwZPFVv18vmRotPoBt1+PdDQ8xsqR17PaJdw3UAqaYTeTpTuLayRcF?=
 =?us-ascii?Q?aRiYCLYLi/hjidkh0GWe0cl5AiuhLBNJnNcRqmm+W3Q34tvFANoXz+EPWaNq?=
 =?us-ascii?Q?eznLVfm6PS/i8ZZ4M6SIXvVBypDHmXyqXPaUkOnfwuXSTAGRmPgSB57uR3v3?=
 =?us-ascii?Q?gUWFGAUilhJMOcEMJzjc8NHAmYHdsbnzcMAahYqF5Hs+dVsJ8tbZwNvWRkyc?=
 =?us-ascii?Q?Alz2/HvUhLihQI9yRDF6vzzQkkxuLihsfgWJNX2SkCuMd0pmKyenfS2OUFuI?=
 =?us-ascii?Q?ECvw/fdKKejhBaFibgRDguHpWzQ+9fEa5/pTsWd0ALW1uJjxQ9O0XJbZLV9w?=
 =?us-ascii?Q?BdyB/oI8DSe4asdDwx0Sd2ScgGc+e9abjqJA21H/5gNaHRa9QKtn2G4fhabB?=
 =?us-ascii?Q?ADcYy6x2XGZnnnkd6Ytdxv7ilDitwMScobaE3Oq/TmGi/MqOWR4ZvEpDg3NQ?=
 =?us-ascii?Q?WEtaFdguLDexIf9PfKn1a//H+hBt1nGMPcyyQ+O6Y8CHcNF6xQeBlLf+UIdS?=
 =?us-ascii?Q?j+54pfTWu6wJ++yYdgsfJ58+XrnnEBLwBPhVUnaDO4GV+AuYgl/CYerAbgZ/?=
 =?us-ascii?Q?KvIlBTnQJUTDni8y1P2F0V193XDFVh7069No8Vkc/r0bCpXszW4J1IA3br0t?=
 =?us-ascii?Q?XR3I/grz0Px++vO+wxG9sPG3Gaoe?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR12MB7901.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?cLsVu097kMqTDzTQzrV01UKRhtEcxzf3OuvJjKYZE90Ah0Q+cT9QiqkGbuJf?=
 =?us-ascii?Q?84KONQqYaYQgMrsFkm0Lv73uTZUUpqjuWIgKNElqNrod36rJWzLlT5lItpCg?=
 =?us-ascii?Q?BSNv9QjjEQJ+Mkb9h9xLlbi9l5d5bm06XqUAwussPBmJQXjC4R+wgmB14WgX?=
 =?us-ascii?Q?skoag5d61zilODCy7D3f4Hx66Ofxm/A33gr+m5o8eve1ZVfmPLoebfAEyU+x?=
 =?us-ascii?Q?BrFFBMw8VKf2wdZpSLSblCPH3tBWQYNb6JlC9e230IvDwsAqxmw7ALGKCVGz?=
 =?us-ascii?Q?dr6t0iQc0yXj3vKUkjYHa3AFooAhtAJ3hDwlBYMB8kY4uvYOzh2+23ePq5Bi?=
 =?us-ascii?Q?+i1waVPRBXAfc+B71j4N4s4NKu7STHB839P/OBJBbFFp0NfVF4WqdZwMcv1v?=
 =?us-ascii?Q?OmdUVrjhYgVTgn3znTfZjcBQaJ5D1BP/LnNicIxrnrHqWOhFXIebUV0KB0Si?=
 =?us-ascii?Q?654dKinmgVEhB+22mD7/BHSE4aG1Oj00ou7vc0J7mwGHoLySbjBCHH5bUOj5?=
 =?us-ascii?Q?zaE/QvgRbsyb7fO4cXWi60gxA0ROUekc0rBb/7hTjCckTVrMpvZ70/SbJIZb?=
 =?us-ascii?Q?8sd4PB6QWJ83UXaUfrVd5jTfdWvOMLLF2B0+W6IK8uDIZMiiacqMnFrg3075?=
 =?us-ascii?Q?FIB9UydKVSLfIvgBuUxDJU55Xma725wxIZXx+xV2HtMrmPagVr1WJpd9PeBQ?=
 =?us-ascii?Q?ZEifIVkDHe7bhk8umL7+1+eSbwvxXcL9UeH/i6HV7V+sMbVOIpPqcQ2OfID6?=
 =?us-ascii?Q?NtiMJmf6Zohe7ThLEu0MzjpniO5w6zce9KSFvwllQPzgNHuFc/3B8Y8exWNR?=
 =?us-ascii?Q?pS8VCuvEvBXQeER7nMkPYmY2lr8AtDEsSVTsnt8sJOv5/Vr+7kHVuSnXe/0r?=
 =?us-ascii?Q?FSLfOH1teUjNBQjwE04PiZbU3oTatS03ZQBOQlFqi1aZSI8vubHoRLbG+oig?=
 =?us-ascii?Q?k+sdjt1+I+cIAXEalk3ihG6eIrC8GsJvXrLbzNrhHp686rfDxXasOzNRaTMG?=
 =?us-ascii?Q?QAAnmdVOja6PoH6ouZlYJNjZVSuwFTpxywkX+FlnpOz1EE/jEQWQcIU9muAE?=
 =?us-ascii?Q?fY5EocihkOs1QEqiuCfSfofsT7YmL4lniMS2bEkm9efbLAZlWAyS60G1vg8p?=
 =?us-ascii?Q?J78Oo0jO66oY3n0Q6BvBYmipVlkC5h2caQjrepEM8k5T2GWr3CLhNWijitBf?=
 =?us-ascii?Q?IHlXh5t+5MubDkRqGA2DNDDm8Jwp88+lp0t0X32xd3PEt30kHfgvj9Q25enI?=
 =?us-ascii?Q?FZhygKyyaZzz/9L3tHhrV2UaqEgvV/aHcSmrtRQ8VARfP+miyQTA/jMuyiYj?=
 =?us-ascii?Q?8tCirALfkMezxls3M6Ea6mgeQcnQl0rrxLmw4l/3uw2Z+8QHPvkEZ/x45tGS?=
 =?us-ascii?Q?CAOjUPv0UsyGyQL6CZqEX3J1Us6JU2CERvUvunHgcr2magtd1k4FcPQhGLaE?=
 =?us-ascii?Q?UNz8SxA11xB+EzC97gKGF8mSXqV1II+nkefDLKqIPyDXdyd+UVVAFKhGbSPH?=
 =?us-ascii?Q?jcCPIHtJazBtLfdfUceMMY/wmPnxL8D7wcfEyWoqM70sLiHhR2hMN6n8lEtJ?=
 =?us-ascii?Q?RgFteFkLwts2Es/h6DFDDWDfkEExM3D3RPxL7sIP?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a206ee2-abf2-4957-37b1-08dd354439a9
X-MS-Exchange-CrossTenant-AuthSource: SA3PR12MB7901.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 09:08:49.9378
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wG7pgg9SFxi8SibgGkKjwm1RK+PASw1+hfCutTVjGgGXLS6qagyHVQXdmkHIfPAPsJIjST6+U42n0v+eGDZotQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9333
X-MailFrom: idosch@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KWZHTN4CSAQOUCKIKIWLIL7IHLP3KORC
X-Message-ID-Hash: KWZHTN4CSAQOUCKIKIWLIL7IHLP3KORC
X-Mailman-Approved-At: Tue, 21 Jan 2025 23:58:00 +0000
CC: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org, Simon Horman <horms@kernel.org>, Pablo Neira Ayuso <pablo@netfilter.org>, Harald Welte <laforge@gnumonks.org>, Andrew Lunn <andrew+netdev@lunn.ch>, osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/KWZHTN4CSAQOUCKIKIWLIL7IHLP3KORC/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

On Tue, Jan 14, 2025 at 05:12:12PM +0100, Guillaume Nault wrote:
> Use inet_sk_dscp() to get the socket DSCP value as dscp_t, instead of
> ip_sock_rt_tos() which returns a __u8. This will ease the conversion
> of fl4->flowi4_tos to dscp_t, as it will just require to drop the
> inet_dscp_to_dsfield() call.
> 
> Signed-off-by: Guillaume Nault <gnault@redhat.com>
> ---
>  drivers/net/gtp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
> index 89a996ad8cd0..03d886014f5a 100644
> --- a/drivers/net/gtp.c
> +++ b/drivers/net/gtp.c
> @@ -23,6 +23,8 @@
>  
>  #include <net/net_namespace.h>
>  #include <net/protocol.h>
> +#include <net/inet_dscp.h>
> +#include <net/inet_sock.h>
>  #include <net/ip.h>
>  #include <net/ipv6.h>
>  #include <net/udp.h>
> @@ -350,7 +352,7 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
>  	fl4->flowi4_oif		= sk->sk_bound_dev_if;
>  	fl4->daddr		= daddr;
>  	fl4->saddr		= saddr;
> -	fl4->flowi4_tos		= ip_sock_rt_tos(sk);
> +	fl4->flowi4_tos		= inet_dscp_to_dsfield(inet_sk_dscp(inet_sk((sk))));

There seems to be an unnecessary pair of parenthesis here like in the
other patch. I assume you will take care of that in v2?

>  	fl4->flowi4_scope	= ip_sock_rt_scope(sk);
>  	fl4->flowi4_proto	= sk->sk_protocol;
>  
> -- 
> 2.39.2
> 
