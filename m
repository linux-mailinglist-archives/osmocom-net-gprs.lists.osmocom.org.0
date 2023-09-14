Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B997A033E
	for <lists+osmocom-net-gprs@lfdr.de>; Thu, 14 Sep 2023 14:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 7DE0A282FD;
	Thu, 14 Sep 2023 12:02:52 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wsNKP78Z6Vkj; Thu, 14 Sep 2023 12:02:52 +0000 (UTC)
Received: from [127.0.1.1] (unknown [IPv6:2a01:4f8:120:8470::1:7])
	by mail.osmocom.org (Postfix) with ESMTP id 4C3B8282F9;
	Thu, 14 Sep 2023 12:02:49 +0000 (UTC)
Received: from mail.osmocom.org (mail.osmocom.org [IPv6:2001:780:45:1d::46:82])
	by lists (Postfix) with ESMTPS id 8604C38A1800;
	Thu, 14 Sep 2023 12:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.osmocom.org (Postfix) with ESMTP id 5FFBA28062;
	Thu, 14 Sep 2023 12:02:38 +0000 (UTC)
Received: from mail.osmocom.org ([127.0.0.1])
 by localhost (mail.osmocom.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x9C30fSVrggn; Thu, 14 Sep 2023 12:02:37 +0000 (UTC)
Received: from mail.sysmocom.de (mail.sysmocom.de [IPv6:2a01:4f8:13b:828::1:500])
	by mail.osmocom.org (Postfix) with ESMTPS id BAD2428060;
	Thu, 14 Sep 2023 12:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.sysmocom.de (Postfix) with ESMTP id 568C2198253D;
	Thu, 14 Sep 2023 12:02:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at sysmocom.de
Received: from mail.sysmocom.de ([127.0.0.1])
	by localhost (mail.sysmocom.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1ZB4G2GSGSL; Thu, 14 Sep 2023 12:02:37 +0000 (UTC)
Received: from [192.168.1.140] (unknown [207.188.171.64])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 0B2C51980F73;
	Thu, 14 Sep 2023 12:02:37 +0000 (UTC)
Message-ID: <a8cbd7f4-b9e9-4809-86d2-8d3016ede04b@sysmocom.de>
Date: Thu, 14 Sep 2023 14:02:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "openbsc@lists.osmocom.org >> OpenBSC" <openbsc@lists.osmocom.org>,
 osmocom-net-gprs <osmocom-net-gprs@lists.osmocom.org>,
 osmocom-announce@lists.osmocom.org
From: Pau Espin Pedrol <pespin@sysmocom.de>
Subject: September 2023 Osmocom CNI releases (202302)
Autocrypt: addr=pespin@sysmocom.de; keydata=
 xsFNBGKFOjcBEADl5wSEGyDFDi9eZdesWVRR5VEbAQ9AhNUp7u4epskERkEMF4GFS69TuNdu
 hYFVS5aDGhhoX6XHSxWx7wuu1ygguMKweJemHZGroljfRShxV8m6jMjMLrg0j1CTWgDiHslD
 AbCpXzutVJl99gyvtqJ5M70xuAZUo+NSsLsrdVximTtaaPv6wSv/3b2BhnWzOVzRp9v4360z
 mRqKvnsWc3HAh945OUQoK4qVswsb+rvoQhRoa8oGW3DoEmIKGlE/K4htoi6Q7YwDNWcv0z/o
 g9MXfm+5yunJY1lbLn3hFSclEu7D2lGXO3TlSHcAOlX/sux7g7d+vXUQCa9dx8wpM17zbKEc
 QZCBOQhqfXVB1UpRGYo1mX74d6+n5LHp7+Ug+2oFcBkh0SistdFucJHHGsm9hh2ulgOhvKsT
 10e8ptrAEOL/r3TsyWx4yh1pKV7xPhiuLkj6zW2Jn0vaVQq6sCi5G+GsZ07NhgyEgX5yssmn
 kUbJMyrLuFaW543jAhb/eMe0SbRTD6Dy3epoVBKzO6qGfdmnJze9GjImlZu9Vz1eQfXYubks
 lbEV/6IWZ9lf8lgaSjtg3oZ1LoJ1w5K6O580s7GYcOn5Y0JeXKpEhnIdoGRoT/E8clj1zKUo
 HPNpDXSzaE4Kbo47FBZGkqhaENIsk9pj/dnVBnYlMP7yGzlYIwARAQABzSVQYXUgRXNwaW4g
 UGVkcm9sIDxwZXNwaW5Ac3lzbW9jb20uZGU+wsGNBBMBCAA3FiEEBuNZdt1QwTihSUo0PCDg
 dB44D90FAmKFOjkFCQWjmoACGwMECwkIBwUVCAkKCwUWAgMBAAAKCRA8IOB0HjgP3Qh/EACZ
 VTQnHYwcDNhGjjmmFI4TBAesi6VKeR8ojggLfw8lMnBOr9FtD79+U3gB74BqYTIdHPA3mGd9
 kUociWMinfDHkTlNyDd6MR26x+yQ7m5NsUawOG+QwBzgvkntxRlZbewU9eQHZa/+PedsgW5L
 +6E5pjGpCNiKkel/+TcpcMsCRj7qYiCIs7ORPuDGcRTE7+wKuX0c3MpmYiLjVnQhdjK89Qs+
 ddcPZDXBT5Su8fKQkVDxgH4MnIHSRjYuiwQbDAGjKU64U9CuY+NT+1h2CZbHqU1Pt/1esc02
 WXdUfPQ+gl5JFBLBJXccdJEVDshumqv228ObT75KPYhou6hTKKsI8SqNtVteyLeifJfUcV7V
 hk2NZsjmHOsRmILZaGGfne7qrvMwpn0etAWJFWR/a+nesvW0z6PyXNXMQ/xxzXTiPPGd+TVE
 lE+bk4QS5K0Q8i2zaz7sYGBnzlW+0VtoOaAjyCF/EzY9AOC0ZRNihRrmjm739yM1yc7paY/E
 YGgPa3+jj+7ERDe0oOUOLIBMSl0TLwS0nrzU93S56TtLkZdEbF6SwI6s9ZYqufE5yQsyji/K
 9tzkdxtXo7gGo7k86bkgsCOxR1F6IlTT0I00uCiCrNGapeMScA7M5tcA0ucWNp2mVRSl1Paw
 SMTvMj1YySpQEsRDD/SkFxO0eW3BvxsJoc7BTQRihTo6ARAAteEN9/yWzxdjBJITNs1QUrA+
 9LOuQC5az0kxeRXr8roiKs+GRcnUx16h4cjVHGD15mpJiiv14h9JjuIB6KuEK90VvZfG8hi/
 4ERdjKwx2XAgI4u691uamF/XCnGxwDKG0YXDsoa72rgm24it7s7ANl6LCL0Y+LXgKS6uneWI
 qjn0Xbui3bthnirCH8qbZ5NSbjk2T/s60YhdYNoty1SVSgWAxLmp3PdKIG0Q8CIlFnPpiSMt
 42zEFV6xiFOg44rlTwT96/AWGTLXgrjTAx9DbhGWSjMEYireZDoqA+wgBIM9xJnaFry6qngO
 k2zGmwxtYnG9LPTewjLrhbecEAZzZw0NXTSC8bxls5OMxOj0JsqannaGvuVffPOxIDqSdd9G
 oqHmYIMd/qUl5UzJMmLpFHXyTTGUsT1UlRXUSQ4ChMGKXP0EScLVJKY/ScgMqf+dNGvQ2bEq
 e7HAUG9n8LANyZ5p+8xkVocbCBuDOZho0Wl0p1HH7bx/BTxF56ZiXCRPYsxr+OQFIQMKA9Cd
 ux1sPn2khYEhQLL46XeI1c3DaCYVvbw07tWVhasvmsX6mN4VaHygkYVjXaeUAvwTXmsKEcjS
 D2AMuAJW8Y3HfoeKX9XKS5I+0L6517/QRLDUhFY+xTA7xvaa8M699rK4LnDP/9XK6ihRM3RR
 uWcXz2jBpe8AEQEAAcLBfAQYAQgAJhYhBAbjWXbdUME4oUlKNDwg4HQeOA/dBQJihTo7BQkF
 o5qAAhsMAAoJEDwg4HQeOA/dtbgQAJMjjPCjeDNYW6KpYqMzqYFtOgAZb/dlSeLPGFuPqBA3
 2NT+byLYhgCCGqHZCdynSFrc2xJ+7bYq8QebZ+Dj5+JEsrMFZZz3q7+tqN30LHv2SQotEIPi
 rUO1tqUVb8bEpIculwQrn2cczG25U2SCp7875uA7IwYb06zg4//KcqAgLx7THheQz8h7kWgW
 ehp58q/XcpHdWJU+93+L4lY/1FrjQHWcBfrgxk7wnJEf9pxsodE6q9OL2aX2/NnBRJw5rmZ+
 qcK9mY5bnoQhSreUMLfllLdBjfus4aGfXFczUvKTpUMUwrdSURCCpk5xLhJWuc6K1BIaXesQ
 yaCfmAgIBfFsLqF5qy9QaO5hqAxfzwRzqc/eb8roEdJLZtV8Wo/SM1wFZc394zQYmNgAgBTq
 EfIQRWYOYWGjW2yBBhQMeIXVvH5WyVVZvbrgJKNhLV7inmxOs3GltlshGjDPK7g4GiZFBZpr
 YhY4lb8EysB1TMrC93XszwMVBPPBl1pwYJjb4ti1bMAyjhP6Oy5ddu8GW790gO+ZmiOGiAUD
 H0Zt4UeWxkfifBmE5byjaZOD+VelU4BGCdiaLY7IOw4ksPOU+E4yCxPjG3kd608UZsEFc7VN
 vVVaKswKWFpp1uh8UtPcr/lr8FN6ke2ZNtpdLSXHj+vUWBB17sHnN4FUafCdDUAB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Message-ID-Hash: 3YCSFWOTKF5TH4NWS4Q6LEFNXQJQJBTZ
X-Message-ID-Hash: 3YCSFWOTKF5TH4NWS4Q6LEFNXQJQJBTZ
X-MailFrom: pespin@sysmocom.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
List-Id: "Discussion on the Osmocom network-side GPRS components like OsmoPCU, OsmoSGSN" <osmocom-net-gprs.lists.osmocom.org>
Archived-At: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/message/3YCSFWOTKF5TH4NWS4Q6LEFNXQJQJBTZ/>
List-Archive: <https://lists.osmocom.org/hyperkitty/list/osmocom-net-gprs@lists.osmocom.org/>
List-Help: <mailto:osmocom-net-gprs-request@lists.osmocom.org?subject=help>
List-Owner: <mailto:osmocom-net-gprs-owner@lists.osmocom.org>
List-Post: <mailto:osmocom-net-gprs@lists.osmocom.org>
List-Subscribe: <mailto:osmocom-net-gprs-join@lists.osmocom.org>
List-Unsubscribe: <mailto:osmocom-net-gprs-leave@lists.osmocom.org>

Hi all,

I am happy to announce that a new version 202309 of the Osmocom CNI 
(Cellular Network Infrastructure) software has been released this week.

For further information, please visit: https://osmocom.org/news/220

Regards,
Pau
-- 
- Pau Espin Pedrol <pespin@sysmocom.de>         http://www.sysmocom.de/
=======================================================================
* sysmocom - systems for mobile communications GmbH
* Alt-Moabit 93
* 10559 Berlin, Germany
* Sitz / Registered office: Berlin, HRB 134158 B
* Geschaeftsfuehrer / Managing Director: Harald Welte
