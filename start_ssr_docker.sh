docker stop ssr-with-net-speeder
docker rm ssr-with-net-speeder
docker run -d --name ssr-with-net-speeder -p 8989:8989 malaohu/ssr-with-net-speeder -s 0.0.0.0 -p 8989 -k Pass_word -m aes-256-cfb -o tls1.2_ticket_auth -O auth_sha1_v4
