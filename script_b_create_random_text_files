#!/bin/bash

# To schedule this script to run every 6 hours we need to add next line to crontab
# 0 */6 * * *  /opt/test_config_directory/create_random_text_files.sh

for NUM in {1..10}
do
TIMESTAMP=$(date +%T | tr : _)
tr -dc 'A-Za-z0-9!@#$%^&*()_+=<>?,.' </dev/urandom | head -c 1000 > "test_${TIMESTAMP}_${NUM}.txt"
done
