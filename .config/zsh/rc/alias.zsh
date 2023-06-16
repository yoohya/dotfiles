
#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#

# common
alias ls='ls -FG'
alias ll='ls -alFG'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'
# alias ..='cd ..'

# aws
alias ecrlogin='aws ecr get-login-password | docker login --username AWS --password-stdin https://$(aws sts get-caller-identity --query Account --output text).dkr.ecr.ap-northeast-1.amazonaws.com'
