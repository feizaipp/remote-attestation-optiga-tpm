#!/bin/bash

# Use -c in xxd so there is no line wrapping
file_size=`stat --printf="%s" ak.name`
loaded_key_name=`cat ak.name | xxd -p -c $file_size`

tpm2_activatecredential -Q -H 0x81010002 -k 0x81010001 -e endorsepasswd  -f credential.blob -o qualification

exit 0
