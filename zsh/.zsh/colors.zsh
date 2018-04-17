export LS_COLORS="di=34:fi=33:ln=35:ex=32:or=30;45:pi=31"
export EXA_COLORS="reset:ur=35:gr=35:tr=35:sn=36:sb=36:uu=33:un=31:da=37:lp=34:README.md=33;4:LICENSE=33;4:Makefile=33;4:Cargo.toml=33;4"

source ~/var/zsh/plug/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[default]='none'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[path]='fg=blue'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=magenta'
export ZSH_HIGHLIGHT_STYLES
