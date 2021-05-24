Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id AE51638E8B7
	for <lists+osmocom-net-gprs@lfdr.de>; Mon, 24 May 2021 16:27:37 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 93C791DD813;
	Mon, 24 May 2021 14:27:33 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=reject dis=none) header.from=atos.net
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=atos.net header.i=@atos.net header.b=9VtCSH1/
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 426 seconds by postgrey-1.37 at lists.osmocom.org;
 Mon, 24 May 2021 14:27:25 UTC
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=reject dis=none) header.from=atos.net
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.56.114.176;
 helo=smarthost3.atos.net; envelope-from=paula.encinar.external@atos.net;
 receiver=<UNKNOWN> 
Received: from smarthost3.atos.net (smtppost.atos.net [193.56.114.176])
 by lists.osmocom.org (Postfix) with ESMTP id 5C0EA1DD7F9
 for <osmocom-net-gprs@lists.osmocom.org>; Mon, 24 May 2021 14:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atos.net; i=@atos.net; q=dns/txt; s=mail;
 t=1621866445; x=1653402445;
 h=from:to:subject:date:message-id:mime-version;
 bh=ticXShkO+E4t/r+XxpxaMSrROL2PuZmPnCMJ30oVk80=;
 b=9VtCSH1/6NHVtI9I2AM8eFOVIO6MONDJdhrjyiA8TwdC4alJNlZKJcpa
 M0hxIklj0+ALbXnjlSv6xYFD7RDVQtmir7FF9Ju3ltsxgwNnCScuuEaky
 79TOmmyYeGPScWawOgz/+a3wT2GTaAoCWCTnFnH0bzmMg59SlQZoPs2ma c=;
X-IronPort-AV: E=Sophos;i="5.82,325,1613430000"; 
 d="scan'208,217";a="204602274"
X-MGA-submission: =?us-ascii?q?MDHA6C0UAtHRVqosNrCvZhiIa7BRlTEV7+HdRQ?=
 =?us-ascii?q?PetjwP00zsHdGTjLQb3c7l5vKCyG6CQ10IHDU+TZB++4FVD588+kx9f+?=
 =?us-ascii?q?7MfXrYarrmZZJzF2/cbjXOKbz6crZjg473vvVKFGDBTqjLhjcv1c34E8?=
 =?us-ascii?q?1J?=
Received: from mail.sis.atos.net (HELO
 GITEXCPRDMB13.ww931.my-it-solutions.net) ([10.89.28.143])
 by smarthost3.atos.net with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2021 16:20:15 +0200
Received: from GITEXCPRDMB14.ww931.my-it-solutions.net (10.89.28.144) by
 GITEXCPRDMB13.ww931.my-it-solutions.net (10.89.28.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 24 May 2021 16:20:15 +0200
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (172.16.214.169)
 by GITEXCPRDMB14.ww931.my-it-solutions.net (10.89.28.144) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14 via Frontend Transport; Mon, 24 May 2021 16:20:15 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+b4uSsjWC8rOclzLXX6ZxfGC8vN1rK4EglNiuxOAlEaExlf2O/FmspKr8edG7mGqGsElgOgZu+7Ek9fC0UEB5JUnFikSYgU6WNmnwvR+6UFVrtxKN8cJOn14wouAyO7S1hAS7MrN9lLNxqga5d49FS2oca0C9uYItQtrPJKCTEENJgSSoPypPSHN5V8GGqfkgiQbmybx5WDJA7+uh19GOYXg4sRzjAVxmZQGpvskPDzuDdRdk6OaVDju1V3XNtTRQi46DMZmPHFFJF1zLUnZIKOYBlSKqXYOSEGnuK5txnHrFfwrlgcV6eIoRRcK/6acR1T685RgnED0L7PtN8X0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uDmO0F11xQiTYervUgut/GW6jJNc11QP/v02tTgFUyM=;
 b=FhopHZ5dA03RK+eJpf4XEWCOCOtuPi8z6YAvg7GATlArulUxEsQBT3o8vHzpEJb42g/IHafTacqQC2UuULLSv8niVMDH6SG5KorZTQTounchlC2GcPjXEGLdX/5FYAP8sStyBR2lnQzmyqdCEZ1P0vmMFOqziJtmPTEj/jrR3JQvz+9mnJ+MZU0rbGt8Fghiuqr06sKorkdYYc1X8tA0LZiTjxxXHBjk9aMuDJqbukA6qG40Pnz/exjdURYTGDlERcbl1PFRi10OHsartzYPOWAwiEn7yQUTcCWGXxE4TVlD8cticRMAqomVtbRfaIuQHR974n4JJEkOr0laX/51uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=atos.net; dmarc=pass action=none header.from=atos.net;
 dkim=pass header.d=atos.net; arc=none
Received: from PR3PR02MB6346.eurprd02.prod.outlook.com (2603:10a6:102:7b::5)
 by PAXPR02MB7358.eurprd02.prod.outlook.com (2603:10a6:102:1cd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Mon, 24 May
 2021 14:20:14 +0000
Received: from PR3PR02MB6346.eurprd02.prod.outlook.com
 ([fe80::b889:31da:36f:d8da]) by PR3PR02MB6346.eurprd02.prod.outlook.com
 ([fe80::b889:31da:36f:d8da%5]) with mapi id 15.20.4150.027; Mon, 24 May 2021
 14:20:14 +0000
From: "Encinar Sanz, Paula (ext)" <paula.encinar.external@atos.net>
To: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
Subject: Linux kernel GTP-U 
Thread-Topic: Linux kernel GTP-U 
Thread-Index: AQHXUKelEZ7MUCIjrU26dRBUD5Pw8Q==
Date: Mon, 24 May 2021 14:20:14 +0000
Message-ID: <PR3PR02MB6346C6E0175EFB8ED5CE476CAA269@PR3PR02MB6346.eurprd02.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_e463cba9-5f6c-478d-9329-7b2295e4e8ed_Enabled=True;
 MSIP_Label_e463cba9-5f6c-478d-9329-7b2295e4e8ed_SiteId=33440fc6-b7c7-412c-bb73-0e70b0198d5a;
 MSIP_Label_e463cba9-5f6c-478d-9329-7b2295e4e8ed_SetDate=2021-05-24T14:20:15.219Z;
 MSIP_Label_e463cba9-5f6c-478d-9329-7b2295e4e8ed_Name=Atos
 For Internal Use - All
 Employees; MSIP_Label_e463cba9-5f6c-478d-9329-7b2295e4e8ed_ContentBits=0;
 MSIP_Label_e463cba9-5f6c-478d-9329-7b2295e4e8ed_Method=Standard; 
authentication-results: lists.osmocom.org; dkim=none (message not signed)
 header.d=none; lists.osmocom.org; dmarc=none action=none header.from=atos.net; 
x-originating-ip: [165.225.93.26]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f97f561f-9cb8-49ca-0036-08d91ebf0c62
x-ms-traffictypediagnostic: PAXPR02MB7358:
x-microsoft-antispam-prvs: <PAXPR02MB7358B1BDEDBED56535C15411AA269@PAXPR02MB7358.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 98EARA3CCcTBzIsPx2yBV48IxauuQmKYPY7MbeNdhmON3Lhw7/FuiB6BIgY7vv8sgSZcy446o9nm5JmveaPEj6k66DgnmzKRVXgXQaHkE99w5Ed2TsDpysmiL5AByaEXBa3VLK9NtKaWAxCfHmrYn0Dwbue037P/S88zuX7mVuOqXNA8y7HMqVQZm0KiF5XY0jLh4by/nuQHY9wmibz7t4ZUDC45E7w1R6NH4tKlzYWPT02JgblBJKTSzDtpyswB2ASxjd/aqhVBIIN87Nm2N0hXORgbtTu+bc1cXtQPKaZc9JJm0Xr31WR/XWEb8agooQB94qqh6QTTRIv9/mI3rE70BNm0RXfKI8A7eE8cSU2Trc7K50XUi+UinxlnDUB/V4iOY6tXpfnFLAmm9w1UrvhT+GBQ571uTGcS7QaFH1ccRWjrARMomQtQsuVtgnQJalpz1XoVPGGd75bPVs3Yv9xbd5G8FkraWR690WPRlyWNlnDLl+3ydiUr6VJKxvPLKAZRX55zzkNSNfFgqOd2h1TBJ68AcdBZst8KP9Wgv/MxTnaLtrs/+PrnIZF2qEP7mFLWO+5/6f3S8SaUh2IOOxP0V6qPF/qIaOJSamrnmx4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PR3PR02MB6346.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(39860400002)(376002)(366004)(136003)(478600001)(64756008)(558084003)(66556008)(4743002)(52536014)(19627405001)(66946007)(86362001)(316002)(2906002)(66476007)(6916009)(9686003)(8676002)(5660300002)(91956017)(66446008)(76116006)(33656002)(6506007)(7696005)(186003)(38100700002)(8936002)(122000001)(55236004)(26005)(71200400001)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lx0zK2iDfUHrHUBMCTqgYIL9JL5poX+4Cq0knpCc0frYFIbHKfnVI2tpaD?=
 =?iso-8859-1?Q?t9RpND5KZDVuw/Rw8SzZFiEvr5p3nIp2SI96d9oyO+/UwQoTsb8bplMflT?=
 =?iso-8859-1?Q?vTbnxddrt48buhWUE+1JmapZJMgaXIktL76tH67+qMs5JoiT7dnMMfOl8W?=
 =?iso-8859-1?Q?On2GOU8zKu68+y+jcZ8ScW9Bi8j5AAX6i3P+fQnVoLqjpyB6/hDrJ3QQcJ?=
 =?iso-8859-1?Q?42VXTncPsDJmMPDdmLBdzwR6aiGqebACaK5iNVBiBML0v1KlPfqdldrlek?=
 =?iso-8859-1?Q?eP0skW8Z2ek/5KIaJvDy7/oKBV6UlTFnOfjVi1AM69mXdggQKttcZ0339K?=
 =?iso-8859-1?Q?TKHR+B+OmiY0kkbWq+M4U3lRaEoJn4GxjdmpNoKiDmXs0AVv7qRtzbSBJt?=
 =?iso-8859-1?Q?SokFQYv2Gx1k5STX8EGqq0m/HF2mn4QqQJ4fpwcowRYLVHwhZmvIOrmsW3?=
 =?iso-8859-1?Q?VRyfOBhGvU3t2FdUa9aLZWbN254XyHeIXqUfbrzINrRxYfG8NHPUDWggut?=
 =?iso-8859-1?Q?UvMlFpeN18fHv7bHnqLHZDd3bqkUjgfYp0Vj9wMLXKI/pAyUTtju/1Agi8?=
 =?iso-8859-1?Q?hF60qN7JqVofBNt2U9ujIKQzGc14Do7kePKCKbRJxA2iXkd858uLxGQXmR?=
 =?iso-8859-1?Q?e3xx73N1SqYbbKHEDoxQkSoOmDbFjVX8shV3NNvnhGxGEyqQZ7axukUe2E?=
 =?iso-8859-1?Q?63V+kgh21Gtgo4qyxTqg0wVryOIErCwQMcUwRkCeGhri/5YPLZlavhKJVc?=
 =?iso-8859-1?Q?td7jBnEn/PWuO3Ydo31cE4B4e15MKREzWtbqUEDPzVvCa+X3mtBQiiSyBZ?=
 =?iso-8859-1?Q?7AfYM3x869v0MLj9jEsOZnZ/61sFk+C2Nt1fyAvYDTL8R64TwC5Pgck9nv?=
 =?iso-8859-1?Q?uzCGNbvTMOXDpxWgrzXzTiCLC7GjrBQ3Wg/gwEbxWifWX44X5mfGkOKODV?=
 =?iso-8859-1?Q?x5EEdQsZkSCWrawY/6LJXaRc+yh0RSKOp9phDPW74m5DK73zKftRKtfkyA?=
 =?iso-8859-1?Q?KHTbJngXP/zIWBWDxTF8kOpH6HRFgQgNn5lGzQs366EvGzBlXmZbPUibbh?=
 =?iso-8859-1?Q?VmpG7DNtJq+uI3kDMBxbowFme5GOs7FkIwHbCMGuDZt1YFckr5ZCqQcdZz?=
 =?iso-8859-1?Q?ZX7a6pLkMolWLLoT5+Vea0ZA8HJj/BDW9Ohku+QWkJ4UyvIQF0SA4PE2WZ?=
 =?iso-8859-1?Q?fEPpmmGFrkh+02LVKU8e0CfOqk1ONetjQIX5FwTfIszJpsvETQAaztlYVa?=
 =?iso-8859-1?Q?ggDw6cQj6EPyC5lsS6+mfeIdM+GzcjJ1ssHak7imUKvDpLE8ebybJh1z43?=
 =?iso-8859-1?Q?cowqmHj9KrzJcGLppukct6i8FQBnXcNyffStH9dXCkszI3U=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
 boundary="_000_PR3PR02MB6346C6E0175EFB8ED5CE476CAA269PR3PR02MB6346eurp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3PR02MB6346.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f97f561f-9cb8-49ca-0036-08d91ebf0c62
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2021 14:20:14.3667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 33440fc6-b7c7-412c-bb73-0e70b0198d5a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nhGykKzBjPHGvdloIPxipS6YgxMN1qtNRJoXegz06cdBhWJF1g6TK33UYtk5zsUjqGpY++feCMv53bA1ODJRnUdG+SvOXv95FWmhn7Phypw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR02MB7358
X-OriginatorOrg: atos.net
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

--_000_PR3PR02MB6346C6E0175EFB8ED5CE476CAA269PR3PR02MB6346eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Good afternoon,

I am investigating linux kernel GTP-U to build a 5G Core with this kernel b=
ut I understand that it does not support 5G and only works with 4G. Could y=
ou solve this doubt?

Thanks in advance,

Regards
This e-mail and the documents attached are confidential and intended solely=
 for the addressee; it may also be privileged. If you receive this e-mail i=
n error, please notify the sender immediately and destroy it.
As its integrity cannot be secured on the Internet, the Atos group liabilit=
y cannot be triggered for the message content. Although the sender endeavor=
s to maintain a computer virus-free network, the sender does not warrant th=
at this transmission is virus-free and will not be liable for any damages r=
esulting from any virus transmitted.

Este mensaje y los ficheros adjuntos pueden contener informaci=F3n confiden=
cial destinada solamente a la(s) persona(s) mencionadas anteriormente y pue=
den estar protegidos por secreto profesional.
Si usted recibe este correo electr=F3nico por error, gracias por informar i=
nmediatamente al remitente y destruir el mensaje.
Al no estar asegurada la integridad de este mensaje sobre la red, Atos no s=
e hace responsable por su contenido. Su contenido no constituye ning=FAn co=
mpromiso para el grupo Atos, salvo ratificaci=F3n escrita por ambas partes.
Aunque se esfuerza al m=E1ximo por mantener su red libre de virus, el emiso=
r no puede garantizar nada al respecto y no ser=E1 responsable de cualesqui=
era da=F1os que puedan resultar de una transmisi=F3n de virus.

--_000_PR3PR02MB6346C6E0175EFB8ED5CE476CAA269PR3PR02MB6346eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Good afternoon,
<div><br>
</div>
<div>I am investigating linux kernel GTP-U to build a 5G Core with this ker=
nel but I understand that it does not support 5G and only works with 4G. Co=
uld you solve this doubt?
</div>
<div><br>
</div>
<div>Thanks in advance,</div>
<div><br>
</div>
Regards<br>
</div>
This e-mail and the documents attached are confidential and intended solely=
 for the addressee; it may also be privileged. If you receive this e-mail i=
n error, please notify the sender immediately and destroy it.
<br>
As its integrity cannot be secured on the Internet, the Atos group liabilit=
y cannot be triggered for the message content. Although the sender endeavor=
s to maintain a computer virus-free network, the sender does not warrant th=
at this transmission is virus-free
 and will not be liable for any damages resulting from any virus transmitte=
d. <br>
<br>
Este mensaje y los ficheros adjuntos pueden contener informaci=F3n confiden=
cial destinada solamente a la(s) persona(s) mencionadas anteriormente y pue=
den estar protegidos por secreto profesional.
<br>
Si usted recibe este correo electr=F3nico por error, gracias por informar i=
nmediatamente al remitente y destruir el mensaje.
<br>
Al no estar asegurada la integridad de este mensaje sobre la red, Atos no s=
e hace responsable por su contenido. Su contenido no constituye ning=FAn co=
mpromiso para el grupo Atos, salvo ratificaci=F3n escrita por ambas partes.
<br>
Aunque se esfuerza al m=E1ximo por mantener su red libre de virus, el emiso=
r no puede garantizar nada al respecto y no ser=E1 responsable de cualesqui=
era da=F1os que puedan resultar de una transmisi=F3n de virus.
</body>
</html>

--_000_PR3PR02MB6346C6E0175EFB8ED5CE476CAA269PR3PR02MB6346eurp_--
