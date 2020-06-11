PROMPT='%{$fg_bold[red]%}$(virtualenv_prompt_info)%{$reset_color%}% '
PROMPT+='%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '

ZSH_THEME_VIRTUALENV_SUFFIX="] "
ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
