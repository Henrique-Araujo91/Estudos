#Navigation

#Unix-like operating systems use something called Hierarchical Directory Structure. This means that files and directories are organized in a tree-like structure, with a single root directory at the top and various subdirectories branching out from it.

#Im afraid that this is an art that will eventually be lost over time as smartphone era zoomers dont have access to directory trees in their devices. But i digress.

#In a terminal, at any given moment you are inside a directory, like a parrot in a branch of a tree. The directory the user is currently in is called the "current working directory". In order to display the current working directory, we use the 'pwd' (print working directory) command.
pwd;

#To list the files and directories i the current working directory, we use the 'ls' command.
ls;

#To change the current working directory, we use the 'cd' (change directory) command. For example, to change to the home directory, we can use 'cd ~' or simply 'cd'.
cd ~;

#Absolute pathnames
#An absolute pathname is a complete path from the root directory to a specific file or directory. It starts with a forward slash (/) and includes all directories leading to the target file or directory.
#For example, '/home/user/documents/file.txt' is an absolute pathname that points to the 'file.txt' located in the 'documents' directory of the 'user' home directory.
#Note that its possible the '/usr/bin' directory might not exist on your system, so you might get an error and the next exemples wont work in your system.
cd /usr/bin;
pwd;
ls;

#Relative pathnames
#Where the absolute pathname starts from the root directory, a relative pathname starts from the current working directory. To do this, the 'cd' command uses a couple of special notations to represent relative positions in the file system tree. These special notations are '.' and '..'.
#The '.' notation represents the current directory, while the '..' notation represents the parent directory (the directory one level up in the hierarchy).
cd ..;
pwd;
ls;
#In this case, we moved one level up in the directory hierarchy, from '/usr/bin' to '/usr'.
#To move back to the 'bin' directory, we can use a relative pathname with the 'cd' command:
cd ./bin;
pwd;
ls;
#In most situations, you can omit the './' part, so you can just use 'cd bin' to achieve the same result.

#Filename conventions in linux systems
#Filenames that begin with a dot (.) are considered hidden files. These files are not displayed by default when using the 'ls' command. To view hidden files, you can use the 'ls -a' command, which lists all files, including hidden ones.
ls -a;
#Filenames in Linux are case-sensitive, meaning that 'file.txt' and 'File.txt' are considered different files. This is important to remember when working with files and directories.
#Please, do not use spaces in filenames, as it can lead to confusion and errors when working with the command line. Instead, use underscores (_) or hyphens (-) to separate words in filenames.
#Linux has no concept of file extensions like .txt or .jpg, but it is common to use them for clarity. However, they are not required, and files can have any name without an extension.

#Helpful shortcuts
#'cd'- This command is used to change the current working directory. If you use 'cd' without any arguments, it will take you to your home directory.
cd;
#'cd -' - This command takes you back to the previous directory you were in. It's useful for quickly switching between two directories.
cd -;
#'cd ~user_name' - This command takes you to the home directory of the specified user. For example, 'cd ~john' will take you to the home directory of the user 'john'.