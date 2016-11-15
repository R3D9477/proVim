proVim
=========================

Profiled [vim](http://www.vim.org). With proVim you can have one favorite editor and simply to manage your configurations for any situations.

## Install

* move `mv ~/.vim ~/.vim.orig && mv ~/.vimrc ~/.vimrc.orig` or delete `rm ~/.vim ~/.vim.orig && rm ~/.vimrc ~/.vimrc.orig` your current vim's config
* clone latest configuration: `git clone https://github.com/r3d9u11/proVim.git`
* make links of proVim to your home directory: `ln -s $PWD/proVim/vimrc ~/.vimrc && ln -s $PWD/proVim/vim ~/.vim`
* now you can launch your vim with different profiles and configurations, for example `vim profile=develop`

#### Launch

Example of launch script for [caja](https://github.com/mate-desktop/caja) located at `~/.config/caja/scripts/proGVim`:

```bash
#!/bin/bash
gvim "$@" "profile=develop"
```

## Default profiles

All profiles located at: `proVim/vim/profiles`<br/>

* main - is always will be run before your selected profile
* empty - is a simple empty configuration without advanced setups
* develop - is an advanced configuration with specialized set of plugins, settings of keyboard  and other setups (this is default profile)

You can make your own profiles, of course.<br/>
