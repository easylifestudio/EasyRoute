#!/bin/sh
set -e

if [ "${DOMAIN}" == "**None**" ]; then
    echo "Please set DOMAIN"
    exit 1
fi

if [ ! -f "${NG_BIN}/bin/ngrok" ]; then
    echo "ngrok is not build,will be build it now..."
    /bin/sh /build.sh
fi


chmod +x ${NG_BIN}/bin/ngrok
${NG_BIN}/bin/ngrok -config ${NG_RUN}/ngrok.cfg start yun blog ssh push
