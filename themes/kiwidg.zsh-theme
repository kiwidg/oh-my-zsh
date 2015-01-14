# 
# By kiwidg based on various themes, with similar design as http://formationdebian.via.ecp.fr
# 

PROMPT='%{$fg[cyan]%}%T%{$reset_color%} $(user_color)%n%{$reset_color%}%{$fg_bold[yellow]%}@%{$reset_color%}%{$fg_bold[white]%}%m%{$reset_color%} %{$fg[green]%}%~%{$reset_color%} $(git_prompt_info)%(?.%{$fg_bold[yellow]%}.%{$fg[red]%})%%%{$reset_color%} '

function user_color {
if [ "`id -u`" -eq 0 ]; then
  echo %{$fg_bold[blue]%} 2>/dev/null
else
  echo %{$fg_bold[red]%} 2>/dev/null
fi
}
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

