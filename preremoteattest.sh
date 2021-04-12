tpm2_takeownership -c

tpm2_takeownership -o ownerpasswd -e endorsepasswd -l lockpasswd

tpm2_getpubek -o ownerpasswd -e endorsepasswd -g rsa -f ek.pub -H 0x81010001

tpm2_getpubak -o ownerpasswd -e endorsepasswd -E 0x81010001 -g rsa -D sha256 -s rsassa -k 0x81010002 -f ak.pub -n ak.name

python emulatepcr.py