ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""


setopt prompt_subst
source $ZSH/async.zsh
async_init
async_start_worker prompt_worker -n
async_register_callback prompt_worker git_info_callback


GIT_PROMPT=''
get_git_prompt() {
    echo "$GIT_PROMPT"
}


git_info_callback() {
    GIT_PROMPT="$3"
    zle && zle reset-prompt
}


async_git() {
    async_job prompt_worker git_prompt "$(pwd)"
}


add-zsh-hook precmd async_git


function prompt_char {
    echo '○'
}


function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}


PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(get_git_prompt)
$(virtualenv_info)$(prompt_char) '
RPROMPT=''
