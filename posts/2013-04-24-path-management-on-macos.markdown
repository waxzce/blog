---
title: $PATH management on macOS
---


##What is $PATH ?

It's the system wide variable used to find binaries. So it's quite important and useful ;-)


##Management ?

When you install new software in your /opt or from source, in many case, installer tell you to add on you ~/.bashrc or ~/.profile something like 

```bash
export PATH=/going/somewhere:$PATH
```

and your bash config files become __ugly__ in just a few weeks...

##But the is another way !

<i class="icon-ambulance icon-3x pull-right" style="color:#666666"></i>

On your /etc there is a /etc/paths file with just one path per line and a /etc/paths.d/ directory with file per program. It add all these dir to the $PATH automatically but do not ugly your .bashrc or .profile files. 

##If order matter

Just trick with number on the beginig of file name :-)

<i class="icon-thumbs-up pull-left" style="color:#666666;margin:4px"></i>

Very few peoples know about that, but it's clean and useful. 

