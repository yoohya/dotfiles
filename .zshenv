
#--------------------------------------------------------------#
##          Locale                                            ##
#--------------------------------------------------------------#
export LANG=ja_JP.utf8


#--------------------------------------------------------------#
##          XDG                                               ##
#--------------------------------------------------------------#
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"


#--------------------------------------------------------------#
##          Zsh                                               ##
#--------------------------------------------------------------#
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"


#--------------------------------------------------------------#
##          History                                           ##
#--------------------------------------------------------------#
export HISTFILE="$XDG_STATE_HOME/zsh_history"
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"


#--------------------------------------------------------------#
##          Git                                               ##
#--------------------------------------------------------------#
export GIT_CONFIG_GLOBAL="$XDG_CONFIG_HOME/.gitconfig"


#--------------------------------------------------------------#
##          ASDF                                              ##
#--------------------------------------------------------------#
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/.asdfrc"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="${ASDF_DATA_DIR/#$HOME\//}/.tool-versions"


#--------------------------------------------------------------#
##          Go                                                ##
#--------------------------------------------------------------#
export GOPATH="$XDG_DATA_HOME/go"
