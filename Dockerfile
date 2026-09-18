FROM node:20-alpine
RUN apk add --no-cache wget
CMD ["sh", "-c", "[ -e node_modules/ws ] || npm i ws; [ -f reference-sdk.js ] || wget -qO reference-sdk.js https://agents.proxies.sx/peer/reference-sdk.js; node reference-sdk.js"]
