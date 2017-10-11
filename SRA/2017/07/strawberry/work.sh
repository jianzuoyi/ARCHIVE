name='ZJ-01*.gz'
PRE='PR'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 14- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

name='ZJ-1-1*.gz'
PRE='R1'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 15- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

name='ZJ-1-2*.gz'
PRE='R2'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 15- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

name='ZJ-1-3*.gz'
PRE='R3'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 15- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

name='ZJ-2-1*.gz'
PRE='W1'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 15- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

name='ZJ-2-2*.gz'
PRE='W2'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 15- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

name='ZJ-2-3*.gz'
PRE='W3'
ls upload/${name} | xargs -n1 echo mv > prefix
ls upload/${name} | xargs -n1 | cut -c 15- | xargs -n1 -I {} echo upload/${PRE}{} > suffix
paste -d ' ' prefix suffix

