## Environment Bullshit
export MANPAGER="nvim -c 'set ft=man' -"
export TERMINAL="alacritty"
export BROWSER="vimb"
export VISUAL="nvim"
export EDITOR="nvim"
export PAGER="slit"
export SYSTEMD_PAGER="slit"
export VMAIL_HTML_PART_READER='elinks -dump'
export LOGDEST="~/.log/"
export COLOR='yes'

# Browser
if [ -n "$DISPLAY" ]; then
	export BROWSER=vimb
else
	export BROWSER=w3m
fi
