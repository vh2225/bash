

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
    export PS2="| => "

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

  #   git branch for terminal
  #   ------------------------------------------------------------

  # parse_git_branch() {
  #      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  # }
  # BOLD="\[\033[1m\]"
  # export PS1="\n${BOLD}\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

  #   source bash_extension
  #   ------------------------------------------------------------
  if [ -f ~/.bash_extension ]; then
      . ~/.bash_extension
  fi

  #   powerline-go
  #   ------------------------------------------------------------
  # function _update_ps1() {
  #     PS1="$($GOPATH/bin/powerline-go -error $?)"
  # }
  #
  # if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
  #     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
  # fi

  #   powerline-shell
  #   ------------------------------------------------------------
  # function _update_ps1() {
  #     PS1=$(powerline-shell $?)
  # }
  #
  # if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
  #     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
  # fi

  #   powerline default
  #   ------------------------------------------------------------
  export PATH=$PATH:/anaconda3/bin
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  # . /Users/vinh.hoang/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
  . /anaconda3/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
