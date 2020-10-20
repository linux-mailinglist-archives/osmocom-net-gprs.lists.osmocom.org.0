Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 353B6294960
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 21 Oct 2020 10:35:40 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id A42CF195A01;
	Wed, 21 Oct 2020 08:35:32 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=CEonMAol
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::836; helo=mail-qt1-x836.google.com;
 envelope-from=ejeakaz@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 by lists.osmocom.org (Postfix) with ESMTP id 2BEEE194DCE
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 20 Oct 2020 19:19:04 +0000 (UTC)
Received: by mail-qt1-x836.google.com with SMTP id j62so2113179qtd.0
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 20 Oct 2020 12:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Zz2JkaE4HLxsBFqGVX9rvA3hzlJK04XDyrxxDSWuwXE=;
 b=CEonMAol5+LJtkTBy862+ZsVmiOyrBnhysrlyC4txt16Zpq1yaFHDfjsVYPKaj6k/9
 U5CfouO9zwu4nVQyCMw2+/gU//r4CBGMSMy7il6F7AjOnC3t48ecC9bKonG5R78jZUQg
 Dqu1h7P5QQSBWsjELUWaX3MmqA11eLoo7VEpf9czdOe4f1fHhAmGekwKdUwP54XCXu3Y
 L1QZrltknODq31z+jGRk5X6Sr0osk3euqfmEX9Pw4hXrHFJ76W+8MDcz8d3OLh6VgdRS
 qtT0A4WtKtwIrfn31w9iM1cbsPOaqTLERpUnJUpcel33RrigCmdVcd9Tt+B3/lwukL44
 QGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Zz2JkaE4HLxsBFqGVX9rvA3hzlJK04XDyrxxDSWuwXE=;
 b=kGEuAxnV0zD3wqX8Ks+R4K7syqvKfGIzlo5PKTl6sVwt/tKnJaBOlfGPEESyzmmD2t
 NUbeKLeJPPYm0knv51MB+AgnWT2ZdEaxtKuS+5rAO5d5XviX2G415jpfHdGX+ERA/lBL
 BAmCFQ2SbDm1LvSASKomVrPsJTfrniWpIrrge2qI25ak2ZgZzr7zDiIfYrj20s94zspP
 z6yA1uKWVn5WzLCWeL3eRbsz4OtWJ6/qZf4Nt93QC0mkDciVJ9pYDWcFJLJ746iGLrWG
 VW+cooo9NmCf64aMwaGFuimX6C6h5Gw6xiU6IP+SITU3rzuBJp18Y0z1a3VBSCyEteb0
 6itw==
X-Gm-Message-State: AOAM5316EM7hXbiEHgMq7nV/OU0VskUsXK+84BPq3XYqCiy+IxdQPEC3
 wNRMb4kpmWW2by8loIgHGpcC3t2700yGB0+IRPpAKdH1CEnA5w==
X-Google-Smtp-Source: ABdhPJxonY0CLC5hRqidgi3BpsUoUPdLFXZiJwWKaUUR6RlRDU5uOZNk12NDDkpKwuFR0j7gmx0B4Ym0DcqlqSnvcKc=
X-Received: by 2002:a05:622a:104:: with SMTP id
 u4mr3910941qtw.163.1603221543682; 
 Tue, 20 Oct 2020 12:19:03 -0700 (PDT)
MIME-Version: 1.0
From: Jean-Marc Katembwe <ejeakaz@gmail.com>
Date: Tue, 20 Oct 2020 21:18:52 +0200
Message-ID: <CABrMUE5i+8tkibSd+AYuHkiwVavUtKxazxOkvKGgXhup3BrV_Q@mail.gmail.com>
Subject: IPv6 PDP type support
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/alternative; boundary="0000000000009b865005b21f1ac7"
X-Mailman-Approved-At: Wed, 21 Oct 2020 08:35:28 +0000
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

--0000000000009b865005b21f1ac7
Content-Type: text/plain; charset="UTF-8"

Hi,
I would like to know if the current OsmoSGSN version can support IPv6 PDP
type.
Thanks,
Jean-Marc

--0000000000009b865005b21f1ac7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"verdana, sans-serif">Hi,</font><div><font fa=
ce=3D"verdana, sans-serif">I would like to know if the current=C2=A0<span s=
tyle=3D"color:rgb(51,51,51);font-size:12px">OsmoSGSN version can support IP=
v6 PDP type.</span></font></div><div><span style=3D"color:rgb(51,51,51);fon=
t-size:12px"><font face=3D"verdana, sans-serif">Thanks,</font></span></div>=
<div><span style=3D"color:rgb(51,51,51);font-size:12px"><font face=3D"verda=
na, sans-serif">Jean-Marc</font></span></div></div>

--0000000000009b865005b21f1ac7--
