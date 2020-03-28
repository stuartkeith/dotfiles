# enable tab completion
autoload -Uz compinit && compinit

# exports
export CLICOLOR=1
export EDITOR="vim"
export VISUAL="vim"
export HISTSIZE=5000

# git information for prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{1}[%b]%f '

# prompt
PROMPT_NEWLINE=$'\n'
setopt prompt_subst
export PROMPT='${vcs_info_msg_0_}%F{RED}%~${PROMPT_NEWLINE}⚡️%f '

function prepend_to_path () {
	export PATH=$1:$PATH
}

prepend_to_path "$HOME/dotfiles/bin"
prepend_to_path "$HOME/bin"

# better ls output
alias ls='ls -la'

# cd to git root directory
alias gr='cd "$(git rev-parse --show-toplevel)"'

# undo last git commit
alias gitundo='git reset --soft "HEAD^"'

# recursively remove all .DS_Store files
alias removeds='find . -name ".DS_Store" -print0 | xargs -0 rm'

# export .env file
alias exportdotenv='export $(cat .env | xargs)'
