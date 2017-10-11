#!/bin/bash
set -vex

OUTDIR=/its1/GB_BT2/jianzuoyi/workspace/one_virus/01.Assembly/01.soapdenovo/kmer99/output/

/its1/GB_BT2/jianzuoyi/workspace/barley/modules/SOAPdenovo/SOAPdenovo2-bin-LINUX-generic-r240/SOAPdenovo-127mer contig \
-g ${OUTDIR}/Virus.assembly \
-p 8
touch /its1/GB_BT2/jianzuoyi/workspace/one_virus/01.Assembly/01.soapdenovo/kmer99/soapdenovo_contig.sh.done
