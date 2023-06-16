
#--------------------------------------------------------------#
##          Functions                                         ##
#--------------------------------------------------------------#

# fbr - checkout git branch
fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# like normal autojump when used with arguments but displays an fzf prompt when used without
j() {
  local preview_cmd="ls {2..}"
  if command -v exa &> /dev/null; then
    preview_cmd="exa -l {2}"
  fi

  if [[ $# -eq 0 ]]; then
    cd "$(autojump -s | sort -k1gr | awk -F : '$1 ~ /[0-9]/ && $2 ~ /^\s*\// {print $1 $2}' | fzf --height 40% --reverse --inline-info --preview "$preview_cmd" --preview-window down:50% | cut -d$'\t' -f2- | sed 's/^\s*//')"
  else
    cd $(autojump $@)
  fi
}

# like normal z when used with arguments but displays an fzf prompt when used without
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}