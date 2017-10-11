#!/bin/bash

bioawk -c fastx '{print ">"$name"\n"$seq}' Ab.gmhmmp.pep > Ab.gmhmmp.pep.format
fastafetch -f Ab.gmhmmp.pep.format -i Ab.gmhmmp.pep.format.idx -F -q names.list
