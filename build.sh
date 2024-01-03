write_properties () {
  if [ $1 = 'dev' ]; then
    echo "VITE_GIT_REF=#0550437" > ./src/env/.env.local
  elif [ $1 = 'test' ] || [ $1 = 'prod' ]; then
    echo "VITE_GIT_REF=v1.0.1" > ./src/env/.env.local
  else
    echo "Argument 1 must be dev, test, or prod. $1 is not recognized."
    return 1
  fi
  npm run build
}

write_properties $1
