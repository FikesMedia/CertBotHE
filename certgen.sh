HE_USERNAME=$1 HE_PASSWORD=$2 HE_ZONE=$3\
	certbot certonly \
	--domain $4 \
	--email $5 \
	--preferred-challenges dns \
	--manual \
	--manual-auth-hook "/root/certbot-he-hook.py"  \
	--manual-cleanup-hook "/root/certbot-he-hook.py"  \
	--manual-public-ip-logging-ok
