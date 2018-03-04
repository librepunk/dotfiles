# jtyr's theme for oh-my-zsh

# Color shortcuts
RED=$fg_bold[red]
GREEN=$fg_bold[green]
YELLOW=$fg_bold[yellow]
BLUE=$fg_bold[blue]
CYAN=$fg_bold[cyan]
RESET=$reset_color

# Taken from lib/git.zsh to change the position of the parse_git_dirty function
function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# Git decoration
ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$BLUE%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$CYAN%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$YELLOW%}"

# Sign depending on the UID
if [[ $UID == 0 ]]; then
    SIGN="%{$RED%}#"
else
    SIGN="%{$GREEN%}$"
fi

# Final prompt
PROMPT='%(?::%{$RED%}%}x )%{$GREEN%}$USER@%m %{$BLUE%}%c$(git_prompt_info) $SIGN%{$RESET%} '
