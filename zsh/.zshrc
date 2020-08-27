########################
# Antigen
########################
#

source ~/.antigen.zsh
source ~/.theme_mavam
source ~/.aliases

#load plugins
antigen use oh-my-zsh
antigen bundle StackExchange/blackbox
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle golang
antigen bundle npm
antigen bundle nvm
antigen bundle python
antigen bundle tmux
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle arzzen/calc.plugin.zsh
antigen bundle walesmd/caniuse.plugin.zsh
antigen bundle sinetoami/web-search
antigen bundle zsh-users/zsh-completions

#load theme
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen bundle morhetz/gruvbox

#start antigen
antigen apply

#change the order of the path in order to use python as version 3.
export PATH=/usr/local/opt/python/libexec/bin:$PATH
