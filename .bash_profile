#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
    export PS2="| => "

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/local/bin/atom

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
   # export CLICOLOR=1
   # export LSCOLORS=GxFxCxDxBxegedabagaced
   # export LSCOLORS=ExFxBxDxCxegedabagacad
   # export CLICOLOR=1
   # export LS_COLORS="di=33;1:ln=36;1:ex=32;1:*~=31;1:*.html=37;1:*.shtml=37;1"
  export CLICOLOR=1
  export LS_COLORS="di=33;1:ln=36;1:ex=32;1:*~=31;1:*.html=37;1:*.shtml=37;1"

  parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
  BOLD="\[\033[1m\]"
  export PS1="\n${BOLD}\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Java environment variables
    # export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

    if [ -f ~/.bash_extension ]; then
        . ~/.bash_extension
    fi
