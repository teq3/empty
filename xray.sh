#!/bin/sh
if [ ! -f UUID ]; then
  UUID="46b12e26-8e75-4e01-8e0a-ecef0211e42c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

