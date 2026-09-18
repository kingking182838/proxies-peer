FROM node:20-alpine
WORKDIR /app
RUN apk add --no-cache wget && \
    wget -qO reference-sdk.js https://agents.proxies.sx/peer/reference-sdk.js && \
    npm install ws
ENV API_KEY=""
ENV PEER_STATE_FILE=/app/state/id.json
CMD ["node", "reference-sdk.js"]
