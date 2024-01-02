echo "VITE_GIT_REF=$(git describe --exact-match)" > ./src/env/.env.local
echo "VITE_TARGET=dev" >> ./src/env/.env.local
npm run build:client && npm run build:server
