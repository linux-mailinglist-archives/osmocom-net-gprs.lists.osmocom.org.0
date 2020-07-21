Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id 256CD2282C4
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 21 Jul 2020 16:51:23 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 6D0BC134E37;
	Tue, 21 Jul 2020 14:51:16 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=onissolutions.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (1024-bit key; unprotected) header.d=onissolutions0.onmicrosoft.com header.i=@onissolutions0.onmicrosoft.com header.b=cGT6RoTl
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
X-Greylist: delayed 12511 seconds by postgrey-1.37 at lists.osmocom.org;
 Tue, 21 Jul 2020 07:16:49 UTC
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=onissolutions.com
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.237.128;
 helo=nam12-bn8-obe.outbound.protection.outlook.com;
 envelope-from=donal.crowley@onissolutions.com; receiver=<UNKNOWN> 
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2128.outbound.protection.outlook.com [40.107.237.128])
 by lists.osmocom.org (Postfix) with ESMTP id 06B8B133F19
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 21 Jul 2020 07:16:47 +0000 (UTC)
Received: from BLAPR15MB3811.namprd15.prod.outlook.com (2603:10b6:208:254::18)
 by BLAPR15MB3922.namprd15.prod.outlook.com (2603:10b6:208:254::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.23; Tue, 21 Jul
 2020 07:16:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3joAz9i4+kTO5Fqy32N4uzY5K1x51lATVN5wncIJcLkxv1pdIbUQsbe2hlgzwCmsKLc82yWHGmcE4W+075VbPcsL9+QJ4Bm0BcLPXGlxefVa+Vudm4gLod27xUCNctN9OMkbqnMoMphdLSUC4qDSjwOKJuyZ+3ucpYWHRFiecz5XCWzpUX6TVdye5MG49FmsXYXR5SJGCgh8pO011lqRb7KWZcUmR3gwIwHANV97UmoaH0HiKW9O3XG/HAM655tyE88fI5MfIk36h+sQP8Utc1NbVWNiATpxgEUSPNcFJ2ghvZC4Of3swbROkRFCOGk8AiNnBc99vrw10svylYjQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMEyyWjmrBZSZEafd14mg+65uPRw+jofsL2tWcnNhto=;
 b=ef280M055C22p/8WDEkiFUMav1SmHt+AXumuFWln+faCjH7p3qMDFPZvvheOP28JdjWTXYbSiJU1eAVKaZjAGjroAoRXtmab6YGhcWaDY8V2VneKxGYjuBz2NPwyb2YQH+jDIOKrEkj5QO2qIc+kzcek4UGWHyethaBLv1SZLkpUaUQAajZS1pZSHTHI3ZYhcMPpDR1bRSBBwoRm0LiYPHH3smF6l9e36gROrZVA+LnT5NAFExmeikKCVVDPkM01mM+UXT75gG+BWh4s26g2NBbnRncme+H9w82mAvAQZ2z98rYdH5XX73AhF5Jbzk5KpY3KGr7AUyDp268AvVNgyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=onissolutions.com; dmarc=pass action=none
 header.from=onissolutions.com; dkim=pass header.d=onissolutions.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=onissolutions0.onmicrosoft.com; s=selector1-onissolutions0-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMEyyWjmrBZSZEafd14mg+65uPRw+jofsL2tWcnNhto=;
 b=cGT6RoTlYKhIMFVm8pv934a90sTvxgjNTAWLIRdiUjCuNZOvZWqheIBVMSbRiFabl2+0M7t/n5J1zYs/UJk0t4BGgBClZRdlOOKH43Pp4sBUjygcQGUv86JgGWtZAMH0ArEDOL5DonPJBsBGyAUhVbaHhEE/xOvVmsHTCg1xGWU=
Received: from BLAPR15MB3763.namprd15.prod.outlook.com (2603:10b6:208:254::13)
 by BLAPR15MB3811.namprd15.prod.outlook.com (2603:10b6:208:254::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.24; Tue, 21 Jul
 2020 03:15:08 +0000
Received: from BLAPR15MB3763.namprd15.prod.outlook.com
 ([fe80::bc76:3b14:375:bd75]) by BLAPR15MB3763.namprd15.prod.outlook.com
 ([fe80::bc76:3b14:375:bd75%5]) with mapi id 15.20.3195.025; Tue, 21 Jul 2020
 03:15:08 +0000
From: "Donal  Crowley" <donal.crowley@onissolutions.com>
To: "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>
Subject: Getting "Operation Not Permitted" When Running gtp-link
Thread-Topic: Getting "Operation Not Permitted" When Running gtp-link
Thread-Index: AQHWXwy2G52Hd+VcXU+jseA23gm4wA==
Date: Tue, 21 Jul 2020 03:15:08 +0000
Message-ID: <BLAPR15MB37634B4A0122B42AB6D2A316FB780@BLAPR15MB3763.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osmocom.org; dkim=none (message not signed)
 header.d=none;lists.osmocom.org; dmarc=none action=none
 header.from=onissolutions.com;
x-originating-ip: [2600:8806:2700:657:203e:c3e3:77c3:2f75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c11ccb1-193f-4cc7-bcf7-08d82d24459d
x-ms-traffictypediagnostic: BLAPR15MB3811:|BLAPR15MB3922:
x-microsoft-antispam-prvs: <BLAPR15MB3811AA881A23543C5844B7D1FB780@BLAPR15MB3811.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qiE0FDwkhpehtWCF4ieioZc/XwD6Nu6/js4QJVdRvt/5hPNrLMAqYJqqeQEJXAAPnEBxfQ/OBE+E034234wnD3SFMcXyDu/lSiNDcZma9NSfTkkYWio8SaNli5BbDMhSIp9xF+jHY1SxfRgWUcpUr5etPuR1qI18AaLTPukNMZao5uONkouw1tQ31TtBipifs9V6r/46yhyNOuj2N9zHBiJvYVJy66xYkJ0GTqFBdwmOrbWhEmmy/znsecu4VD2lipyJDLsuPGJyqGu5kplUHfueiOIvIkCkTycLsV96Dldlh+z1Vx1UU9bhMFOzLepzhrIGtSgnC2yMWCcMOy0nlWkJLOzR8o3BUgH5tJJfCS0sreRPCxlxZ2F4xWskNMpCKNUXql10spIfTzXcoSrTeA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BLAPR15MB3763.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39840400004)(366004)(376002)(136003)(346002)(166002)(9686003)(7696005)(55016002)(71200400001)(4744005)(66946007)(8936002)(508600001)(33656002)(66556008)(66446008)(76116006)(86362001)(5660300002)(316002)(2906002)(8676002)(66476007)(6916009)(186003)(6506007)(64756008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LL7ZlSxuRAa1rrU1midSg4Pb03CDKJcEtYOM25GsEkw3wB5w+R/1Nadpf+Ey8UMDIXbBOC+xAz1WXwyFxOCKzzYMMPq/gFiW9mvFhbcn2uFWkaGiL0u8mDfvedFituAtDYTHQF8XvYs5vzS8wtgxgtLERRnarzSjmATQf1RWY5ZasBgLxe9KIIrQJ251Um/N3KzW713GWD1PFW0J4EVGgP1vU7DlNs6DLB5/+TaCiTfZIfbFrSyCNtTmxxKnsp1R1Wq/AmYhVy7tUxV6v7bngR9HPEUH3FHYE7uZyx5gtnuhmd0LTbr4FHYTXHZ02ekerpMNPjgvoPOW1cBEtVWNzF9umUJt/69u3RD2qAXntw2W5btoL7bumq48gkHl46p7VgAZfpO1ub3wuCnnPUmGdnl8HiWuZs+pYIKWJnh54b/lF/8EFaxojAOFKkfrw0hVlHriboVFodOGM2p2jMXrsods2c67WJc6DvGhehByKyFQ4kgj8apjN0NjHrrxYZFmmbjcneH9cgGgTkLz7nKbhFqbyebBVixfyx/hcTaPPOTicr5s1Fkwm9ZvlKdUkURx
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
 boundary="_000_BLAPR15MB37634B4A0122B42AB6D2A316FB780BLAPR15MB3763namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR15MB3763.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c11ccb1-193f-4cc7-bcf7-08d82d24459d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2020 03:15:08.0713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1be9ea5e-2407-42bb-982d-ef5ce89684dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AwfzyEh3xIoliG/mNFb7SSr//7EEskKlfChWGthilvhq5WoQ9ZXSO/6a+X65EM01v1qCgC/m1eXeCrjysxKx0/J/DjmIi0jvEu5TKOZ74DA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR15MB3811
X-OriginatorOrg: onissolutions.com
X-Mailman-Approved-At: Tue, 21 Jul 2020 14:51:10 +0000
X-BeenThere: osmocom-net-gprs@lists.osmocom.org
X-Mailman-Version: 2.1.29
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

--_000_BLAPR15MB37634B4A0122B42AB6D2A316FB780BLAPR15MB3763namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am running an opensource 5G Core however I cannot get my UPF up and runni=
ng ads the GTP links and tunnels I am trying to create are failing with =93=
Operation Not Permitted=94.

I=92ll recompile again to run through GDB but would really like to hear bac=
k if you guys have seen this before on Ubuntu 18.04 (Kernel > 5)

Any help would be appreciated

Donal

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10


--_000_BLAPR15MB37634B4A0122B42AB6D2A316FB780BLAPR15MB3763namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running an opensource 5G Core however I cannot =
get my UPF up and running ads the GTP links and tunnels I am trying to crea=
te are failing with =93Operation Not Permitted=94.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=92ll recompile again to run through GDB but would =
really like to hear back if you guys have seen this before on Ubuntu 18.04 =
(Kernel &gt; 5)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be appreciated</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Donal</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BLAPR15MB37634B4A0122B42AB6D2A316FB780BLAPR15MB3763namp_--
