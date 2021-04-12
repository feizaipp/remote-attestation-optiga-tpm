tpm2_readpublic -H 0x81010002 -o ak.pub
tpm2_readpublic -H 0x81010001 -o ek.pub

tpm2_pcrlist -L sha1:0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23 -o pcr

./bin/attune
./bin/atelic
sh activecredential.sh
sh quote.sh
./bin/attest