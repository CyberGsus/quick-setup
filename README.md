# Quick Rice Setup

This is my personal rice setup. I'm tired of reconfiguring everything
every time, so I've made a couple of scripts to quickly bootstrap my terminal.
text editor and window manager.


## How to run this.

First install the dependencies:

```sh
sh dependencies.sh
```

Then do the normal bootstrapping,
this should setup most of it

```sh
sh bootstrap.sh
```

If you want, you might as well run the
bootstrap part which requires sudo, but
it is just to adjust things like picom
and icon themes

```sh
sudo sh bootstrap-sudo.sh
```

