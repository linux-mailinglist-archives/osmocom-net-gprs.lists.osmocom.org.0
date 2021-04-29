Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 7920536ED66
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 29 Apr 2021 17:27:38 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 953D71DA406;
	Thu, 29 Apr 2021 15:27:36 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=Uxp8Z1Y/
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=pespin.shar@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by lists.osmocom.org (Postfix) with ESMTP id C20571DA3E5
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 29 Apr 2021 15:27:29 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id n25so6963936edr.5
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 29 Apr 2021 08:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EjCKOIDg3ctdByFDzCGEeqdHihcosLlW5HUDIfYKDQY=;
 b=Uxp8Z1Y/2ToLzckXOUiK+hrujxy07ra6U8y8d6+uqA3q5JtQOdJXAwbUVULu9Cacng
 rB25z8wF2Usk1h1dq6fDqa4jlnGpd0rVcNqY5JMKEjgWvlWeeOamDTYMYk4/pQ2ncNh4
 FLkb+/q7IQ/Q9xRGjKCK4UfUu2arhqDJkxYDU4Js1C1k7CiYyDniyApQPiLwGVH3ejO/
 /QHKvDZvOtm8zHB3Br0YpXoD9ha+XDyu3qicDE8qgQ8G+AwClKIapDH1gmAACOyw8kuc
 /YYlofKz+FwHYWJj48pQn1KTlSoI8niuVDjPyHk2FG85J+wGYtTZckBIWqAPvO07gXkJ
 Bkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EjCKOIDg3ctdByFDzCGEeqdHihcosLlW5HUDIfYKDQY=;
 b=m/mIcHHZYVVCtf15esyYTMNGvQPju/5Y8353AdW1RCSJRqTqcSuFx3lMuqI/0AZpa1
 KaU/BG9ogEQaho+nM/QPL5yVTB44zcmpHlCYgc47ZOevitxDuYX0UEYeJKsLXxsCr+yH
 MMwBCUhgqhETQNj5u/V1sdgJ25iSBvJUpPzpoJm73Xok6VFyopXVn1j5nhbTmXNz8Xz+
 qmEgg4+gmus+qAbp5JVg0/haRj3eNQopEPX6ZwWSNTHtzCwpkQ+ujgc44qqXZAnFIejA
 4KRt2FJYFj7tAJ8QiaIkrsGYaJ9w91DX7Skp71DsGzNKC+y8kIerTW73ooXL3nL9j4CS
 DBSA==
X-Gm-Message-State: AOAM533hvZyhZJQfpOUXhvdp4taF62douDQ2Km5hmf4OcrFHv7SZDNOZ
 xF1ZU9fLCKXTfZuhD+QLGYTlfntZkVmF8UtPM+A=
X-Google-Smtp-Source: ABdhPJzViiR1yf0kPqccx9zSuRA3WqwMCm20fdkG8q4yzJnn/odavxn3FoCs1TQgP+lFHVkHI5OOVdkMiBFQxZ9TMro=
X-Received: by 2002:aa7:cd90:: with SMTP id x16mr136863edv.182.1619710049054; 
 Thu, 29 Apr 2021 08:27:29 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_427E5569B1D06C6EAF3A80D3E0CAB9F06D0A@qq.com>
In-Reply-To: <tencent_427E5569B1D06C6EAF3A80D3E0CAB9F06D0A@qq.com>
From: Pau Espin Pedrol <pespin.shar@gmail.com>
Date: Thu, 29 Apr 2021 17:27:18 +0200
Message-ID: <CAEGpDubfGGQMVB91V+z43WnB6BzMY7afmuFXwSB6uUb3s3wKjw@mail.gmail.com>
Subject: Re: osmo-pcu always "T3193 timeout expired, freeing TBF" when
 osmo-sgsn send GPRS ATTACH ACCEPT
To: =?UTF-8?B?5rW36bG8?= <86731050@qq.com>
Cc: osmocom-net-gprs <osmocom-net-gprs@lists.osmocom.org>
Content-Type: multipart/alternative; boundary="0000000000001cf3b505c11e220d"
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

--0000000000001cf3b505c11e220d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

can you please record and send a pcap file while trying to attach?
Make sure you are using osmo-bts-trx and osmo-pcu master (please provide
output wyou get with "--version").
Also make sure to enable GSMTAP in both osmo-pcu and osmo-bts-trx.
Also please enable "gsmtap log" with "logging level set-all info" for
osmo-pcu, so that everything end sup in the pcap file.

Regards,
Pau Espin Pedrol


Missatge de =E6=B5=B7=E9=B1=BC <86731050@qq.com> del dia dc., 28 d=E2=80=99=
abr. 2021 a les 3:32:

> Hi All,
>
> Here is the issue when use egprs with osmo-bts-trx,osmo-pcu and osmo-sgsn=
.
> osmo-pcu debugging info as below:
> <000c> gprs_bssgp_pcu.cpp:168 LLC [SGSN -> PCU] =3D TLLI: 0xaf8ce1ff IMSI=
:
> 460000323182742 len: 26
> <0008> tbf.cpp:1068 Allocating DL TBF: MS_CLASS=3D12/12
> <0008> tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=3DDL STATE=3DNULL) S=
etting
> Control TS 6
> <0008> tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DNULL) A=
llocated:
> trx =3D 0, ul_slots =3D 40, dl_slots =3D 40
> <0008> bts.cpp:898 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN)=
 TX:
> START Immediate Assignment Downlink (PCH)
> <0008> tbf_dl.cpp:520 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSI=
GN) set
> ass. type PACCH [prev CCCH:0, PACCH:0]
> <0008> tbf.cpp:1270 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN=
) start
> Packet Downlink Assignment (PACCH)
> <0009> tbf.cpp:788 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN)
> Scheduled DL Assignment polling on PACCH (FN=3D2402222, TS=3D6)
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402270, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402322, TS=3D6
> <0008> tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) p=
oll
> timeout for FN=3D2402322, TS=3D6 (curr FN 2402387)
> <0008> tbf.cpp:879 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) T=
imeout
> for polling PACKET DOWNLINK ACK.
> <0008> tbf.cpp:1184 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW)
> Assignment was on PACCH
> <0008> tbf.cpp:1190 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) =
Downlink
> ACK was received
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402426, TS=3D6
> <0008> tbf.cpp:989 Allocating UL TBF: MS_CLASS=3D12/12
> <0008> tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=3DUL STATE=3DNULL) S=
etting
> Control TS 6
> <0008> tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DNULL) A=
llocated:
> trx =3D 0, ul_slots =3D 40, dl_slots =3D 00
> <0008> tbf.cpp:1359 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DASSIGN=
) start
> Packet Uplink Assignment (PACCH)
> <0009> tbf.cpp:782 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) S=
cheduled
> UL Assignment polling on PACCH (FN=3D2402478, TS=3D6)
> <0007> gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /
> TLLI=3D0xaf8ce1ff: 66 KBits/s
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402525, TS=3D6
> <000c> tbf_ul.cpp:404 LLC [PCU -> SGSN] TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=
=3DUL
> STATE=3DFLOW) len=3D97
> <000c> gprs_bssgp_pcu.cpp:168 LLC [SGSN -> PCU] =3D TLLI: 0xaf8ce1ff IMSI=
:
> 460000323182742 len: 9
> <0008> tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) p=
oll
> timeout for FN=3D2402525, TS=3D6 (curr FN 2402586)
> <0008> tbf.cpp:879 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) T=
imeout
> for polling PACKET DOWNLINK ACK.
> <0008> tbf.cpp:1184 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW)
> Assignment was on PACCH
> <0008> tbf.cpp:1190 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) =
Downlink
> ACK was received
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402625, TS=3D6
> <0007> gprs_rlcmac_meas.cpp:106 UL RSSI of TLLI=3D0xaf8ce1ff: -31 dBm
> <0008> tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DFINISHE=
D) free
> <0008> tbf.cpp:989 Allocating UL TBF: MS_CLASS=3D12/12
> <0008> tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=3DUL STATE=3DNULL) S=
etting
> Control TS 6
> <0008> tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DNULL) A=
llocated:
> trx =3D 0, ul_slots =3D 40, dl_slots =3D 00
> <0008> tbf.cpp:1359 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DASSIGN=
) start
> Packet Uplink Assignment (PACCH)
> <0009> tbf.cpp:782 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) S=
cheduled
> UL Assignment polling on PACCH (FN=3D2402673, TS=3D6)
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402720, TS=3D6
> <000c> tbf_ul.cpp:404 LLC [PCU -> SGSN] TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=
=3DUL
> STATE=3DFLOW) len=3D17
> <000c> gprs_bssgp_pcu.cpp:168 LLC [SGSN -> PCU] =3D TLLI: 0xaf8ce1ff IMSI=
:
> 460000323182742 len: 26
> <0007> gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /
> TLLI=3D0xaf8ce1ff: 86 KBits/s
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402768, TS=3D6
> <0007> gprs_rlcmac_meas.cpp:106 UL RSSI of TLLI=3D0xaf8ce1ff: -31 dBm
> <0008> tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DFINISHE=
D) free
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402816, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402863, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402911, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2402959, TS=3D6
> <0007> gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /
> TLLI=3D0xaf8ce1ff: 240 KBits/s
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2403006, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2403054, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2403102, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2403149, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFINI=
SHED)
> Scheduled Ack/Nack polling on FN=3D2403197, TS=3D6
> <0008> tbf.cpp:650 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DWAIT RE=
LEASE)
> T3193 timeout expired, freeing TBF
> <0008> tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DRELEASI=
NG) free
> <000c> gprs_bssgp_pcu.cpp:168 LLC [SGSN -> PCU] =3D TLLI: 0xaf8ce1ff IMSI=
:
> 460000323182742 len: 26
> <0008> tbf.cpp:1068 Allocating DL TBF: MS_CLASS=3D12/12
> <0008> tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=3DDL STATE=3DNULL) S=
etting
> Control TS 6
> <0008> tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DNULL) A=
llocated:
> trx =3D 0, ul_slots =3D 40, dl_slots =3D 40
> <0008> bts.cpp:898 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN)=
 TX:
> START Immediate Assignment Downlink (PCH)
> <0008> tbf_dl.cpp:520 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSI=
GN) set
> ass. type PACCH [prev CCCH:0, PACCH:0]
> <0008> tbf.cpp:1270 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN=
) start
> Packet Downlink Assignment (PACCH)
> <0009> tbf.cpp:788 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN)
> Scheduled DL Assignment polling on PACCH (FN=3D2404263, TS=3D6)
> <0007> gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /
> TLLI=3D0xaf8ce1ff: 22 KBits/s
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404311, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404358, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404406, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404454, TS=3D6
> <0008> tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) p=
oll
> timeout for FN=3D2404454, TS=3D6 (curr FN 2404519)
> <0008> tbf.cpp:879 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) T=
imeout
> for polling PACKET DOWNLINK ACK.
> <0008> tbf.cpp:1184 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW)
> Assignment was on PACCH
> <0008> tbf.cpp:1190 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) =
Downlink
> ACK was received
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404558, TS=3D6
> <0007> gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /
> TLLI=3D0xaf8ce1ff: 163 KBits/s
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404605, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404653, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2404701, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFINI=
SHED)
> Scheduled Ack/Nack polling on FN=3D2404748, TS=3D6
> <0008> tbf.cpp:650 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DWAIT RE=
LEASE)
> T3193 timeout expired, freeing TBF
> <0008> tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DRELEASI=
NG) free
> <000c> gprs_bssgp_pcu.cpp:168 LLC [SGSN -> PCU] =3D TLLI: 0xaf8ce1ff IMSI=
:
> 460000323182742 len: 26
> <0008> tbf.cpp:1068 Allocating DL TBF: MS_CLASS=3D12/12
> <0008> tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=3DDL STATE=3DNULL) S=
etting
> Control TS 6
> <0008> tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DNULL) A=
llocated:
> trx =3D 0, ul_slots =3D 40, dl_slots =3D 40
> <0008> bts.cpp:898 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN)=
 TX:
> START Immediate Assignment Downlink (PCH)
> <0008> tbf_dl.cpp:520 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSI=
GN) set
> ass. type PACCH [prev CCCH:0, PACCH:0]
> <0008> tbf.cpp:1270 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN=
) start
> Packet Downlink Assignment (PACCH)
> <0009> tbf.cpp:788 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN)
> Scheduled DL Assignment polling on PACCH (FN=3D2405537, TS=3D6)
> <0007> gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /
> TLLI=3D0xaf8ce1ff: 25 KBits/s
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2405585, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2405632, TS=3D6
> <0009> tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
)
> Scheduled Ack/Nack polling on FN=3D2405680, TS=3D6
> <0008> tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) p=
oll
> timeout for FN=3D2405680, TS=3D6 (curr FN 2405741)
> <0008> tbf.cpp:879 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) T=
imeout
> for polling PACKET DOWNLINK ACK.
>
> osmo-sgsn debugging info:
> <0011> gprs_llc_parse.c:78 LLC SAPI=3D1 C   U GEA0 IOV-UI=3D0x000000
> FCS=3D0xa3ad04 CMD=3DUI DATA
> <0002> gprs_gmm.c:1118 MM(---/ffffffff) -> GMM ATTACH REQUEST
> MI(4018987519) type=3D"GPRS attach"
> <0002> fsm.c:461 GMM(gmm_fsm)[0xaaaaf63e5b50]{Deregistered}: Allocated
> <0002> fsm.c:461 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Init}:
> Allocated
> <0002> fsm.c:461 MM_STATE_Gb[0xaaaaf63e5e50]{Idle}: Allocated
> <0002> gprs_sgsn.c:299 MM(/00000000) Allocated with GEA0 cipher.
> <0002> gprs_gmm.c:1100 GMM(gmm_fsm)[0xaaaaf63e5b50]{Deregistered}:
> Received Event E_GMM_COMMON_PROC_INIT_REQ
> <0002> gprs_gmm_fsm.c:25 GMM(gmm_fsm)[0xaaaaf63e5b50]{Deregistered}:
> state_chg to CommonProcedureInitiated
> <0011> gprs_llc.c:1056 LLME(ffffffff/af8ce1ff){UNASSIGNED} LLGM Assign pr=
e
> (af8ce1ff =3D> cf0ebf06)
> <0011> gprs_llc.c:1102 LLME(af8ce1ff/cf0ebf06){ASSIGNED} LLGM Assign post
> (af8ce1ff =3D> cf0ebf06)
> <0002> gprs_gmm.c:1271
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Init}: Received Event
> E_ATTACH_REQ_RECV
> <0002> gprs_gmm_attach.c:50
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Init}: state_chg to
> CheckIdentity
> <0002> gprs_gmm.c:409 MM(/cf0ebf06) <- GPRS IDENTITY REQUEST: mi_type=3DI=
MEI
> <0010> gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNITDATA
> <0011> gprs_llc_parse.c:78 LLC SAPI=3D1 C   U GEA0 IOV-UI=3D0x000000
> FCS=3D0x8c64cd CMD=3DUI DATA
> <0002> gprs_gb.c:40 MM_STATE_Gb(2945245695)[0xaaaaf63e5e50]{Idle}:
> Received Event E_MM_PDU_RECEPTION
> <0002> gprs_gmm.c:1040 MM(/cf0ebf06) -> GMM IDENTITY RESPONSE:
> MI(IMEI)=3D866089038960590
> <0002> gprs_gmm.c:113 MM(/cf0ebf06) Stopping MM timer 3370 but 0 is runni=
ng
> <0002> gprs_gmm.c:1084
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: Received
> Event E_IDEN_RESP_RECV
> <0002> gprs_gmm_attach.c:111
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: state_chg =
to
> CheckIdentity
> <0002> gprs_gmm.c:409 MM(/cf0ebf06) <- GPRS IDENTITY REQUEST: mi_type=3DI=
MSI
> <0010> gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNITDATA
> <0011> gprs_llc_parse.c:78 LLC SAPI=3D1 C   U GEA0 IOV-UI=3D0x000000
> FCS=3D0xb71895 CMD=3DUI DATA
> <0002> gprs_gb.c:40 MM_STATE_Gb(2945245695)[0xaaaaf63e5e50]{Idle}:
> Received Event E_MM_PDU_RECEPTION
> <0002> gprs_gmm.c:1040 MM(/cf0ebf06) -> GMM IDENTITY RESPONSE:
> MI(IMSI)=3D460000323182742
> <0002> gprs_gmm.c:113 MM(/cf0ebf06) Stopping MM timer 3370 but 0 is runni=
ng
> <0002> gprs_gmm.c:1084
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: Received
> Event E_IDEN_RESP_RECV
> <0002> gprs_gmm_attach.c:113
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: state_chg =
to
> Authenticate
> <0002> gprs_gmm_attach.c:148
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Authenticate}: state_chg t=
o
> WaitAttachComplete
> <0002> gprs_gmm.c:289 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (new P-TMSI=3D0xcf0ebf06)
> <0002> gprs_gmm.c:305 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (ra_id=3D0x020xf20x50 lac:2f11 rac:2)
> <000e> gprs_sgsn.c:1012 Checking for inactive LLMEs, time =3D 1652
> <000f> gprs_ns.c:779 NSEI=3D1234 Timer expired in mode tns-test (30 secon=
ds)
> <000f> gprs_ns.c:712 NSEI=3D1234 Tx NS ALIVE (NSVCI=3D1234)
> <000f> gprs_ns.c:751 NSEI=3D1234 Starting timer in mode tns-alive (3 seco=
nds)
> <000f> gprs_ns.c:725 NSEI=3D1234 Tx NS ALIVE_ACK (NSVCI=3D1234)
> <000f> gprs_ns.c:1763 NSEI 1234 (NS-VCI=3D1234) setting state
> [ALIVE,UNBLOCKED,UNRESET] -> [ALIVE,UNBLOCKED,UNRESET]
> <000f> gprs_ns.c:751 NSEI=3D1234 Starting timer in mode tns-test (30 seco=
nds)
> <0010> gprs_bssgp.c:839 BSSGP BVCI=3D1234 Rx Flow Control BVC
> <0002> fsm.c:322
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}: Timeo=
ut
> of T3350
> <0002> gprs_gmm.c:289 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (new P-TMSI=3D0xcf0ebf06)
> <0002> gprs_gmm.c:305 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (ra_id=3D0x020xf20x50 lac:2f11 rac:2)
> <0002> fsm.c:322
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}: Timeo=
ut
> of T3350
> <0002> gprs_gmm.c:289 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (new P-TMSI=3D0xcf0ebf06)
> <0002> gprs_gmm.c:305 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (ra_id=3D0x020xf20x50 lac:2f11 rac:2)
> <0010> gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNITDATA
> <0011> gprs_llc_parse.c:78 LLC SAPI=3D1 C   U GEA0 IOV-UI=3D0x000000
> FCS=3D0x0d0447 CMD=3DUI DATA
> <0002> gprs_gb.c:40 MM_STATE_Gb(2945245695)[0xaaaaf63e5e50]{Idle}:
> Received Event E_MM_PDU_RECEPTION
> <0002> gprs_gmm.c:1118 MM(460000323182742/cf0ebf06) -> GMM ATTACH REQUEST
> MI(4018987519) type=3D"GPRS attach"
> <0002> gprs_gmm.c:1100
> GMM(gmm_fsm)[0xaaaaf63e5b50]{CommonProcedureInitiated}: Received Event
> E_GMM_COMMON_PROC_INIT_REQ
> <0002> gprs_gmm.c:1100
> GMM(gmm_fsm)[0xaaaaf63e5b50]{CommonProcedureInitiated}: Event
> E_GMM_COMMON_PROC_INIT_REQ not permitted
> <0011> gprs_llc.c:1056 LLME(af8ce1ff/cf0ebf06){ASSIGNED} LLGM Assign pre
> (af8ce1ff =3D> cf0ebf06)
> <0011> gprs_llc.c:1102 LLME(af8ce1ff/cf0ebf06){ASSIGNED} LLGM Assign post
> (af8ce1ff =3D> cf0ebf06)
> <0002> gprs_gmm.c:1271
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}:
> Received Event E_ATTACH_REQ_RECV
> <0002> gprs_gmm_attach.c:360
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}:
> state_chg to Init
> <0002> gprs_gmm_attach.c:50
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Init}: state_chg to
> CheckIdentity
> <0002> gprs_gmm.c:409 MM(460000323182742/cf0ebf06) <- GPRS IDENTITY
> REQUEST: mi_type=3DIMEI
> <0010> gprs_bssgp.c:839 BSSGP BVCI=3D1234 Rx Flow Control BVC
> <0010> gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNITDATA
> <0011> gprs_llc_parse.c:78 LLC SAPI=3D1 C   U GEA0 IOV-UI=3D0x000000
> FCS=3D0xea5c4f CMD=3DUI DATA
> <0002> gprs_gb.c:40 MM_STATE_Gb(2945245695)[0xaaaaf63e5e50]{Idle}:
> Received Event E_MM_PDU_RECEPTION
> <0002> gprs_gmm.c:1040 MM(460000323182742/cf0ebf06) -> GMM IDENTITY
> RESPONSE: MI(IMEI)=3D866089038960590
> <0002> gprs_gmm.c:113 MM(460000323182742/cf0ebf06) Stopping MM timer 3370
> but 0 is running
> <0002> gprs_gmm.c:1084
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: Received
> Event E_IDEN_RESP_RECV
> <0002> gprs_gmm_attach.c:113
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: state_chg =
to
> Authenticate
> <0002> gprs_gmm_attach.c:148
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Authenticate}: state_chg t=
o
> WaitAttachComplete
> <0002> gprs_gmm.c:289 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (new P-TMSI=3D0xcf0ebf06)
> <0002> gprs_gmm.c:305 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (ra_id=3D0x020xf20x50 lac:2f11 rac:2)
> <0002> fsm.c:322
> GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}: Timeo=
ut
> of T3350
> <0002> gprs_gmm.c:289 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (new P-TMSI=3D0xcf0ebf06)
> <0002> gprs_gmm.c:305 MM(460000323182742/cf0ebf06) <- GPRS ATTACH ACCEPT
> (ra_id=3D0x020xf20x50 lac:2f11 rac:2)
>
> Configure information=EF=BC=9A
> gprs mode egprs
>   gprs routing area 2
>   gprs cell bvci 1234
>   gprs nsei 1234
>   gprs nsvc 0 nsvci 1234
>   gprs nsvc 0 local udp port 23001
>   gprs nsvc 0 remote udp port 23000
>   =E3=80=82=E3=80=82=E3=80=82
>    timeslot 6
>     phys_chan_config PDCH
>     hopping enabled 0
>    timeslot 7
>     phys_chan_config PDCH
>     hopping enabled 0
>
> pcu
>  flow-control-interval 10
>  cs 2
>  cs max 4
>  cs threshold 10 33
>  cs downgrade-threshold 200
>  cs link-quality-ranges cs1 6 cs2 5 8 cs3 7 13 cs4 12
>  mcs link-quality-ranges mcs1 6 mcs2 5 8 mcs3 7 13 mcs4 12 15 mcs5 14 17
> mcs6 16 18 mcs7 17 20 mcs8 19 24 mcs9 23
>  mcs max 9
>  window-size 64 0
>  queue idle-ack-delay 10
>  queue codel
>  alloc-algorithm dynamic
>  alpha 0
>  gamma 0
>  dl-tbf-idle-time 2000
>
> sgsn
>  gtp local-ip 127.0.0.1
>  ggsn 0 remote-ip 127.0.0.6
>  ggsn 0 gtp-version 1
>  auth-policy accept-all
> ns
>  timer tns-block 3
>  timer tns-block-retries 3
>  timer tns-reset 3
>  timer tns-reset-retries 3
>  timer tns-test 30
>  timer tns-alive 3
>  timer tns-alive-retries 10
>  encapsulation udp local-ip 127.0.0.1
>  encapsulation udp local-port 23000
>  encapsulation framerelay-gre enabled 0
>
> Version information:
> OsmoPCU version 0.8.0
> OsmoSGSN version 1.6.2
>
> I tried to debug this issue but the no any progress for this issue.The
> root cause is confifure or something else?
> I need help.
> Thanks a lot.
>
> Br,
> Perter
>
>

--0000000000001cf3b505c11e220d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>can you please record an=
d send a pcap file while trying to attach?</div><div>Make sure you are usin=
g osmo-bts-trx and osmo-pcu master (please provide output wyou get with &qu=
ot;--version&quot;).</div><div>Also make sure to enable GSMTAP in both osmo=
-pcu and osmo-bts-trx.</div><div>Also please enable &quot;gsmtap log&quot; =
with &quot;logging level set-all info&quot; for osmo-pcu, so that everythin=
g end sup in the pcap file.</div><div><br></div><div>Regards,<br></div><div=
><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr"><div>Pau Espin Pedrol<br></div></div></div></div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Missatge de =E6=B5=B7=E9=B1=BC &lt;<a href=3D"mailto:86731050@qq.=
com">86731050@qq.com</a>&gt; del dia dc., 28 d=E2=80=99abr. 2021 a les 3:32=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi All,</=
div><div><br></div><div>Here is the issue when use egprs with osmo-bts-trx,=
osmo-pcu and osmo-sgsn.</div><div>osmo-pcu debugging info as below:</div><d=
iv>&lt;000c&gt; gprs_bssgp_pcu.cpp:168 LLC [SGSN -&gt; PCU] =3D TLLI: 0xaf8=
ce1ff IMSI: 460000323182742 len: 26<br>&lt;0008&gt; tbf.cpp:1068 Allocating=
 DL TBF: MS_CLASS=3D12/12<br>&lt;0008&gt; tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x=
00000000 DIR=3DDL STATE=3DNULL) Setting Control TS 6<br>&lt;0008&gt; tbf.cp=
p:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DNULL) Allocated: trx =
=3D 0, ul_slots =3D 40, dl_slots =3D 40<br>&lt;0008&gt; bts.cpp:898 TBF(TFI=
=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) TX: START Immediate Assignm=
ent Downlink (PCH)<br>&lt;0008&gt; tbf_dl.cpp:520 TBF(TFI=3D0 TLLI=3D0xaf8c=
e1ff DIR=3DDL STATE=3DASSIGN) set ass. type PACCH [prev CCCH:0, PACCH:0]<br=
>&lt;0008&gt; tbf.cpp:1270 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DA=
SSIGN) start Packet Downlink Assignment (PACCH)<br>&lt;0009&gt; tbf.cpp:788=
 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) Scheduled DL Assign=
ment polling on PACCH (FN=3D2402222, TS=3D6)<br>&lt;0009&gt; tbf_dl.cpp:880=
 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack po=
lling on FN=3D2402270, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TL=
LI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2=
402322, TS=3D6<br>&lt;0008&gt; tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DI=
R=3DDL STATE=3DFLOW) poll timeout for FN=3D2402322, TS=3D6 (curr FN 2402387=
)<br>&lt;0008&gt; tbf.cpp:879 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=
=3DFLOW) Timeout for polling PACKET DOWNLINK ACK.<br>&lt;0008&gt; tbf.cpp:1=
184 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Assignment was on =
PACCH<br>&lt;0008&gt; tbf.cpp:1190 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL S=
TATE=3DFLOW) Downlink ACK was received<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(T=
FI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling =
on FN=3D2402426, TS=3D6<br>&lt;0008&gt; tbf.cpp:989 Allocating UL TBF: MS_C=
LASS=3D12/12<br>&lt;0008&gt; tbf.cpp:541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=
=3DUL STATE=3DNULL) Setting Control TS 6<br>&lt;0008&gt; tbf.cpp:945 TBF(TF=
I=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DNULL) Allocated: trx =3D 0, ul_slo=
ts =3D 40, dl_slots =3D 00<br>&lt;0008&gt; tbf.cpp:1359 TBF(TFI=3D0 TLLI=3D=
0xaf8ce1ff DIR=3DUL STATE=3DASSIGN) start Packet Uplink Assignment (PACCH)<=
br>&lt;0009&gt; tbf.cpp:782 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3D=
FLOW) Scheduled UL Assignment polling on PACCH (FN=3D2402478, TS=3D6)<br>&l=
t;0007&gt; gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 =
/ TLLI=3D0xaf8ce1ff: 66 KBits/s<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 =
TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=
=3D2402525, TS=3D6<br>&lt;000c&gt; tbf_ul.cpp:404 LLC [PCU -&gt; SGSN] TBF(=
TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DFLOW) len=3D97<br>&lt;000c&gt; g=
prs_bssgp_pcu.cpp:168 LLC [SGSN -&gt; PCU] =3D TLLI: 0xaf8ce1ff IMSI: 46000=
0323182742 len: 9<br>&lt;0008&gt; tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff=
 DIR=3DDL STATE=3DFLOW) poll timeout for FN=3D2402525, TS=3D6 (curr FN 2402=
586)<br>&lt;0008&gt; tbf.cpp:879 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STA=
TE=3DFLOW) Timeout for polling PACKET DOWNLINK ACK.<br>&lt;0008&gt; tbf.cpp=
:1184 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Assignment was o=
n PACCH<br>&lt;0008&gt; tbf.cpp:1190 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL=
 STATE=3DFLOW) Downlink ACK was received<br>&lt;0009&gt; tbf_dl.cpp:880 TBF=
(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack pollin=
g on FN=3D2402625, TS=3D6<br>&lt;0007&gt; gprs_rlcmac_meas.cpp:106 UL RSSI =
of TLLI=3D0xaf8ce1ff: -31 dBm<br>&lt;0008&gt; tbf.cpp:486 TBF(TFI=3D0 TLLI=
=3D0xaf8ce1ff DIR=3DUL STATE=3DFINISHED) free<br>&lt;0008&gt; tbf.cpp:989 A=
llocating UL TBF: MS_CLASS=3D12/12<br>&lt;0008&gt; tbf.cpp:541 TBF(TFI=3D0 =
TLLI=3D0x00000000 DIR=3DUL STATE=3DNULL) Setting Control TS 6<br>&lt;0008&g=
t; tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DNULL) Allocat=
ed: trx =3D 0, ul_slots =3D 40, dl_slots =3D 00<br>&lt;0008&gt; tbf.cpp:135=
9 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DUL STATE=3DASSIGN) start Packet Uplin=
k Assignment (PACCH)<br>&lt;0009&gt; tbf.cpp:782 TBF(TFI=3D0 TLLI=3D0xaf8ce=
1ff DIR=3DDL STATE=3DFLOW) Scheduled UL Assignment polling on PACCH (FN=3D2=
402673, TS=3D6)<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1f=
f DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2402720, TS=3D6=
<br>&lt;000c&gt; tbf_ul.cpp:404 LLC [PCU -&gt; SGSN] TBF(TFI=3D0 TLLI=3D0xa=
f8ce1ff DIR=3DUL STATE=3DFLOW) len=3D17<br>&lt;000c&gt; gprs_bssgp_pcu.cpp:=
168 LLC [SGSN -&gt; PCU] =3D TLLI: 0xaf8ce1ff IMSI: 460000323182742 len: 26=
<br>&lt;0007&gt; gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D4600003231=
82742 / TLLI=3D0xaf8ce1ff: 86 KBits/s<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TF=
I=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling o=
n FN=3D2402768, TS=3D6<br>&lt;0007&gt; gprs_rlcmac_meas.cpp:106 UL RSSI of =
TLLI=3D0xaf8ce1ff: -31 dBm<br>&lt;0008&gt; tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0=
xaf8ce1ff DIR=3DUL STATE=3DFINISHED) free<br>&lt;0009&gt; tbf_dl.cpp:880 TB=
F(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polli=
ng on FN=3D2402816, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=
=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D240=
2863, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff D=
IR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2402911, TS=3D6<br=
>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=
=3DFLOW) Scheduled Ack/Nack polling on FN=3D2402959, TS=3D6<br>&lt;0007&gt;=
 gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 / TLLI=3D0=
xaf8ce1ff: 240 KBits/s<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0x=
af8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2403006,=
 TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3D=
DL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2403054, TS=3D6<br>&lt;=
0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
) Scheduled Ack/Nack polling on FN=3D2403102, TS=3D6<br>&lt;0009&gt; tbf_dl=
.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack=
/Nack polling on FN=3D2403149, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TF=
I=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFINISHED) Scheduled Ack/Nack polli=
ng on FN=3D2403197, TS=3D6<br>&lt;0008&gt; tbf.cpp:650 TBF(TFI=3D0 TLLI=3D0=
xaf8ce1ff DIR=3DDL STATE=3DWAIT RELEASE) T3193 timeout expired, freeing TBF=
<br>&lt;0008&gt; tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=
=3DRELEASING) free<br>&lt;000c&gt; gprs_bssgp_pcu.cpp:168 LLC [SGSN -&gt; P=
CU] =3D TLLI: 0xaf8ce1ff IMSI: 460000323182742 len: 26<br>&lt;0008&gt; tbf.=
cpp:1068 Allocating DL TBF: MS_CLASS=3D12/12<br>&lt;0008&gt; tbf.cpp:541 TB=
F(TFI=3D0 TLLI=3D0x00000000 DIR=3DDL STATE=3DNULL) Setting Control TS 6<br>=
&lt;0008&gt; tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DNUL=
L) Allocated: trx =3D 0, ul_slots =3D 40, dl_slots =3D 40<br>&lt;0008&gt; b=
ts.cpp:898 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) TX: START=
 Immediate Assignment Downlink (PCH)<br>&lt;0008&gt; tbf_dl.cpp:520 TBF(TFI=
=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) set ass. type PACCH [prev C=
CCH:0, PACCH:0]<br>&lt;0008&gt; tbf.cpp:1270 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff =
DIR=3DDL STATE=3DASSIGN) start Packet Downlink Assignment (PACCH)<br>&lt;00=
09&gt; tbf.cpp:788 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) S=
cheduled DL Assignment polling on PACCH (FN=3D2404263, TS=3D6)<br>&lt;0007&=
gt; gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 / TLLI=
=3D0xaf8ce1ff: 22 KBits/s<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=
=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D240=
4311, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff D=
IR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2404358, TS=3D6<br=
>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=
=3DFLOW) Scheduled Ack/Nack polling on FN=3D2404406, TS=3D6<br>&lt;0009&gt;=
 tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Schedu=
led Ack/Nack polling on FN=3D2404454, TS=3D6<br>&lt;0008&gt; tbf.cpp:808 TB=
F(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) poll timeout for FN=3D24=
04454, TS=3D6 (curr FN 2404519)<br>&lt;0008&gt; tbf.cpp:879 TBF(TFI=3D0 TLL=
I=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Timeout for polling PACKET DOWNLINK A=
CK.<br>&lt;0008&gt; tbf.cpp:1184 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STA=
TE=3DFLOW) Assignment was on PACCH<br>&lt;0008&gt; tbf.cpp:1190 TBF(TFI=3D0=
 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Downlink ACK was received<br>&lt;=
0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW=
) Scheduled Ack/Nack polling on FN=3D2404558, TS=3D6<br>&lt;0007&gt; gprs_r=
lcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 / TLLI=3D0xaf8ce1=
ff: 163 KBits/s<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1f=
f DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2404605, TS=3D6=
<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STAT=
E=3DFLOW) Scheduled Ack/Nack polling on FN=3D2404653, TS=3D6<br>&lt;0009&gt=
; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Sched=
uled Ack/Nack polling on FN=3D2404701, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:88=
0 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFINISHED) Scheduled Ack/Na=
ck polling on FN=3D2404748, TS=3D6<br>&lt;0008&gt; tbf.cpp:650 TBF(TFI=3D0 =
TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DWAIT RELEASE) T3193 timeout expired, fre=
eing TBF<br>&lt;0008&gt; tbf.cpp:486 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL=
 STATE=3DRELEASING) free<br>&lt;000c&gt; gprs_bssgp_pcu.cpp:168 LLC [SGSN -=
&gt; PCU] =3D TLLI: 0xaf8ce1ff IMSI: 460000323182742 len: 26<br>&lt;0008&gt=
; tbf.cpp:1068 Allocating DL TBF: MS_CLASS=3D12/12<br>&lt;0008&gt; tbf.cpp:=
541 TBF(TFI=3D0 TLLI=3D0x00000000 DIR=3DDL STATE=3DNULL) Setting Control TS=
 6<br>&lt;0008&gt; tbf.cpp:945 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=
=3DNULL) Allocated: trx =3D 0, ul_slots =3D 40, dl_slots =3D 40<br>&lt;0008=
&gt; bts.cpp:898 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) TX:=
 START Immediate Assignment Downlink (PCH)<br>&lt;0008&gt; tbf_dl.cpp:520 T=
BF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASSIGN) set ass. type PACCH [=
prev CCCH:0, PACCH:0]<br>&lt;0008&gt; tbf.cpp:1270 TBF(TFI=3D0 TLLI=3D0xaf8=
ce1ff DIR=3DDL STATE=3DASSIGN) start Packet Downlink Assignment (PACCH)<br>=
&lt;0009&gt; tbf.cpp:788 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DASS=
IGN) Scheduled DL Assignment polling on PACCH (FN=3D2405537, TS=3D6)<br>&lt=
;0007&gt; gprs_rlcmac_meas.cpp:184 DL Bandwitdh of IMSI=3D460000323182742 /=
 TLLI=3D0xaf8ce1ff: 25 KBits/s<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 T=
LLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D=
2405585, TS=3D6<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1f=
f DIR=3DDL STATE=3DFLOW) Scheduled Ack/Nack polling on FN=3D2405632, TS=3D6=
<br>&lt;0009&gt; tbf_dl.cpp:880 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STAT=
E=3DFLOW) Scheduled Ack/Nack polling on FN=3D2405680, TS=3D6<br>&lt;0008&gt=
; tbf.cpp:808 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) poll tim=
eout for FN=3D2405680, TS=3D6 (curr FN 2405741)<br>&lt;0008&gt; tbf.cpp:879=
 TBF(TFI=3D0 TLLI=3D0xaf8ce1ff DIR=3DDL STATE=3DFLOW) Timeout for polling P=
ACKET DOWNLINK ACK.<br></div><div><br></div><div>osmo-sgsn debugging info:<=
/div><div>&lt;0011&gt; gprs_llc_parse.c:78 LLC SAPI=3D1 C=C2=A0=C2=A0 U GEA=
0 IOV-UI=3D0x000000 FCS=3D0xa3ad04 CMD=3DUI DATA <br>&lt;0002&gt; gprs_gmm.=
c:1118 MM(---/ffffffff) -&gt; GMM ATTACH REQUEST MI(4018987519) type=3D&quo=
t;GPRS attach&quot; <br>&lt;0002&gt; fsm.c:461 GMM(gmm_fsm)[0xaaaaf63e5b50]=
{Deregistered}: Allocated<br>&lt;0002&gt; fsm.c:461 GMM_ATTACH_REQ_FSM(gb_g=
mm_req)[0xaaaaf63e5c80]{Init}: Allocated<br>&lt;0002&gt; fsm.c:461 MM_STATE=
_Gb[0xaaaaf63e5e50]{Idle}: Allocated<br>&lt;0002&gt; gprs_sgsn.c:299 MM(/00=
000000) Allocated with GEA0 cipher.<br>&lt;0002&gt; gprs_gmm.c:1100 GMM(gmm=
_fsm)[0xaaaaf63e5b50]{Deregistered}: Received Event E_GMM_COMMON_PROC_INIT_=
REQ<br>&lt;0002&gt; gprs_gmm_fsm.c:25 GMM(gmm_fsm)[0xaaaaf63e5b50]{Deregist=
ered}: state_chg to CommonProcedureInitiated<br>&lt;0011&gt; gprs_llc.c:105=
6 LLME(ffffffff/af8ce1ff){UNASSIGNED} LLGM Assign pre (af8ce1ff =3D&gt; cf0=
ebf06)<br>&lt;0011&gt; gprs_llc.c:1102 LLME(af8ce1ff/cf0ebf06){ASSIGNED} LL=
GM Assign post (af8ce1ff =3D&gt; cf0ebf06)<br>&lt;0002&gt; gprs_gmm.c:1271 =
GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Init}: Received Event E_ATTA=
CH_REQ_RECV<br>&lt;0002&gt; gprs_gmm_attach.c:50 GMM_ATTACH_REQ_FSM(gb_gmm_=
req)[0xaaaaf63e5c80]{Init}: state_chg to CheckIdentity<br>&lt;0002&gt; gprs=
_gmm.c:409 MM(/cf0ebf06) &lt;- GPRS IDENTITY REQUEST: mi_type=3DIMEI<br>&lt=
;0010&gt; gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNITDATA<br>&l=
t;0011&gt; gprs_llc_parse.c:78 LLC SAPI=3D1 C=C2=A0=C2=A0 U GEA0 IOV-UI=3D0=
x000000 FCS=3D0x8c64cd CMD=3DUI DATA <br>&lt;0002&gt; gprs_gb.c:40 MM_STATE=
_Gb(2945245695)[0xaaaaf63e5e50]{Idle}: Received Event E_MM_PDU_RECEPTION<br=
>&lt;0002&gt; gprs_gmm.c:1040 MM(/cf0ebf06) -&gt; GMM IDENTITY RESPONSE: MI=
(IMEI)=3D866089038960590<br>&lt;0002&gt; gprs_gmm.c:113 MM(/cf0ebf06) Stopp=
ing MM timer 3370 but 0 is running<br>&lt;0002&gt; gprs_gmm.c:1084 GMM_ATTA=
CH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: Received Event E_IDE=
N_RESP_RECV<br>&lt;0002&gt; gprs_gmm_attach.c:111 GMM_ATTACH_REQ_FSM(gb_gmm=
_req)[0xaaaaf63e5c80]{CheckIdentity}: state_chg to CheckIdentity<br>&lt;000=
2&gt; gprs_gmm.c:409 MM(/cf0ebf06) &lt;- GPRS IDENTITY REQUEST: mi_type=3DI=
MSI<br>&lt;0010&gt; gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNIT=
DATA<br>&lt;0011&gt; gprs_llc_parse.c:78 LLC SAPI=3D1 C=C2=A0=C2=A0 U GEA0 =
IOV-UI=3D0x000000 FCS=3D0xb71895 CMD=3DUI DATA <br>&lt;0002&gt; gprs_gb.c:4=
0 MM_STATE_Gb(2945245695)[0xaaaaf63e5e50]{Idle}: Received Event E_MM_PDU_RE=
CEPTION<br>&lt;0002&gt; gprs_gmm.c:1040 MM(/cf0ebf06) -&gt; GMM IDENTITY RE=
SPONSE: MI(IMSI)=3D460000323182742<br>&lt;0002&gt; gprs_gmm.c:113 MM(/cf0eb=
f06) Stopping MM timer 3370 but 0 is running<br>&lt;0002&gt; gprs_gmm.c:108=
4 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: Received E=
vent E_IDEN_RESP_RECV<br>&lt;0002&gt; gprs_gmm_attach.c:113 GMM_ATTACH_REQ_=
FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: state_chg to Authenticate<b=
r>&lt;0002&gt; gprs_gmm_attach.c:148 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf=
63e5c80]{Authenticate}: state_chg to WaitAttachComplete<br>&lt;0002&gt; gpr=
s_gmm.c:289 MM(460000323182742/cf0ebf06) &lt;- GPRS ATTACH ACCEPT (new P-TM=
SI=3D0xcf0ebf06)<br>&lt;0002&gt; gprs_gmm.c:305 MM(460000323182742/cf0ebf06=
) &lt;- GPRS ATTACH ACCEPT (ra_id=3D0x020xf20x50 lac:2f11 rac:2)<br>&lt;000=
e&gt; gprs_sgsn.c:1012 Checking for inactive LLMEs, time =3D 1652<br>&lt;00=
0f&gt; gprs_ns.c:779 NSEI=3D1234 Timer expired in mode tns-test (30 seconds=
)<br>&lt;000f&gt; gprs_ns.c:712 NSEI=3D1234 Tx NS ALIVE (NSVCI=3D1234)<br>&=
lt;000f&gt; gprs_ns.c:751 NSEI=3D1234 Starting timer in mode tns-alive (3 s=
econds)<br>&lt;000f&gt; gprs_ns.c:725 NSEI=3D1234 Tx NS ALIVE_ACK (NSVCI=3D=
1234)<br>&lt;000f&gt; gprs_ns.c:1763 NSEI 1234 (NS-VCI=3D1234) setting stat=
e [ALIVE,UNBLOCKED,UNRESET] -&gt; [ALIVE,UNBLOCKED,UNRESET]<br>&lt;000f&gt;=
 gprs_ns.c:751 NSEI=3D1234 Starting timer in mode tns-test (30 seconds)<br>=
&lt;0010&gt; gprs_bssgp.c:839 BSSGP BVCI=3D1234 Rx Flow Control BVC<br>&lt;=
0002&gt; fsm.c:322 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttac=
hComplete}: Timeout of T3350<br>&lt;0002&gt; gprs_gmm.c:289 MM(460000323182=
742/cf0ebf06) &lt;- GPRS ATTACH ACCEPT (new P-TMSI=3D0xcf0ebf06)<br>&lt;000=
2&gt; gprs_gmm.c:305 MM(460000323182742/cf0ebf06) &lt;- GPRS ATTACH ACCEPT =
(ra_id=3D0x020xf20x50 lac:2f11 rac:2)<br>&lt;0002&gt; fsm.c:322 GMM_ATTACH_=
REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}: Timeout of T3350<b=
r>&lt;0002&gt; gprs_gmm.c:289 MM(460000323182742/cf0ebf06) &lt;- GPRS ATTAC=
H ACCEPT (new P-TMSI=3D0xcf0ebf06)<br>&lt;0002&gt; gprs_gmm.c:305 MM(460000=
323182742/cf0ebf06) &lt;- GPRS ATTACH ACCEPT (ra_id=3D0x020xf20x50 lac:2f11=
 rac:2)<br>&lt;0010&gt; gprs_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-=
UNITDATA<br>&lt;0011&gt; gprs_llc_parse.c:78 LLC SAPI=3D1 C=C2=A0=C2=A0 U G=
EA0 IOV-UI=3D0x000000 FCS=3D0x0d0447 CMD=3DUI DATA <br>&lt;0002&gt; gprs_gb=
.c:40 MM_STATE_Gb(2945245695)[0xaaaaf63e5e50]{Idle}: Received Event E_MM_PD=
U_RECEPTION<br>&lt;0002&gt; gprs_gmm.c:1118 MM(460000323182742/cf0ebf06) -&=
gt; GMM ATTACH REQUEST MI(4018987519) type=3D&quot;GPRS attach&quot; <br>&l=
t;0002&gt; gprs_gmm.c:1100 GMM(gmm_fsm)[0xaaaaf63e5b50]{CommonProcedureInit=
iated}: Received Event E_GMM_COMMON_PROC_INIT_REQ<br>&lt;0002&gt; gprs_gmm.=
c:1100 GMM(gmm_fsm)[0xaaaaf63e5b50]{CommonProcedureInitiated}: Event E_GMM_=
COMMON_PROC_INIT_REQ not permitted<br>&lt;0011&gt; gprs_llc.c:1056 LLME(af8=
ce1ff/cf0ebf06){ASSIGNED} LLGM Assign pre (af8ce1ff =3D&gt; cf0ebf06)<br>&l=
t;0011&gt; gprs_llc.c:1102 LLME(af8ce1ff/cf0ebf06){ASSIGNED} LLGM Assign po=
st (af8ce1ff =3D&gt; cf0ebf06)<br>&lt;0002&gt; gprs_gmm.c:1271 GMM_ATTACH_R=
EQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{WaitAttachComplete}: Received Event E_AT=
TACH_REQ_RECV<br>&lt;0002&gt; gprs_gmm_attach.c:360 GMM_ATTACH_REQ_FSM(gb_g=
mm_req)[0xaaaaf63e5c80]{WaitAttachComplete}: state_chg to Init<br>&lt;0002&=
gt; gprs_gmm_attach.c:50 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Ini=
t}: state_chg to CheckIdentity<br>&lt;0002&gt; gprs_gmm.c:409 MM(4600003231=
82742/cf0ebf06) &lt;- GPRS IDENTITY REQUEST: mi_type=3DIMEI<br>&lt;0010&gt;=
 gprs_bssgp.c:839 BSSGP BVCI=3D1234 Rx Flow Control BVC<br>&lt;0010&gt; gpr=
s_bssgp.c:423 BSSGP TLLI=3D0xaf8ce1ff Rx UPLINK-UNITDATA<br>&lt;0011&gt; gp=
rs_llc_parse.c:78 LLC SAPI=3D1 C=C2=A0=C2=A0 U GEA0 IOV-UI=3D0x000000 FCS=
=3D0xea5c4f CMD=3DUI DATA <br>&lt;0002&gt; gprs_gb.c:40 MM_STATE_Gb(2945245=
695)[0xaaaaf63e5e50]{Idle}: Received Event E_MM_PDU_RECEPTION<br>&lt;0002&g=
t; gprs_gmm.c:1040 MM(460000323182742/cf0ebf06) -&gt; GMM IDENTITY RESPONSE=
: MI(IMEI)=3D866089038960590<br>&lt;0002&gt; gprs_gmm.c:113 MM(460000323182=
742/cf0ebf06) Stopping MM timer 3370 but 0 is running<br>&lt;0002&gt; gprs_=
gmm.c:1084 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: R=
eceived Event E_IDEN_RESP_RECV<br>&lt;0002&gt; gprs_gmm_attach.c:113 GMM_AT=
TACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{CheckIdentity}: state_chg to Authe=
nticate<br>&lt;0002&gt; gprs_gmm_attach.c:148 GMM_ATTACH_REQ_FSM(gb_gmm_req=
)[0xaaaaf63e5c80]{Authenticate}: state_chg to WaitAttachComplete<br>&lt;000=
2&gt; gprs_gmm.c:289 MM(460000323182742/cf0ebf06) &lt;- GPRS ATTACH ACCEPT =
(new P-TMSI=3D0xcf0ebf06)<br>&lt;0002&gt; gprs_gmm.c:305 MM(460000323182742=
/cf0ebf06) &lt;- GPRS ATTACH ACCEPT (ra_id=3D0x020xf20x50 lac:2f11 rac:2)<b=
r>&lt;0002&gt; fsm.c:322 GMM_ATTACH_REQ_FSM(gb_gmm_req)[0xaaaaf63e5c80]{Wai=
tAttachComplete}: Timeout of T3350<br>&lt;0002&gt; gprs_gmm.c:289 MM(460000=
323182742/cf0ebf06) &lt;- GPRS ATTACH ACCEPT (new P-TMSI=3D0xcf0ebf06)<br>&=
lt;0002&gt; gprs_gmm.c:305 MM(460000323182742/cf0ebf06) &lt;- GPRS ATTACH A=
CCEPT (ra_id=3D0x020xf20x50 lac:2f11 rac:2)<br></div><div><br></div><div>Co=
nfigure information=EF=BC=9A</div><div>gprs mode egprs<br>=C2=A0 gprs routi=
ng area 2<br>=C2=A0 gprs cell bvci 1234<br>=C2=A0 gprs nsei 1234<br>=C2=A0 =
gprs nsvc 0 nsvci 1234<br>=C2=A0 gprs nsvc 0 local udp port 23001<br>=C2=A0=
 gprs nsvc 0 remote udp port 23000<br>=C2=A0 =E3=80=82=E3=80=82=E3=80=82</d=
iv><div>=C2=A0=C2=A0 timeslot 6<br>=C2=A0=C2=A0=C2=A0 phys_chan_config PDCH=
<br>=C2=A0=C2=A0=C2=A0 hopping enabled 0<br>=C2=A0=C2=A0 timeslot 7<br>=C2=
=A0=C2=A0=C2=A0 phys_chan_config PDCH<br>=C2=A0=C2=A0=C2=A0 hopping enabled=
 0</div><div><br></div><div>pcu<br>=C2=A0flow-control-interval 10<br>=C2=A0=
cs 2<br>=C2=A0cs max 4<br>=C2=A0cs threshold 10 33<br>=C2=A0cs downgrade-th=
reshold 200<br>=C2=A0cs link-quality-ranges cs1 6 cs2 5 8 cs3 7 13 cs4 12<b=
r>=C2=A0mcs link-quality-ranges mcs1 6 mcs2 5 8 mcs3 7 13 mcs4 12 15 mcs5 1=
4 17 mcs6 16 18 mcs7 17 20 mcs8 19 24 mcs9 23<br>=C2=A0mcs max 9<br>=C2=A0w=
indow-size 64 0<br>=C2=A0queue idle-ack-delay 10<br>=C2=A0queue codel<br>=
=C2=A0alloc-algorithm dynamic<br>=C2=A0alpha 0<br>=C2=A0gamma 0<br>=C2=A0dl=
-tbf-idle-time 2000<br></div><div><br></div><div>sgsn<br>=C2=A0gtp local-ip=
 127.0.0.1<br>=C2=A0ggsn 0 remote-ip 127.0.0.6<br>=C2=A0ggsn 0 gtp-version =
1<br>=C2=A0auth-policy accept-all<br>ns<br>=C2=A0timer tns-block 3<br>=C2=
=A0timer tns-block-retries 3<br>=C2=A0timer tns-reset 3<br>=C2=A0timer tns-=
reset-retries 3<br>=C2=A0timer tns-test 30<br>=C2=A0timer tns-alive 3<br>=
=C2=A0timer tns-alive-retries 10<br>=C2=A0encapsulation udp local-ip 127.0.=
0.1<br>=C2=A0encapsulation udp local-port 23000<br>=C2=A0encapsulation fram=
erelay-gre enabled 0<br><br></div><div>Version information:</div><div>OsmoP=
CU version 0.8.0</div><div>OsmoSGSN version 1.6.2</div><div><br></div><div>=
I tried to debug this issue but the no any progress for this issue.The root=
 cause is confifure or something else?</div><div>I need help.</div><div>Tha=
nks a lot.</div><div><br></div><div>Br,</div><div>Perter</div><div><br></di=
v></blockquote></div>

--0000000000001cf3b505c11e220d--
