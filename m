Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCC27137F0
	for <lists+osmocom-net-gprs@lfdr.de>; Sun, 28 May 2023 08:03:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 3FFCD282A9;
	Sun, 28 May 2023 06:03:53 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-ZgTT5ZxpYC; Sun, 28 May 2023 06:03:51 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 67BE1282BA;
	Sun, 28 May 2023 06:03:49 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id D8BF138A0FC4;
	Sun, 21 May 2023 14:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 88B652812F;
	Sun, 21 May 2023 14:18:45 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
	by localhost (mail.osmocom.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 36Njdm2fS5HF; Sun, 21 May 2023 14:18:43 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by mail.osmocom.org (Postfix) with ESMTPS id 9B9902812E;
	Sun, 21 May 2023 14:18:42 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-64d247a023aso2362431b3a.2;
        Sun, 21 May 2023 07:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684678720; x=1687270720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jTe+a6LfWvy6gUJZgF6meB4evM0wnFYURFosVgQ8Dm8=;
        b=nBsls45KaSDTg0tKMpcc3pbx4LfHl+n9Wgfjvgfq6z8/D2QGuYxPpEM53VbwzNxYQy
         FY9F/5faMOOAbLyK6z0eJnTcOCmaQJpn+rQ1bfDUyBbDmnkoDbR5kadGz4AlIIZZproh
         I7fGScQaGBm6DUiofvz7KVQXw1TqiMwgB28tGEiaw7yUfVqnujgn3qJo8yf0o3jyknIv
         jgSSMYMqAsy8WixeUoI1dYRgLtitZuIQEzhEF+1vAVIAoIeBtAD+5mTlMPO0WjM+mAC7
         IhlUSpZWGwqJKAcm3UrnyWTtMahJQ2Ud2GLEMEFHRi+10AE+7AUxbmUOvdhdXA+E+dDt
         Db+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684678720; x=1687270720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jTe+a6LfWvy6gUJZgF6meB4evM0wnFYURFosVgQ8Dm8=;
        b=PKcnL5XFpujAvec9zWsvunO5hF9nDeChTenBwxzloYmIzJQc/n+blgVRi7crzq/kQc
         QxwiIrtHz3JrI0cWGpqWCtDdD73ffVtzsw05hhPLN28lleKcGjqeUQ/8jFXLaAmlUyi8
         BXEDNjd1xBhKe/giHg3/4RLk04sS6Ki2CZyPR/qH8USCMSTaolrtJH/U0iiTH6i0emm/
         sWvj64v9V/2yWIsNZOSMy1NIjf02xKFuLrZr2OiNFr7SWEGwQqfCLkPac6y+dCG6q/wE
         OPoEwYh6Rg+wXlXGbwhcjw5/gfLd06I9qdi/1XjRI6jEUAByIFmuwcO125A97JWjkAS2
         ddtg==
X-Gm-Message-State: AC+VfDxTvdAJAXx+yFLzW9a9P73aWBCT7ZB93vhCUpWwKSjCNt3CcknH
	xClxIDEgYOItBw9gYBt0kInXAzNiKiZ45hLInTFcZW5jZO1pDD6I
X-Google-Smtp-Source: ACHHUZ6UIy44AYl5ZV0EffN23MlolCtbnmIrBln3rtuDBPAtgSxWbZElgG+gJjfJOb08mEugCivEa3aczyaCrIN4igo=
X-Received: by 2002:a17:90a:d384:b0:255:54ce:c3a9 with SMTP id
 q4-20020a17090ad38400b0025554cec3a9mr2015484pju.24.1684678719573; Sun, 21 May
 2023 07:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <CANV1quToJQtZoQxnJ5uDNh5H43V02oNdQ_GZdKXfNXic8h+vOg@mail.gmail.com>
 <20230520134206.37988d79@javelin> <CANV1quQ_SDL7uWD7ZApGe9OOjUiO1pZfcYwAs++6mcRvu0gTKw@mail.gmail.com>
 <20230521122619.093fa1ad@javelin>
In-Reply-To: <20230521122619.093fa1ad@javelin>
From: Ahnaf Tahmid <tahmid.nse@gmail.com>
Date: Sun, 21 May 2023 20:17:47 +0600
Message-ID: <CANV1quTj5ExzvK2gs1H1OiU=T1J_47dj8L7R8QKz-DPngcwDcA@mail.gmail.com>
Subject: Re: Request for Assistance with GPRS Configuration
To: "Alexander 'lynxis' Couzens" <lynxis@fe80.eu>
Content-Type: multipart/related; boundary="000000000000a484a605fc34d467"
X-MailFrom: tahmid.nse@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N3DMEIL2KCVBQSRIGVXPQ5WJRNPBL3XD
X-Message-ID-Hash: N3DMEIL2KCVBQSRIGVXPQ5WJRNPBL3XD
X-Mailman-Approved-At: Sun, 28 May 2023 06:03:43 +0000
CC: osmocom-net-gprs@lists.osmocom.org, openbsc@lists.osmocom.org
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/N3DMEIL2KCVBQSRIGVXPQ5WJRNPBL3XD/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

--000000000000a484a605fc34d467
Content-Type: multipart/alternative; boundary="000000000000a484a405fc34d466"

--000000000000a484a405fc34d466
Content-Type: text/plain; charset="UTF-8"

Hi Lynxis,

This time I am getting this following log.

osmo-pcu

<0009> tbf_dl_fsm.c:372
TBF(DL:TFI-0-0-0:STATE-ASSIGN:GPRS:IMSI-901550000123457:TLLI-0xd586ae05)
releasing due to PACCH assignment timeout.
<0002> pdch.cpp:348 PDCH(bts=0,trx=0,ts=4) PACKET CONTROL ACK with unknown
FN=248629 TLLI=0xd586ae05 (TRX 0 TS 4)
<0002> pdch.cpp:353 PDCH(bts=0,trx=0,ts=4) PACKET CONTROL ACK with unknown
TBF corresponds to MS with IMSI 901550000123457, TA 0, uTBF (TFI=0,
state=None), dTBF (TFI=0, state=ASSIGN)
<0009> tbf_dl_fsm.c:372
TBF(DL:TFI-0-0-0:STATE-ASSIGN:GPRS:IMSI-901550000123457:TLLI-0xd586ae05)
releasing due to PACCH assignment timeout.
<0009> llc.c:326
MS(IMSI-901550000123457:TLLI-0xd586ae05:TA-0:MSCLS-12-12:UL:DL) Discarding
LLC PDU because lifetime limit reached, count=5 new_queue_size=0
<0023> gprs_bssgp_bss.c:236 BSSGP (BVCI=1800) Tx LLC-DISCARDED
TLLI=0xd586ae05, FRAMES=5, OCTETS=40
<0002> pdch_ul_controller.c:324 PDCH(bts=0,trx=0,ts=4) Timeout for
registered POLL (FN=252689, reason=DL_ACK):
TBF(DL:TFI-0-0-0:STATE-FLOW:GPRS:IMSI-901550000123457:TLLI-0xd586ae05)
<0008> tbf.cpp:466
TBF(DL:TFI-0-0-0:STATE-FLOW:GPRS:IMSI-901550000123457:TLLI-0xd586ae05) poll
timeout for FN=252689, TS=4 (curr FN 252689)
<0008> tbf.cpp:543
TBF(DL:TFI-0-0-0:STATE-FLOW:GPRS:IMSI-901550000123457:TLLI-0xd586ae05)
Timeout for polling PACKET DOWNLINK ACK: |Assignment was on PACCH|No
downlink ACK received yet|

osmo-sgsn

20230521195557390 DMM INFO MM(901550000123457/d586ae05) -> ACTIVATE PDP
CONTEXT REQ: SAPI=3 NSAPI=5  (gprs_sm.c:468)
20230521195557390 DMM INFO MM(901550000123457/d586ae05) Found GGSN 0 for
APN 'internet' (requested 'internet') (mmctx.c:578)
20230521195557390 DGPRS NOTICE PDP(901550000123457/0) Create PDP Context
(sgsn_libgtp.c:181)
20230521195557391 DGPRS INFO PDP(901550000123457/0) Received CREATE PDP CTX
CONF, cause=128(Request accepted) (sgsn_libgtp.c:399)
20230521195557391 DSNDCP INFO SNSM-ACTIVATE.ind (lle=0x5651b2543258
TLLI=d586ae05, SAPI=3, NSAPI=5) (gprs_sndcp.c:526)
20230521195557391 DGPRS INFO PDP(901550000123457/0) <- ACTIVATE PDP CONTEXT
ACK (gprs_sm.c:190)
20230521195557391 DLNSDATA INFO NSE(01800)-NSVC(01800) Tx NS-UNITDATA
(gprs_ns2_message.c:426)
20230521195557391 DLLC NOTICE Sending XID type NULL (8 bytes) request to
MS... (gprs_llc.c:364)
20230521195557391 DLNSDATA INFO NSE(01800)-NSVC(01800) Tx NS-UNITDATA
(gprs_ns2_message.c:426)
20230521195557451 DLNSDATA INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA
(gprs_ns2.c:1311)
20230521195557451 DLNSDATA INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA
(gprs_ns2_vc_fsm.c:686)
20230521195557451 DMM INFO MM(901550000123457/d586ae05) -> ACTIVATE PDP
CONTEXT REQ: SAPI=3 NSAPI=6  (gprs_sm.c:468)
20230521195557451 DMM INFO MM(901550000123457/d586ae05) Found GGSN 0 for
APN 'internet' (requested 'internet') (mmctx.c:578)
20230521195557451 DGPRS NOTICE PDP(901550000123457/0) Create PDP Context
(sgsn_libgtp.c:181)
20230521195557451 DGPRS INFO PDP(901550000123457/1) Received CREATE PDP CTX
CONF, cause=220(Unknown PDP address or PDP type) (sgsn_libgtp.c:399)
20230521195557451 DMM NOTICE MM(901550000123457/d586ae05) <- ACTIVATE PDP
CONTEXT REJ: Unknown PDP address or PDP type (gprs_sm.c:235)
20230521195557451 DLNSDATA INFO NSE(01800)-NSVC(01800) Tx NS-UNITDATA
(gprs_ns2_message.c:426)
20230521195557931 DLNSDATA INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA
(gprs_ns2.c:1311)
20230521195557931 DLNSDATA INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA
(gprs_ns2_vc_fsm.c:686)
20230521195557931 DLLC NOTICE Received XID confirmation from MS.
(gprs_llc.c:329)
20230521195557931 DLLC NOTICE Ignoring XID-Field: XID: type N201_I,
data_len=2, data=05df (gprs_llc.c:202)
20230521195557931 DLLC NOTICE Ignoring XID-Field: XID: type N201_U,
data_len=2, data=01f4 (gprs_llc.c:202)
20230521195557931 DLLC NOTICE Ignoring XID-Field: XID: type VERSION,
data_len=1, data=00 (gprs_llc.c:202)

osmo-ggsn

20230521195334823 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.251 <- 192.168.1.109
(ggsn.c:629)
20230521195334823 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.251 <- 192.168.1.109
(ggsn.c:629)
20230521195334834 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.22 <- 0.0.0.0
(ggsn.c:629)
20230521195335054 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.22 <- 0.0.0.0
(ggsn.c:629)
20230521195335823 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.251 <- 192.168.1.109
(ggsn.c:629)
20230521195335823 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.251 <- 192.168.1.109
(ggsn.c:629)
20230521195337831 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.251 <- 192.168.1.109
(ggsn.c:629)
20230521195337831 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for
IP address outside pool of managed addresses: 224.0.0.251 <- 192.168.1.109
(ggsn.c:629)
20230521195505388 DLGTP DEBUG Registering seq=8212 in restransmit resp
queue (gtp.c:503)
20230521195505388 DGGSN INFO PDP(901550000123457:5): Deleting PDP context
(ggsn.c:354)
20230521195505388 DGGSN INFO SGSN(127.0.0.9): Deleting SGSN (sgsn.c:21)
20230521195505388 DLGTP DEBUG Begin pdp_tiddel tid = 5754321000055109
(pdp.c:296)
20230521195505388 DLGTP DEBUG End pdp_tiddel: PDP found (pdp.c:303)
20230521195521006 DLGTP DEBUG Retransmit resp queue seq 8212 expired,
removing from queue (gsn.c:291)
20230521195556748 DLGTP DEBUG Begin pdp_tidget tid = 5754321000055109
(pdp.c:322)
20230521195556748 DLGTP DEBUG Begin pdp_tidget. Not found (pdp.c:330)
20230521195556748 DLGTP DEBUG Begin pdp_tidset tid = 5754321000055109
(pdp.c:277)
20230521195556748 DLGTP DEBUG End pdp_tidset (pdp.c:286)
20230521195556748 DGGSN DEBUG PDP(901550000123457:5): Processing create PDP
context request for APN 'internet' (ggsn.c:446)
20230521195556748 DGGSN ERROR PDP(901550000123457:5): APN doesn't support
requested EUA / AF type (ggsn.c:582)
20230521195556749 DLGTP DEBUG Registering seq=8213 in restransmit resp
queue (gtp.c:503)
20230521195556749 DGGSN INFO PDP(901550000123457:5): Deleting PDP context
(ggsn.c:354)
20230521195556749 DGGSN NOTICE PDP(901550000123457:5): Deleting PDP
context: without private structure! (ggsn.c:367)
20230521195556749 DLGTP DEBUG Begin pdp_tiddel tid = 5754321000055109
(pdp.c:296)
20230521195556749 DLGTP DEBUG End pdp_tiddel: PDP found (pdp.c:303)
20230521195556749 DGGSN NOTICE GGSN(ggsn0): Received Recovery IE for
unknown SGSN (no PDP contexts active) (ggsn.c:806)
20230521195557391 DLGTP DEBUG Begin pdp_tidget tid = 5754321000055109
(pdp.c:322)
20230521195557391 DLGTP DEBUG Begin pdp_tidget. Not found (pdp.c:330)
20230521195557391 DLGTP DEBUG Begin pdp_tidset tid = 5754321000055109
(pdp.c:277)
20230521195557391 DLGTP DEBUG End pdp_tidset (pdp.c:286)
20230521195557391 DGGSN DEBUG PDP(901550000123457:5): Processing create PDP
context request for APN 'internet' (ggsn.c:446)
20230521195557391 DGGSN INFO SGSN(127.0.0.9): Discovered (sgsn.c:83)
20230521195557391 DGGSN DEBUG PDP(901550000123457:5): PCO Protocol 0x8021
(pco.c:205)
20230521195557391 DGGSN DEBUG PDP(901550000123457:5): PCO Protocol 0x000d
(pco.c:205)
20230521195557391 DGGSN DEBUG PDP(901550000123457:5): PCO Protocol 0x000a
(pco.c:205)
20230521195557391 DGGSN INFO PDP(901550000123457:5): Unknown/Unimplemented
PCO Protocol 0x000a:  (pco.c:220)
20230521195557391 DGGSN DEBUG PDP(901550000123457:5): PCO Protocol 0x0005
(pco.c:205)
20230521195557391 DGGSN INFO PDP(901550000123457:5): Unknown/Unimplemented
PCO Protocol 0x0005:  (pco.c:220)
20230521195557391 DGGSN DEBUG PDP(901550000123457:5): PCO Protocol 0x0010
(pco.c:205)
20230521195557391 DGGSN INFO PDP(901550000123457:5): Unknown/Unimplemented
PCO Protocol 0x0010:  (pco.c:220)
20230521195557391 DGGSN INFO PDP(901550000123457:5): Successful PDP Context
Creation: APN=internet(internet), TEIC=1, IPv4=127.0.42.13, IPv6=none
(ggsn.c:569)
20230521195557391 DLGTP DEBUG Registering seq=8214 in restransmit resp
queue (gtp.c:503)
20230521195557451 DLGTP DEBUG Begin pdp_tidget tid = 6754321000055109
(pdp.c:322)
20230521195557451 DLGTP DEBUG Begin pdp_tidget. Not found (pdp.c:330)
20230521195557451 DLGTP DEBUG Begin pdp_tidset tid = 6754321000055109
(pdp.c:277)
20230521195557451 DLGTP DEBUG End pdp_tidset (pdp.c:286)
20230521195557451 DGGSN DEBUG PDP(901550000123457:6): Processing create PDP
context request for APN 'internet' (ggsn.c:446)
20230521195557451 DGGSN ERROR PDP(901550000123457:6): APN doesn't support
requested EUA / AF type (ggsn.c:582)
20230521195557451 DLGTP DEBUG Registering seq=8215 in restransmit resp
queue (gtp.c:503)
20230521195557451 DGGSN INFO PDP(901550000123457:6): Deleting PDP context
(ggsn.c:354)
20230521195557451 DGGSN ERROR PDP(901550000123457:6): Cannot find/free IP
Pool member (ggsn.c:362)
20230521195557451 DGGSN NOTICE PDP(901550000123457:6): Deleting PDP
context: without private structure! (ggsn.c:367)
20230521195557451 DLGTP DEBUG Begin pdp_tiddel tid = 6754321000055109
(pdp.c:296)
20230521195557451 DLGTP DEBUG End pdp_tiddel: PDP found (pdp.c:303)
20230521195612002 DLGTP DEBUG Retransmit resp queue seq 8213 expired,
removing from queue (gsn.c:291)
20230521195613002 DLGTP DEBUG Retransmit resp queue seq 8214 expired,
removing from queue (gsn.c:291)
20230521195613002 DLGTP DEBUG Retransmit resp queue seq 8215 expired,
removing from queue (gsn.c:291)

osmo-bts-trx

<0000> rsl.c:1389 (bts=0,trx=0,ts=2,ss=0) not sending CHAN ACT ACK
<0000> rsl.c:1389 (bts=0,trx=0,ts=3,ss=0) not sending CHAN ACT ACK
<0000> rsl.c:1389 (bts=0,trx=0,ts=4,ss=0) not sending CHAN ACT ACK
<0000> rsl.c:1389 (bts=0,trx=0,ts=7,ss=0) not sending CHAN ACT ACK
<0000> rsl.c:1389 (bts=0,trx=0,ts=5,ss=0) not sending CHAN ACT ACK
<0000> rsl.c:1389 (bts=0,trx=0,ts=6,ss=0) not sending CHAN ACT ACK

I have set apn as internet in my android device. And, I didn't configure
any auth policy in osmo-hlr. Sims are registering through IMSI.
[image: image.png]

Best regards,
Tahmid

On Sun, 21 May 2023 at 15:29, Alexander 'lynxis' Couzens <lynxis@fe80.eu>
wrote:

> Hi Tahmid,
>
> >    - osmo-bsc
> >    <
> https://docs.google.com/document/d/1mFRtjnOfecCFZSmAaA22GA_EM28rB59dIjftM_UXmPc/edit?usp=sharing
> >
>
> >    - osmo-sgsn
> >    <
> https://docs.google.com/document/d/1r3VfTNPlb-9XWU8FWfALh5kRr9502WgrSMuYXkqHrE0/edit?usp=sharing
> >
>
> your pcu can't connect to the sgsn. You tell your pcu to connect to
> 127.0.0.9:23001
> The bsc is configuring the pcu via the bts. (bsc -> bts -> pcu)
> bsc-config:
> [...]
>   gprs nsvc 0 remote ip 127.0.0.9
>   gprs nsvc 0 remote udp port 23001
>   gprs nsvc 0 local udp port 23002
>   gprs nsvc 0 nsvci 1800
> [...]
>
> But in your sgsn configuration you set the listen ip/port to
> 127.0.0.20:23000
> [...]
> ns
>  bind udp local
>   listen 127.0.0.20 23000
>   accept-ipaccess
> [...]
>
> Please change your bsc configuration to 127.0.0.20 and the remote udp port
> to 23000
>
>   gprs nsvc 0 remote ip 127.0.0.20
>   gprs nsvc 0 remote udp port 23000
>
> Also your ggsn configuration has:
>   ip dns 0 127.0.0.1
>
> This will tell the phone to ask itself for dns queries. Please replace it
> with a valid dns server (e.g. 1.1.1.1)
>
> Best,
> lynxis
>
> >
> > On Sat, 20 May 2023 at 16:42, Alexander 'lynxis' Couzens <lynxis@fe80.eu
> >
> > wrote:
> >
> > > Hi Ahnaf,
> > >
> > > the structure of osmocom have changed since the manual has been
> written.
> > > The manual is written for the long outdated osmo-nitb (a combined
> BSC,MSC).
> > >
> > > > I have noticed that the wiki page for OpenBSC GPRS at
> > > >
> https://osmocom.org/projects/cellular-infrastructure/wiki/OpenBSC_GPRS
> > > has
> > > > not been updated for four years, and since then, there have been
> > > > significant updates to the software. As a result, the information on
> the
> > > > GPRS/EDGE Setup page may be outdated, and I am struggling to
> configure
> > > GPRS
> > > > on my system.
> > > >
> > > > I have attached my configuration files below for your review.
> > >
> > > I would recommend to take a look into the
> > >
> https://osmocom.org/projects/cellular-infrastructure/wiki/Osmocom_Network_In_The_Box
> > > But you already have configuration files for bsc, msc, sgsn, ggsn.
> > >
> > > I would also recommend you to add an IP for every core network
> component
> > > and ran.
> > > Because it helps debugging to have the IPs seperate.
> > > For a local network (everything runs on the same host) I would do:
> > >
> > > * 127.0.0.10 bts + pcu
> > > * 127.0.0.11 bsc + bsc-mgw (yes running mgw twice)j
> > > * 127.0.0.12 msc + osmo-sip-connector + msc-mgw
> > > * 127.0.0.13 sgsn
> > > * 127.0.0.14 ggsn
> > > * 127.0.0.15 sip-server (e.g. asterix, ...)
> > > * 127.0.0.16 hlr
> > > You will need to change vty and ctrl interface ips as well.
> > >
> > >
> > > Back to your current network.
> > > Are you running osmo-stp? osmo-stp is required for the new network.
> > >
> > > Ok. but what is not working? Please add more information!
> > >
> > > - Can your MS/UE connect to the network?
> > >  - CS: location update works?
> > >  - PS: routing area update works?
> > > - Does your phones gets an IP? (PDP Context)
> > > - Does `tcpdump -i tun4 -vn` shows any traffic?
> > >
> > > Do you have a pcap trace? (Best to upload it to a website and only send
> > > the link on this mailinglist)
> > >
> > > Your tun.network file looks wrong. The device should be named tun4 and
> the
> > > IP range is also wrong.
> > > Personally I wouldn't use systemd-networkd for this.
> > > At least I would expect routing issues. Also I wonder why there isn't a
> > > tun4 device.
> > >
> > > Even if there is a tun4 device, you might missing the routing and
> > > depending on your setup, NAT/masquerading.
> > > I think you would need to run `ip route add 172.16.222.0/24 dev tun4`
> > > and `iptables -t nat -A POSTROUTING -j MASQUERADE -s 172.16.222.0/24
> -o
> > > wlp1s0`
> > >
> > > Best,
> > > lynxis
> > >
>
>

--000000000000a484a405fc34d466
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lynxis,<br><div><br></div><div>This time I am getting t=
his following log.</div><div><br></div><div>osmo-pcu<br><br>&lt;0009&gt; tb=
f_dl_fsm.c:372 TBF(DL:TFI-0-0-0:STATE-ASSIGN:GPRS:IMSI-901550000123457:TLLI=
-0xd586ae05) releasing due to PACCH assignment timeout.<br>&lt;0002&gt; pdc=
h.cpp:348 PDCH(bts=3D0,trx=3D0,ts=3D4) PACKET CONTROL ACK with unknown FN=
=3D248629 TLLI=3D0xd586ae05 (TRX 0 TS 4)<br>&lt;0002&gt; pdch.cpp:353 PDCH(=
bts=3D0,trx=3D0,ts=3D4) PACKET CONTROL ACK with unknown TBF corresponds to =
MS with IMSI 901550000123457, TA 0, uTBF (TFI=3D0, state=3DNone), dTBF (TFI=
=3D0, state=3DASSIGN)<br>&lt;0009&gt; tbf_dl_fsm.c:372 TBF(DL:TFI-0-0-0:STA=
TE-ASSIGN:GPRS:IMSI-901550000123457:TLLI-0xd586ae05) releasing due to PACCH=
 assignment timeout.<br>&lt;0009&gt; llc.c:326 MS(IMSI-901550000123457:TLLI=
-0xd586ae05:TA-0:MSCLS-12-12:UL:DL) Discarding LLC PDU because lifetime lim=
it reached, count=3D5 new_queue_size=3D0<br>&lt;0023&gt; gprs_bssgp_bss.c:2=
36 BSSGP (BVCI=3D1800) Tx LLC-DISCARDED TLLI=3D0xd586ae05, FRAMES=3D5, OCTE=
TS=3D40<br>&lt;0002&gt; pdch_ul_controller.c:324 PDCH(bts=3D0,trx=3D0,ts=3D=
4) Timeout for registered POLL (FN=3D252689, reason=3DDL_ACK): TBF(DL:TFI-0=
-0-0:STATE-FLOW:GPRS:IMSI-901550000123457:TLLI-0xd586ae05)<br>&lt;0008&gt; =
tbf.cpp:466 TBF(DL:TFI-0-0-0:STATE-FLOW:GPRS:IMSI-901550000123457:TLLI-0xd5=
86ae05) poll timeout for FN=3D252689, TS=3D4 (curr FN 252689)<br>&lt;0008&g=
t; tbf.cpp:543 TBF(DL:TFI-0-0-0:STATE-FLOW:GPRS:IMSI-901550000123457:TLLI-0=
xd586ae05) Timeout for polling PACKET DOWNLINK ACK: |Assignment was on PACC=
H|No downlink ACK received yet|<br><br>osmo-sgsn</div><div><br></div><div>2=
0230521195557390 DMM INFO MM(901550000123457/d586ae05) -&gt; ACTIVATE PDP C=
ONTEXT REQ: SAPI=3D3 NSAPI=3D5 =C2=A0(gprs_sm.c:468)<br>20230521195557390 D=
MM INFO MM(901550000123457/d586ae05) Found GGSN 0 for APN &#39;internet&#39=
; (requested &#39;internet&#39;) (mmctx.c:578)<br>20230521195557390 DGPRS N=
OTICE PDP(901550000123457/0) Create PDP Context (sgsn_libgtp.c:181)<br>2023=
0521195557391 DGPRS INFO PDP(901550000123457/0) Received CREATE PDP CTX CON=
F, cause=3D128(Request accepted) (sgsn_libgtp.c:399)<br>20230521195557391 D=
SNDCP INFO SNSM-ACTIVATE.ind (lle=3D0x5651b2543258 TLLI=3Dd586ae05, SAPI=3D=
3, NSAPI=3D5) (gprs_sndcp.c:526)<br>20230521195557391 DGPRS INFO PDP(901550=
000123457/0) &lt;- ACTIVATE PDP CONTEXT ACK (gprs_sm.c:190)<br>202305211955=
57391 DLNSDATA INFO NSE(01800)-NSVC(01800) Tx NS-UNITDATA (gprs_ns2_message=
.c:426)<br>20230521195557391 DLLC NOTICE Sending XID type NULL (8 bytes) re=
quest to MS... (gprs_llc.c:364)<br>20230521195557391 DLNSDATA INFO NSE(0180=
0)-NSVC(01800) Tx NS-UNITDATA (gprs_ns2_message.c:426)<br>20230521195557451=
 DLNSDATA INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA (gprs_ns2.c:1311)<br>2=
0230521195557451 DLNSDATA INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA (gprs_=
ns2_vc_fsm.c:686)<br>20230521195557451 DMM INFO MM(901550000123457/d586ae05=
) -&gt; ACTIVATE PDP CONTEXT REQ: SAPI=3D3 NSAPI=3D6 =C2=A0(gprs_sm.c:468)<=
br>20230521195557451 DMM INFO MM(901550000123457/d586ae05) Found GGSN 0 for=
 APN &#39;internet&#39; (requested &#39;internet&#39;) (mmctx.c:578)<br>202=
30521195557451 DGPRS NOTICE PDP(901550000123457/0) Create PDP Context (sgsn=
_libgtp.c:181)<br>20230521195557451 DGPRS INFO PDP(901550000123457/1) Recei=
ved CREATE PDP CTX CONF, cause=3D220(Unknown PDP address or PDP type) (sgsn=
_libgtp.c:399)<br>20230521195557451 DMM NOTICE MM(901550000123457/d586ae05)=
 &lt;- ACTIVATE PDP CONTEXT REJ: Unknown PDP address or PDP type (gprs_sm.c=
:235)<br>20230521195557451 DLNSDATA INFO NSE(01800)-NSVC(01800) Tx NS-UNITD=
ATA (gprs_ns2_message.c:426)<br>20230521195557931 DLNSDATA INFO NSE(01800)-=
NSVC(01800) Rx NS-UNITDATA (gprs_ns2.c:1311)<br>20230521195557931 DLNSDATA =
INFO NSE(01800)-NSVC(01800) Rx NS-UNITDATA (gprs_ns2_vc_fsm.c:686)<br>20230=
521195557931 DLLC NOTICE Received XID confirmation from MS. (gprs_llc.c:329=
)<br>20230521195557931 DLLC NOTICE Ignoring XID-Field: XID: type N201_I, da=
ta_len=3D2, data=3D05df (gprs_llc.c:202)<br>20230521195557931 DLLC NOTICE I=
gnoring XID-Field: XID: type N201_U, data_len=3D2, data=3D01f4 (gprs_llc.c:=
202)<br>20230521195557931 DLLC NOTICE Ignoring XID-Field: XID: type VERSION=
, data_len=3D1, data=3D00 (gprs_llc.c:202)<br></div><div><br></div><div>osm=
o-ggsn</div><div><br></div><div>20230521195334823 DTUN DEBUG TUN(apn0): APN=
(internet) Rx DL data packet for IP address outside pool of managed address=
es: 224.0.0.251 &lt;- 192.168.1.109 (ggsn.c:629)<br>20230521195334823 DTUN =
DEBUG TUN(apn0): APN(internet) Rx DL data packet for IP address outside poo=
l of managed addresses: 224.0.0.251 &lt;- 192.168.1.109 (ggsn.c:629)<br>202=
30521195334834 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for IP=
 address outside pool of managed addresses: 224.0.0.22 &lt;- 0.0.0.0 (ggsn.=
c:629)<br>20230521195335054 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data =
packet for IP address outside pool of managed addresses: 224.0.0.22 &lt;- 0=
.0.0.0 (ggsn.c:629)<br>20230521195335823 DTUN DEBUG TUN(apn0): APN(internet=
) Rx DL data packet for IP address outside pool of managed addresses: 224.0=
.0.251 &lt;- 192.168.1.109 (ggsn.c:629)<br>20230521195335823 DTUN DEBUG TUN=
(apn0): APN(internet) Rx DL data packet for IP address outside pool of mana=
ged addresses: 224.0.0.251 &lt;- 192.168.1.109 (ggsn.c:629)<br>202305211953=
37831 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data packet for IP address =
outside pool of managed addresses: 224.0.0.251 &lt;- 192.168.1.109 (ggsn.c:=
629)<br>20230521195337831 DTUN DEBUG TUN(apn0): APN(internet) Rx DL data pa=
cket for IP address outside pool of managed addresses: 224.0.0.251 &lt;- 19=
2.168.1.109 (ggsn.c:629)<br>20230521195505388 DLGTP DEBUG Registering seq=
=3D8212 in restransmit resp queue (gtp.c:503)<br>20230521195505388 DGGSN IN=
FO PDP(901550000123457:5): Deleting PDP context (ggsn.c:354)<br>20230521195=
505388 DGGSN INFO SGSN(127.0.0.9): Deleting SGSN (sgsn.c:21)<br>20230521195=
505388 DLGTP DEBUG Begin pdp_tiddel tid =3D 5754321000055109 (pdp.c:296)<br=
>20230521195505388 DLGTP DEBUG End pdp_tiddel: PDP found (pdp.c:303)<br>202=
30521195521006 DLGTP DEBUG Retransmit resp queue seq 8212 expired, removing=
 from queue (gsn.c:291)<br>20230521195556748 DLGTP DEBUG Begin pdp_tidget t=
id =3D 5754321000055109 (pdp.c:322)<br>20230521195556748 DLGTP DEBUG Begin =
pdp_tidget. Not found (pdp.c:330)<br>20230521195556748 DLGTP DEBUG Begin pd=
p_tidset tid =3D 5754321000055109 (pdp.c:277)<br>20230521195556748 DLGTP DE=
BUG End pdp_tidset (pdp.c:286)<br>20230521195556748 DGGSN DEBUG PDP(9015500=
00123457:5): Processing create PDP context request for APN &#39;internet&#3=
9; (ggsn.c:446)<br>20230521195556748 DGGSN ERROR PDP(901550000123457:5): AP=
N doesn&#39;t support requested EUA / AF type (ggsn.c:582)<br>2023052119555=
6749 DLGTP DEBUG Registering seq=3D8213 in restransmit resp queue (gtp.c:50=
3)<br>20230521195556749 DGGSN INFO PDP(901550000123457:5): Deleting PDP con=
text (ggsn.c:354)<br>20230521195556749 DGGSN NOTICE PDP(901550000123457:5):=
 Deleting PDP context: without private structure! (ggsn.c:367)<br>202305211=
95556749 DLGTP DEBUG Begin pdp_tiddel tid =3D 5754321000055109 (pdp.c:296)<=
br>20230521195556749 DLGTP DEBUG End pdp_tiddel: PDP found (pdp.c:303)<br>2=
0230521195556749 DGGSN NOTICE GGSN(ggsn0): Received Recovery IE for unknown=
 SGSN (no PDP contexts active) (ggsn.c:806)<br>20230521195557391 DLGTP DEBU=
G Begin pdp_tidget tid =3D 5754321000055109 (pdp.c:322)<br>2023052119555739=
1 DLGTP DEBUG Begin pdp_tidget. Not found (pdp.c:330)<br>20230521195557391 =
DLGTP DEBUG Begin pdp_tidset tid =3D 5754321000055109 (pdp.c:277)<br>202305=
21195557391 DLGTP DEBUG End pdp_tidset (pdp.c:286)<br>20230521195557391 DGG=
SN DEBUG PDP(901550000123457:5): Processing create PDP context request for =
APN &#39;internet&#39; (ggsn.c:446)<br>20230521195557391 DGGSN INFO SGSN(12=
7.0.0.9): Discovered (sgsn.c:83)<br>20230521195557391 DGGSN DEBUG PDP(90155=
0000123457:5): PCO Protocol 0x8021 (pco.c:205)<br>20230521195557391 DGGSN D=
EBUG PDP(901550000123457:5): PCO Protocol 0x000d (pco.c:205)<br>20230521195=
557391 DGGSN DEBUG PDP(901550000123457:5): PCO Protocol 0x000a (pco.c:205)<=
br>20230521195557391 DGGSN INFO PDP(901550000123457:5): Unknown/Unimplement=
ed PCO Protocol 0x000a: =C2=A0(pco.c:220)<br>20230521195557391 DGGSN DEBUG =
PDP(901550000123457:5): PCO Protocol 0x0005 (pco.c:205)<br>2023052119555739=
1 DGGSN INFO PDP(901550000123457:5): Unknown/Unimplemented PCO Protocol 0x0=
005: =C2=A0(pco.c:220)<br>20230521195557391 DGGSN DEBUG PDP(901550000123457=
:5): PCO Protocol 0x0010 (pco.c:205)<br>20230521195557391 DGGSN INFO PDP(90=
1550000123457:5): Unknown/Unimplemented PCO Protocol 0x0010: =C2=A0(pco.c:2=
20)<br>20230521195557391 DGGSN INFO PDP(901550000123457:5): Successful PDP =
Context Creation: APN=3Dinternet(internet), TEIC=3D1, IPv4=3D127.0.42.13, I=
Pv6=3Dnone (ggsn.c:569)<br>20230521195557391 DLGTP DEBUG Registering seq=3D=
8214 in restransmit resp queue (gtp.c:503)<br>20230521195557451 DLGTP DEBUG=
 Begin pdp_tidget tid =3D 6754321000055109 (pdp.c:322)<br>20230521195557451=
 DLGTP DEBUG Begin pdp_tidget. Not found (pdp.c:330)<br>20230521195557451 D=
LGTP DEBUG Begin pdp_tidset tid =3D 6754321000055109 (pdp.c:277)<br>2023052=
1195557451 DLGTP DEBUG End pdp_tidset (pdp.c:286)<br>20230521195557451 DGGS=
N DEBUG PDP(901550000123457:6): Processing create PDP context request for A=
PN &#39;internet&#39; (ggsn.c:446)<br>20230521195557451 DGGSN ERROR PDP(901=
550000123457:6): APN doesn&#39;t support requested EUA / AF type (ggsn.c:58=
2)<br>20230521195557451 DLGTP DEBUG Registering seq=3D8215 in restransmit r=
esp queue (gtp.c:503)<br>20230521195557451 DGGSN INFO PDP(901550000123457:6=
): Deleting PDP context (ggsn.c:354)<br>20230521195557451 DGGSN ERROR PDP(9=
01550000123457:6): Cannot find/free IP Pool member (ggsn.c:362)<br>20230521=
195557451 DGGSN NOTICE PDP(901550000123457:6): Deleting PDP context: withou=
t private structure! (ggsn.c:367)<br>20230521195557451 DLGTP DEBUG Begin pd=
p_tiddel tid =3D 6754321000055109 (pdp.c:296)<br>20230521195557451 DLGTP DE=
BUG End pdp_tiddel: PDP found (pdp.c:303)<br>20230521195612002 DLGTP DEBUG =
Retransmit resp queue seq 8213 expired, removing from queue (gsn.c:291)<br>=
20230521195613002 DLGTP DEBUG Retransmit resp queue seq 8214 expired, remov=
ing from queue (gsn.c:291)<br>20230521195613002 DLGTP DEBUG Retransmit resp=
 queue seq 8215 expired, removing from queue (gsn.c:291)<br><br>osmo-bts-tr=
x<br><br>&lt;0000&gt; rsl.c:1389 (bts=3D0,trx=3D0,ts=3D2,ss=3D0) not sendin=
g CHAN ACT ACK<br>&lt;0000&gt; rsl.c:1389 (bts=3D0,trx=3D0,ts=3D3,ss=3D0) n=
ot sending CHAN ACT ACK<br>&lt;0000&gt; rsl.c:1389 (bts=3D0,trx=3D0,ts=3D4,=
ss=3D0) not sending CHAN ACT ACK<br>&lt;0000&gt; rsl.c:1389 (bts=3D0,trx=3D=
0,ts=3D7,ss=3D0) not sending CHAN ACT ACK<br>&lt;0000&gt; rsl.c:1389 (bts=
=3D0,trx=3D0,ts=3D5,ss=3D0) not sending CHAN ACT ACK<br>&lt;0000&gt; rsl.c:=
1389 (bts=3D0,trx=3D0,ts=3D6,ss=3D0) not sending CHAN ACT ACK<br><br>I have=
 set apn as internet in my android device. And, I didn&#39;t configure any =
auth policy in osmo-hlr. Sims are registering through IMSI.<br><img src=3D"=
cid:ii_lhxi5q430" alt=3D"image.png" width=3D"531" height=3D"299"><br><br></=
div><div>Best regards,</div><div>Tahmid</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 21 May 2023 at 15:29, =
Alexander &#39;lynxis&#39; Couzens &lt;<a href=3D"mailto:lynxis@fe80.eu">ly=
nxis@fe80.eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi Tahmid,<br>
<br>
&gt;=C2=A0 =C2=A0 - osmo-bsc<br>
&gt;=C2=A0 =C2=A0 &lt;<a href=3D"https://docs.google.com/document/d/1mFRtjn=
OfecCFZSmAaA22GA_EM28rB59dIjftM_UXmPc/edit?usp=3Dsharing" rel=3D"noreferrer=
" target=3D"_blank">https://docs.google.com/document/d/1mFRtjnOfecCFZSmAaA2=
2GA_EM28rB59dIjftM_UXmPc/edit?usp=3Dsharing</a>&gt;<br>
<br>
&gt;=C2=A0 =C2=A0 - osmo-sgsn<br>
&gt;=C2=A0 =C2=A0 &lt;<a href=3D"https://docs.google.com/document/d/1r3VfTN=
Plb-9XWU8FWfALh5kRr9502WgrSMuYXkqHrE0/edit?usp=3Dsharing" rel=3D"noreferrer=
" target=3D"_blank">https://docs.google.com/document/d/1r3VfTNPlb-9XWU8FWfA=
Lh5kRr9502WgrSMuYXkqHrE0/edit?usp=3Dsharing</a>&gt;<br>
<br>
your pcu can&#39;t connect to the sgsn. You tell your pcu to connect to <a =
href=3D"http://127.0.0.9:23001" rel=3D"noreferrer" target=3D"_blank">127.0.=
0.9:23001</a><br>
The bsc is configuring the pcu via the bts. (bsc -&gt; bts -&gt; pcu)<br>
bsc-config:<br>
[...]<br>
=C2=A0 gprs nsvc 0 remote ip 127.0.0.9<br>
=C2=A0 gprs nsvc 0 remote udp port 23001<br>
=C2=A0 gprs nsvc 0 local udp port 23002<br>
=C2=A0 gprs nsvc 0 nsvci 1800<br>
[...]<br>
<br>
But in your sgsn configuration you set the listen ip/port to <a href=3D"htt=
p://127.0.0.20:23000" rel=3D"noreferrer" target=3D"_blank">127.0.0.20:23000=
</a><br>
[...]<br>
ns<br>
=C2=A0bind udp local<br>
=C2=A0 listen 127.0.0.20 23000<br>
=C2=A0 accept-ipaccess<br>
[...]<br>
<br>
Please change your bsc configuration to 127.0.0.20 and the remote udp port =
to 23000<br>
<br>
=C2=A0 gprs nsvc 0 remote ip 127.0.0.20<br>
=C2=A0 gprs nsvc 0 remote udp port 23000<br>
<br>
Also your ggsn configuration has:<br>
=C2=A0 ip dns 0 127.0.0.1<br>
<br>
This will tell the phone to ask itself for dns queries. Please replace it w=
ith a valid dns server (e.g. 1.1.1.1)<br>
<br>
Best,<br>
lynxis<br>
<br>
&gt; <br>
&gt; On Sat, 20 May 2023 at 16:42, Alexander &#39;lynxis&#39; Couzens &lt;<=
a href=3D"mailto:lynxis@fe80.eu" target=3D"_blank">lynxis@fe80.eu</a>&gt;<b=
r>
&gt; wrote:<br>
&gt; <br>
&gt; &gt; Hi Ahnaf,<br>
&gt; &gt;<br>
&gt; &gt; the structure of osmocom have changed since the manual has been w=
ritten.<br>
&gt; &gt; The manual is written for the long outdated osmo-nitb (a combined=
 BSC,MSC).<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; I have noticed that the wiki page for OpenBSC GPRS at<br>
&gt; &gt; &gt; <a href=3D"https://osmocom.org/projects/cellular-infrastruct=
ure/wiki/OpenBSC_GPRS" rel=3D"noreferrer" target=3D"_blank">https://osmocom=
.org/projects/cellular-infrastructure/wiki/OpenBSC_GPRS</a>=C2=A0 <br>
&gt; &gt; has=C2=A0 <br>
&gt; &gt; &gt; not been updated for four years, and since then, there have =
been<br>
&gt; &gt; &gt; significant updates to the software. As a result, the inform=
ation on the<br>
&gt; &gt; &gt; GPRS/EDGE Setup page may be outdated, and I am struggling to=
 configure=C2=A0 <br>
&gt; &gt; GPRS=C2=A0 <br>
&gt; &gt; &gt; on my system.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I have attached my configuration files below for your review=
.=C2=A0 <br>
&gt; &gt;<br>
&gt; &gt; I would recommend to take a look into the<br>
&gt; &gt; <a href=3D"https://osmocom.org/projects/cellular-infrastructure/w=
iki/Osmocom_Network_In_The_Box" rel=3D"noreferrer" target=3D"_blank">https:=
//osmocom.org/projects/cellular-infrastructure/wiki/Osmocom_Network_In_The_=
Box</a><br>
&gt; &gt; But you already have configuration files for bsc, msc, sgsn, ggsn=
.<br>
&gt; &gt;<br>
&gt; &gt; I would also recommend you to add an IP for every core network co=
mponent<br>
&gt; &gt; and ran.<br>
&gt; &gt; Because it helps debugging to have the IPs seperate.<br>
&gt; &gt; For a local network (everything runs on the same host) I would do=
:<br>
&gt; &gt;<br>
&gt; &gt; * 127.0.0.10 bts + pcu<br>
&gt; &gt; * 127.0.0.11 bsc + bsc-mgw (yes running mgw twice)j<br>
&gt; &gt; * 127.0.0.12 msc + osmo-sip-connector + msc-mgw<br>
&gt; &gt; * 127.0.0.13 sgsn<br>
&gt; &gt; * 127.0.0.14 ggsn<br>
&gt; &gt; * 127.0.0.15 sip-server (e.g. asterix, ...)<br>
&gt; &gt; * 127.0.0.16 hlr<br>
&gt; &gt; You will need to change vty and ctrl interface ips as well.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Back to your current network.<br>
&gt; &gt; Are you running osmo-stp? osmo-stp is required for the new networ=
k.<br>
&gt; &gt;<br>
&gt; &gt; Ok. but what is not working? Please add more information!<br>
&gt; &gt;<br>
&gt; &gt; - Can your MS/UE connect to the network?<br>
&gt; &gt;=C2=A0 - CS: location update works?<br>
&gt; &gt;=C2=A0 - PS: routing area update works?<br>
&gt; &gt; - Does your phones gets an IP? (PDP Context)<br>
&gt; &gt; - Does `tcpdump -i tun4 -vn` shows any traffic?<br>
&gt; &gt;<br>
&gt; &gt; Do you have a pcap trace? (Best to upload it to a website and onl=
y send<br>
&gt; &gt; the link on this mailinglist)<br>
&gt; &gt;<br>
&gt; &gt; Your tun.network file looks wrong. The device should be named tun=
4 and the<br>
&gt; &gt; IP range is also wrong.<br>
&gt; &gt; Personally I wouldn&#39;t use systemd-networkd for this.<br>
&gt; &gt; At least I would expect routing issues. Also I wonder why there i=
sn&#39;t a<br>
&gt; &gt; tun4 device.<br>
&gt; &gt;<br>
&gt; &gt; Even if there is a tun4 device, you might missing the routing and=
<br>
&gt; &gt; depending on your setup, NAT/masquerading.<br>
&gt; &gt; I think you would need to run `ip route add <a href=3D"http://172=
.16.222.0/24" rel=3D"noreferrer" target=3D"_blank">172.16.222.0/24</a> dev =
tun4`<br>
&gt; &gt; and `iptables -t nat -A POSTROUTING -j MASQUERADE -s <a href=3D"h=
ttp://172.16.222.0/24" rel=3D"noreferrer" target=3D"_blank">172.16.222.0/24=
</a> -o<br>
&gt; &gt; wlp1s0`<br>
&gt; &gt;<br>
&gt; &gt; Best,<br>
&gt; &gt; lynxis<br>
&gt; &gt;=C2=A0 <br>
<br>
</blockquote></div>

--000000000000a484a405fc34d466--

--000000000000a484a605fc34d467
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lhxi5q430>
X-Attachment-Id: ii_lhxi5q430

iVBORw0KGgoAAAANSUhEUgAABVYAAAMACAYAAADPPjzCAAAABHNCSVQICAgIfAhkiAAAABl0RVh0
U29mdHdhcmUAZ25vbWUtc2NyZWVuc2hvdO8Dvz4AAAAtdEVYdENyZWF0aW9uIFRpbWUAU3VuIDIx
IE1heSAyMDIzIDA4OjE3OjA1IFBNICswNgW0k+0AACAASURBVHic7N13fFX1/cfx17kze5OArDDC
3qIsBUVEQdxKxVGto3Vbrb/aurXVqrXaqnW01bpHh3UjAiIuFBBEQERW2CF7j7vO749AyM5NcnPv
TfJ+9kFNzvycmzu+532/53uMvkdlmHQhJiaGCT6vCV4fPo8Pr9cHdKnDFBERERERERERkRCyhbqA
QDMwwACLzQCbBYsTbCb4XD48VS5MEzAUsoqIiIiIiIiIiEjbWUJdQFAYYHFasMc5sTntYBqhrkhE
REREREREREQ6se4RrB5kYGCNsGKPdmD4utWhi4iIiIiIiIiISAB1y3TRYrNgj3NgYNXQqyIiIiIi
IiIiItJq3TJYBTAsBvZYe3W4KiIiIiIiIiIiItIK3TZYBTAMA1u0HXwac1VERERERERERET8162D
VQCLzcDmtClcFREREREREREREb91+2AVwBppxdBDISIiIiIiIiIiIn5SmgiAgTXCCr5Q1yEiIiIi
IiIiIiKdgYLVg6wRFjD1cIiIiIiIiIiIiEjLlCTWMLDYrWCGug4REREREREREREJdwpWa7HYDQWr
IiIiIiIiIiIi0iIFq7UYVgNMI9RliIiIiIiIiIiISJhTsFqLYVGPVREREREREREREWmZgtVaDIt6
q4qIiIiIiIiIiEjLFKyKiIiIiIiIiIiItJKCVREREREREREREZFWUrAqIiIiIiIiIiIi0koKVkVE
RERERERERERayRbKnaem9GDWMcczOH0Qbq+Hzdu2sOSzjykuKQ5lWSIiIiIiIiIiIiLNCkmwarVY
uekX1/OLCy7D4XBQWVWJ1WLFbrdTWlbKQ089wvP/ejkUpYmIiIiIiIiIiIi0KOhDARiGwSN3P8h1
P7uK9Zs3cuZlP2Ho9LEMOXYMF11/GQdyc7j35jv51S9uCHZpIiIiIiIiIiIiIn4x+h6VYQZzh2fP
PYNH736I1evWcN41P8XlctGvd18Adu3dTUJcPO/88z/079OPs3++gNXr1gSzPKryK8EW1IdERERE
REREREREOpmg91j9+YWXAfDbB+7E5XJx4xXXseT191n82nvccNk1FBYX8bu/PIBhGPziwsuDXZ6I
iIiIiIiIiIhIi4IarCYlJDJ88FC2ZW5n87YfAZg3aw4RzggiIyI5bfYpACz7cjnlFRVMmzg5mOWJ
iIiIiIiIiIiI+CWowWpyYjIAWTkHaqZlZR/+eX92FgAej4ecvBxiomOIjIgMZokiIiIiIiIiIiIi
LQpqsFpQVAhASlJyzbT7H3+IsvJySsvLuOtPvwfAarGSnJRMRWUFFZUVwSxRREREREREREREpEVB
DVZz83PZtnMHQwZmkN63PwAzpx2H0+nEZrUydvhoAKYeNZmYqGi+WrMqmOWJiIiIiIiIiIiI+CXo
N6967vUXMAyDe2++A6vFyplzTsNmtRLhjODS8y4mKjKSO274LQD/eO2fwS5PREREREREREREpEVG
36MyzGDu0GKx8NyfnmHmtBms2fAtGemDqKyqxGazA3AgJ5thg4fwwr9f4Y4/3hPM0gCoyq8EW1Af
EhEREREREREREelkrPG9k+8O5g5N0+SDZYtITkhi9vQTcDqd2G12IiIiiI6MIikhkT//4wke+OvD
mGbwA05vhScE/XhFRERERERERESkMwl6j9VD4mLj+PiNhSQlJLJ2wzocDgejho3gQE42088+EZfL
FYqy1GNVREREREREREREWhSyvpmX/uSnJCUmsTdrHz+5+iLOu/oisg5kkZyYxOmz54WqLBERERER
EREREZEWhSxYPf2kU7FZrXy1ZiUej4ey8nI2/rgJp8PJxedeGKqyRERERERERERERFpkC8VOpxw5
iZSkJHLycli7cR3HHD0VgK/XruLIMRPolZrGwH7pbN+VGYryRERERESkO9PIYCIiIh3LCHUBgRGS
MVZffeJ5jjl6KqXlZQ3GUnU6nERHRfHmB2/xy7t/HezSwnqMVVuUnZQpA0gY25uYAclEpMVijbFj
sVpDXZqIiIiIdBM+rxdvqZvKAyWU7cgl/9u95H61E295aO6R0B6GxYLFYgELGIYBhgFGeJ4LiIiI
dDmmAZiYPhNME5/PxPT6Ql1VqwS9x2pifAID+w8AICYqGqKiG13uqHETcTqcVLmqglleWIrum0C/
n0wgdcYgLI6QdDIWEREREQHAYrViibdij48gdkgPep40HF+VhwPLt7Lr9bWU7y0MdYnNMwysNguG
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
ZtgFawAAAABJRU5ErkJggg==
--000000000000a484a605fc34d467--
