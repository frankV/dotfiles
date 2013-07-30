dotfiles
========

Repo for my configuration files. Running install.sh will automaically backup existing versions of these files and directories and replace them with symlinks to these. This is really nice for setting up a new machine.
This method for storing and installing dot configuration files based on tutorial found [here](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/ "here")

**there is no reason to ever run install.sh on a machine twice if the only updates are to files in the repo!!!**

vim
--------

+ .vimrc
+ plugins (included as submodules)
  - [vundle](https://github.com/gmarik/vundle "vundle") - vim plugin management
  - [matchit](https://github.com/tsaleh/vim-matchit "matchit") - configure % to match more than just single characters
  - [NERD Commenter](https://github.com/scrooloose/nerdcommenter "NERD Commenter") - comment enhancemnet
  - [NERD Tree](https://github.com/scrooloose/nerdtree "NERD Tree") - explore your filesystem and to open files and directories.
  - [Command T](https://github.com/wincent/Command-T "command-T") - provides an extremely fast, intuitive mechanism for opening files and buffers


dircolors
---------

Colorscheme is based around [solarized](http://ethanschoonover.com/solarized/ "solarized") with modifications as in [this example](http://archlinux.me/w0ng/2012/04/21/better-dircolors-with-solarized/ "dircolors")
For machines running Mac OS X, MacPorts is required for installing core utils. Without core utils 'dircolors' does not work on OS X.

Issues have arisen with colorscheme support across platforms. This may be a [solution](http://stackoverflow.com/questions/7780030/how-to-fix-terminal-not-loading-bashrc-on-os-x-lion)


shell setup
---------

+ Shell Aliases
  <pre>
  # directory function aliases
  alias ls='ls -GHf'
  alias dir='ls -Gal'
  ###
  ##
  # change directory
  alias ...='cd ../../../'
  alias cd.4='cd ../../../../'
  alias cd.5='cd ../../../../../'
  alias cd..='cd ..'
  </pre>

+ Python Aliases
  <pre>
  # virtualenv aliases
  # http://blog.doughellmann.com/2010/01/virtualenvwrapper-tips-and-tricks.html
  alias v='workon'
  alias v.mk='virtualenv --no-site-packages'
  alias v.mk_with='virtualenv'
  </pre>

to do
---------
  [X] fix shit with vim plugins; the only one that should be a submodule is vundle

  [X] adapt install.sh
     
  [X] need smarter way of replacing files/symlinks in HOME. maybe use `eval` ?
    
  [ ] check for MacPorts; install if not found and install coreutils
      
  [X] fix dircolors
  
