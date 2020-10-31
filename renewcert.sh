#!/bin/sh
HE_USERNAME=$1 HE_PASSWORD=$2 HE_ZONE=$3 \
	certbot renew \
	--preferred-challenges dns \
	--manual-auth-hook "/root/certbot-he-hook.py"  \
	--manual-cleanup-hook "/root/certbot-he-hook.py"  \
	--manual-public-ip-logging-ok
