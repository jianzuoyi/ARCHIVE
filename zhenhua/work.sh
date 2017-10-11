# rename header line
for seq in $(find . -type f -name "*seq")
do
    name=$(basename $seq .seq)
    oldname=$(grep '>' $seq | cut -c 2-)
    echo ">$name $oldname" > header.txt
    grep -v '>' $seq > sequence.txt
    cat header.txt sequence.txt > $seq.named
done

cat *.named > seq.all.fa
blastn -query seq.all.fa -subject seq.all.fa -outfmt 6 -out all.vs.all.m6
cat all.vs.all.m6 | awk '$1!=$2' > all.vs.all.m6.filter
cat all.vs.all.m6.filter | awk '!a[$1]++' > all.vs.all.m6.besthits

echo -e "seq\ttarget\tsimilarity\tevalue" > header.txt
cat all.vs.all.m6.filter | cut -f 1,2,3,11 > all.vs.all.m6.filter.cut
cat header.txt all.vs.all.m6.filter.cut > 1 && mv 1 all.vs.all.m6.filter.cut
rm header.txt sequence.txt
rm seq.all.fa
rm *.named
