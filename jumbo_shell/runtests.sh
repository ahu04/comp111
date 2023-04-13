# !/bin/sh

chmod +x runtests.sh

s1="test"
s2=".txt" 
for ((counter = 0; counter < 5; counter++))
do
s3="$s1$counter$s2"
valgrind ./shell < $s3 
done 
echo "finished tests"