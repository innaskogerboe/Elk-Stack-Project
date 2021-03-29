#!/bin/bash

states=(
"Minnesota"
"Washington"
"California"
"Maine"
"Hawaii s"
)

for i in ${states[@]};
do
if [$i == "Hawaii s"]

then
print "Hawaii is the best!"
else
print "I'm not fond of Hawaii"

fi
done

num_list=$(echo {0..9})
#Can also do num_list=$(seq 0 9)

for num in ${num_list[@]};
do
if [$num = 3] || [$num = 5] || [$num = 7]
then
echo $num
fi
done

outputs=$(find /home -type f -perm 777 2> /dev/null)

for output in ${outputs[@]};
do
echo $output
done

path=(
"/etc/shadow/"
"/etc/passwd/"
)

for i in $(ls -l path);
do
echo "$i"
done

