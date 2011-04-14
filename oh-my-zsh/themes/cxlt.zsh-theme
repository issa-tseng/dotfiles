#FUNCTIONS
function prompt_vcs_info {
  branch=$(git name-rev HEAD 2>/dev/null) || echo '$'
  [[ -z ${branch} ]] && return

  branch_name=$(echo "${branch}" | sed 's/^HEAD //')
  echo -n "#%F{blue}${branch_name}%F{default}"

  git_dir=$(git rev-parse --git-dir 2> /dev/null) || return
  if test -d "$git_dir/../.dotest"; then
    if test -f "$git_dir/../.dotest/rebasing"; then
      echo -n "!%F{magenta}rebase%F{default}"
    elif test -f "$git_dir/../.dotest/applying"; then
      echo -n "!%F{magenta}am%F{default}"
    else
      echo -n "!%F{magenta}am/rebase%F{default}"
    fi
  fi

  echo -n "±"
}

#PROMPT
export PROMPT='%F{red}%n%F{default}@%F{green}%m%F{default}:%F{cyan}%c%F{default}$(prompt_vcs_info) '
export RPROMPT='%F{default}[%F{cyan}%/%F{default}|%F{yellow}%T%F{default}]'
