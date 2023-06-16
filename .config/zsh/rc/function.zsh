
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
    cd "$(autojump -s | sort -k1gr | fzf --height 40% --reverse --inline-info --preview "$preview_cmd" --preview-window down:50% | cut -d$'\t' -f2- | sed 's/^\s*//')"
  else
    cd $(autojump $@)
  fi
}
