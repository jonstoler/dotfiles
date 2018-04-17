alias ~='cd "$HOME"'

alias l='exa'
alias ls='ls  --color=auto'
alias ll='exa -l'
alias la='exa -al'
alias l.='exa -d .* --color=auto'
alias lh='du -sh * | sort -rh'

alias p5='ping -c 5'

alias fcount='find . -maxdepth 1 -type f | wc -l'

alias g='git'
alias gp='git push'
alias gl='git pull'
alias gc='git commit'
alias ungit="find . -type d -name '.git' -delete"

alias sq='sqlite3'
alias sqlite='sqlite3'

alias py='python3'
alias py2='python2'
alias rb='ruby'
alias rs='cargo'
alias js='node'
alias cr='crystal'

alias whatsmyip='curl icanhazip.com'

alias bin='cd ~/bin'
alias etc='cd ~/etc'
alias src='cd ~/src'
alias tmp='cd ~/tmp'
alias usr='cd ~/usr'
alias var='cd ~/var'

alias vi='nvim'
alias vim='nvim'

alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -ir'
alias ln='ln -i'

alias sizeof='du -sh'

alias ax='chmod a+x'

alias tl='todo.sh ls'
alias ta='todo.sh add'
alias tr='todo.sh report'
alias tg='todo.sh graph'
alias tv='todo.sh view'
