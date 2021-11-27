# level02 solve

At first, get a PCAP file with scp command

https://en.wikipedia.org/wiki/Pcap

scp -P 4242 level02@ip:level02.pcap .

Use WireShark and check hexadicimal data of all lines until 'pass word:'.

https://www.wireshark.org/

The hexadicimal numbers match the keyboard input. Some lines use 7F, that's a DEL 

ft_wandrNDRelL0L = ft_waNDReL0L

https://en.wikipedia.org/wiki/ASCII

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
