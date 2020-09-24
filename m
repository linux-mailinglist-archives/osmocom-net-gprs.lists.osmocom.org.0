Return-Path: <osmocom-net-gprs-bounces@lists.osmocom.org>
X-Original-To: lists+osmocom-net-gprs@lfdr.de
Delivered-To: lists+osmocom-net-gprs@lfdr.de
Received: from lists.osmocom.org (lists.osmocom.org [IPv6:2a01:4f8:191:444b::2:7])
	by mail.lfdr.de (Postfix) with ESMTP id 119932783D7
	for <lists+osmocom-net-gprs@lfdr.de>; Fri, 25 Sep 2020 11:20:25 +0200 (CEST)
Received: from lists.osmocom.org (lists.osmocom.org [144.76.43.76])
	by lists.osmocom.org (Postfix) with ESMTP id D395A14E74E;
	Fri, 25 Sep 2020 09:20:19 +0000 (UTC)
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none) header.from=schaufler-ca.com
Authentication-Results: lists.osmocom.org;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b=izsm6JM4
X-Original-To: osmocom-net-gprs@lists.osmocom.org
Delivered-To: osmocom-net-gprs@lists.osmocom.org
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=66.163.191.154;
 helo=sonic304-28.consmr.mail.ne1.yahoo.com;
 envelope-from=casey@schaufler-ca.com; receiver=<UNKNOWN> 
Authentication-Results: lists.osmocom.org; dmarc=none (p=none dis=none)
 header.from=schaufler-ca.com
Received: from sonic304-28.consmr.mail.ne1.yahoo.com
 (sonic304-28.consmr.mail.ne1.yahoo.com [66.163.191.154])
 by lists.osmocom.org (Postfix) with ESMTP id DE6A114DAF1
 for <osmocom-net-gprs@lists.osmocom.org>; Thu, 24 Sep 2020 20:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1600980047; bh=e/BUvKKAfTXOmt+FBb2KX15zlyrBsmZRtea+NgHqxPI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=izsm6JM49WHfjACrIfanyRtK5N3zIIBp+fH/16iilyG+3smHXtuDmuiXH5WoCZ1+eiXRDLgfkTkwBWy0qHIBtehfdH4de6DzotCHgzNorf4FGwBKOBe+0Z8pWei+7MR4k6UguvvXryddZniv+pi/b2V8BMhKObkqgw/4iM4t3asNYKRjOP/WNBSjbOdSTsNgsaNWglqebm6LTCVQaUlAUC8yGFY7lNooodxFj0mii8N/wktSlZSTva3GTfAVLn3a5DCeDKhZW5YXEF9BgFEgqXydM9lzqxwch95lib30YWDoVrAjUzYgM1/UXLGDJQJVug0kkgljPrIY80jL7gMkYg==
X-YMail-OSG: yeEHRY0VM1l703RAyqTeq1CedkrvImsRP72bJy2qDDTHxirktUR8zzcz7YTeXB9
 wiIykeQ66YpAW4lVizpsK60lw6A06tbllKpwoYQz4apQi91CZNM0M8IRycixAjrSK385.NaJE8kl
 .TGimYNNYrOKBNtChi0DYvwS9zG6bigwrm0_33BEn5S6Re1tfiKsPRyKpArAbx1LzBfK8w20jvQx
 E.AP04BqoX4ONsA8YMXm5lJOPvdo6upD5XTUvukry.qsSwFteKAegaO4aqW0.4lzZbjw3LugQAED
 hH_kfaoCuIAuX3Zya2IqJUjqvectv49cRlfjCWEvGijdvMJDQGJMSFhF99TspOiSvrsRc_RXHMh5
 8dH_d6WmP5.ZV.YqMFDPmCmxGQ.bHsFHICYdOzH1bRzRgePyb6Fo4GD7mwZclPFTAxF7QvMgXUyd
 Hsjb6mNU7B.842aWv0lRzcaRfWrGWlD07YhnZEtNF.hSRzjITtXwwVoqgDjMw0Qz6DN3xEVAOYOF
 9zT61nitDHm8.7Cv8noWl3jCmMo5D62T1mU_CBB3Pk.pB.A1gmJ6o68gyrsFKS648ghbePDGQ2ho
 iisaFLaPJxwBC58F_eS.44LYNfFd7_6ICPb_Ebv.gjvB99fy.u2PIVYYQpsEtvpTftWVt0OoDuBi
 auXqizZoWg7Qjh8rq_Rk3o78eO8TIHTajdPjV0YY0WDoo_mlwLicTJZGraxQ4EELei1Nb7EVmtiu
 _JVP98dV59bYA2jHZxjI9f7EcsWLwk3iDXiBlDcxAv7BJXz8qKuX3HOXnO1fnXM95pyDFZVQeOKz
 krtYTwq4SUOtsv3hI2GHjs67czTmLbyp.1HtUoVjJ9wMapN.hqDJPR5Tx03fTp5kUS1gHzVwR5el
 jOYNN6v06S.tyXe_wM5sJiruzXZqPZeTFwQNUypcIlmO5wsDnx958ZeGGe7cNmYtmQJfGkFTJd5L
 kksooUS0pUW1G90IoFas_tkEzCStYMqLTMXzaNknpzYMx.rOPHc26Mkxa12r7LAgbKos3z2lR4pY
 X8J5ZXh0bDg1xnied_.ABpC57w8apKX4gvewEKhVF2Sa8qwpxBR7KEiI75gVFnc7JVbPU4SdEsNA
 rRDBwUF4.Prg5o47Mp7wINNIcfdU3XZIVj2PASB_pzKwcSArMTkWNwsLbwbO7HwTOfWo7i97yQ_z
 itXHVvcqV2TNNTSJgRBZz2AkI35Z0ZRI_PETUDnuj.igUjkoABSzhmwqL7qpxRVuhuDzH90CYp3c
 38w6aZjN_4Ecw3ZAZJqlOfPJbkqa3hkBkiPFj5ZGbSzmkWWRO4vL6sk0ODjgZBOa_s5tZA_x.fS1
 c_cLZU8sVH0vgH7JCbi1pht.SvHXiM94DvURNR04cEDku4bJvcYNCzGTeLgH5PvhIg06TqCGxaZI
 Ev6Vhk09ONCySX8QmKxUaHcyaBY2idkLfnkVd149_HJmgsKd.kteH.mG67YDN.HvKbqgJned6j.D
 A6TQV4olRqi8dTcIB3voqZON2vd1XamUy2cEOJm72G9NdJthJ2YUkOAxP4srFuNheT7vIG7gs8NJ
 s.12rAjAICg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Thu, 24 Sep 2020 20:40:47 +0000
Received: by smtp422.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 7de8fdbf7b77a96b3c92a5f4dcd782d7; 
 Thu, 24 Sep 2020 20:40:46 +0000 (UTC)
Subject: Re: [RFC PATCH 1/3] security: Add GPRS Tunneling Protocol (GTP)
 security hooks
To: Richard Haines <richard_c_haines@btinternet.com>,
 selinux@vger.kernel.org, linux-security-module@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org
Cc: stephen.smalley.work@gmail.com, paul@paul-moore.com, pablo@netfilter.org, 
 laforge@gnumonks.org, jmorris@namei.org
References: <20200924085102.5960-1-richard_c_haines@btinternet.com>
 <20200924085102.5960-2-richard_c_haines@btinternet.com>
From: Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <fbf4bc81-1552-abab-a369-77de52184603@schaufler-ca.com>
Date: Thu, 24 Sep 2020 13:40:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200924085102.5960-2-richard_c_haines@btinternet.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Mailer: WebService/1.1.16674
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.7)
X-Mailman-Approved-At: Fri, 25 Sep 2020 09:20:15 +0000
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

On 9/24/2020 1:51 AM, Richard Haines wrote:
> The GTP security hooks are explained in:
> Documentation/security/GTP.rst
>
> Signed-off-by: Richard Haines <richard_c_haines@btinternet.com>
> ---
>  Documentation/security/GTP.rst   | 39 ++++++++++++++++++++++++++++++++
>  Documentation/security/index.rst |  1 +
>  include/linux/lsm_hook_defs.h    |  3 +++
>  include/linux/lsm_hooks.h        | 16 +++++++++++++
>  include/linux/security.h         | 19 ++++++++++++++++
>  security/security.c              | 18 +++++++++++++++
>  6 files changed, 96 insertions(+)
>  create mode 100644 Documentation/security/GTP.rst
>
> diff --git a/Documentation/security/GTP.rst b/Documentation/security/GTP.rst
> new file mode 100644
> index 000000000..e307d0b59
> --- /dev/null
> +++ b/Documentation/security/GTP.rst
> @@ -0,0 +1,39 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +=============================
> +GPRS Tunneling Protocol (GTP)
> +=============================
> +
> +GTP LSM Support
> +===============
> +
> +Security Hooks
> +--------------
> +For security module support, three GTP specific hooks have been implemented::
> +
> +    security_gtp_dev_add()
> +    security_gtp_dev_del()
> +    security_gtp_dev_cmd()
> +
> +
> +security_gtp_dev_add()
> +~~~~~~~~~~~~~~~~~~~~~~
> +Allows a module to allocate a security structure for a GTP device. Returns a
> +zero on success, negative values on failure.
> +If successful the GTP device ``struct gtp_dev`` will hold the allocated
> +pointer in ``void *security;``.
> +
> +
> +security_gtp_dev_del()
> +~~~~~~~~~~~~~~~~~~~~~~
> +Allows a module to free the security structure for a GTP device. Returns a
> +zero on success, negative values on failure.
> +
> +
> +security_gtp_dev_cmd()
> +~~~~~~~~~~~~~~~~~~~~~~
> +Allows a module to validate a command for the selected GTP device. Returns a
> +zero on success, negative values on failure. The commands are based on values
> +from ``include/uapi/linux/gtp.h`` as follows::
> +
> +``enum gtp_genl_cmds { GTP_CMD_NEWPDP, GTP_CMD_DELPDP, GTP_CMD_GETPDP };``
> diff --git a/Documentation/security/index.rst b/Documentation/security/index.rst
> index 8129405eb..cdbdaa83b 100644
> --- a/Documentation/security/index.rst
> +++ b/Documentation/security/index.rst
> @@ -16,3 +16,4 @@ Security Documentation
>     siphash
>     tpm/index
>     digsig
> +   GTP
> diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
> index 2a8c74d99..a994417fb 100644
> --- a/include/linux/lsm_hook_defs.h
> +++ b/include/linux/lsm_hook_defs.h
> @@ -322,6 +322,9 @@ LSM_HOOK(int, 0, sctp_bind_connect, struct sock *sk, int optname,
>  	 struct sockaddr *address, int addrlen)
>  LSM_HOOK(void, LSM_RET_VOID, sctp_sk_clone, struct sctp_endpoint *ep,
>  	 struct sock *sk, struct sock *newsk)
> +LSM_HOOK(int, 0, gtp_dev_add, void **security)

This should be gtp_dev_alloc by convention.

> +LSM_HOOK(int, 0, gtp_dev_del, void *security)

This should be gtp_dev_free by convention.

> +LSM_HOOK(int, 0, gtp_dev_cmd, void *security, enum gtp_genl_cmds cmd)

Please pass a pointer to the structure that contains the security blob,
not the pointer to the blob itself in these hooks.

>  #endif /* CONFIG_SECURITY_NETWORK */
>  
>  #ifdef CONFIG_SECURITY_INFINIBAND
> diff --git a/include/linux/lsm_hooks.h b/include/linux/lsm_hooks.h
> index 9e2e3e637..3d6888d51 100644
> --- a/include/linux/lsm_hooks.h
> +++ b/include/linux/lsm_hooks.h
> @@ -982,6 +982,22 @@
>   *	This hook can be used by the module to update any security state
>   *	associated with the TUN device's security structure.
>   *	@security pointer to the TUN devices's security structure.
> + * @gtp_dev_add:
> + *	This hook allows a module to allocate a security structure for a GTP
> + *	device.
> + *	@security pointer to a security structure pointer.

change per earlier comments.

> + *	Returns a zero on success, negative values on failure.
> + * @gtp_dev_del:
> + *	This hook allows a module to free the security structure for a GTP
> + *	device.
> + *	@security pointer to the GTP device's security structure.

change per earlier comments.

> + *	Returns a zero on success, negative values on failure.
> + * @gtp_dev_cmd:
> + *	This hook allows a module to free the security structure for a GTP
> + *	device.
> + *	@security pointer to the GTP device's security structure.

change per earlier comments.

> + *	@cmd contains the GTP command.
> + *	Returns a zero on success, negative values on failure.
>   *
>   * Security hooks for SCTP
>   *
> diff --git a/include/linux/security.h b/include/linux/security.h
> index 0a0a03b36..67ff43afa 100644
> --- a/include/linux/security.h
> +++ b/include/linux/security.h
> @@ -30,6 +30,7 @@
>  #include <linux/err.h>
>  #include <linux/string.h>
>  #include <linux/mm.h>
> +#include <linux/gtp.h>
>  
>  struct linux_binprm;
>  struct cred;
> @@ -1365,6 +1366,9 @@ int security_sctp_bind_connect(struct sock *sk, int optname,
>  			       struct sockaddr *address, int addrlen);
>  void security_sctp_sk_clone(struct sctp_endpoint *ep, struct sock *sk,
>  			    struct sock *newsk);
> +int security_gtp_dev_add(void **security);
> +int security_gtp_dev_del(void *security);
> +int security_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd);
>  
>  #else	/* CONFIG_SECURITY_NETWORK */
>  static inline int security_unix_stream_connect(struct sock *sock,
> @@ -1582,6 +1586,21 @@ static inline void security_sctp_sk_clone(struct sctp_endpoint *ep,
>  					  struct sock *newsk)
>  {
>  }
> +
> +static inline int security_gtp_dev_add(void **security)
> +{
> +	return 0;
> +}
> +
> +static inline int security_gtp_dev_del(void *security)
> +{
> +	return 0;
> +}
> +
> +static inline int security_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd)
> +{
> +	return 0;
> +}
>  #endif	/* CONFIG_SECURITY_NETWORK */
>  
>  #ifdef CONFIG_SECURITY_INFINIBAND
> diff --git a/security/security.c b/security/security.c
> index 70a7ad357..63b656848 100644
> --- a/security/security.c
> +++ b/security/security.c
> @@ -2304,6 +2304,24 @@ void security_sctp_sk_clone(struct sctp_endpoint *ep, struct sock *sk,
>  }
>  EXPORT_SYMBOL(security_sctp_sk_clone);
>  
> +int security_gtp_dev_add(void **security)
> +{
> +	return call_int_hook(gtp_dev_add, 0, security);
> +}
> +EXPORT_SYMBOL(security_gtp_dev_add);
> +
> +int security_gtp_dev_del(void *security)
> +{
> +	return call_int_hook(gtp_dev_del, 0, security);
> +}
> +EXPORT_SYMBOL(security_gtp_dev_del);
> +
> +int security_gtp_dev_cmd(void *security, enum gtp_genl_cmds cmd)
> +{
> +	return call_int_hook(gtp_dev_cmd, 0, security, cmd);
> +}
> +EXPORT_SYMBOL(security_gtp_dev_cmd);
> +
>  #endif	/* CONFIG_SECURITY_NETWORK */
>  
>  #ifdef CONFIG_SECURITY_INFINIBAND
