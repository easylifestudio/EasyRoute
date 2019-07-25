
cd $(cd $(dirname $0); pwd)

cd ./nextcloud
docker-compose up -d

cd ../ngrok
./BinExt/bin/ngrok --config run/ngrok.cfg start blog
