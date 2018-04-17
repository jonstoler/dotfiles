fpath=($fpath $HOME/var/zsh/fpath)

export PURE_PROMPT_SYMBOL=""

autoload -U promptinit; promptinit
prompt purer
