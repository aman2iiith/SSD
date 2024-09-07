#!/bin/bash

# a. Creating directory named temp_activity
mkdir -p temp_activity

# b. creating files temp<i>.sh, with <i> ranging from 1 to 50
touch temp_activity/temp{1..50}.sh

# c. Changing the extensions of files from temp1.sh to temp25.sh from .sh to .txt
for i in {1..25}; do
    mv temp_activity/temp"${i}".sh temp_activity/temp"${i}".txt
done