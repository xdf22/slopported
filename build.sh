#!/bin/bash
# this is just the MRCE build script
#	  Compile PK3 for Linux/MacOS
#	  By Ashi
#	  make sure you have 7z and zsh installed on your system

NAME="22backported2"
VERSION="v0"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

printf '=====================================================================\n' >> $SCRIPT_DIR/pk3_output.log
printf 'PK3 Compile Script for Linux/MacOS\nCreated by Ashi\n\nCurrent Directory: '$SCRIPT_DIR'\n\nCompiling' $NAME'-'$VERSION'.pk3' >> $SCRIPT_DIR/pk3_output.log

7z a $NAME-$VERSION.pk3 ./pk3/* -x!.bak -x!.dbs -x!.DS_Store -x!.backup1 -x!.backup2 -x!.backup3 -tzip >> $SCRIPT_DIR/pk3_output.log
printf '=====================================================================\n' >> $SCRIPT_DIR/pk3_output.log
