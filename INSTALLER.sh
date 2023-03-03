#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color
Black='\033[0;30m'        # Black
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'

OsType="1"

echo -e "${Cyan}Welcome to the INSTALLER of${RED} Q4_EPL${NC}"
sleep 2

pip install pre-commit # Install the pre-commit depedency through pip

# Making sure to execute the command is executed where the Repo is located on the device
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

# Adding check for Windows and Linux environnement
var=$(pre-commit.exe install)


if [ "$var" = "bash: pre-commit: command not found" ] || [ "$var" = "pre-commit: command not found"]
then
  echo -e "${RED}Oops, something went wrong with the installation of your pip, open an issue on github at${NC} https://www.github.com/Tfloow/Q4_EPL/issues"
else
  echo -e "${Cyan}Everything is set! ${NC}Thank you for installing for further instructions or info visit: https://www.github.com/Tfloow/Q4_EPL Thank you :)"
fi

# Check if the pre-commit app is well installed
location=$(where pre-commit)
if [ "${location:${#location}-4:4}" != ".exe" ]
then
  echo -e "${RED}Mmh, something is off with your pre-commit app !${NC}"
  echo "${SCRIPT_DIR} we executed here"
fi

sleep 10
