#! /usr/bin/python

import os

with open("ascii_runtime_measurements", "r") as f:
    lines = f.readlines()
    for line in lines:
        pcr = line.split(" ")[1]
        os.system("tpm2_pcrextend 11:sha1=%s" % pcr)