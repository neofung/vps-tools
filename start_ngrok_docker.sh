#docker run --rm -it -e DOMAIN="tunnel.neofung.org" -v /home/neo/shared/softwares/ngrok:/myfiles neofung/ngrok /bin/sh /build.sh
docker run -idt --name ngrok-server -v /home/neo/shared/softwares/ngrok:/myfiles -p 8082:80 -p 4432:443 -p 4443:4443 -p 37871:37871 -e DOMAIN=tunnel.neofung.org neofung/ngrok /bin/sh /server.sh
