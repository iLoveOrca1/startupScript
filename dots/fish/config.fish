# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status is-interactive
#   ...
# end

# Standard linux stuff
## Navigation 
alias c='cd'
alias home='cd ~'
alias root='cd /'
alias dl='cd Downloads'
alias docs='cd Documents'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ls='ls -lah --color=auto'

alias aptup='sudo apt update && sudo apt upgrade'
alias aptupd='sudo apt update'
alias aptupg='sudo apt upgrade'
alias inst='sudo apt install'
alias remove='sudo apt remove'
alias search='sudo apt search'

alias brset='brightnessctl set'
alias red='redshift -t 4200:4200 -l 27.994402:-81.760254' # This is florida btw

alias process='ps -aux'

## Networks
alias ports='sudo netstat -tulanp'
alias ipinfo='ip -C a'
alias vpn='sudo openvpn'

## Finding
alias f='find . -name'

## Git stuff

# Cybersecurity stuff
## Making wordlists easily accessible as variables
export dirsmall='/usr/share/wordlists/dirbuster/directory-list-2.3-small.txt'
export dirmed='/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt'
export rockyou='/usr/share/wordlists/rockyou.txt'
alias wordlist='cd /usr/share/wordlists'

## Nmaps
alias scan='nmap -sV -sC'
alias ipscan='nmap -sn'
alias fullscan='nmap -sS -sV -sC -T4 -A -p-'
alias vulnscan='nmap --script vuln'
alias fastscan='nmap -T5 -F'

## Setting up server
alias server='python3 -m http.server 80'

## Web Ex
alias post='curl -X POST -d'
alias fuzz='ffuf -u'

## Reverse Shells
alias litsen='nc -lvp 9999'
alias lnc='nc -lvnp'
alias msfpayloads='msfvenom -l payloads'

