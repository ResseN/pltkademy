#!/bin/bash

PID_LIST=$(ps -aux | awk -F ' ' '{print $11,$2}' | grep ^java | awk -F ' ' '{print $2}')
DEST_DIR=/temp/investigation/

if [ ! -d "$DEST_DIR" ]; then
mkdir -p $DEST_DIR
fi

for PID in $PID_LIST
do
lsof -p $PID | awk '$5 == "REG"' | awk '{print $9}' > "${DEST_DIR}access_${PID}.txt"
done

echo Done
