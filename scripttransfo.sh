#!/bin/bash
cd /C/Users/robic/test/txt
ls -R | grep  "txt" > ../html/nav.txt
sed -i -e 's/.txt//g' ../html/nav.txt
cd ../html
for n in $(cat nav.txt); do pandoc ../txt/$n.txt -s -c link/test.css -A link/footer.txt --toc -o $n.html --metadata pagetitle=$n; done

