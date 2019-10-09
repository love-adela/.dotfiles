[[ -o interactive ]] || return

#
# zplugin
#
autoload -U is-at-least
if is-at-least 4.3.9 && [[ -d ~/.zplugin ]]; then
  source ~/.zplugin/bin/zplugin.zsh
  autoload -Uz _zplugin
  (( ${+_comps} )) && _comps[zplugin]=_zplugin

  zplugin light simnalamburt/cgitc
  ZSH_EXPAND_ALL_DISABLE=word
  zplugin light simnalamburt/zsh-expand-all
  zplugin light zsh-users/zsh-completions
  ZSH_AUTOSUGGEST_USE_ASYNC=true
  zplugin light zsh-users/zsh-autosuggestions
  zplugin light zdharma/fast-syntax-highlighting
  zplugin light zsh-users/zsh-history-substring-search
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
  zplugin ice pick"async.zsh" src"pure.zsh"
  zplugin light sindresorhus/pure
else
  PS1='%n@%m:%~%(!.#.$) '
fi


#
# 기본 세팅
#
stty stop undef
autoload -Uz compinit && compinit

alias l='ls -lah'
alias ls='ls -G'
alias mv='mv -i'
alias cp='cp -i'

setopt auto_cd histignorealldups sharehistory
zstyle ':completion:*' menu select

HISTSIZE=90000
SAVEHIST=90000
HISTFILE=~/.zsh_history


#
# lscolors
#
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedxbagxcad"
export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=30;46:tw=0;42:ow=30;43"
export TIME_STYLE="+%y%m%d"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
RPROMPT='%F{238}%*'

#
# zsh-substring-completion
#
setopt complete_in_word
setopt always_to_end
WORDCHARS=''
zmodload -i zsh/complist

# Substring completion
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

export LANG='en_US.UTF-8'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
