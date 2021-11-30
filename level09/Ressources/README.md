# level09 solve

To begin, when we get logged and trying to see if we got the file we can see we have two files

```
$ ls
> level09
> token
```
Firstly we try to launch the binary

```
$ ./level08
> You need to provied only one arg.
```

Retry with the token

```
$ ./level09 token
> tpmhr
```

That's strange so we try a string `aaaa` the result of programm

```
$ ./level09 aaaa
> abcd
```

From now on, we think that the token has been created by the program and we must reverse the result.
With this <a href="./revser.cpp">code</a>, we can.

```
$ scp -P 4242 level09@ip:token .
$ clang++ revser.cpp && ./a.out $(cat token)
> f3iji1ju5yuevaus41q1afiuq
```

Try to log on the user flag09 with the password

```
$ su flag09
$ f3iji1ju5yuevaus41q1afiuq
> Don't forget to launch getflag!
$ getflag
> Check flag.Here is your token : s5cAJpM8ev6XHw998pRWG728z
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level08">previous level</a> <!-- - <a href="../../level10">next level</a> -->
