PASSWORD="Pass_word"
PORT="8988"
NAME="shadowsocks"
METHOD="aes-256-cfb"

echo stop and remove shadowsocks instance
docker stop shadowsocks
docker rm shadowsocks

echo run the image
docker run --name $NAME --detach --restart=always --publish $PORT:8338 --publish $PORT:8838/udp shadowsocks/shadowsocks-libev -k $PASSWORD --fast-open -v -m $METHOD
docker ps -al

