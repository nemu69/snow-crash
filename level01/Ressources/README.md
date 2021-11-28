# level01 solve

First, we tried to see the passwords stored on the machine.

```
$ cat /etc/passwd
```

After that, multiple line appears, but only one got a not hidden password, the flag01

```
> ...
> level14:x:2014:2014::/home/user/level14:/bin/bash
> flag00:x:3000:3000::/home/flag/flag00:/bin/bash
> flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash
> flag02:x:3002:3002::/home/flag/flag02:/bin/bash
> flag03:x:3003:3003::/home/flag/flag03:/bin/bash
> ...
```

So we decide to get the file outside the virtual machine, and saving only the line of the user concerned

```
$ scp -P 4242 level01@ip:../../../etc/passwd .
$ echo passwd | grep flag01 > flag01
$ cat flag01
> flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash
```

After some attempt, we see the password didn't work.
So we decide to go search on the web if it was possible to get the password from the passwd file and we found <a href="https://null-byte.wonderhowto.com/how-to/crack-shadow-hashes-after-getting-root-linux-system-0186386/">that</a>, and we download <a href="https://www.openwall.com/john/">John the ripper</a>.

- Install john: ` brew install john `

```
$ john flag01 --show
> flag01:abcdefg:3001:3001::/home/flag/flag01:/bin/bash
```

Try again to log on the user flag01 with the new password

```
$ su flag01
$ abcdefg
> Don't forget to launch getflag!
$ getflag
> Check flag.Here is your token : f2av5il02puano7naaf6adaaf
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level00">previous level</a> - <a href="../../level02">next level</a>
