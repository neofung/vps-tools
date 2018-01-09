docker stop ssr-docker
docker rm ssr-docker


docker run -d -p 8989:8989/tcp -p 8989:8989/udp --name ssr-docker jpacg/shadowsocksr -s 0.0.0.0 -p 8989 -k Pass_word -m none -o tls1.2_ticket_auth -O auth_chain_a
