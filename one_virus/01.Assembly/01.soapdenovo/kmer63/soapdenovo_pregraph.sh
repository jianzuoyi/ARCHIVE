#!/bin/bash
set -vex

OUTDIR=/its1/GB_BT2/jianzuoyi/workspace/one_virus/01.Assembly/01.soapdenovo/kmer63/output/
mkdir -p $OUTDIR

/its1/GB_BT2/jianzuoyi/workspace/barley/modules/SOAPdenovo/SOAPdenovo2-bin-LINUX-generic-r240/SOAPdenovo-63mer sparse_pregraph \
-s /its1/GB_BT2/jianzuoyi/workspace/one_virus/01.Assembly/01.soapdenovo/lib.cfg \
-o ${OUTDIR}/Virus.assembly \
-K 63 \
-z 300000 \
-p 8
touch /its1/GB_BT2/jianzuoyi/workspace/one_virus/01.Assembly/01.soapdenovo/kmer63/soapdenovo_pregraph.sh.done
