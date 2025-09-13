#Manipulating files and directories

#Wildcards
#Wildcards are special characters that can be used to match patterns in filenames. They are useful for selecting multiple files or directories based on specific criteria.

#'*' - This wildcard matches zero or more characters. For example, 'file*' will match any file that starts with 'file', such as 'file.txt', 'file1.txt', or 'file123'.
#'?' - This wildcard matches exactly one character. For example, 'file?.txt' will match 'file1.txt' but not 'file12.txt'.
#'[characters]' - This wildcard matches any single character within the brackets. For example, 'file[12].txt' will match 'file1.txt' and 'file2.txt', but not 'file3.txt'.
#'[!characters]' - This wildcard matches any single character not within the brackets. For example, 'file[!12].txt' will match 'file3.txt' but not 'file1.txt' or 'file2.txt'.
#'[[:class:]]' - This wildcard matches any character in the specified class. For example, 'file[:alpha:].txt' will match any file that contains alphabetic characters.

#Exemples of use of wildcards:
#'g*' - This will match any file or directory that starts with 'g'.
#'b*.txt' - This will match any file that starts with 'b' and ends with '.txt'.
#'Data???' - This will match any file that starts with 'Data' and is followed by exactly three characters.
#'[abc]' - This will match any file that starts with 'a', 'b', or 'c'.
#'BACKUP.[0-9][0-9][0-9]' - This will match any file that starts with 'BACKUP.' followed by exactly three digits.
#'[[:upper:]]' - This will match any file that begins with uppercase letters.
#'[![:digit:]]*' - This will match any file that does not start with a digit.
#'[[:lower:]123]' - This will match any file ending with a lowercase letter or the digits 1, 2, or 3.

#The following commands are used for manipulating both files and directories:

#'cp' - This command is used to copy files or directories. You can specify the source file and the destination where you want to copy it. For example, 'cp file.txt /path/to/destination/' will copy 'file.txt' to the specified destination.

#'mv' - This command is used to move or rename files or directories. You can specify the source file and the destination where you want to move it. For example, 'mv file.txt /path/to/destination/' will move 'file.txt' to the specified destination. If you want to rename a file, you can use 'mv oldname.txt newname.txt'.

#'rm' - This command is used to remove (delete) files or directories. Be cautious when using this command, as it permanently deletes the specified files. For example, 'rm file.txt' will delete 'file.txt'. If you want to remove a directory and its contents, you can use 'rm -r directory_name'.

#'mkdir' - This command is used to create a new directory. You can specify the name of the directory you want to create. For example, 'mkdir new_directory' will create a directory named 'new_directory' in the current working directory.

#'ln' - This command is used to create links between files. There are two types of links: hard links and symbolic links (symlinks). A hard link is a direct reference to the file's data, while a symlink is a pointer to another file or directory. To create a hard link, you can use 'ln source_file link_name'. To create a symlink, you can use 'ln -s source_file link_name'.

#Building a playground
#Assuming you are running this script in an linux machine, and in order to practice the commands discussed so far, we will create a directory called 'playground' in your home directory. This directory will serve as a safe space for you to experiment with file and directory manipulation commands without affecting important files.
cd;
mkdir playground;
cd playground;

#Our first task is to create a couple of directories inside the 'playground'.
mkdir dir1 dir2;

#Next, let's get some data inside our playground. We do this by copying a file using the cp command.
cp /etc/passwd .;

#Now, lets see our files;
ls -l;

#If we do use the -v option, we can see the files being copied.
cp -v /etc/passwd .;

#In the last command, we overwrote the file 'passwd' in our playground. If we want to avoid this, we can use the -i option, which will prompt us before overwriting a file.
cp -i /etc/passwd .;

#Lets change the file 'passwd' to something else.
mv passwd fun;
ls -l;
#Time to practice by moving the fun from a directory to another;
mv fun dir1;
ls -l dir1;
mv dir1/fun dir2;
ls -l dir2;
#Now its time to bring it back to the playground.
mv dir2/fun .;
ls -l;
#Lets see the effect of 'mv' on directories. First we will move our data file to dir1 again;
mv fun dir1;
#Now we move dir1 into dir2 and confirm it with ls.
mv dir1 dir2;
ls -l dir2;
#Take into account that in case dir2 didnt existed, the 'mv' command would have created it instead moving dir1 into it.
#Lets put things back into their place.
mv dir2/dir1 .;
mv dir1/fun .;
ls -l;

#Creating Hard links
#First we need to create some hard links to our data file.
ln fun fun-hard;
ln fun dir1/fun-hard;
ln fun dir2/fun-hard;
#We have now 4 instances of the file 'fun'.
ls -l;
#Imagine that files are composed by two main parts; the data that its made of, and the name part that holds the filename. Hard links create an additional name that refers to the same data. The data itself is a chain of disk blocks that is called *inode*, which is then associated with the name part. Hard links refers to a specific inode containing the file data.
#In order to see that both fun and fun-hard are referring to the same inode, we can use the 'ls -i' (or 'ls --inode')  command, which will show us, in the first field the inode number of each file.
ls -li fun fun-hard dir1/fun-hard dir2/fun-hard;

#Creating Symbolic links
#There are two disadvantages in hard links; they cant cannot cross between filesystems, and they cant reference directories, only files. To overcome this, Symbolic links were created. Symlinks are a special type of file that contains a text pointer to the target file or directory. They can cross filesystems and can reference directories.
#To create a symlink, we use the 'ln -s' command. 
ln -s fun fun-sym;
ln -s ../fun dir1/fun-sym;
ln -s ../fun dir2/fun-sym;
ls -l dir1;
#Its important to take attention on how the relative pathname works when creating symlinks. Relative pathnames are more desirable than absolute pathnames, because they are more portable and can work across different systems without needing to change the path.
#As mentioned before, symlinks can also reference directories.
ln -s dir1 dir1-sym;
ls -l;

#Removing files and directories
#Time to clean up the playground.
ls -l;
rm fun-hard;
ls -l;
#You will notice that the link count shown for 'fun' got reduced from 4 to 3. This is because we removed one of the hard links, but the data is still there, as long as there is at least one hard link pointing to it.
#Removing a file that is refered by a symlink does not affect the symlink itself, but it will make the symlink point to a non-existing file.
rm -i fun;
ls -l;
#As you probably will notice, the fun-sym symlink appears on red, since it is pointing to a non-existing file. This is called a "dangling symlink".
#Observe what happens when we try to use a dangling symlink;
less fun-sym;
#Time for a cleanse.
rm fun-sym dir1-sym;
ls -l;
#An important note about symlinks; most file operations on these links are carried out on the link's target, not on the link itself. The 'rm' command is an exception, since its delete the link, not the target file.

#To wrape things up, the 'rm' command needs the '-r' (--recursive) option to remove directories and their contents. This is because directories can contain files and other directories, so the command needs to traverse the entire directory tree to remove everything inside it. Lets remove the playground directory and all its contents.
cd;
rm -r playground;