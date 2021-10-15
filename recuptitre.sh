#!/bin/bash
cd /c/users/robic/test/html
for n in $(cat nav.txt)
do
        echo "$n" >> principal.html
done