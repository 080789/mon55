#!/bin/sh
if [ ! -f UUID ]; then
  UUID="22735036-3e35-45a5-93c1-5760600deb4f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

