# Package management
alias 'aurnew'='paclog --color | grep --color installed | slit -f'
alias 'pget'='trizen -S --noconfirm'
alias 'pfind'='trizen -Ss'
alias 'tget'='trizen -S'
alias 'phav'='longquery'
alias 'aurcl'='git clone https://aur.archlinux.org/"$1".git'
alias 'acl'='AurClone'
alias 'prm'='trizen -R --noconfirm'
alias 'pinfo'='trizen -Si'
alias 'pcom'='trizen -C'
alias 'psyu'='trizen -Syyuu'
alias 'psu'='trizen -Su'
alias 'mkpkg'='makepkg -cis'

# Directories
alias 'xsrc'='cd ~/src/.prawn/ && ls'
alias 'Sucksoft'='cd ~/src/Suckless'

# Config Files 
alias 'i3vi'='nvim ~/.config/i3/config'
alias 'initvi'='nvim -p ~/.config/nvim/*.vim'
alias 'vimbvi'='nvim -p ~/.config/vimb/config ~/.config/vimb/style.css'

# Zsh Stuff
alias 'aliasvi'='nvim ~/.oh-my-zsh/custom/alias.zsh && source ~/.zshrc'
alias 'mkalias'='Aliasing'
alias 'sauce'='source ~/.zshrc'

# System administration
alias 'wifi'='sudo wifi-menu && sleep 10 && ping -c 3 google.com'
alias 'syslog'='journalctl -xe'

# Interface
alias 'light'='sudo xbacklight'
alias 'blue'='blueshift -t'

# Unsorted
alias 'vmain'='export VMAIL_HOME=~/.vmail/Personal && vmail'
alias 'vspam'='export VMAIL_HOME=~/.vmail/Spammy && vmail'
alias 'jptxt'='jp2a'
alias 'jpt'='jp2a --color -f -b'
alias 'jphd'='jp2a --color --html --background=dark'
alias 'jphl'='jp2a --color --html --background=light'
alias 'jphdf'='jp2a --color --fill --html --background=dark'
alias 'jphlf'='jp2a --color --fill --html --background=light'
alias 'asciij'='asciipic'
alias 'jtodf'='AsciiPic d f'
alias 'jtodn'='AsciiPic d n'
alias 'jtolf'='AsciiPic l f'
alias 'jtoln'='AsciiPic l n'
alias 'glist'='gdrive list'
alias 'ddu'='du -hs'
alias 'hist'='cat ~/.config/vimb/history | slit'
alias 'lcat'='lolcat'

alias 'sshdvi'='vim /etc/ssh/sshd_config'
alias 'sshvi'='vim ~/.ssh/config'
alias 'yar'='yaourt -S --noconfirm --needed --force'
alias 'ethup'='sudo ip link set enp2s0 down; sudo ip link set enp2s0 up; sudo dhcpcd enp2s0'
alias 'envirovi'='nvim ~/.oh-my-zsh/custom/environment.zsh'
