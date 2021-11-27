# level02 solve

At first, when we get logged and trying to see if we got the file we can see we have one file `level02.pcap`

```
$ ls
> level02.pcap
```

Get a <a href="https://en.wikipedia.org/wiki/Pcap">PCAP</a> file with scp command

```
$ scp -P 4242 level02@ip:level02.pcap .
```

Use <a href="https://www.wireshark.org/">Wireshark</a> and check hexadicimal data of all lines until ` pass word: `

The hexadicimal numbers match the keyboard input. Some lines use 7F (�), that's a DEL in <a href="https://en.wikipedia.org/wiki/ASCII">ASCII</a>

`ft_wandrNDRelL0L = ft_waNDReL0L`

Try again to log on the user flag02 with the new password

```
$ su flag02
$ ft_waNDReL0L
> Don't forget to launch getflag!
$ getflag
> kooda2puivaav1idi4f57q8iq
```

We got it!

> <a href="../flag">flag</a> - <a href="../../level01">previous level</a> - <a href="../../level03">next level</a>
