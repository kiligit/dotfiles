local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
#PROMPT='$%{$fg_bold[white]%}%M ${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$%}'
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
# use this as ${NEWL}
NEWL=$'\n'

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} ${ret_status}in  %{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%} ${NEWL}%{$fg_bold[yellow]%}%D{%H:%M} %{$reset_color%}%{$%} '
#%D for time on the newline

RPROMPT='%{$fg[green]%}%D{%a,%b%d}%{$reset_color%}'
#prompt on the right side. seems to at the 2nd line automatically
