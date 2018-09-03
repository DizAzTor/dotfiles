#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ngrok='~/Programs/ngrok'
# alias xterm="xterm -fg white -bg black -fa 'Source Code Pro' -fs 9"
alias xterm="xterm -fg white -bg black -fs 9"
PS1='[\u@\h \W]\$ '

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper/sh" ] && \
        eval "$("BASE16_SHELL/profile_helper.sh")"
export PATH=/bin/lscript:/bin/lscript:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-ndk:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/android-sdk/tools/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

