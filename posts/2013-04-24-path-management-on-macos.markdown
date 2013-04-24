---
title: $PATH management on macOS
---


##What is $PATH ?

It's the system wide variable used to find binaries. So it's quite important and useful ;-)


##Management ?

When you install new software in your `/opt` or from source, in many cases, the installer tells you to add in your `~/.bashrc` or `~/.profile` something like 

```bash
export PATH=/going/somewhere:$PATH
```

and your bash config files become __ugly__ in just a few weeks...

##But there is another way !

<i class="icon-ambulance icon-3x pull-right" style="color:#666666"></i>

In your `/etc` there is a `/etc/paths` file with just one path per line and a `/etc/paths.d/` directory with one file per program. It adds all these dir to the `$PATH` automatically whithout uglifying your `.bashrc` or your `.profile`. 

##When order matters

Just use numbers at the beginning of file names :-)

<i class="icon-thumbs-up pull-left" style="color:#666666;margin:4px"></i>

Very few people know about that, but it's clean and useful. 

