

for i in *.txt; do 
    # append
    # echo "my text" >> $i
    # prepend
    echo -e "// vim: set syntax=asciidoc:" >> "$i"
    echo -e " " >> "$i"
done

