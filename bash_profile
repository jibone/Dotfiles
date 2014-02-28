# Identify OS and Machine -----------------------------------------
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"
# Note, default OS is assumed to be OSX

# Load in .bashrc -------------------------------------------------
#source ~/.bashrc

# Load git magic stuff --------------------------------------------
source ~/.git-completion.bash
source ~/.git-prompt.sh

# Hello Messsage --------------------------------------------------
#echo -e "Kernel Information: " `uname -smr`
#echo -e "`bash --version`"
echo -ne "Uptime: "; uptime
#echo -ne "Server time is: "; date
echo -e "Ghock and Gholl!"

#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Prompt stuff --------------------------------------------------
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$GREEN"\W"'$(
  if [[ $(__git_ps1) =~ \*\)$ ]]
  # a file has been modified but not added
  then echo "'$YELLOW'"$(__git_ps1 " (%s)")
  elif [[ $(__git_ps1) =~ \+\)$ ]]
  # a file has been added, but not commited
  then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
  # the state is clean, changes are commited
  else echo "'$CYAN'"$(__git_ps1 " (%s)")
  fi)'" \e[0:35m⌘\e[m  "


# general path -------------------------------------------------
#PATH=${PATH}:/usr/local/bin
PATH=${PATH}:~/bin
PATH=${PATH}:/opt/bin
export PATH="/usr/local/bin:$PATH"

# MySQL --------------------------------------------------------
export PATH=${PATH}:/usr/local/mysql/bin:

# MySQL Alicases -----------------------------------------------
alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"
alias mysqlstart="sudo /usr/local/mysql/bin/mysql_safe"

# Aliases -------------------------------------------------------
alias f="open -a Finder "
alias preview="open -a '/Applications/Preview.app'"
alias chrome="open -a google\ chrome"
alias photoshop="open -a '/Applications/Adobe Photoshop CS5.1/Adobe Photoshop CS5.1.app'"
alias td="/Users/Jibone/Dropbox/todotxt/app/todo.sh"
alias todo="/Users/Jibone/Dropbox/todotxt/app/todo.sh"
alias t="timetip --file ~/.timelogs"
alias pomo="pomojs"
alias goto_htdocs="cd /Applications/MAMP/htdocs && ls"
alias goto_projects="cd ~/Dropbox/Projects && ls"
alias goto_ezypzy="cd ~/Dropbox/Ezypzy && ls"

# Added by the Heroku Toolbelt ---------------------------------
export PATH="/usr/local/heroku/bin:$PATH"

# RVM ----------------------------------------------------------
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/Jibone/.bash_profile file was backed up as /Users/Jibone/.bash_profile.macports-saved_2014-02-18_at_16:48:16
##

# MacPorts Installer addition on 2014-02-18_at_16:48:16: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

