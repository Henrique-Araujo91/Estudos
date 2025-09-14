#Working with commands

#A command can be one of four different things;
##An executable program - We already have seen that programs are installed in the /usr/bin directory. A program is a file that contains instructions that the computer can execute. A program can be compiled binaries such as programs written in C and C++, or scripts written in languages like Python, Perl, or Bash.
##A command built into the shell itself - Bash supports a number of commands internally called 'shell builtins'. The 'cd' command, for exemple, is a shell builtin.
##A shell function - These are miniature shell scripts incorporated into the environment of the shell.
##An alias - These are my favorites. Aliases are commands that we can define ourselves, built from other commands.

#Identifying Commands
#We need to identify, from these four types, which one is the one we are dealing with. Linux offers us a couple of ways to find out.
##Type - The 'type' command is a shell builtin that displays the kind of command the shell will execute, given a particular command name.
type type;
#In the previous command, we used 'type' to check what type of command 'type' is. The output shows that 'type' is a shell builtin.
type ls;
type cp;
type cd;
##Which - The 'which' command is used to locate the executable file associated with a command. It searches the directories listed in the PATH environment variable and returns the path to the executable file. It is useful, for instance, if there is more than one version of an executable programam installed on the system.
which ls;
which cp;
which which;
#Which only works for executable programs, not builtins or aliases. Trying it on 'cd', for example, will not return anything.
which cd;

#Command Documentation
#Now we know what a command is, we can search for the documentation avaliable for each kind of command.
##Help - Bash has a builtin help facility avaliable for each of the shell builtins.
help cd;
#Many executable programs support a '--help' option that displays a description of the command's supported syntax and options.
mkdir --help;
##Man - The 'man' command is used to display the Manual pages for a command or a program. 
man ls;
#The standard for the 'man' command is to use the 'less' pager to display the manual pages, which allows you to scroll through the content. You can navigate using the arrow keys, Page Up/Down, or the spacebar to scroll down. To exit 'less', simply press 'q'.
#An important thing to address about the 'man' command is the fact that its broken into different sections, each containing different types of documentation. The base command will always cover the first section found. If its not what you are looking for, you need to specify the section number.
man 5 passwd;
##Apropos - The 'apropos' command is used to search the manual pages for a keyword or phrase. It displays a list of commands and their descriptions that match the search term.
apropos partition;
#'man -k' is an alias for 'apropos', so you can use either command interchangeably.
man -k partition;
##Whatis - The 'whatis' command is used to display a brief description of a command or program. It provides a one-line summary of the command's purpose.
whatis ls;
##Info - The 'info' command is used to display documentation in the GNU Info format. It provides more detailed information about commands and programs than the 'man' command.
info ls;
info coreutils;
##README - Some programs come with a 'README' file that contains important information about the program, including installation instructions, usage examples, and troubleshooting tips. The 'README' file is usually located in the program's source code directory or in the documentation directory. If we find a file compressed with gzip, we can use the 'zless' command to read it.

#ALIASES
#Aliases are a way to create shortcuts for commands or command sequences. They allow you to define custom names for commands or command combinations, making it easier to execute frequently used commands without typing the entire command each time.
#As you probably know, its possible to combine more than one command in a single line, using the semicolon (;) to separate them. Aliases can be used to create shortcuts for these combinations.
cd /usr; ls; cd -;
#In the previous command, we changed to the /usr directory, listed its contents, and then returned to the previous directory using 'cd -'.
#Lets suppose we want to create an alias for this sequence of commands. We need a name for it. You may think of naming it 'test', but first you need to see if this name is not being used by another command. To check it, we can use the 'type' command.
type test;
#'Test' is being used for something else. Lets try 'foo'.
type foo;
#Apparently foo isnt being used by any command, so we are free to use it as an alias.
alias foo='cd /usr; ls; cd -';
#Now we can use 'foo' to execute the sequence of commands we just defined.
foo;
#If we use type foo, it will show us the alias we just created.
type foo;
#To remove an alias, we can use the 'unalias' command.
unalias foo;
type foo;
#You can check which aliases are currently defined by using the 'alias' command without any arguments.
alias;
#Aliases dfined this way vanish when the shell session ends. If you want to make them permanent, you can add them to your shell's configuration file, such as ~/.bashrc or ~/.bash_profile for Bash.