#!/bin/sh
set -e

if [ "${DOMAIN}" == "**None**" ]; then
    echo "Please set DOMAIN"
    exit 1
fi

if [ ! -f "${NG_BIN}/bin/ngrokd" ]; then
    echo "ngrokd is not build,will be build it now..."
    /bin/sh /build.sh
fi


${NG_BIN}/bin/ngrokd \
    -tlsKey=${NG_BIN}/device.key \
    -tlsCrt=${NG_BIN}/device.crt \
    -domain=${DOMAIN} \
    -httpAddr=${HTTP_ADDR} \
    -httpsAddr=${HTTPS_ADDR} \
    -tunnelAddr=${TUNNEL_ADDR}
