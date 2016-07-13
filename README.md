# softether_vpn + letsencrypt
letsencrypt request certificate && auto renew(monthly), 
and leave port 80 for request & renew challenge of letsencrypt

# usage
If there is no cert, run it like this:
docker run -d -p 80:80 -p 443:443 -p 992:992 -p 5555:5555 -p 1194:1194 \
-p 500:500/udp -p 4500:4500/udp -p 1701:1701/udp -p 1194:1194/udp --name sv \
-v "/etc/letsencrypt:/etc/letsencrypt" \
-v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
novice/sevpn:latest --email xx@xxx.com -d xxx.com

else(/etc/letsencrypt/ already contained certs) just run it:
docker run -d -p 80:80 -p 443:443 -p 992:992 -p 5555:5555 -p 1194:1194 \
-p 500:500/udp -p 4500:4500/udp -p 1701:1701/udp -p 1194:1194/udp --name sv \
-v "/etc/letsencrypt:/etc/letsencrypt" \
-v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
novice/sevpn:latest