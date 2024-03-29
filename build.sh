write_properties () {
  echo "Building for $1"
  
  mkdir -p ./src/env
  
  if [ $1 = 'dev' ]; then
    echo "VITE_GIT_REF=$(git rev-parse --short HEAD)"
    echo "VITE_GIT_REF=$(git rev-parse --short HEAD)" > ./src/env/.env.local
  elif [ $1 = 'test' ] || [ $1 = 'prod' ]; then
    echo "VITE_GIT_REF=$(git describe --tags)"
    echo "VITE_GIT_REF=$(git describe --tags)" > ./src/env/.env.local
  else
    echo "Argument 1 must be dev, test, or prod. $1 is not recognized."
    return 1
  fi
  npm run build
}

write_properties $1
