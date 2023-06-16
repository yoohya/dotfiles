
#--------------------------------------------------------------#
##          ZStyle                                            ##
#--------------------------------------------------------------#

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1


#--------------------------------------------------------------#
##          Options                                           ##
#--------------------------------------------------------------#

# History
HISTFILE="$XDG_STATE_HOME/zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt BANG_HIST                # !をヒストリ展開に使用(d)
setopt HIST_IGNORE_ALL_DUPS     # 重複したコマンドを記録しない
setopt HIST_EXPIRE_DUPS_FIRST   # 重複したコマンドのうち古いものを削除
setopt HIST_REDUCE_BLANKS       # 余分なスペースは削除
setopt EXTENDED_HISTORY         # ヒストリに時刻を記録
setopt SHARE_HISTORY            # 他のシェルのヒストリをリアルタイムで共有する
setopt INC_APPEND_HISTORY       # historyを即時保存
# setopt HIST_IGNORE_SPACE        # 先頭にスペースがあるコマンドを記録しない

# Completion
setopt AUTO_LIST                # 補完候補を一覧で表示(d)
setopt AUTO_MENU                # 補完キー連打で補完候補を順に表示(d)
setopt MENU_COMPLETE            # 補完候補が複数の場合にメニューを表示
setopt AUTO_PARAM_SLASH         # ディレクトリ名の後にスラッシュを自動的に追加
setopt AUTO_PARAM_KEYS          # 補完時にキーを自動的に挿入
setopt LIST_TYPES               # 補完候補をできるだけ詰めて表示
setopt LIST_PACKED              # 補完候補にファイルの種類も表示

# Direcotry
DIRSTACKSIZE=100
setopt AUTO_CD                  # cdを省略
setopt AUTO_PUSHD               # cd時に自動的にpushd
setopt PUSHD_IGNORE_DUPS        # pushd時に重複したディレクトリを追加しない

# General
setopt NO_BEEP                  # beep音を鳴らさない
setopt NO_LIST_BEEP             # 補完時のbeep音を鳴らさない
setopt NOTIFY                   # バックグラウンドジョブの終了を通知
setopt MAGIC_EQUAL_SUBST        # = 以降も補完する(--prefix=/usrなど)
setopt INTERACTIVE_COMMENTS     # シェルスクリプトで # 以降をコメントとして扱う
setopt GLOBDOTS                 # dotfilesを補完対象に含める
