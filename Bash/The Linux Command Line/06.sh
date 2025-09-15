#Redirection

#Input/Output redirection is the process of changing the default input and output devices of a command. Usually commands read input from the keyboard and write output to the terminal. However, you can redirect this input and output to files or other devices.
#For instance, if we type 'ls' in the terminal, the standard output (stdout) of the command is the terminal itself, so we see the list of files and directories in the current working directory displayed on the screen.
ls -l /usr/bin;

##Redirecting Standard Output
#To redirect the standard output of a command to a file, we use the greater-than symbol (>). This will create a new file with the output of the command, or overwrite an existing file with the same name.
mkdir playground;
cd playground;
ls -l /usr/bin > ls-output.txt;
ls;
less ls-output.txt;
#As you can see in the previous command, we created a file called 'ls-output.txt' that contains the output of the 'ls -l /usr/bin' command.
#There is a nuance on standard output in the sense that not always the command output will be an 'stdout'. If it is an error message, it will be sent to the standard error (stderr) instead. To illustrate this, we will try to list a directory that does not exist.
ls /doesnotexist > ls-output.txt;
#What happens in this case, is that the error message is not written to the 'ls-output.txt' file, but instead is displayed on the terminal. This is because the error message is sent to stderr, not stdout. The ls-output.txt ends up being overwritten with nothing.
#In order to not overwrite a redirected file, and yes to append the redirected output to its end, we can use the double greater-than symbol (>>).
ls -l /usr/bin >> ls-output.txt;
ls -l /usr/bin >> ls-output.txt;
ls -l /usr/bin >> ls-output.txt;
less ls-output.txt;
#Now, the 'ls-output.txt' file contains multiple entries of the 'ls -l /usr/bin' command output, each appended to the end of the file.

##Redirecting Standard Error
#Internally, the shell refers to standard input as file descriptor 0, standard output as file descriptor 1, and standard error as file descriptor 2. To redirect standard error to a file, we can use the following syntax:
ls /bin/usr 2> ls-error.txt;
less ls-error.txt;
#In this case, the '2>' indicates that we are redirecting file descriptor 2 (standard error) to the 'ls-error.txt' file. If the file does not exist, it will be created. If it does exist, it will be overwritten with the new error message.

##Redirecting Standard Output and Standard Error to the same file
#In case you need to capture all of the output of a command to a single file, there are two ways to redirect stiout and stderr at the same time.
#The traditional way;
ls -l /bin/usr > ls-output.txt 2>&1;
less ls-output.txt;
#A more recent and streamlined way;
ls -l /bin/usr &> ls-output.txt;
#You may also append the stdout/stderr to a single file with the following command;
ls -l /bin/usr &>> ls-output.txt;
less ls-output.txt;

##Disposing of Unwanted Output
#Assuming you dont want an output from a given program, like error and status messages, the system provides a way to do this by redirecting output to a special file called /dev/null.
ls -l /bin/usr 2> /dev/null;

##Redirecting Standard Input
#In order to discuss this topic, we need to talk about the 'cat' (concatenate) command. It reads one or more files and copies them to standard output.
cat ls-output.txt;
#'cat' is often used to display short text files in sequence.
cat ls-error.txt ls-output.txt;
#Apparently, 'cat' was also used in the past to join several parts of large files together similarly the way its done with zipped files today.
cat ls* > ls-cat.txt;
less ls-cat.txt;
#Since wildcards always expand in sorted order, ls-error.txt will came ahead of ls-output.txt
#Now, lets assume you use the 'cat' command without any arguments; nothing happens at first, this is due to the fact that in this situation, 'cat' presumes that it must reads from the standard input, which is, by default, your keyboard.
#We cant emulate it in this script right now, but try the following;
#cat
#The command will wait you to write something in the prompt. Type the following and press enter, then press CTRL D to exit cat;
#The quick brown fox jumped over the lazy dog.
#As you have noticied, in the absence of filename arguments, the 'cat' command copies stdin to stdout, so we see our line of text repeated. We can use this behavior to create short text files. 
#Like before, write down the following commands
#cat > lazy_dog.txt; 
#The quick brown fox jumped over the lazy dog.
#CTRL D
#cat lazy_dog.txt

#Well, just to make sure the file you were supposed to create exists, let me do it automatically now;
echo "The quick brown fox jumped over the lazy dog." > lazy_dog.txt;

#We do know that 'cat' accepts stdin, in addition to filename arguments. However we can also redirect its input.
cat < lazy_dog.txt;
#Using the < redirection operator, we change the source of stdin from the keyboard to the file lazy_dog,txt. It may not looks particularly usefull in this case, since 'cat' already accepts a filename as argument, but it serves to demonstrate how to use a file as a source of stdin.
cat lazy_dog.txt;
#Make sure to check the man page for cat, if you do have the time.
man cat;

##Pipelines
#Pipelines in Linux are a way to connect the output of one command directly to the input of another, using the pipe symbol (|). This allows you to chain multiple commands together, so that the data flows from one process to the next. Pipelines are useful for processing and transforming data efficiently, enabling complex tasks to be performed with simple command combinations.
#The pipeline operator is '|'. To demonstrate how its used, we will redirect the output from the ls command directly to a less page, that incidently can read stdout's.
ls -l /usr/bin | less;

##Filters
#Pipelines are used to perform complex operations on data. It is possible to put several commands together into a pipeline. Frequently this is referred to as 'filters'. Filters take input, change it somehow, and then output it.
#To demonstrate this concept, we will list all the executable programs in /bin and usr/bin, sort them with the 'sort' command and view the resulting list.
ls /bin /usr/bin | sort | less;

##Uniq
#Uniq is a Linux command used to filter out repeated lines in a text file or input stream. It reads from standard input or a file and outputs only unique consecutive lines, removing duplicates that are adjacent. We will add 'uniq' to our previous pipeline.
ls /bin /usr/bin | sort | uniq | less;
#We can use 'uniq -d' to create a list of the duplicated programs instead.
ls /bin /usr/bin | sort | uniq -d | less;

##Wc
#Wc is a Linux command used to count lines, words, and characters in a text file or input stream. It reads from standard input or a file and outputs statistics such as the number of lines, words, and bytes.
wc ls-output.txt;
#Now lets add it to our pipeline, adding the '-l' option that limits its output to report only the ammount of lines.
ls /bin /usr/bin | sort | uniq | wc -l;
#The result will be the number of non repeated items in the sum of both these directories.

##Grep
#Grep is a Linux command used to search for specific patterns or text within files or input streams. It reads from standard input or a file and outputs only the lines that match the given pattern. This makes it very useful for quickly finding information in large files or command outputs.
#Now, suppose we wanted to find all the files in our list of programs that had the word zip embedded in the name.
ls /bin /usr/bin | sort | uniq | grep zip;

##Head/Tail
#Assuming you dont want the entire output of a program, the 'head' or 'tail' commands can be used to display only a limited number of lines that can be either the beggining or end of the output.
head -n 1 ls-output.txt;
tail -n 2 ls-output.txt;
#Naturally, they can be used in pipelines as well.
ls /usr/bin | tail -n 5;
#Tail has an option that allows you to view files in real time. This is useful for watching the progress of log files as they are being written.
tail -f /var/log/syslog;

##Tee
#Tee is a Linux command used to read from standard input and write the output to both the terminal and one or more files simultaneously. It is useful in pipelines when you want to save the output to a file while still viewing it on the screen. 
ls /usr/bin | tee ls.txt | grep zip;