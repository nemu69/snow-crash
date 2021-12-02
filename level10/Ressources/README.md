# level10 solve

To begin, when we get logged and trying to see if we got the file we can see we have two files

```
$ ls
> level10
> token
```

We decide to see what the binary do, for that we can use on of them:
` strace ` ` gdb ` ` lldb ` ` objdump ` ` strings `

In that case we used strace (with gdb we see of the binary take 2 arguments)
And we spot that

```
$ strace ./level10 token 127.0.0.1
> access("token", R_OK) = -1 EACCES
```

Because its probably by that we go an error, we decide to see what the function did
<a href="https://linux.die.net/man/2/access">man access</a>

```
$ man access
```

And we see a warning that can help us

```
Warning: Using access() to check if a user is authorized to, for example, open a file before actually doing so using open(2) creates a security hole, because the user might exploit the short time interval between checking and opening the file to manipulate it. For this reason, the use of this system call should be avoided. (In the example just described, a safer alternative would be to temporarily switch the process's effective user ID to the real ID and then call open(2).)

access() always dereferences symbolic links. If you need to check the permissions on a symbolic link
```

Let's search too of <a href="https://doc.ubuntu-fr.org/lien_physique_et_symbolique">symbolic link</a>

```
$ man ln
```

```
-s, --symbolic
	make symbolic links instead of hard links
-f, --force
	remove existing destination files
```

And with that we can listen to the server: <a href="https://unix.stackexchange.com/questions/214471/how-to-create-a-tcp-listener">doc tcp listener</a>

Seeing the script needing multithread so : <a href="https://linuxconfig.org/multi-threaded-bash-scripting-process-management-at-the-command-line">bash threading</a>

We got the <a href="script.sh">script</a>, so let's try it (ctrl + c for cancel after)
-> 1st while for: listen the serv
-> 2nd while for: exec the binary
-> 3rd while for: create symbolic link

```
$ chmod 777 .
$ scp -P 4242 level10/Ressources/script.sh level10@ip:script.sh
$ chmod 777 script.sh
$ ./script.sh
> woupa2yuojeeaaed06riuj63c
> woupa2yuojeeaaed06riuj63c
> ...
```

Try to log on the user flag10 with the password

```
$ su flag10
$ woupa2yuojeeaaed06riuj63c
> Don't forget to launch getflag!
$ getflag
> Check flag.Here is your token : feulo4b72j7edeahuete3no7c
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level09">previous level</a> - <a href="../../level11">next level</a>
