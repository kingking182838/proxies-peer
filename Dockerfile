docker run -d --name proxies-peer \
  -e API_KEY=psx_10156ba24760cb88b78d16e4629d9324 \
  -e PEER_STATE_FILE=/state/id.json \
  -v proxies-peer-state:/state \
  --restart unless-stopped \
  node:20-alpine sh -c "[ -e node_modules/ws ] || npm i ws; [ -f reference-sdk.js ] || wget -qO reference-sdk.js https://agents.proxies.sx/peer/reference-sdk.js; node reference-sdk.js"
