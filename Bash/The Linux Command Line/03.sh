#Exploring the system

#LS
#Probably the ls command is the most used command in the terminal. It lists the files and directories in the current working directory. You can use various options with 'ls' to customize its output, such as '-l' for a detailed listing or '-a' to show hidden files.
#You can also specify a directory as an argument to 'ls' to list its contents. 
ls /usr;
#We can also specify multiple directories. In the following exemple, we list both the users home directory and the /usr directory.
ls ~ /usr;
#We can change the format o fthe output to reveal more details.
ls -l;

#Options and Arguments
#Most commands in the terminal can accept options and arguments. Options are usually preceded by a hyphen (-) and modify the behavior of the command. Arguments are additional information that the command needs to operate on, such as file names or directories.
#For example, the 'ls' command can take options like '-l' for a long listing format or '-a' to show hidden files. These options can also be combined, like 'ls -la', which lists all files in long format, including hidden ones.
#You can also use multiple options together, like 'ls -l -a' or 'ls -la', which achieves the same result. The order of options doesn't matter, so you can use them in any order you prefer.
ls -lt;
#Adding the long option --reverse, we can reverse the order of the output.
ls -lt --reverse;

#File
#The 'file' command is used to determine the type of a file. It analyzes the contents of the file and provides information about its format, such as whether it's a text file, an executable, or a binary file.
file example.txt;
#In this previous exemple, you will be meet with an error, because the file example.txt probably does not exist in your current working directory.

#Less
#The 'less' command is a pager program that allows you to view the contents of a file one screen at a time. It is useful for reading large files or output that doesn't fit on a single screen.
#You can navigate through the file using the arrow keys, Page Up/Down, or the spacebar to scroll down. To exit 'less', simply press 'q'.
less /etc/passwd;