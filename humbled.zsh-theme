prompt_unraveler_precmd() {
    local CURRENT_DIR="%{$fg_bold[magenta]%}%c%{$reset_color%}"
    local GIT="$(git_prompt_status)%{$reset_color%} %{$fg[cyan]%}$(git_prompt_info)%{$reset_color%}"
    
    local PY_ENV="%{$FG[147]%}"
    if typeset -f condaenv_prompt_info > /dev/null; then
        PY_ENV+="$(condaenv_prompt_info)"
    fi
    if typeset -f virtualenv_prompt_info > /dev/null; then
        PY_ENV+="$(virtualenv_prompt_info)"
    fi
    PY_ENV+=" %{$reset_color%}"

    local ARROW="%{$FG[142]%}〉%{$reset_color%}"
    
    PROMPT=''
    PROMPT+=$CURRENT_DIR
    PROMPT+=$GIT
    PROMPT+=$PY_ENV
    PROMPT+=$ARROW
}

setup_prompt() {
    precmd_functions+=(prompt_unraveler_precmd)
}

setup_prompt

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[grey]%} ✱"

ZSH_THEME_CONDAENV_PREFIX="("
ZSH_THEME_CONDAENV_SUFFIX=")"
ZSH_THEME_VIRTUALENV_PREFIX="["
ZSH_THEME_VIRTUALENV_SUFFIX="]"
