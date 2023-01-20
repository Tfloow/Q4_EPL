#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

pip install pre-commit
pre-commit install
var=$(pre-commit install)
echo $var

if [ "$var" = "bash: pre-commit: command not found" ] || [ "$var" = "pre-commit: command not found"]
then
  echo "${RED}Oops, something went wrong with the installation of your pre-commit, open an issue on github at${NC}"
else
  echo "Thank you for installing for further instructions or info visit: https://www.github.com/Tfloow/Q4_EPL Thank you :)"
fi

location=$(where pre-commit)

if [ "${location:${#location}-4:4}" = ".exe" ]
then
  echo "Well done everything is set!"
fi

sleep 10
