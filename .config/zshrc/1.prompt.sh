autoload -U colors && colors

autoload -Uz vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats ' %F{cyan}%b%F{magenta}%c%u%m'
zstyle ':vcs_info:git:*' actionformats ' %F{cyan}%b %F{yellow}%a%F{magenta}%c%u%m'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[misc]=' .'
  else
    hook_com[misc]=''
  fi
}

local return_status="%(?:%{$fg_bold[green]%}$:%{$fg_bold[red]%}$)"

setopt PROMPT_SUBST
PROMPT='${return_status} %(!.%{$fg_bold[green]%}root .)%{$fg[cyan]%}%~%f%{$reset_color%}${vcs_info_msg_0_}%{$reset_color%} '
