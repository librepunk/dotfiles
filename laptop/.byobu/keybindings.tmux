# tmux-config
#
unbind-key -n C-s
unbind-key -n C-a
set -g prefix ^A
set -g prefix2 F12
bind-key a send-prefix
# Set the prefix to ^A.
unbind-key C-b
set -g prefix ^A
bind-key a send-prefix

# displays *
unbind-key *
bind-key * list-clients

unbind-key n
bind-key n next-window

# title A
unbind-key A
bind-key A command-prompt "rename-window %%"

# other ^A
unbind-key ^A
bind-key ^A last-window

# prev ^H ^P p ^?
unbind-key ^H
bind-key ^H previous-window
unbind-key ^P
bind-key ^P previous-window
unbind-key p
bind-key p previous-window
unbind-key BSpace
bind-key BSpace previous-window

# windows ^W w
unbind-key ^W
bind-key ^W list-windows
unbind-key w
bind-key w list-windows

# quit \
unbind-key '\'
bind-key '\' confirm-before "kill-server"


# redisplay ^L l
unbind-key ^L
bind-key ^L refresh-client
unbind-key l
bind-key l refresh-client

# split -v |
unbind-key |
bind-key | split-window -c "#{pane_current_path}"
unbind-key %
bind-key % split-window -c "#{pane_current_path}"

# :kB: focus up
unbind-key Tab
bind-key Tab select-pane -t:.+
unbind-key BTab
bind-key BTab select-pane -t:.-

# " windowlist -b
unbind-key '"'
bind-key '"' choose-window

# Personal Additions
unbind-key X
bind-key X confirm-before "kill-window"
unbind-key x
bind-key x confirm-before "kill-pane"
unbind-key ^X
bind-key ^X kill-window
unbind-key ^x
bind-key ^x kill-pane
unbind-key k
bind-key k select-pane -t:.-
unbind-key j
bind-key j select-pane -t:.+


# vim: ft=tmux
