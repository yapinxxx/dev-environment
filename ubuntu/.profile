# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# go PATH
export PATH=$PATH:$HOME/Go_ver_ctrl/go/bin

# go workspace
export GOPATH=$HOME/go/Wumu_work/Wumu_tools:$HOME/go/Wumu_work/practice/First_Go:$HOME/go/Wumu_work/VC_project:$HOME/go/Wumu_work/practice/Go_Test:$HOME/go/Wumu_work/VC_project/src/VigorConnect:$HOME/go/Wumu_work/VC_project/src/DraySOAR

#$HOME/go/Wumu_work/VC_project/src/VigorConnect:$HOME/go/Wumu_work/VC_project/src/VC-Security/DraySOAR

# go Wumu useful tools
export PATH=$PATH:$HOME/go/Wumu_work/Wumu_tools/bin

# Hexo command line
export PATH="$PATH:$HOME/Desktop/WumuStudy/Web_tutorial/Hexo/node_modules/.bin"

# yarn tool
export PATH="$PATH:$HOME/DrayTek/sequential-workflow-designer/demos/angular-app/node_modules/yarn/bin"


#Java Environment
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH="$PATH:$JAVA_HOME/bin"

#Bluetooth Headset
## pactl list cards short 
#alias myA2DP='pacmd set-card-profile 4 a2dp_sink'
#alias myHFP='pacmd set-card-profile 4 handsfree_head_unit'
