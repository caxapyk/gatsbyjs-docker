#!/bin/sh
set -e

function newsite() {
sd=$2
ofsgr=$3
if [ -z "$sd" ]
then
  echo -e "\033[0;31mDirectory name required!\033[m"
  echo -e "Usage: new [SITE_DIRECTORY] [URL_OF_STARTER_GITHUB_REPO]"
else
  if [ -z "$ofsgr" ]; then gatsby new $sd; 
                      else gatsby new $sd $ofsgr; 
  fi
fi
}

case "$1" in
  new)
  newsite $@
  ;;
  develop)
  gatsby develop --host 0.0.0.0 --port 8000
  ;;
  build)
  gatsby build
  ;;
  serve)
  gatsby serve --host 0.0.0.0 --port 8000
  ;;
  *)  # No more commands, exec arg
  echo -e "\033[32mWelcome to GatsbyJs Docker container!\033[m"
  exec $@
  ;;
esac