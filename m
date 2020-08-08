Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by mail.lfdr.de (Postfix) with ESMTP id E890323F6E3
	for <lists+osmocom-net-gprs@lfdr.de>; Sat,  8 Aug 2020 09:59:42 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id 8A6C414F0D6;
	Sat,  8 Aug 2020 07:59:32 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b=jnVb/4F9
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::233; helo=mail-lj1-x233.google.com;
 envelope-from=papa.tana101@gmail.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org;
 dmarc=pass (p=none dis=none) header.from=gmail.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by lists.osmocom.org (Postfix) with ESMTP id 831B914F0C4
 for <osmocom-net-gprs@lists.osmocom.org>; Sat,  8 Aug 2020 07:59:26 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id 185so4518094ljj.7
 for <osmocom-net-gprs@lists.osmocom.org>; Sat, 08 Aug 2020 00:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=q57I9P+Z64+4rb2rJO/KKFujm4GXrEToWfOGZHsEadE=;
 b=jnVb/4F9/TV0Lv9sWR7KjhJzX+6R9iS74g6V9cjUhFSb+ysXDvEpP4h8JMuYN0yCFF
 5Z9UtvQhsxs+q0MdaIvVVsV7n+kowfa166xEARWwVtHyKW0X2baYtqLX2FgUQx2p+CD6
 kM+J5+i9c1LMvFJQWAjr4MPnkvWG4JrIYWtEkx+qIzLbF73pop1oATaofJXDk5S4pGlC
 VH73hXukziUuUufN3yyMMBx3rNFY9uhf5wDbB/lLCX06bgmU+3sZ6pLGT/ZGYpMBM99O
 t4PLLA7VDxNjg+ul/z7A6ChPAVJlJVXlZ4edR6YQbQTysBiRs8o7zbREMQSqWv6uacOG
 H68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to;
 bh=q57I9P+Z64+4rb2rJO/KKFujm4GXrEToWfOGZHsEadE=;
 b=a/ofLk5aYdWM0u+NruqHjoQtydJLPC1xwxJWPsnCU+3dwaaP+VH4YSmeNEgyEiJcik
 WoF/VYtAATykxng1YMYXv5b1aGb9SSIujLSWdSY3UQOCsjJUd2GHU5m8Bj/IGUB8gLvZ
 JLkt9v0X9qqu0Mk1e7vQDIC4SYJviSfGlgLG5dmHSyQ5HI9b3WQoRS46QlrJjjVQYcq/
 7qx4JWxt1RJwuOy6po51HfGmg5DBCPwXb4+wKZ16TjNX4EKt1KpDUrMsOuv6QeqORXHH
 2F+hMwMRSqzXb4zSTWChTTv26a27TPUEEPRk6Vx7zHlRvLzn7ZzsVtLLNVBhBfu05g0O
 aVxA==
X-Gm-Message-State: AOAM532RN1mXWrJdMoLrla9jtQRIS4eD2UldfXT5lshwPXv8EDdRQcA5
 GHpEID96Wv4Nq/mGkmb6EbOA8IMBPZDFYU2GIkt6UwSG
X-Google-Smtp-Source: ABdhPJwIt2OfrSgH00h8EVvBpJTbKJNhuWEIbEpnI6e1hjRujnjfQNMdmD/JDk+hgOlpRg3uU4SWNGTirwP4nC6EAMU=
X-Received: by 2002:a2e:8897:: with SMTP id k23mr7405720lji.355.1596873565680; 
 Sat, 08 Aug 2020 00:59:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:5384:0:0:0:0:0 with HTTP;
 Sat, 8 Aug 2020 00:59:24 -0700 (PDT)
In-Reply-To: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
References: <CAGoraXSZFuZOPNyd3CSrK9AFj8wHRywKtPHOPaNXA+0f=1w3yA@mail.gmail.com>
From: Papa Tana <papa.tana101@gmail.com>
Date: Sat, 8 Aug 2020 10:59:24 +0300
Message-ID: <CAGoraXSPGVU0oFV9P96rOV2S8TuOYEUCk0sX4Yz5uhvXOK=Eog@mail.gmail.com>
Subject: Re: GTP tunnel seems to exist,
 but No encapsulation when using libgtpnl
To: osmocom-net-gprs@lists.osmocom.org
Content-Type: text/plain; charset="UTF-8"
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

It is working now.
Very simple and stupid mistake from my side at network namespace configuration.
Sorry for that!

Thanks!
Best Regards,
