The ZIP contains 4 folders of 4 Questions as 5th (SQL) question was turned down.

Q1:
Execution: ./q1.sh
a. It takes quotes.txt as input and removes empty lines using awk and stores them in quotes_empty.txt file.
b. It takes quotes_empty.txt file as input and remove duplicates. It uses awk and associative array to count the number of occurances then the output is redirected to quotes_rdup.txt file
c. It takes quotes_rdup.txt file as input and seperates personality names using '~' field seperator. I also handeled leading and trailing spaces in personality field. Then Count associative array stores the field personality with #occurances. finally result is stored in quotes_byperson.txt file.
d. It takes quotes.txt file as input and extract words that are starting with 's' that are followed by 'a' using grep and regular expression. It prints all the words in column on console.

Q2 a:
Execution: ./q2a.sh
a. It generates the password of length 8, 9 or 10 randomly within given conditions such as there should be at least 1 Capital 1 small and 1 symbol in every alphabet. In this I made a function and uses RANDOM variable to generate randomness.

Q2 b:
Execution: ./q2b.sh
b. It generates an account number of length 8, 9 or 10 randomly within given conditions such as it should not have a sequence of Fibonacci, no consecutive 3 same digits and no digit should have occurance of more than 3 times.
For Fibonacci I have used the principle that if F(n-2) + F(n-1) = F(n), than there is a fibonacci sequence. Here I checked only for single digits but sum could be a 2 digit number so I have handeled that as well.

Q3:
Execution: ./q3.sh
In this question all the directories present in current directory are printed with their sizes in sorted order.
To calculate sizes I used du -sh command so that it is human readable and printed on console in sorted order.

Q4:
Execution: ./q4.sh
In this question directory is created using mkdir, temp.sh files are created using touch and extension is changed using mv command.
