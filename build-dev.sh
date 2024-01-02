echo "VITE_GIT_REF=$(git rev-parse --short HEAD)" > ./src/env/.env.local
echo "VITE_TARGET=dev" >> ./src/env/.env.local
npm run build:client && npm run build:server
