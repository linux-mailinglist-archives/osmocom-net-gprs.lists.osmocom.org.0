Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 6B9774337F1
	for <lists+osmocom-net-gprs@lfdr.de>; Tue, 19 Oct 2021 16:00:50 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 9828220ECB5;
	Tue, 19 Oct 2021 14:00:47 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=ilfX/dHd
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::534; helo=mail-ed1-x534.google.com;
 envelope-from=northmirko@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by lists.osmocom.org (Postfix) with ESMTP id E7D5520EC8F
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 19 Oct 2021 14:00:41 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id y30so12051334edi.0
 for <osmocom-net-gprs@lists.osmocom.org>; Tue, 19 Oct 2021 07:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=6PgTij/ZVoxj5S88S/kV+5wBc/3ISmLMOcWvOUECHP0=;
 b=ilfX/dHdKxfC4HbiWnv2GP5aTzJB6g8k+NQTE+0y08zWK50pSOvuzHT4H53sxMblYB
 +yAmM//t5dUW49SNlDcWP6TuPoDvPP9Bjs5bRr9VJysRw3ItxLXza7uNAsPvGj7E7MJn
 sXIyFEJyf2beCKkOuHPqZV0cadmM6nktXiqE2ydp2n0Zh4tXlvwYMegUxZ2dN72Psxlj
 m449hZFnK2XRp/qIPkTGFOLDiWUwyqju43eAU0LSvlbjEiZ92rxLSL6S4kcpL8q3QuV4
 hriQ6aXAN+qqCQyivGHmh23wVo0WTnyq2LkrJ5YHjVugmJWqPKX6xZ+jfrDQkRbxPwN5
 dSow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6PgTij/ZVoxj5S88S/kV+5wBc/3ISmLMOcWvOUECHP0=;
 b=UzAI27r9CVNDmYEan4XSoGol45smzSTTMIgwTLCvbZxp51v9fKqIjknGlQhvefdplJ
 cRHAC1WgTv+6AR6fY9kjG/wi+KaQlr4S0qI9XrsWhHHayqx8QNCuAvaguxDnkR9zfJTS
 SiPbAzfUeUeIf7AuGfY3JNtxQrvzCWIRlffoXP1+shhg5z/zEzMz5n4zY9juqrdE68ce
 N5+xJCRNtZfHHmBQe4s1uhOKsIgAo/a7D/Zqg3XgiuqZVa9qR/ppuTMydiOKkaZRrAyX
 BE620Pv0QZ4bBHNNCNPuKDSUex5h8gzJDfXRHW35Ss72oCZW0IRZyjhU5dDWqtTUzZP/
 P9KA==
X-Gm-Message-State: AOAM531CMIpR47fNKeqHkylcrgKnCFevTAv2JWxFV+RUCGwyiit/t2RR
 6orIZJx0DqhmAZng0Z97hQxiobHNxaCeIPEUbVhEe+adOek=
X-Google-Smtp-Source: ABdhPJxS/PZPYhBy9tiRF1GNFDdykMChm3ZSzqDJvJptEEl0djQYdzXn+u6pcu+eLxRNbFCcuPP0QtcPeYd79tutN3Y=
X-Received: by 2002:a05:6402:7:: with SMTP id
 d7mr53827757edu.265.1634651958094; 
 Tue, 19 Oct 2021 06:59:18 -0700 (PDT)
MIME-Version: 1.0
From: Mirko Kovacevic <northmirko@gmail.com>
Date: Tue, 19 Oct 2021 15:59:07 +0200
Message-ID: <CAMYWRL_Bn9TzSL6vAdzA=E8oK8hEWtYTP890dHg1JVd0g5b_pA@mail.gmail.com>
Subject: TTCN-3 tests for MME
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: multipart/mixed; boundary="0000000000004b879805ceb5117a"
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

--0000000000004b879805ceb5117a
Content-Type: text/plain; charset="UTF-8"

Hi, Osmonians,
I don't know where to write for MME TTCN-3, so I chose to write to it
closet relative - SGSN.

I was trying to do slight modification to TTCN-3 code, modifing
S1AP_Templates.ttcn.

I embedded enodeb name for all tests with new protoc-IE = id-eNBname :
##################################
template (value) S1AP_PDU
ts_S1AP_SetupReq(template (value) Global_ENB_ID p_global_ENB_ID,
         template (value) SupportedTAs p_supportedTAs,
         template (value) PagingDRX p_pagingDRXs) := {
    initiatingMessage := {
        procedureCode := id_S1Setup,
        criticality := reject,
        value_ := {
            S1SetupRequest := {
                protocolIEs := {
                    {
                        id := S1AP_Constants.id_Global_ENB_ID,
                        criticality := ignore,
                        value_ := { Global_ENB_ID := p_global_ENB_ID }
                    },
                    {
                        id := S1AP_Constants.id_SupportedTAs,
                        criticality := reject,
                        value_ := {SupportedTAs := p_supportedTAs}
                    },
                    {
                        id := S1AP_Constants.id_eNBname,//id-eNBname
                        criticality := ignore,
                        value_ := {ENBname := "OsmoEnodeb"}
                    } /* HACK: work around nextepc bug
                      , {
                        id := S1AP_Constants.id_pagingDRX,
                        criticality := ignore,
                        value_ := {PagingDRX := p_pagingDRXs}
                            } */
                }
            }
        }
    }
}
########################

Code compiles, but PDU is not encoded well.
I attached Wireshark preview.

Can you help me with this issue ?



-- 
Puno pozdrava,
Mirko Kovacevic

--0000000000004b879805ceb5117a
Content-Type: image/png; name="image.png"
Content-Disposition: attachment; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <f_kuy5gjo90>
X-Attachment-Id: f_kuy5gjo90

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
gg==
--0000000000004b879805ceb5117a--
