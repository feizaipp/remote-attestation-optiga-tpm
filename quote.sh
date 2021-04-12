#!/bin/bash

pcrs="sha1:11"
qualification=`xxd -p -c 9999 qualification`
tpm2_quote -k 0x81010002 -q $qualification -L $pcrs  -m quote -s sig

exit 0
