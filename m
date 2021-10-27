Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id DF7BE43D313
	for <lists+osmocom-net-gprs@lfdr.de>; Wed, 27 Oct 2021 22:44:04 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id B1CF020CA4D;
	Wed, 27 Oct 2021 20:44:01 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=h9TqoaTL
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by lists.osmocom.org (Postfix) with ESMTP id 786AD20CA3B
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 27 Oct 2021 20:43:54 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id w12so15361233edd.11
 for <osmocom-net-gprs@lists.osmocom.org>; Wed, 27 Oct 2021 13:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eRe1Ejr/YNiu5oBV6n4hPcvqFw3TyT9KVnjpN7FnJho=;
 b=h9TqoaTLKQ3sL4Wu7uFfmpX01llVkpxmb28HiAlxNedCSUX4x6XNH4xDrE3GfARE8d
 YQlLZlaCzn/8DOehcqY+DFIA/xmveK0bx8cmLWslubsPYa9Woz7eBO8okb/yrFCfeuQi
 ztESzNCdtg2GFQ74Eo7Sa+04VGR9hy3y43yVNkBrdES8d9OGmxCLummB3+dbmnJwnQ/m
 37MxJi9fMXfM8OFmJiKP5QrbBgQoIXCEx/AsAbeCsP/Kx+l0mXbChTbGbD0vZNgwAOQQ
 YIGiPdjP5Ggx7GXobyWNig6JhLQpTHRKPWYqQODuUCPb0IAAFlkY3u8kao5NTPBurYD2
 pEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eRe1Ejr/YNiu5oBV6n4hPcvqFw3TyT9KVnjpN7FnJho=;
 b=XRjZjuV95YlNdeotL9fWP8qZBJlHTHPa6ezbX+dOem/L60OmKmD+PCyghPWH8R07BD
 +p+fw3K8TuOUlmxDMaluaVIYBp+Ek2eiSl/hS9hiTwepQNCz7wshl1aiXQRgxzJKugd6
 zsVhe97dYueutHSrcP4o/KLHI60t8QGI8ia8Qo1nCkVd5sQdOPUcAD7PGSoA8N8V3WkU
 ZW2VLIEoyeBfkzndH7RR44TxRUpIQR0b0FYwXwTEtJd4UcPjhxbfV+oueEU5er+eSNqk
 n5/JQomcdnFB/2SFvnIX1l9TSb+W8chDSM9JCPE3AMe4vT/lAQtosibuM407K/dTQXGu
 ecWg==
X-Gm-Message-State: AOAM531AWoALfJJJ59WXGZcL9Cebl1giqcfRR04NR71oP+UcXdAWPRPj
 zdhbyn0ppf8djnnrCgaRvUr+rx1mXqkA+ZriRttk5exh7YcbKQ==
X-Google-Smtp-Source: ABdhPJwiaI4Gk7FdyR7T+2u7auEEppr9kRI6m1oF2VqV5BrvIjUUxwErYzyMozd547ThP+NMVh3mDtyn538eCJBIp0A=
X-Received: by 2002:aa7:d556:: with SMTP id u22mr214729edr.226.1635367434388; 
 Wed, 27 Oct 2021 13:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
 <CAMYWRL_ibx+Z-CrV2vqytLEuU5PWfLr7yDkG54OnBNkbmWahyQ@mail.gmail.com>
 <YXbRYNTFS+5z8Tyi@nataraja>
In-Reply-To: <YXbRYNTFS+5z8Tyi@nataraja>
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Wed, 27 Oct 2021 22:43:42 +0200
Message-ID: <CAMYWRL8w3Zhdg4E=-JrdGNMHrH86OtMjdErt8s_92086Fk=iUw@mail.gmail.com>
Subject: Re: TTCN-3 tests for MME
To: Harald Welte <laforge@osmocom.org>
Cc: osmocom-net-gprs@lists.osmocom.org
Content-Type: text/plain; charset="UTF-8"
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

Thank you for your kind suggestions.
I made a simple test with code snippet (lines):

    1. var S1AP_PDU ber_pdu_to_log :=
valueof(ts_S1AP_SetupReq(g_enb_pars[idx].global_enb_id,g_enb_pars[idx].supported_tas,
v32));
    2. log(ber_pdu_to_log);
    3. var charstring  pdu_to_send_to_ip_layer := enc_S1AP_PDU(ber_pdu_to_log);
    4. log(pdu_to_send_to_ip_layer);



RESULT from line 2.
 { initiatingMessage := { procedureCode := 17, criticality := reject
(0), value_ := { s1SetupRequest := { protocolIEs := { { id := 59,
criticality := ignore (1), value_ := { global_ENB_ID := { pLMNidentity
:= '62F224'O, eNB_ID := { macroENB_ID := '00000001010110110011'B },
iE_Extensions := omit } } }, { id := 60, criticality := ignore (1),
value_ := { eNBname := "Ksenija" } }, { id := 64, criticality :=
reject (0), value_ := { supportedTAs := { { tAC := '3039'O ("09"),
broadcastPLMNs := { '62F224'O }, iE_Extensions := omit } } } } } } } }
}
#################################
RESULT from line 3.  ASN.1 (A)PER S1AP
'00110020000003003B40080062F22400015B30003C4002030000400007000C0E4062F224'O
#################################


I checked encoded ASN.1 message with publicly available decoders.
Error is thrown whenever decoder tries to decode ENBname.
I can conclude that libfftranscode API is the source of the problem.

On Mon, Oct 25, 2021 at 5:50 PM Harald Welte <laforge@osmocom.org> wrote:
>
> On Fri, Oct 22, 2021 at 02:12:03PM +0200, Mirko Kovacevic wrote:
> > Protocol-IEs, MMEname and ENBname, cant be decoded\encoded properly,
> > definitely.
>
> one would have to check if the encoding problem already exists in the BER version
> (as generated by TITAN natively) or if it happens at the BER <-> PER transcoding
> inside the [unfortunately] non-public libfftranscode, generated by ffasn1c.
>
> I you can build a small, self contained test case that shows a problem in
> BER <-> PER transcoding using the libfftranscode API directly (removing all of TITAN, etc.)
> then we may have a chance of either solving it at sysmocom or by asking
> the ffasn1c author to have a look
>
> > Amazing progress with S1AP emulation, congrats.
>
> thanks.  Please keep us posted about any progress.  We're happy to merge any
> related patches  you may have for adding more test cases, fixing bugs, etc.
>
> I never found the time for it, but the general idea always was to automatically
> run this testsuite in jenkins.osmocom.org against the open5gs-mme, like we do
> for or own osmocom software.
>
> Regards,
>         Harald
> --
> - Harald Welte <laforge@osmocom.org>            http://laforge.gnumonks.org/
> ============================================================================
> "Privacy in residential applications is a desirable marketing option."
>                                                   (ETSI EN 300 175-7 Ch. A6)



-- 
Puno pozdrava,
Mirko Kovacevic
