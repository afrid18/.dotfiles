autoload -U promptinit # initialize the prompt system promptinit

# SET OPTIONS

setopt autocd

# Adding history file

HISTFILE=~/.zsh_history # sets the location of the history file

# prompt setup

promptinit

# hashes of the frequently used directories

hash -d  codedir=/Users/Imamkhaja/Desktop/practice

# Change the prompt

PROMPT='%F{228}%BAfrid%f %2~  %# %b'
RPS1="%F{red}%(?..(%?%))%f"

# ALIASES

alias reload='source ~/.zshrc'
alias ls='ls -GF'
alias l='ls -a'
alias ll='ls -al'
alias python='python3'
alias pip='pip3'
alias tmux='tmux -2'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias saymyname="echo $USERNAME"

# BIND KEYS

bindkey -v

# PATHS

export PATH=$PATH:'/Applications/kate.app/Contents/MacOS'
# adding ~/bin path for my personal executables


export PATH=~/bin:$PATH

# ADDING C INCLUDE PATH AND LIBRARY PATH ##FOR MACBOOK USERS USING HOMEBREW AS THE PACKAGE MANAGER


C_INCLUDE_PATH=.:/opt/homebrew/include
LIBRARY_PATH=.:/opt/homebrew/lib
export C_INCLUDE_PATH
export LIBRARY_PATH

# Adding vim like zsh experience using zsh-vi-mode plugin
# bindkey -v

# source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh



# A CUSTOM FUNCTION TO DISPLAY ALL THE COLORS AVAILABLE

disco() {
    for i in {0..255}; do
        printf "\x1b[38;5;${i}m${i}\t"
    done
    printf '\n'
}


# for RUBY libs
export SDKROOT=$(xcrun --show-sdk-path)
# for ruby
export PATH=/opt/homebrew/opt/ruby/bin:$PATH

copy_configs() {
    cp ~/.zshrc ~/.myconfigs/.zshrc
    cp ~/.tmux.conf ~/.myconfigs/.tmux.conf
    cp ~/.vimrc ~/.myconfigs/.vimrc
}
