
#--------------------------------------------------------------#
##          Completions                                       ##
#--------------------------------------------------------------#

# asdf
fpath=(${ASDF_DIR}/completions $fpath)

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# aws
complete -C '/usr/local/bin/aws_completer' aws
